-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16 Feb 2019 pada 08.49
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_bank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-12-28 04:18:52', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-04 21:01:03', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-04 21:08:26', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-04 23:02:01', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-05 20:16:29', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-06 03:49:29', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-07 04:58:16', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/users/add-save', 'Add New Data rafif at Users Management', '', 1, '2019-01-07 05:15:10', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-07 05:31:53', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@admin.com login with IP Address ::1', '', 2, '2019-01-07 05:32:22', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/logout', 'admin@admin.com logout', '', 2, '2019-01-07 05:32:33', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-07 05:32:44', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-07 05:34:14', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-07 05:38:42', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/users/add-save', 'Add New Data Admin Provinsi at Users Management', '', 1, '2019-01-07 05:48:19', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/users/add-save', 'Add New Data Admin Produks at Users Management', '', 1, '2019-01-07 06:01:17', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-07 06:10:34', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-07 08:14:49', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/add-save', 'Add New Data Menu Data Master at Menu Management', '', 1, '2019-01-07 08:28:50', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/4', 'Delete data Menu Data Master at Menu Management', '', 1, '2019-01-07 08:30:16', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/add-save', 'Add New Data Menu Data Master at Menu Management', '', 1, '2019-01-07 08:30:37', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/1', 'Delete data Produk at Menu Management', '', 1, '2019-01-07 08:33:48', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/2', 'Delete data Admin Orders at Menu Management', '', 1, '2019-01-07 08:33:54', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/3', 'Delete data Admin Provinsi at Menu Management', '', 1, '2019-01-07 08:34:00', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/5', 'Delete data Menu Data Master at Menu Management', '', 1, '2019-01-07 08:34:14', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/add-save', 'Add New Data Data Master at Menu Management', '', 1, '2019-01-07 08:35:25', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/edit-save/6', 'Update data Data Master at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-07 08:46:35', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/edit-save/6', 'Update data Data Master at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-01-07 08:46:46', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-07 18:22:33', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/module_generator/delete/15', 'Delete data Data Member at Module Generator', '', 1, '2019-01-07 18:29:28', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/8', 'Delete data Data Member at Menu Management', '', 1, '2019-01-07 18:35:42', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/9', 'Delete data Data Member at Menu Management', '', 1, '2019-01-07 18:37:36', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-10 05:59:23', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/10', 'Delete data Data Member at Menu Management', '', 1, '2019-01-10 05:59:58', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-13 06:44:52', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/12', 'Delete data Data Provinsi at Menu Management', '', 1, '2019-01-13 07:10:50', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/14', 'Delete data Data Kota at Menu Management', '', 1, '2019-01-13 07:18:46', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/edit-save/15', 'Update data Data Kota at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-heart</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-13 07:21:42', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/kategori_produk/add-save', 'Add New Data kain at Data Kategori Produk', '', 1, '2019-01-13 07:28:45', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/edit-save/17', 'Update data Data Produk at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-01-13 07:30:07', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/17', 'Delete data Data Produk at Menu Management', '', 1, '2019-01-13 07:30:14', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/produk26/add-save', 'Add New Data dsadas at Data Produk', '', 1, '2019-01-13 07:32:33', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/edit-save/11', 'Update data DataMember at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr></tbody></table>', 1, '2019-01-13 07:34:32', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/edit-save/18', 'Update data Data Produk at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-13 07:34:40', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/add-save', 'Add New Data Data Transaksi at Menu Management', '', 1, '2019-01-13 07:38:23', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-14 06:49:42', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/menu_management/delete/20', 'Delete data Data Orders at Menu Management', '', 1, '2019-01-14 07:19:49', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/module_generator/delete/27', 'Delete data Data Orders at Module Generator', '', 1, '2019-01-14 07:25:59', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/produk26/add-save', 'Add New Data sddasd at Data Produk', '', 1, '2019-01-14 09:53:08', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://localhost/app_ecommerce/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-01-14 23:47:50', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(6, 'Data Master', 'Module', 'users', 'red', 'fa fa-glass', 0, 1, 0, 1, 1, '2019-01-07 08:35:25', '2019-01-07 08:46:46'),
(11, 'DataMember', 'Route', 'AdminMember19ControllerGetIndex', 'normal', 'fa fa-search', 6, 1, 0, 1, 1, '2019-01-10 06:00:35', '2019-01-13 07:34:32'),
(13, 'Data Provinsi', 'Route', 'AdminMasterProvinsi21ControllerGetIndex', NULL, 'fa fa-envelope-o', 6, 1, 0, 1, 2, '2019-01-13 07:11:11', NULL),
(15, 'Data Kota', 'Route', 'AdminMasterKota23ControllerGetIndex', 'normal', 'fa fa-heart', 6, 1, 0, 1, 3, '2019-01-13 07:19:08', '2019-01-13 07:21:42'),
(16, 'Data Kategori Produk', 'Route', 'AdminKategoriProdukControllerGetIndex', NULL, 'fa fa-star', 6, 1, 0, 1, 4, '2019-01-13 07:25:26', NULL),
(18, 'Data Produk', 'Route', 'AdminProduk26ControllerGetIndex', 'normal', 'fa fa-film', 6, 1, 0, 1, 5, '2019-01-13 07:30:56', '2019-01-13 07:34:40'),
(19, 'Data Transaksi', 'Module', 'users', 'normal', 'fa fa-star-o', 0, 1, 0, 1, 2, '2019-01-13 07:38:23', NULL),
(21, 'Data Order', 'Route', 'AdminOrders28ControllerGetIndex', NULL, 'fa fa-film', 19, 1, 0, 1, 1, '2019-01-14 07:20:38', NULL),
(22, 'Data Konfirmasi Pembayaran', 'Route', 'AdminKonfirmasiPembayaranControllerGetIndex', NULL, 'fa fa-home', 19, 1, 0, 1, 3, '2019-01-14 07:33:30', NULL),
(23, 'Data Rating Ulasan', 'Route', 'AdminRatingUlasanControllerGetIndex', NULL, 'fa fa-th-list', 19, 1, 0, 1, 2, '2019-01-14 07:36:15', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(7, 7, 1),
(9, 6, 1),
(10, 8, 1),
(11, 9, 1),
(12, 10, 1),
(14, 12, 1),
(15, 13, 1),
(16, 14, 1),
(18, 15, 1),
(19, 16, 1),
(21, 17, 1),
(23, 11, 1),
(24, 18, 1),
(25, 19, 1),
(26, 20, 1),
(27, 21, 1),
(28, 22, 1),
(29, 23, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-12-28 04:18:50', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-12-28 04:18:50', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-12-28 04:18:50', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-12-28 04:18:50', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-12-28 04:18:50', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-12-28 04:18:50', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-12-28 04:18:50', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-12-28 04:18:50', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-12-28 04:18:50', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-12-28 04:18:50', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-12-28 04:18:50', NULL, NULL),
(12, 'Produk', 'fa fa-glass', 'produk', 'produk', 'AdminProdukController', 0, 0, '2019-01-07 05:17:01', NULL, NULL),
(13, 'Admin Orders', 'fa fa-music', 'orders', 'orders', 'AdminOrdersController', 0, 0, '2019-01-07 05:27:59', NULL, NULL),
(14, 'Admin Provinsi', 'fa fa-envelope-o', 'provinsi', 'provinsi', 'AdminProvinsiController', 0, 0, '2019-01-07 05:46:28', NULL, NULL),
(15, 'Data Member', 'fa fa-search', 'member', 'member', 'AdminMemberController', 0, 0, '2019-01-07 08:37:15', NULL, '2019-01-07 18:29:28'),
(16, 'Data Member', 'fa fa-search', 'member16', 'member', 'AdminMember16Controller', 0, 0, '2019-01-07 18:30:01', NULL, NULL),
(17, 'Data Member', 'fa fa-music', 'member17', 'member', 'AdminMember17Controller', 0, 0, '2019-01-07 18:36:04', NULL, NULL),
(18, 'Data Member', 'fa fa-music', 'member18', 'member', 'AdminMember18Controller', 0, 0, '2019-01-07 18:38:12', NULL, NULL),
(19, 'DataMember', 'fa fa-search', 'member19', 'member', 'AdminMember19Controller', 0, 0, '2019-01-10 06:00:35', NULL, NULL),
(20, 'Data Provinsi', 'fa fa-envelope-o', 'master_provinsi', 'master_provinsi', 'AdminMasterProvinsiController', 0, 0, '2019-01-13 07:09:58', NULL, NULL),
(21, 'Data Provinsi', 'fa fa-envelope-o', 'master_provinsi21', 'master_provinsi', 'AdminMasterProvinsi21Controller', 0, 0, '2019-01-13 07:11:11', NULL, NULL),
(22, 'Data Kota', 'fa fa-heart', 'master_kota', 'master_kota', 'AdminMasterKotaController', 0, 0, '2019-01-13 07:13:45', NULL, NULL),
(23, 'Data Kota', 'fa fa-heart', 'master_kota23', 'master_kota', 'AdminMasterKota23Controller', 0, 0, '2019-01-13 07:19:08', NULL, NULL),
(24, 'Data Kategori Produk', 'fa fa-star', 'kategori_produk', 'kategori_produk', 'AdminKategoriProdukController', 0, 0, '2019-01-13 07:25:26', NULL, NULL),
(25, 'Data Produk', 'fa fa-film', 'produk25', 'produk', 'AdminProduk25Controller', 0, 0, '2019-01-13 07:26:39', NULL, NULL),
(26, 'Data Produk', 'fa fa-film', 'produk26', 'produk', 'AdminProduk26Controller', 0, 0, '2019-01-13 07:30:56', NULL, NULL),
(27, 'Data Orders', 'fa fa-check', 'orders27', 'orders', 'AdminOrders27Controller', 0, 0, '2019-01-13 07:39:27', NULL, '2019-01-14 07:25:59'),
(28, 'Data Order', 'fa fa-film', 'orders28', 'orders', 'AdminOrders28Controller', 0, 0, '2019-01-14 07:20:38', NULL, NULL),
(29, 'Data Konfirmasi Pembayaran', 'fa fa-home', 'konfirmasi_pembayaran', 'konfirmasi_pembayaran', 'AdminKonfirmasiPembayaranController', 0, 0, '2019-01-14 07:33:29', NULL, NULL),
(30, 'Data Rating Ulasan', 'fa fa-th-list', 'rating_ulasan', 'rating_ulasan', 'AdminRatingUlasanController', 0, 0, '2019-01-14 07:36:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2018-12-28 04:18:50', NULL),
(2, 'Admin Produk', 0, 'skin-yellow', NULL, NULL),
(3, 'Admin Orders', 0, 'skin-purple', NULL, NULL),
(4, 'Admin Provinsi', 0, 'skin-red-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2018-12-28 04:18:50', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2018-12-28 04:18:50', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2018-12-28 04:18:50', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2018-12-28 04:18:50', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2018-12-28 04:18:50', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2018-12-28 04:18:50', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2018-12-28 04:18:50', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2018-12-28 04:18:50', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2018-12-28 04:18:50', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2018-12-28 04:18:50', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2018-12-28 04:18:50', NULL),
(12, 1, 1, 1, 1, 1, 2, 4, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(15, 1, 1, 1, 1, 1, 3, 13, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(17, 1, 1, 1, 1, 1, 4, 14, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(30, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(31, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(32, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(33, 1, 1, 1, 1, 1, 1, 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-12-28 04:18:50', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-12-28 04:18:50', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2019-01/54c744c3cc2c1cc5c38a42a87583769a.jpg', 'upload_image', NULL, NULL, '2018-12-28 04:18:50', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-12-28 04:18:50', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-12-28 04:18:50', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-12-28 04:18:50', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-12-28 04:18:50', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-12-28 04:18:50', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-12-28 04:18:50', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'MitraSigmaTekindo', 'text', NULL, NULL, '2018-12-28 04:18:50', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-12-28 04:18:50', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2019-01/3ebda9e12508a69bd9dc18a05fec84ff.jpg', 'upload_image', NULL, NULL, '2018-12-28 04:18:50', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2019-01/f63465caadd50d6efe4daee08226db20.jpg', 'upload_image', NULL, NULL, '2018-12-28 04:18:50', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-12-28 04:18:50', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2018-12-28 04:18:50', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2018-12-28 04:18:50', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$izhvGBZsdE0/OwkAzONRQuXsRvsFNSM2gDqpLoTEirQdak/2xyk4C', 1, '2018-12-28 04:18:49', NULL, 'Active'),
(2, 'rafif', 'uploads/1/2019-01/750xauto_7_fakta_tak_terduga_ini_bukti_terlihat_bodoh_justru_untung_setuju_160208b.jpg', 'admin@admin.com', '$2y$10$zX9WpXA9vT1Sp8FgcOrphuTl/IqZxXqGgU8H4TIu8Uoj90VCptUlG', 2, '2019-01-07 05:15:10', NULL, NULL),
(3, 'Admin Provinsi', 'uploads/1/2019-01/bodoh.jpg', 'admin@provinsi.com', '$2y$10$HdzZSXuyr/P3DJkxT7Rb3eX60U6tOYwkQlolj.fEKmobYROihsXH6', 4, '2019-01-07 05:48:18', NULL, NULL),
(4, 'Admin Produks', 'uploads/1/2019-01/download.jpg', 'admin@produk.com', '$2y$10$a9V3wBglgvWwC4RSyvhsQuptuud1qTx6FZzK1MyYplNpJ6vk2iCou', 2, '2019-01-07 06:01:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_orders` bigint(20) UNSIGNED NOT NULL,
  `id_bank` bigint(20) UNSIGNED NOT NULL,
  `total_pembelian` bigint(20) NOT NULL,
  `catatan_pembeli` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_pengiriman` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_pengiriman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jasa_pengiriman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_layanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_pengiriman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif_pengiriman` bigint(20) NOT NULL,
  `total_keseluruhan` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'kain', '2019-01-13 07:28:45', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `id_member` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `id_produk`, `id_member`, `quantity`, `created_at`, `updated_at`) VALUES
(11, 1, 1, 1, '2019-01-17 01:22:17', '2019-01-17 01:22:17'),
(13, 1, 6, 5, '2019-01-18 05:26:50', '2019-01-18 05:26:50'),
(14, 2, 6, 3, '2019-01-18 07:23:48', '2019-01-18 07:23:48'),
(15, 1, 6, 3, '2019-01-19 03:36:11', '2019-01-19 03:36:11'),
(16, 2, 6, 2, '2019-01-19 05:17:56', '2019-01-19 05:17:56'),
(17, 2, 6, 2, '2019-01-19 05:17:56', '2019-01-19 05:17:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_invoice` bigint(20) UNSIGNED NOT NULL,
  `id_member` bigint(20) UNSIGNED NOT NULL,
  `id_bank` bigint(20) UNSIGNED NOT NULL,
  `an_rekening` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_transfer` date NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_provinsi` bigint(20) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kota`
--

CREATE TABLE `master_kota` (
  `id` int(10) UNSIGNED NOT NULL,
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_kota`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_provinsi`
--

CREATE TABLE `master_provinsi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_provinsi`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_provinsi` int(10) UNSIGNED NOT NULL,
  `id_kota` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `nama`, `username`, `password`, `kecamatan`, `kode_pos`, `alamat`, `no_telp`, `email`, `validation_code`, `status`, `created_at`, `updated_at`, `id_provinsi`, `id_kota`, `remember_token`) VALUES
(1, 'rafif', 'rafiffavian_', 'dasdsadasdas', 'dsadsad', 32323, 'sdsadsadasdas', '08878787878', 'rafiffavian@yahoo.com', '23232', 1, NULL, NULL, 22, 1, NULL),
(2, 'rafif', 'rafiffavian', 'sdsadasdasdas', 'depok', 3223, 'depok', '0887878', 'rafiffavian123@gmail.com', '2', 1, '2019-01-17 04:04:50', '2019-01-17 04:04:50', 1, 1, NULL),
(3, 'dsdas', 'dadsadsa', 'Password', 'dsdsds', 323232, 'dsdsds', '334343', 'eki@gmail.com', '2', 1, '2019-01-17 04:27:51', '2019-01-17 04:27:51', 1, 1, NULL),
(4, 'rafif', 'raffa', '$2y$10$9YnlY7O/XCAy74FY3slyjuDehOpQoMCi5anMGGTPppOpkazquM6qO', 'dsadda', 1212121, 'dasdsa', '097799797', 'rafiffavian123@gmail.com', '2', 1, '2019-01-17 05:17:58', '2019-01-17 05:17:58', 1, 1, NULL),
(5, 'ralfi', 'ralfi', '$2y$10$NSVdblAXlc5klsq8jou0u.rvPWBe1hT3LR597YI1WB/XJD9.lwgDW', 'dsadsad', 2121, 'dsadsad', '098787878', 'ralfi@yahoo.com', '2', 1, '2019-01-17 06:05:14', '2019-01-17 06:05:14', 1, 1, NULL),
(6, 'akbar', 'akbar_', '$2y$10$i5XavxL9QOWzcpElL.W6neV00Ft7ZO88gLbxfCSgt3CZ8r6uk52zy', 'kampung sawah', 121212, 'aceh', '0878877878', 'akbar@gmail.com', '2', 1, '2019-01-17 23:14:45', '2019-01-17 23:14:45', 1, 1, '4fGeu3RkXlA7tQMMahU9QNHmfee0Getyr3XPzcHvwj4Ed5S5ytjxGfG2aPsK');

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
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(26, '2018_12_19_102837_create_admin_table', 2),
(27, '2018_12_19_103308_create_bank_table', 2),
(28, '2018_12_19_103725_update_admin_table', 2),
(29, '2018_12_19_103847_create_produk_table', 2),
(30, '2018_12_19_104849_create_kota_table', 2),
(31, '2018_12_19_104952_create_member_table', 2),
(32, '2018_12_19_111028_create_kategori_produk_table', 2),
(33, '2019_01_06_032319_create_provinsi_table', 3),
(34, '2019_01_06_033147_create_keranjang_table', 4),
(35, '2019_01_06_033605_create_status_order_table', 5),
(36, '2019_01_06_033652_create_orders_table', 6),
(37, '2019_01_06_033959_create_order_itam_table', 7),
(38, '2019_01_06_034105_create_invoice_table', 8),
(39, '2019_01_06_034224_create_konfirmasi_pembayaran_table', 9),
(40, '2019_01_06_034335_update_member1_table', 10),
(41, '2019_01_06_034630_update_member2_table', 11),
(42, '2019_01_06_034815_update_produk1_table', 12),
(43, '2019_01_06_035120_update_order_item1_table', 13),
(44, '2019_01_06_040036_update_orders2_table', 14),
(45, '2019_01_06_040223_update_order_item2_table', 15),
(46, '2019_01_06_040511_update_invoice1_table', 16),
(47, '2019_01_06_040629_update_keranjang1_table', 17),
(48, '2019_01_06_040834_update_rating_ulasan1_table', 18),
(49, '2019_01_14_135816_create_konfirmasi_pembayaran_table', 19),
(50, '2019_01_14_141137_update_keranjang2_table', 20),
(51, '2019_01_15_073555_update_member4_table', 21),
(52, '2019_01_15_074421_update_member5_table', 22),
(53, '2019_01_15_074626_update_member6_table', 23),
(54, '2019_01_15_075247_update_member7_table', 24),
(55, '2019_01_18_071815_update_member8_table', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` bigint(20) UNSIGNED NOT NULL,
  `tgl_order` date NOT NULL,
  `tgl_expired` datetime NOT NULL,
  `status_order` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_item_`
--

CREATE TABLE `order_item_` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` bigint(20) UNSIGNED NOT NULL,
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` bigint(20) NOT NULL,
  `berat` int(11) NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `id_kategori`, `nama_produk`, `harga`, `berat`, `deskripsi`, `status`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 1, 'dsadas', 2323232, 23, 'dasdsadsada', 1, 'uploads/1/2019-01/chef.jpg', '2019-01-13 07:32:33', NULL),
(2, 1, 'sddasd', 34434343, 43, 'dsfdsfdsfsdf', 1, 'uploads/1/2019-01/gallery_bg.jpg', '2019-01-14 09:53:08', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_ulasan`
--

CREATE TABLE `rating_ulasan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_member` bigint(20) UNSIGNED NOT NULL,
  `id_order_item` bigint(20) UNSIGNED NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ulasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_order_`
--

CREATE TABLE `status_order_` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id_orders_foreign` (`id_orders`),
  ADD KEY `invoice_id_bank_foreign` (`id_bank`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keranjang_id_produk_foreign` (`id_produk`),
  ADD KEY `keranjang_id_member_foreign` (`id_member`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `konfirmasi_pembayaran_id_invoice_foreign` (`id_invoice`),
  ADD KEY `konfirmasi_pembayaran_id_member_foreign` (`id_member`),
  ADD KEY `konfirmasi_pembayaran_id_bank_foreign` (`id_bank`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_kota`
--
ALTER TABLE `master_kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_kota_provinsi_id_foreign` (`provinsi_id`);

--
-- Indexes for table `master_provinsi`
--
ALTER TABLE `master_provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id_provinsi_foreign` (`id_provinsi`),
  ADD KEY `master_id_kota_foreign` (`id_kota`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_member_foreign` (`id_member`),
  ADD KEY `orders_status_order_foreign` (`status_order`);

--
-- Indexes for table `order_item_`
--
ALTER TABLE `order_item_`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item__id_produk_foreign` (`id_produk`),
  ADD KEY `order_item__id_order_foreign` (`id_order`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_ulasan`
--
ALTER TABLE `rating_ulasan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_ulasan_id_member_foreign` (`id_member`),
  ADD KEY `rating_ulasan_id_order_item_foreign` (`id_order_item`);

--
-- Indexes for table `status_order_`
--
ALTER TABLE `status_order_`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_kota`
--
ALTER TABLE `master_kota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `master_provinsi`
--
ALTER TABLE `master_provinsi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_item_`
--
ALTER TABLE `order_item_`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_ulasan`
--
ALTER TABLE `rating_ulasan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_order_`
--
ALTER TABLE `status_order_`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_id_bank_foreign` FOREIGN KEY (`id_bank`) REFERENCES `bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_id_orders_foreign` FOREIGN KEY (`id_orders`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_id_member_foreign` FOREIGN KEY (`id_member`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_id_produk_foreign` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_id_bank_foreign` FOREIGN KEY (`id_bank`) REFERENCES `bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `konfirmasi_pembayaran_id_invoice_foreign` FOREIGN KEY (`id_invoice`) REFERENCES `invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `konfirmasi_pembayaran_id_member_foreign` FOREIGN KEY (`id_member`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `master_kota`
--
ALTER TABLE `master_kota`
  ADD CONSTRAINT `master_kota_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `master_provinsi` (`id`);

--
-- Ketidakleluasaan untuk tabel `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `master_id_kota_foreign` FOREIGN KEY (`id_kota`) REFERENCES `master_kota` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `member_id_provinsi_foreign` FOREIGN KEY (`id_provinsi`) REFERENCES `master_provinsi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_id_member_foreign` FOREIGN KEY (`id_member`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_status_order_foreign` FOREIGN KEY (`status_order`) REFERENCES `status_order_` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_item_`
--
ALTER TABLE `order_item_`
  ADD CONSTRAINT `order_item__id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item__id_produk_foreign` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rating_ulasan`
--
ALTER TABLE `rating_ulasan`
  ADD CONSTRAINT `rating_ulasan_id_member_foreign` FOREIGN KEY (`id_member`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ulasan_id_order_item_foreign` FOREIGN KEY (`id_order_item`) REFERENCES `order_item_` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
