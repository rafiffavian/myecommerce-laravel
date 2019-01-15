-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2019 at 04:52 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_lhk`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_provinsi`
--

CREATE TABLE `master_provinsi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_provinsi`
--

INSERT INTO `master_provinsi` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Nanggroe Aceh Darussalam', NULL, NULL),
(2, 'Sumatera Utara', NULL, NULL),
(3, 'Sumatera Barat', NULL, NULL),
(4, 'Riau', NULL, NULL),
(5, 'Kepulauan Riau', NULL, NULL),
(6, 'Kepulauan Bangka-Belitung', NULL, NULL),
(7, 'Jambi', NULL, NULL),
(8, 'Bengkulu', NULL, NULL),
(9, 'Sumatera Selatan', NULL, NULL),
(10, 'Lampung', NULL, NULL),
(11, 'Banten', NULL, NULL),
(12, 'DKI Jakarta', NULL, NULL),
(13, 'Jawa Barat', NULL, NULL),
(14, 'Jawa Tengah', NULL, NULL),
(15, 'Daerah Istimewa Yogyakarta  ', NULL, NULL),
(16, 'Jawa Timur', NULL, NULL),
(17, 'Bali', NULL, NULL),
(18, 'Nusa Tenggara Barat', NULL, NULL),
(19, 'Nusa Tenggara Timur', NULL, NULL),
(20, 'Kalimantan Barat', NULL, NULL),
(21, 'Kalimantan Tengah', NULL, NULL),
(22, 'Kalimantan Selatan', NULL, NULL),
(23, 'Kalimantan Timur', NULL, NULL),
(24, 'Gorontalo', NULL, NULL),
(25, 'Sulawesi Selatan', NULL, NULL),
(26, 'Sulawesi Tenggara', NULL, NULL),
(27, 'Sulawesi Tengah', NULL, NULL),
(28, 'Sulawesi Utara', NULL, NULL),
(29, 'Sulawesi Barat', NULL, NULL),
(30, 'Maluku', NULL, NULL),
(31, 'Maluku Utara', NULL, NULL),
(32, 'Papua Barat', NULL, NULL),
(33, 'Papua', NULL, NULL),
(34, 'Kalimantan Utara', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_provinsi`
--
ALTER TABLE `master_provinsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_provinsi`
--
ALTER TABLE `master_provinsi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
