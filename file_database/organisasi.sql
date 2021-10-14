-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2021 at 04:01 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organisasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggaran`
--

CREATE TABLE `anggaran` (
  `id` int(10) UNSIGNED NOT NULL,
  `dana` double NOT NULL,
  `tahun` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggaran`
--

INSERT INTO `anggaran` (`id`, `dana`, `tahun`, `periode`, `status`, `created_at`, `updated_at`) VALUES
(1, 200000000, '2018', 'murni', 1, NULL, NULL),
(2, 100000000, '2018', 'perubahan', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biaya`
--

CREATE TABLE `biaya` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biaya`
--

INSERT INTO `biaya` (`id`, `nama`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Uang Harian', 1, NULL, NULL),
(2, 'Biaya Transport', 1, NULL, NULL),
(3, 'Biaya Penginapan', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `situs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id`, `nama`, `alamat`, `telepon`, `email`, `situs`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DINAS KOMUNIKASI, INFORMATIKA DAN STATISTIK', 'Jalan Dr. Sudarsono No.40', '(0231) 8804620', 'dkis@cirebonkota.go.id', 'dkis.cirebonkota.go.id', 'images/logo/pemda.png', 1, NULL, NULL),
(2, 'SEKRETARIAT DAERAH', 'Jl. Siliwangi No. 84 Cirebon', '(0231) 206011', '', '', 'images/logo/pemda.png', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_11_022119_create_instansi_table', 1),
(4, '2018_05_11_041219_create_biaya_table', 1),
(5, '2018_05_11_041713_create_pegawai_table', 1),
(6, '2018_05_11_041854_create_surat_perintah_table', 1),
(7, '2018_05_11_042454_create_sppd_table', 1),
(8, '2018_05_11_065615_create_pengeluaran_table', 1),
(9, '2018_05_11_073056_create_pengeluaran_detail_table', 1),
(10, '2018_05_11_074245_create_anggaran_table', 1),
(11, '2018_05_11_075411_create_transaksi_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skpd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pangkat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `golongan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `skpd`, `pangkat`, `golongan`, `jabatan`, `status`, `created_at`, `updated_at`) VALUES
(1, '196808221997031003', 'IING DAIMAN, S.Ip, M.Si.', 'DINAS KOMUNIKASI, INFORMATIKA DAN STATISTIK', 'Pembina Tk.I', 'IV/b', 'KEPALA DINAS KOMUNIKASI, INFORMATIKA DAN STATISTIK', 1, NULL, NULL),
(2, '198405072010012012', 'MEISARI, SE.', 'DINAS KOMUNIKASI, INFORMATIKA DAN STATISTIK', 'Penata Muda Tk.I', 'III/b', 'Pelaksana', 1, NULL, NULL),
(3, '197607262006041013', 'ANDI SUKMANA, SE, Akt.', 'DINAS KOMUNIKASI, INFORMATIKA DAN STATISTIK', 'Penata Tk.I', 'III/d', 'KEPALA SEKSI KEAMANAN INFORMASI E-GOVERNMENT', 1, NULL, NULL),
(4, '197510262014061002', 'ANDRE GINANJAR FERDHIANSYAH PRATAMA, ST.', 'DINAS KOMUNIKASI, INFORMATIKA DAN STATISTIK', 'Penata Muda', 'III/a', 'Pelaksana', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` double DEFAULT NULL,
  `terbilang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keperluan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `belanja_jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `belanja_obyek` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `belanja_rincian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `sppd_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran_detail`
--

CREATE TABLE `pengeluaran_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `pengeluaran_id` int(10) UNSIGNED NOT NULL,
  `biaya_id` int(10) UNSIGNED NOT NULL,
  `uraian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `satuan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sppd`
--

CREATE TABLE `sppd` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perjalanan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_berangkat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_tujuan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_berangkat` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `pengikut` text COLLATE utf8mb4_unicode_ci,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `surat_perintah_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sppd`
--

INSERT INTO `sppd` (`id`, `nomor`, `perjalanan`, `tempat_berangkat`, `tempat_tujuan`, `tanggal_berangkat`, `tanggal_kembali`, `pengikut`, `keterangan`, `pegawai_id`, `surat_perintah_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '090/117-DKIS/2018', 'Mengikuti Pendidikan dan Pelatihan Kepemimpinan Tingkat IV Angkatan I', 'Cirebon', 'Bandung', '2018-02-12', '2018-03-04', '', '', 3, 1, 1, NULL, NULL),
(2, '090/118-DKIS/2018', 'Mengikuti Pendidikan dan Pelatihan Kepemimpinan Tingkat IV Angkatan I', 'Cirebon', 'Bandung', '2018-02-12', '2018-03-04', '', '', 4, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surat_perintah`
--

CREATE TABLE `surat_perintah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_perintah`
--

INSERT INTO `surat_perintah` (`id`, `nomor`, `uraian`, `tanggal`, `pegawai_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '090/123-DKIS/2018', '\r\n                Mengikuti Sosialisasi Evaluasi Sistem Pemerintah Berbasis Elektronik pada tanggal 13 April 2018 bertempat di Ruang Rapat Samudera Pasai lantai V Gedung Kementrian PANRB Jalan Jenderal Sudirman Kavling 69 Jakarta 12190 berdasarkan surat dari Kementrian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Republik Indonesia Nomor B/178/S.KT.03/2018 tanggal 03 April 2018.\r\n            ', '2018-04-10', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `last` double DEFAULT NULL,
  `in` double DEFAULT NULL,
  `out` double DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `pengeluaran_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', '$2y$10$JUkOTkVVkbUFu3Zy5//e3eyzBEmMANzr9Mixq8bLvviGDEDAp.pGC', 'admin', 'cH1QmThZkmT3TI2l2RxGjXshNmxK1cfW7cR0ZyhnYrrH5hhk0HAXrjlAwtzi', NULL, NULL),
(2, 'Finance', 'finance@mail.com', '$2y$10$saA/LG4tEOTyq4CmhhIz9.ho3tEg9zjohcJqtO4l92hgI.BJHRKk6', 'finance', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggaran`
--
ALTER TABLE `anggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawai_nip_unique` (`nip`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengeluaran_sppd_id_foreign` (`sppd_id`);

--
-- Indexes for table `pengeluaran_detail`
--
ALTER TABLE `pengeluaran_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengeluaran_detail_pengeluaran_id_foreign` (`pengeluaran_id`),
  ADD KEY `pengeluaran_detail_biaya_id_foreign` (`biaya_id`);

--
-- Indexes for table `sppd`
--
ALTER TABLE `sppd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sppd_pegawai_id_foreign` (`pegawai_id`),
  ADD KEY `sppd_surat_perintah_id_foreign` (`surat_perintah_id`);

--
-- Indexes for table `surat_perintah`
--
ALTER TABLE `surat_perintah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_perintah_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_pengeluaran_id_foreign` (`pengeluaran_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggaran`
--
ALTER TABLE `anggaran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `biaya`
--
ALTER TABLE `biaya`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran_detail`
--
ALTER TABLE `pengeluaran_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sppd`
--
ALTER TABLE `sppd`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `surat_perintah`
--
ALTER TABLE `surat_perintah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
