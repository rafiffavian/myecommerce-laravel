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
-- Table structure for table `master_kota`
--

CREATE TABLE `master_kota` (
  `id` int(10) UNSIGNED NOT NULL,
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_kota`
--

INSERT INTO `master_kota` (`id`, `provinsi_id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kabupaten Aceh Barat', NULL, NULL),
(2, 1, 'Kabupaten Aceh Barat Daya', NULL, NULL),
(3, 1, 'Kabupaten Aceh Besar', NULL, NULL),
(4, 1, 'Kabupaten Aceh Jaya', NULL, NULL),
(5, 1, 'Kabupaten Aceh Selatan', NULL, NULL),
(6, 1, 'Kabupaten Aceh Singkil', NULL, NULL),
(7, 1, 'Kabupaten Aceh Tamiang', NULL, NULL),
(8, 1, 'Kabupaten Aceh Tengah', NULL, NULL),
(9, 1, 'Kabupaten Aceh Tenggara', NULL, NULL),
(10, 1, 'Kabupaten Aceh Timur', NULL, NULL),
(11, 1, 'Kabupaten Aceh Utara', NULL, NULL),
(12, 1, 'Kabupaten Bener Meriah', NULL, NULL),
(13, 1, 'Kabupaten Bireuen', NULL, NULL),
(14, 1, 'Kabupaten Gayo Luwes', NULL, NULL),
(15, 1, 'Kabupaten Nagan Raya', NULL, NULL),
(16, 1, 'Kabupaten Pidie', NULL, NULL),
(17, 1, 'Kabupaten Pidie Jaya', NULL, NULL),
(18, 1, 'Kabupaten Simeulue', NULL, NULL),
(19, 1, 'Kota Banda Aceh', NULL, NULL),
(20, 1, 'Kota Langsa', NULL, NULL),
(21, 1, 'Kota Lhokseumawe', NULL, NULL),
(22, 1, 'Kota Sabang', NULL, NULL),
(23, 1, 'Kota Subulussalam', NULL, NULL),
(24, 2, 'Kabupaten Asahan', NULL, NULL),
(25, 2, 'Kabupaten Batubara', NULL, NULL),
(26, 2, 'Kabupaten Dairi', NULL, NULL),
(27, 2, 'Kabupaten Deli Serdang', NULL, NULL),
(28, 2, 'Kabupaten Humbang Hasundutan', NULL, NULL),
(29, 2, 'Kabupaten Karo', NULL, NULL),
(30, 2, 'Kabupaten Labuhan Batu', NULL, NULL),
(31, 2, 'Kabupaten Labuhanbatu Selatan', NULL, NULL),
(32, 2, 'Kabupaten Labuhanbatu Utara', NULL, NULL),
(33, 2, 'Kabupaten Langkat', NULL, NULL),
(34, 2, 'Kabupaten Mandailing Natal', NULL, NULL),
(35, 2, 'Kabupaten Nias', NULL, NULL),
(36, 2, 'Kabupaten Nias Barat', NULL, NULL),
(37, 2, 'Kabupaten Nias Selatan', NULL, NULL),
(38, 2, 'Kabupaten Nias Utara', NULL, NULL),
(39, 2, 'Kabupaten Padang Lawas', NULL, NULL),
(40, 2, 'Kabupaten Padang Lawas Utara', NULL, NULL),
(41, 2, 'Kabupaten Pakpak Barat', NULL, NULL),
(42, 2, 'Kabupaten Samosir', NULL, NULL),
(43, 2, 'Kabupaten Serdang Bedagai', NULL, NULL),
(44, 2, 'Kabupaten Simalungun', NULL, NULL),
(45, 2, 'Kabupaten Tapanuli Selatan', NULL, NULL),
(46, 2, 'Kabupaten Tapanuli Tengah', NULL, NULL),
(47, 2, 'Kabupaten Tapanuli Utara', NULL, NULL),
(48, 2, 'Kabupaten Toba Samosir', NULL, NULL),
(49, 2, 'Kota Binjai', NULL, NULL),
(50, 2, 'Kota Gunung Sitoli', NULL, NULL),
(51, 2, 'Kota Medan', NULL, NULL),
(52, 2, 'Kota Padangsidempuan', NULL, NULL),
(53, 2, 'Kota Pematang Siantar', NULL, NULL),
(54, 2, 'Kota Sibolga', NULL, NULL),
(55, 2, 'Kota Tanjung Balai', NULL, NULL),
(56, 2, 'Kota Tebing Tinggi', NULL, NULL),
(57, 3, 'Kabupaten Agam', NULL, NULL),
(58, 3, 'Kabupaten Dharmas Raya', NULL, NULL),
(59, 3, 'Kabupaten Kepulauan Mentawai', NULL, NULL),
(60, 3, 'Kabupaten Lima Puluh Kota', NULL, NULL),
(61, 3, 'Kabupaten Padang Pariaman', NULL, NULL),
(62, 3, 'Kabupaten Pasaman', NULL, NULL),
(63, 3, 'Kabupaten Pasaman Barat', NULL, NULL),
(64, 3, 'Kabupaten Pesisir Selatan', NULL, NULL),
(65, 3, 'Kabupaten Sijunjung', NULL, NULL),
(66, 3, 'Kabupaten Solok', NULL, NULL),
(67, 3, 'Kabupaten Solok Selatan', NULL, NULL),
(68, 3, 'Kabupaten Tanah Datar', NULL, NULL),
(69, 3, 'Kota Bukittinggi', NULL, NULL),
(70, 3, 'Kota Padang', NULL, NULL),
(71, 3, 'Kota Padang Panjang', NULL, NULL),
(72, 3, 'Kota Pariaman', NULL, NULL),
(73, 3, 'Kota Payakumbuh', NULL, NULL),
(74, 3, 'Kota Sawah Lunto', NULL, NULL),
(75, 3, 'Kota Solok', NULL, NULL),
(76, 4, 'Kabupaten Bengkalis', NULL, NULL),
(77, 4, 'Kabupaten Indragiri Hilir', NULL, NULL),
(78, 4, 'Kabupaten Indragiri Hulu', NULL, NULL),
(79, 4, 'Kabupaten Kampar', NULL, NULL),
(80, 4, 'Kabupaten Kuantan Singingi', NULL, NULL),
(81, 4, 'Kabupaten Meranti', NULL, NULL),
(82, 4, 'Kabupaten Pelalawan', NULL, NULL),
(83, 4, 'Kabupaten Rokan Hilir', NULL, NULL),
(84, 4, 'Kabupaten Rokan Hulu', NULL, NULL),
(85, 4, 'Kabupaten Siak', NULL, NULL),
(86, 4, 'Kota Dumai', NULL, NULL),
(87, 4, 'Kota Pekanbaru', NULL, NULL),
(88, 5, 'Kabupaten Bintan', NULL, NULL),
(89, 5, 'Kabupaten Karimun', NULL, NULL),
(90, 5, 'Kabupaten Kepulauan Anambas', NULL, NULL),
(91, 5, 'Kabupaten Lingga', NULL, NULL),
(92, 5, 'Kabupaten Natuna', NULL, NULL),
(93, 5, 'Kota Batam', NULL, NULL),
(94, 5, 'Kota Tanjung Pinang', NULL, NULL),
(95, 6, 'Kabupaten Bangka', NULL, NULL),
(96, 6, 'Kabupaten Bangka Barat', NULL, NULL),
(97, 6, 'Kabupaten Bangka Selatan', NULL, NULL),
(98, 6, 'Kabupaten Bangka Tengah', NULL, NULL),
(99, 6, 'Kabupaten Belitung', NULL, NULL),
(100, 6, 'Kabupaten Belitung Timur', NULL, NULL),
(101, 6, 'Kota Pangkal Pinang', NULL, NULL),
(102, 7, 'Kabupaten Kerinci', NULL, NULL),
(103, 7, 'Kabupaten Merangin', NULL, NULL),
(104, 7, 'Kabupaten Sarolangun', NULL, NULL),
(105, 7, 'Kabupaten Batang Hari', NULL, NULL),
(106, 7, 'Kabupaten Muaro Jambi', NULL, NULL),
(107, 7, 'Kabupaten Tanjung Jabung Timur', NULL, NULL),
(108, 7, 'Kabupaten Tanjung Jabung Barat', NULL, NULL),
(109, 7, 'Kabupaten Tebo', NULL, NULL),
(110, 7, 'Kabupaten Bungo', NULL, NULL),
(111, 7, 'Kota Jambi', NULL, NULL),
(112, 7, 'Kota Sungai Penuh', NULL, NULL),
(113, 8, 'Kabupaten Bengkulu Selatan', NULL, NULL),
(114, 8, 'Kabupaten Bengkulu Tengah', NULL, NULL),
(115, 8, 'Kabupaten Bengkulu Utara', NULL, NULL),
(116, 8, 'Kabupaten Kaur', NULL, NULL),
(117, 8, 'Kabupaten Kepahiang', NULL, NULL),
(118, 8, 'Kabupaten Lebong', NULL, NULL),
(119, 8, 'Kabupaten Mukomuko', NULL, NULL),
(120, 8, 'Kabupaten Rejang Lebong', NULL, NULL),
(121, 8, 'Kabupaten Seluma', NULL, NULL),
(122, 8, 'Kota Bengkulu', NULL, NULL),
(123, 9, 'Kabupaten Banyuasin', NULL, NULL),
(124, 9, 'Kabupaten Empat Lawang', NULL, NULL),
(125, 9, 'Kabupaten Lahat', NULL, NULL),
(126, 9, 'Kabupaten Muara Enim', NULL, NULL),
(127, 9, 'Kabupaten Musi Banyu Asin', NULL, NULL),
(128, 9, 'Kabupaten Musi Rawas', NULL, NULL),
(129, 9, 'Kabupaten Ogan Ilir', NULL, NULL),
(130, 9, 'Kabupaten Ogan Komering Ilir', NULL, NULL),
(131, 9, 'Kabupaten Ogan Komering Ulu', NULL, NULL),
(132, 9, 'Kabupaten Ogan Komering Ulu Se', NULL, NULL),
(133, 9, 'Kabupaten Ogan Komering Ulu Ti', NULL, NULL),
(134, 9, 'Kota Lubuklinggau', NULL, NULL),
(135, 9, 'Kota Pagar Alam', NULL, NULL),
(136, 9, 'Kota Palembang', NULL, NULL),
(137, 9, 'Kota Prabumulih', NULL, NULL),
(138, 10, 'Kabupaten Lampung Barat', NULL, NULL),
(139, 10, 'Kabupaten Lampung Selatan', NULL, NULL),
(140, 10, 'Kabupaten Lampung Tengah', NULL, NULL),
(141, 10, 'Kabupaten Lampung Timur', NULL, NULL),
(142, 10, 'Kabupaten Lampung Utara', NULL, NULL),
(143, 10, 'Kabupaten Mesuji', NULL, NULL),
(144, 10, 'Kabupaten Pesawaran', NULL, NULL),
(145, 10, 'Kabupaten Pringsewu', NULL, NULL),
(146, 10, 'Kabupaten Tanggamus', NULL, NULL),
(147, 10, 'Kabupaten Tulang Bawang', NULL, NULL),
(148, 10, 'Kabupaten Tulang Bawang Barat', NULL, NULL),
(149, 10, 'Kabupaten Way Kanan', NULL, NULL),
(150, 10, 'Kota Bandar Lampung', NULL, NULL),
(151, 10, 'Kota Metro', NULL, NULL),
(152, 11, 'Kabupaten Lebak', NULL, NULL),
(153, 11, 'Kabupaten Pandeglang', NULL, NULL),
(154, 11, 'Kabupaten Serang', NULL, NULL),
(155, 11, 'Kabupaten Tangerang', NULL, NULL),
(156, 11, 'Kota Cilegon', NULL, NULL),
(157, 11, 'Kota Serang', NULL, NULL),
(158, 11, 'Kota Tangerang', NULL, NULL),
(159, 11, 'Kota Tangerang Selatan', NULL, NULL),
(160, 12, 'Kabupaten Adm. Kepulauan Serib', NULL, NULL),
(161, 12, 'Kota Jakarta Barat', NULL, NULL),
(162, 12, 'Kota Jakarta Pusat', NULL, NULL),
(163, 12, 'Kota Jakarta Selatan', NULL, NULL),
(164, 12, 'Kota Jakarta Timur', NULL, NULL),
(165, 12, 'Kota Jakarta Utara', NULL, NULL),
(166, 13, 'Kabupaten Bandung', NULL, NULL),
(167, 13, 'Kabupaten Bandung Barat', NULL, NULL),
(168, 13, 'Kabupaten Bekasi', NULL, NULL),
(169, 13, 'Kabupaten Bogor', NULL, NULL),
(170, 13, 'Kabupaten Ciamis', NULL, NULL),
(171, 13, 'Kabupaten Cianjur', NULL, NULL),
(172, 13, 'Kabupaten Cirebon', NULL, NULL),
(173, 13, 'Kabupaten Garut', NULL, NULL),
(174, 13, 'Kabupaten Indramayu', NULL, NULL),
(175, 13, 'Kabupaten Karawang', NULL, NULL),
(176, 13, 'Kabupaten Kuningan', NULL, NULL),
(177, 13, 'Kabupaten Majalengka', NULL, NULL),
(178, 13, 'Kabupaten Purwakarta', NULL, NULL),
(179, 13, 'Kabupaten Subang', NULL, NULL),
(180, 13, 'Kabupaten Sukabumi', NULL, NULL),
(181, 13, 'Kabupaten Sumedang', NULL, NULL),
(182, 13, 'Kabupaten Tasikmalaya', NULL, NULL),
(183, 13, 'Kota Bandung', NULL, NULL),
(184, 13, 'Kota Banjar', NULL, NULL),
(185, 13, 'Kota Bekasi', NULL, NULL),
(186, 13, 'Kota Bogor', NULL, NULL),
(187, 13, 'Kota Cimahi', NULL, NULL),
(188, 13, 'Kota Cirebon', NULL, NULL),
(189, 13, 'Kota Depok', NULL, NULL),
(190, 13, 'Kota Sukabumi', NULL, NULL),
(191, 13, 'Kota Tasikmalaya', NULL, NULL),
(192, 14, 'Kabupaten Banjarnegara', NULL, NULL),
(193, 14, 'Kabupaten Banyumas', NULL, NULL),
(194, 14, 'Kabupaten Batang', NULL, NULL),
(195, 14, 'Kabupaten Blora', NULL, NULL),
(196, 14, 'Kabupaten Boyolali', NULL, NULL),
(197, 14, 'Kabupaten Brebes', NULL, NULL),
(198, 14, 'Kabupaten Cilacap', NULL, NULL),
(199, 14, 'Kabupaten Demak', NULL, NULL),
(200, 14, 'Kabupaten Grobogan', NULL, NULL),
(201, 14, 'Kabupaten Jepara', NULL, NULL),
(202, 14, 'Kabupaten Karanganyar', NULL, NULL),
(203, 14, 'Kabupaten Kebumen', NULL, NULL),
(204, 14, 'Kabupaten Kendal', NULL, NULL),
(205, 14, 'Kabupaten Klaten', NULL, NULL),
(206, 14, 'Kabupaten Kota Tegal', NULL, NULL),
(207, 14, 'Kabupaten Kudus', NULL, NULL),
(208, 14, 'Kabupaten Magelang', NULL, NULL),
(209, 14, 'Kabupaten Pati', NULL, NULL),
(210, 14, 'Kabupaten Pekalongan', NULL, NULL),
(211, 14, 'Kabupaten Pemalang', NULL, NULL),
(212, 14, 'Kabupaten Purbalingga', NULL, NULL),
(213, 14, 'Kabupaten Purworejo', NULL, NULL),
(214, 14, 'Kabupaten Rembang', NULL, NULL),
(215, 14, 'Kabupaten Semarang', NULL, NULL),
(216, 14, 'Kabupaten Sragen', NULL, NULL),
(217, 14, 'Kabupaten Sukoharjo', NULL, NULL),
(218, 14, 'Kabupaten Temanggung', NULL, NULL),
(219, 14, 'Kabupaten Wonogiri', NULL, NULL),
(220, 14, 'Kabupaten Wonosobo', NULL, NULL),
(221, 14, 'Kota Magelang', NULL, NULL),
(222, 14, 'Kota Pekalongan', NULL, NULL),
(223, 14, 'Kota Salatiga', NULL, NULL),
(224, 14, 'Kota Semarang', NULL, NULL),
(225, 14, 'Kota Surakarta', NULL, NULL),
(226, 14, 'Kota Tegal', NULL, NULL),
(227, 15, 'Kabupaten Bantul', NULL, NULL),
(228, 15, 'Kabupaten Gunung Kidul', NULL, NULL),
(229, 15, 'Kabupaten Kulon Progo', NULL, NULL),
(230, 15, 'Kabupaten Sleman', NULL, NULL),
(231, 15, 'Kota Yogyakarta', NULL, NULL),
(232, 16, 'Kabupaten Bangkalan', NULL, NULL),
(233, 16, 'Kabupaten Banyuwangi', NULL, NULL),
(234, 16, 'Kabupaten Blitar', NULL, NULL),
(235, 16, 'Kabupaten Bojonegoro', NULL, NULL),
(236, 16, 'Kabupaten Bondowoso', NULL, NULL),
(237, 16, 'Kabupaten Gresik', NULL, NULL),
(238, 16, 'Kabupaten Jember', NULL, NULL),
(239, 16, 'Kabupaten Jombang', NULL, NULL),
(240, 16, 'Kabupaten Kediri', NULL, NULL),
(241, 16, 'Kabupaten Lamongan', NULL, NULL),
(242, 16, 'Kabupaten Lumajang', NULL, NULL),
(243, 16, 'Kabupaten Madiun', NULL, NULL),
(244, 16, 'Kabupaten Magetan', NULL, NULL),
(245, 16, 'Kabupaten Malang', NULL, NULL),
(246, 16, 'Kabupaten Mojokerto', NULL, NULL),
(247, 16, 'Kabupaten Nganjuk', NULL, NULL),
(248, 16, 'Kabupaten Ngawi', NULL, NULL),
(249, 16, 'Kabupaten Pacitan', NULL, NULL),
(250, 16, 'Kabupaten Pamekasan', NULL, NULL),
(251, 16, 'Kabupaten Pasuruan', NULL, NULL),
(252, 16, 'Kabupaten Ponorogo', NULL, NULL),
(253, 16, 'Kabupaten Probolinggo', NULL, NULL),
(254, 16, 'Kabupaten Sampang', NULL, NULL),
(255, 16, 'Kabupaten Sidoarjo', NULL, NULL),
(256, 16, 'Kabupaten Situbondo', NULL, NULL),
(257, 16, 'Kabupaten Sumenep', NULL, NULL),
(258, 16, 'Kabupaten Trenggalek', NULL, NULL),
(259, 16, 'Kabupaten Tuban', NULL, NULL),
(260, 16, 'Kabupaten Tulungagung', NULL, NULL),
(261, 16, 'Kota Batu', NULL, NULL),
(262, 16, 'Kota Blitar', NULL, NULL),
(263, 16, 'Kota Kediri', NULL, NULL),
(264, 16, 'Kota Madiun', NULL, NULL),
(265, 16, 'Kota Malang', NULL, NULL),
(266, 16, 'Kota Mojokerto', NULL, NULL),
(267, 16, 'Kota Pasuruan', NULL, NULL),
(268, 16, 'Kota Probolinggo', NULL, NULL),
(269, 16, 'Kota Surabaya', NULL, NULL),
(270, 17, 'Kabupaten Badung', NULL, NULL),
(271, 17, 'Kabupaten Bangli', NULL, NULL),
(272, 17, 'Kabupaten Buleleng', NULL, NULL),
(273, 17, 'Kabupaten Gianyar', NULL, NULL),
(274, 17, 'Kabupaten Jembrana', NULL, NULL),
(275, 17, 'Kabupaten Karang Asem', NULL, NULL),
(276, 17, 'Kabupaten Klungkung', NULL, NULL),
(277, 17, 'Kabupaten Tabanan', NULL, NULL),
(278, 17, 'Kota Denpasar', NULL, NULL),
(279, 18, 'Kabupaten Bima', NULL, NULL),
(280, 18, 'Kabupaten Dompu', NULL, NULL),
(281, 18, 'Kabupaten Lombok Barat', NULL, NULL),
(282, 18, 'Kabupaten Lombok Tengah', NULL, NULL),
(283, 18, 'Kabupaten Lombok Timur', NULL, NULL),
(284, 18, 'Kabupaten Lombok Utara', NULL, NULL),
(285, 18, 'Kabupaten Sumbawa', NULL, NULL),
(286, 18, 'Kabupaten Sumbawa Barat', NULL, NULL),
(287, 18, 'Kota Bima', NULL, NULL),
(288, 18, 'Kota Mataram', NULL, NULL),
(289, 19, 'Kabupaten Alor', NULL, NULL),
(290, 19, 'Kabupaten Belu', NULL, NULL),
(291, 19, 'Kabupaten Ende', NULL, NULL),
(292, 19, 'Kabupaten Flores Timur', NULL, NULL),
(293, 19, 'Kabupaten Kupang', NULL, NULL),
(294, 19, 'Kabupaten Lembata', NULL, NULL),
(295, 19, 'Kabupaten Manggarai', NULL, NULL),
(296, 19, 'Kabupaten Manggarai Barat', NULL, NULL),
(297, 19, 'Kabupaten Manggarai Timur', NULL, NULL),
(298, 19, 'Kabupaten Nagekeo', NULL, NULL),
(299, 19, 'Kabupaten Ngada', NULL, NULL),
(300, 19, 'Kabupaten Rote Ndao', NULL, NULL),
(301, 19, 'Kabupaten Sabu Raijua', NULL, NULL),
(302, 19, 'Kabupaten Sikka', NULL, NULL),
(303, 19, 'Kabupaten Sumba Barat', NULL, NULL),
(304, 19, 'Kabupaten Sumba Barat Daya', NULL, NULL),
(305, 19, 'Kabupaten Sumba Tengah', NULL, NULL),
(306, 19, 'Kabupaten Sumba Timur', NULL, NULL),
(307, 19, 'Kabupaten Timor Tengah Selatan', NULL, NULL),
(308, 19, 'Kabupaten Timor Tengah Utara', NULL, NULL),
(309, 19, 'Kota Kupang', NULL, NULL),
(310, 20, 'Kabupaten Bengkayang', NULL, NULL),
(311, 20, 'Kabupaten Kapuas Hulu', NULL, NULL),
(312, 20, 'Kabupaten Kayong Utara', NULL, NULL),
(313, 20, 'Kabupaten Ketapang', NULL, NULL),
(314, 20, 'Kabupaten Kubu Raya', NULL, NULL),
(315, 20, 'Kabupaten Landak', NULL, NULL),
(316, 20, 'Kabupaten Melawi', NULL, NULL),
(317, 20, 'Kabupaten Pontianak', NULL, NULL),
(318, 20, 'Kabupaten Sambas', NULL, NULL),
(319, 20, 'Kabupaten Sanggau', NULL, NULL),
(320, 20, 'Kabupaten Sekadau', NULL, NULL),
(321, 20, 'Kabupaten Sintang', NULL, NULL),
(322, 20, 'Kota Pontianak', NULL, NULL),
(323, 20, 'Kota Singkawang', NULL, NULL),
(324, 21, 'Kabupaten Barito Selatan', NULL, NULL),
(325, 21, 'Kabupaten Barito Timur', NULL, NULL),
(326, 21, 'Kabupaten Barito Utara', NULL, NULL),
(327, 21, 'Kabupaten Gunung Mas', NULL, NULL),
(328, 21, 'Kabupaten Kapuas', NULL, NULL),
(329, 21, 'Kabupaten Katingan', NULL, NULL),
(330, 21, 'Kabupaten Kotawaringin Barat', NULL, NULL),
(331, 21, 'Kabupaten Kotawaringin Timur', NULL, NULL),
(332, 21, 'Kabupaten Lamandau', NULL, NULL),
(333, 21, 'Kabupaten Murung Raya', NULL, NULL),
(334, 21, 'Kabupaten Pulang Pisau', NULL, NULL),
(335, 21, 'Kabupaten Seruyan', NULL, NULL),
(336, 21, 'Kabupaten Sukamara', NULL, NULL),
(337, 21, 'Kota Palangkaraya', NULL, NULL),
(338, 22, 'Kabupaten Balangan', NULL, NULL),
(339, 22, 'Kabupaten Banjar', NULL, NULL),
(340, 22, 'Kabupaten Barito Kuala', NULL, NULL),
(341, 22, 'Kabupaten Hulu Sungai Selatan', NULL, NULL),
(342, 22, 'Kabupaten Hulu Sungai Tengah', NULL, NULL),
(343, 22, 'Kabupaten Hulu Sungai Utara', NULL, NULL),
(344, 22, 'Kabupaten Kota Baru', NULL, NULL),
(345, 22, 'Kabupaten Tabalong', NULL, NULL),
(346, 22, 'Kabupaten Tanah Bumbu', NULL, NULL),
(347, 22, 'Kabupaten Tanah Laut', NULL, NULL),
(348, 22, 'Kabupaten Tapin', NULL, NULL),
(349, 22, 'Kota Banjar Baru', NULL, NULL),
(350, 22, 'Kota Banjarmasin', NULL, NULL),
(351, 23, 'Kabupaten Berau', NULL, NULL),
(352, 23, 'Kabupaten Bulongan', NULL, NULL),
(353, 23, 'Kabupaten Kutai Barat', NULL, NULL),
(354, 23, 'Kabupaten Kutai Kartanegara', NULL, NULL),
(355, 23, 'Kabupaten Kutai Timur', NULL, NULL),
(356, 23, 'Kabupaten Malinau', NULL, NULL),
(357, 23, 'Kabupaten Nunukan', NULL, NULL),
(358, 23, 'Kabupaten Paser', NULL, NULL),
(359, 23, 'Kabupaten Penajam Paser Utara', NULL, NULL),
(360, 23, 'Kabupaten Tana Tidung', NULL, NULL),
(361, 23, 'Kota Balikpapan', NULL, NULL),
(362, 23, 'Kota Bontang', NULL, NULL),
(363, 23, 'Kota Samarinda', NULL, NULL),
(364, 23, 'Kota Tarakan', NULL, NULL),
(365, 24, 'Kabupaten Boalemo', NULL, NULL),
(366, 24, 'Kabupaten Bone Bolango', NULL, NULL),
(367, 24, 'Kabupaten Gorontalo', NULL, NULL),
(368, 24, 'Kabupaten Gorontalo Utara', NULL, NULL),
(369, 24, 'Kabupaten Pohuwato', NULL, NULL),
(370, 24, 'Kota Gorontalo', NULL, NULL),
(371, 25, 'Kabupaten Bantaeng', NULL, NULL),
(372, 25, 'Kabupaten Barru', NULL, NULL),
(373, 25, 'Kabupaten Bone', NULL, NULL),
(374, 25, 'Kabupaten Bulukumba', NULL, NULL),
(375, 25, 'Kabupaten Enrekang', NULL, NULL),
(376, 25, 'Kabupaten Gowa', NULL, NULL),
(377, 25, 'Kabupaten Jeneponto', NULL, NULL),
(378, 25, 'Kabupaten Luwu', NULL, NULL),
(379, 25, 'Kabupaten Luwu Timur', NULL, NULL),
(380, 25, 'Kabupaten Luwu Utara', NULL, NULL),
(381, 25, 'Kabupaten Maros', NULL, NULL),
(382, 25, 'Kabupaten Pangkajene Kepulauan', NULL, NULL),
(383, 25, 'Kabupaten Pinrang', NULL, NULL),
(384, 25, 'Kabupaten Selayar', NULL, NULL),
(385, 25, 'Kabupaten Sidenreng Rappang', NULL, NULL),
(386, 25, 'Kabupaten Sinjai', NULL, NULL),
(387, 25, 'Kabupaten Soppeng', NULL, NULL),
(388, 25, 'Kabupaten Takalar', NULL, NULL),
(389, 25, 'Kabupaten Tana Toraja', NULL, NULL),
(390, 25, 'Kabupaten Toraja Utara', NULL, NULL),
(391, 25, 'Kabupaten Wajo', NULL, NULL),
(392, 25, 'Kota Makassar', NULL, NULL),
(393, 25, 'Kota Palopo', NULL, NULL),
(394, 25, 'Kota Pare-pare', NULL, NULL),
(395, 26, 'Kabupaten Bombana', NULL, NULL),
(396, 26, 'Kabupaten Buton', NULL, NULL),
(397, 26, 'Kabupaten Buton Utara', NULL, NULL),
(398, 26, 'Kabupaten Kolaka', NULL, NULL),
(399, 26, 'Kabupaten Kolaka Utara', NULL, NULL),
(400, 26, 'Kabupaten Konawe', NULL, NULL),
(401, 26, 'Kabupaten Konawe Selatan', NULL, NULL),
(402, 26, 'Kabupaten Konawe Utara', NULL, NULL),
(403, 26, 'Kabupaten Muna', NULL, NULL),
(404, 26, 'Kabupaten Wakatobi', NULL, NULL),
(405, 26, 'Kota Bau-bau', NULL, NULL),
(406, 26, 'Kota Kendari', NULL, NULL),
(407, 27, 'Kabupaten Banggai', NULL, NULL),
(408, 27, 'Kabupaten Banggai Kepulauan', NULL, NULL),
(409, 27, 'Kabupaten Buol', NULL, NULL),
(410, 27, 'Kabupaten Donggala', NULL, NULL),
(411, 27, 'Kabupaten Morowali', NULL, NULL),
(412, 27, 'Kabupaten Parigi Moutong', NULL, NULL),
(413, 27, 'Kabupaten Poso', NULL, NULL),
(414, 27, 'Kabupaten Sigi', NULL, NULL),
(415, 27, 'Kabupaten Tojo Una-Una', NULL, NULL),
(416, 27, 'Kabupaten Toli Toli', NULL, NULL),
(417, 27, 'Kota Palu', NULL, NULL),
(418, 28, 'Kabupaten Bolaang Mangondow', NULL, NULL),
(419, 28, 'Kabupaten Bolaang Mangondow Se', NULL, NULL),
(420, 28, 'Kabupaten Bolaang Mangondow Ti', NULL, NULL),
(421, 28, 'Kabupaten Bolaang Mangondow Ut', NULL, NULL),
(422, 28, 'Kabupaten Kepulauan Sangihe', NULL, NULL),
(423, 28, 'Kabupaten Kepulauan Siau Tagul', NULL, NULL),
(424, 28, 'Kabupaten Kepulauan Talaud', NULL, NULL),
(425, 28, 'Kabupaten Minahasa', NULL, NULL),
(426, 28, 'Kabupaten Minahasa Selatan', NULL, NULL),
(427, 28, 'Kabupaten Minahasa Tenggara', NULL, NULL),
(428, 28, 'Kabupaten Minahasa Utara', NULL, NULL),
(429, 28, 'Kota Bitung', NULL, NULL),
(430, 28, 'Kota Kotamobagu', NULL, NULL),
(431, 28, 'Kota Manado', NULL, NULL),
(432, 28, 'Kota Tomohon', NULL, NULL),
(433, 29, 'Kabupaten Majene', NULL, NULL),
(434, 29, 'Kabupaten Mamasa', NULL, NULL),
(435, 29, 'Kabupaten Mamuju', NULL, NULL),
(436, 29, 'Kabupaten Mamuju Utara', NULL, NULL),
(437, 29, 'Kabupaten Polewali Mandar', NULL, NULL),
(438, 30, 'Kabupaten Buru', NULL, NULL),
(439, 30, 'Kabupaten Buru Selatan', NULL, NULL),
(440, 30, 'Kabupaten Kepulauan Aru', NULL, NULL),
(441, 30, 'Kabupaten Maluku Barat Daya', NULL, NULL),
(442, 30, 'Kabupaten Maluku Tengah', NULL, NULL),
(443, 30, 'Kabupaten Maluku Tenggara', NULL, NULL),
(444, 30, 'Kabupaten Maluku Tenggara Bara', NULL, NULL),
(445, 30, 'Kabupaten Seram Bagian Barat', NULL, NULL),
(446, 30, 'Kabupaten Seram Bagian Timur', NULL, NULL),
(447, 30, 'Kota Ambon', NULL, NULL),
(448, 30, 'Kota Tual', NULL, NULL),
(449, 31, 'Kabupaten Halmahera Barat', NULL, NULL),
(450, 31, 'Kabupaten Halmahera Selatan', NULL, NULL),
(451, 31, 'Kabupaten Halmahera Tengah', NULL, NULL),
(452, 31, 'Kabupaten Halmahera Timur', NULL, NULL),
(453, 31, 'Kabupaten Halmahera Utara', NULL, NULL),
(454, 31, 'Kabupaten Kepulauan Sula', NULL, NULL),
(455, 31, 'Kabupaten Pulau Morotai', NULL, NULL),
(456, 31, 'Kota Ternate', NULL, NULL),
(457, 31, 'Kota Tidore Kepulauan', NULL, NULL),
(458, 32, 'Kabupaten Fakfak', NULL, NULL),
(459, 32, 'Kabupaten Kaimana', NULL, NULL),
(460, 32, 'Kabupaten Manokwari', NULL, NULL),
(461, 32, 'Kabupaten Maybrat', NULL, NULL),
(462, 32, 'Kabupaten Raja Ampat', NULL, NULL),
(463, 32, 'Kabupaten Sorong', NULL, NULL),
(464, 32, 'Kabupaten Sorong Selatan', NULL, NULL),
(465, 32, 'Kabupaten Tambrauw', NULL, NULL),
(466, 32, 'Kabupaten Teluk Bintuni', NULL, NULL),
(467, 32, 'Kabupaten Teluk Wondama', NULL, NULL),
(468, 32, 'Kota Sorong', NULL, NULL),
(469, 33, 'Kabupaten Merauke', NULL, NULL),
(470, 33, 'Kabupaten Jayawijaya', NULL, NULL),
(471, 33, 'Kabupaten Nabire', NULL, NULL),
(472, 33, 'Kabupaten Kepulauan Yapen', NULL, NULL),
(473, 33, 'Kabupaten Biak Numfor', NULL, NULL),
(474, 33, 'Kabupaten Paniai', NULL, NULL),
(475, 33, 'Kabupaten Puncak Jaya', NULL, NULL),
(476, 33, 'Kabupaten Mimika', NULL, NULL),
(477, 33, 'Kabupaten Boven Digoel', NULL, NULL),
(478, 33, 'Kabupaten Mappi', NULL, NULL),
(479, 33, 'Kabupaten Asmat', NULL, NULL),
(480, 33, 'Kabupaten Yahukimo', NULL, NULL),
(481, 33, 'Kabupaten Pegunungan Bintang', NULL, NULL),
(482, 33, 'Kabupaten Tolikara', NULL, NULL),
(483, 33, 'Kabupaten Sarmi', NULL, NULL),
(484, 33, 'Kabupaten Keerom', NULL, NULL),
(485, 33, 'Kabupaten Waropen', NULL, NULL),
(486, 33, 'Kabupaten Jayapura', NULL, NULL),
(487, 33, 'Kabupaten Deiyai', NULL, NULL),
(488, 33, 'Kabupaten Dogiyai', NULL, NULL),
(489, 33, 'Kabupaten Intan Jaya', NULL, NULL),
(490, 33, 'Kabupaten Lanny Jaya', NULL, NULL),
(491, 33, 'Kabupaten Mamberamo Raya', NULL, NULL),
(492, 33, 'Kabupaten Mamberamo Tengah', NULL, NULL),
(493, 33, 'Kabupaten Nduga', NULL, NULL),
(494, 33, 'Kabupaten Puncak', NULL, NULL),
(495, 33, 'Kabupaten Supiori', NULL, NULL),
(496, 33, 'Kabupaten Yalimo', NULL, NULL),
(497, 33, 'Kota Jayapura', NULL, NULL),
(498, 34, 'Kabupaten Bulungan', NULL, NULL),
(499, 34, 'Kabupaten Malinau', NULL, NULL),
(500, 34, 'Kabupaten Nunukan', NULL, NULL),
(501, 34, 'Kabupaten Tana Tidung', NULL, NULL),
(502, 34, 'Kota Tarakan', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_kota`
--
ALTER TABLE `master_kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_kota_provinsi_id_foreign` (`provinsi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_kota`
--
ALTER TABLE `master_kota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `master_kota`
--
ALTER TABLE `master_kota`
  ADD CONSTRAINT `master_kota_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `master_provinsi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
