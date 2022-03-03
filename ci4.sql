-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 03:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36 Edg/86.0.622.51', '8888736425f52e96f3bfb0bb16dd2ca4', '2020-11-05 22:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'andriadam@gmail.com', 1, '2020-11-05 22:22:40', 1),
(2, '::1', 'andriadam', NULL, '2020-11-05 22:24:21', 0),
(3, '::1', 'andriadam', 2, '2020-11-05 22:41:57', 0),
(4, '::1', 'andriadam27092000@gmail.com', 3, '2020-11-05 22:44:26', 1),
(5, '::1', 'andriadam27092000@gmail.com', 3, '2020-11-05 22:53:47', 1),
(6, '::1', 'andriadam27092000@gmail.com', 3, '2020-11-05 22:54:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', 'naruto.jpg', NULL, NULL),
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Gramedia', 'onepiece.jpg', NULL, '2020-11-01 04:14:00'),
(11, 'Coba hapus', 'coba-hapus', 'test', 'test', '1604249080_c10f1f2bd5f224467ebd.png', '2020-11-01 08:32:40', '2020-11-01 10:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-11-02-134132', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1604325190, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1604635178, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Mahdi Simanjuntak S.Farm', 'Psr. Supono No. 429, Tegal 75586, SulUt', '2013-03-05 00:54:35', '2020-11-05 02:23:44'),
(2, 'Yono Okta Haryanto S.Pd', 'Jr. Badak No. 247, Gorontalo 51807, SulTra', '2018-08-04 14:39:34', '2020-11-05 02:23:44'),
(3, 'Kawaya Dabukke S.I.Kom', 'Ds. Sampangan No. 882, Bengkulu 98988, Riau', '1974-05-18 05:25:55', '2020-11-05 02:23:44'),
(4, 'Gabriella Utami S.IP', 'Gg. Ahmad Dahlan No. 906, Malang 83834, Riau', '1998-03-12 12:52:14', '2020-11-05 02:23:44'),
(5, 'Galak Mangunsong', 'Jln. Wahidin Sudirohusodo No. 227, Tanjung Pinang 96660, SulTra', '1990-12-30 07:34:54', '2020-11-05 02:23:44'),
(6, 'Yunita Mardhiyah', 'Dk. Haji No. 829, Depok 37028, Gorontalo', '2015-09-24 05:00:06', '2020-11-05 02:23:44'),
(7, 'Warsa Marbun S.Pt', 'Ds. Antapani Lama No. 896, Palu 87763, SulSel', '1992-03-17 20:47:32', '2020-11-05 02:23:44'),
(8, 'Endah Mulyani', 'Jr. Bara Tambar No. 477, Metro 99662, Gorontalo', '1976-08-23 10:37:07', '2020-11-05 02:23:44'),
(9, 'Umaya Cahyadi Adriansyah S.Pt', 'Jln. Dahlia No. 643, Depok 83873, Maluku', '1974-01-01 09:28:43', '2020-11-05 02:23:44'),
(10, 'Michelle Laksmiwati', 'Dk. Banceng Pondok No. 386, Tomohon 28481, JaTim', '1990-03-28 23:03:58', '2020-11-05 02:23:44'),
(11, 'Liman Yahya Anggriawan', 'Ki. Wahidin No. 716, Manado 18679, KepR', '2020-06-15 21:04:14', '2020-11-05 02:23:44'),
(12, 'Rahmi Uyainah M.TI.', 'Gg. Sam Ratulangi No. 896, Tanjungbalai 32324, Gorontalo', '1998-08-22 06:05:12', '2020-11-05 02:23:44'),
(13, 'Rosman Mahendra', 'Dk. Radio No. 377, Palu 79222, Papua', '2020-01-10 04:52:44', '2020-11-05 02:23:44'),
(14, 'Taswir Banara Lazuardi S.H.', 'Jln. Wahid No. 723, Tanjungbalai 98930, KalTeng', '2000-11-07 23:47:57', '2020-11-05 02:23:44'),
(15, 'Purwa Praba Putra S.H.', 'Kpg. Tangkuban Perahu No. 434, Denpasar 21602, SulBar', '1985-12-06 20:05:44', '2020-11-05 02:23:44'),
(16, 'Wakiman Santoso', 'Psr. Basoka Raya No. 94, Palu 34324, KalUt', '2013-01-26 22:44:33', '2020-11-05 02:23:44'),
(17, 'Tirta Lembah Nainggolan S.H.', 'Jln. Sukajadi No. 621, Prabumulih 83429, SulBar', '1981-02-18 06:56:34', '2020-11-05 02:23:44'),
(18, 'Artanto Prakasa', 'Kpg. Bacang No. 139, Payakumbuh 28799, KalBar', '1988-07-22 07:23:31', '2020-11-05 02:23:44'),
(19, 'Ifa Lailasari', 'Dk. Jayawijaya No. 503, Subulussalam 76438, DIY', '1979-03-29 01:19:08', '2020-11-05 02:23:44'),
(20, 'Ifa Jasmin Pertiwi', 'Psr. Sutarto No. 258, Banjarmasin 38683, DKI', '2017-02-13 08:19:05', '2020-11-05 02:23:44'),
(21, 'Saiful Wahyudin S.Ked', 'Gg. Bagonwoto  No. 465, Balikpapan 15833, SumUt', '1977-08-17 10:26:21', '2020-11-05 02:23:44'),
(22, 'Puji Usamah S.Sos', 'Ki. Pasteur No. 249, Gorontalo 43725, SulTra', '1975-03-17 15:57:07', '2020-11-05 02:23:44'),
(23, 'Cakrawala Wijaya S.Sos', 'Dk. Bakau Griya Utama No. 45, Gunungsitoli 57823, JaTim', '1981-07-08 13:30:08', '2020-11-05 02:23:44'),
(24, 'Bakijan Waskita', 'Kpg. Badak No. 772, Semarang 13717, Aceh', '2017-11-27 02:50:28', '2020-11-05 02:23:44'),
(25, 'Saiful Waluyo', 'Jln. Bappenas No. 234, Tual 21513, KalUt', '2001-08-28 00:13:21', '2020-11-05 02:23:44'),
(26, 'Caraka Salahudin', 'Kpg. Suniaraja No. 957, Administrasi Jakarta Selatan 54331, NTB', '1989-05-14 20:57:50', '2020-11-05 02:23:44'),
(27, 'Kayun Sihombing', 'Kpg. Wahid No. 355, Gorontalo 23477, SulUt', '2000-07-06 19:25:36', '2020-11-05 02:23:44'),
(28, 'Maras Napitupulu', 'Dk. Dewi Sartika No. 524, Sibolga 27069, PapBar', '1998-10-31 16:29:34', '2020-11-05 02:23:44'),
(29, 'Harsana Akarsana Situmorang', 'Gg. Yap Tjwan Bing No. 871, Dumai 46485, KalUt', '2002-05-19 23:02:47', '2020-11-05 02:23:44'),
(30, 'Ciaobella Mandasari S.H.', 'Dk. Ketandan No. 139, Langsa 59844, KalTeng', '1972-03-18 03:44:06', '2020-11-05 02:23:44'),
(31, 'Gabriella Kuswandari', 'Ds. Teuku Umar No. 405, Administrasi Jakarta Utara 45477, SumBar', '1994-09-05 15:16:31', '2020-11-05 02:23:44'),
(32, 'Tania Palastri M.Farm', 'Ds. Bak Mandi No. 565, Gorontalo 17907, JaTim', '1992-04-05 13:13:51', '2020-11-05 02:23:44'),
(33, 'Tira Olivia Kusmawati S.Pd', 'Dk. Muwardi No. 888, Solok 50603, SulUt', '1982-02-27 03:20:41', '2020-11-05 02:23:44'),
(34, 'Novi Utami S.E.', 'Psr. Flores No. 962, Pekanbaru 16220, DIY', '2008-11-09 15:36:19', '2020-11-05 02:23:44'),
(35, 'Setya Paiman Wasita', 'Kpg. Sumpah Pemuda No. 995, Sorong 31591, BaBel', '2001-08-22 21:20:36', '2020-11-05 02:23:44'),
(36, 'Nilam Kiandra Sudiati S.Psi', 'Ds. Gambang No. 383, Pekalongan 68726, KalUt', '1983-02-19 14:03:43', '2020-11-05 02:23:44'),
(37, 'Mumpuni Jayadi Rajasa S.Gz', 'Jln. Samanhudi No. 908, Pekanbaru 93914, KepR', '2015-12-13 06:20:50', '2020-11-05 02:23:44'),
(38, 'Tedi Latupono', 'Jln. Sentot Alibasa No. 85, Metro 83459, KepR', '1984-10-04 02:05:51', '2020-11-05 02:23:44'),
(39, 'Karimah Hariyah', 'Dk. Gardujati No. 233, Palangka Raya 35976, JaBar', '2011-02-12 00:00:22', '2020-11-05 02:23:44'),
(40, 'Nasab Hadi Tarihoran', 'Jln. Surapati No. 207, Tangerang Selatan 77941, JaTim', '1992-03-23 03:18:52', '2020-11-05 02:23:44'),
(41, 'Heru Nainggolan', 'Gg. Perintis Kemerdekaan No. 803, Ternate 74177, Jambi', '2017-05-23 15:22:16', '2020-11-05 02:23:44'),
(42, 'Wirda Pratiwi', 'Dk. Sentot Alibasa No. 141, Cirebon 59508, Banten', '2005-06-10 19:14:45', '2020-11-05 02:23:44'),
(43, 'Jindra Wijaya', 'Jr. Radio No. 159, Bontang 33429, SumSel', '1986-02-13 09:05:54', '2020-11-05 02:23:44'),
(44, 'Elma Lailasari M.Pd', 'Ds. Honggowongso No. 444, Sawahlunto 31319, Jambi', '1971-01-29 22:12:10', '2020-11-05 02:23:44'),
(45, 'Zulfa Qori Riyanti S.Ked', 'Jln. Honggowongso No. 922, Gunungsitoli 68150, Gorontalo', '1979-09-07 10:43:05', '2020-11-05 02:23:44'),
(46, 'Cici Ade Hastuti M.M.', 'Dk. Bakit  No. 711, Pontianak 74658, SulTra', '1976-10-08 23:34:41', '2020-11-05 02:23:44'),
(47, 'Bagas Gunarto', 'Ki. Bara No. 161, Kupang 87379, BaBel', '1975-10-31 13:51:30', '2020-11-05 02:23:44'),
(48, 'Sari Puti Yulianti S.E.I', 'Ds. Taman No. 62, Probolinggo 24192, DIY', '1971-06-05 05:35:05', '2020-11-05 02:23:44'),
(49, 'Lili Usamah', 'Ki. Bambon No. 415, Tasikmalaya 82907, SumSel', '2006-02-08 03:34:50', '2020-11-05 02:23:44'),
(50, 'Kayun Jinawi Wasita S.Psi', 'Ds. Otto No. 83, Tangerang 73823, JaTim', '1974-01-07 01:23:00', '2020-11-05 02:23:44'),
(51, 'Ade Pratiwi', 'Jln. Industri No. 972, Bontang 58651, Maluku', '1979-05-01 17:47:22', '2020-11-05 02:23:44'),
(52, 'Hesti Suryatmi M.TI.', 'Dk. Basoka Raya No. 461, Tangerang Selatan 56627, KalSel', '1987-02-28 00:44:28', '2020-11-05 02:23:44'),
(53, 'Ganda Bakti Megantara S.E.I', 'Jln. Gajah Mada No. 101, Bandar Lampung 46324, KalTeng', '2005-09-06 12:54:54', '2020-11-05 02:23:44'),
(54, 'Bella Astuti S.Pd', 'Jln. Pahlawan No. 400, Batu 46667, Gorontalo', '2008-01-03 13:42:59', '2020-11-05 02:23:44'),
(55, 'Zamira Padmasari', 'Ki. Dr. Junjunan No. 216, Tanjung Pinang 14929, KalTim', '1989-09-21 22:42:28', '2020-11-05 02:23:44'),
(56, 'Prasetya Natsir', 'Jr. Ters. Pasir Koja No. 414, Administrasi Jakarta Timur 78961, DKI', '1974-10-09 03:41:24', '2020-11-05 02:23:44'),
(57, 'Vero Lamar Januar M.TI.', 'Ki. Barasak No. 876, Mojokerto 96160, NTT', '1975-08-22 10:41:42', '2020-11-05 02:23:44'),
(58, 'Hardana Gunarto', 'Psr. Camar No. 407, Sawahlunto 67836, KalTim', '2019-11-05 23:28:18', '2020-11-05 02:23:44'),
(59, 'Silvia Ophelia Utami M.TI.', 'Psr. Cikutra Barat No. 618, Sorong 76842, Lampung', '2012-07-27 17:26:50', '2020-11-05 02:23:44'),
(60, 'Hadi Kala Iswahyudi S.Pt', 'Ds. Adisucipto No. 83, Dumai 43581, NTT', '1999-12-14 15:05:03', '2020-11-05 02:23:44'),
(61, 'Ani Jelita Lailasari', 'Ki. Madiun No. 290, Tual 53033, DKI', '1988-08-27 18:56:27', '2020-11-05 02:23:44'),
(62, 'Lasmanto Maheswara', 'Jln. Ters. Pasir Koja No. 718, Sawahlunto 82324, JaTim', '1987-03-17 06:29:39', '2020-11-05 02:23:44'),
(63, 'Dagel Muni Sitompul', 'Psr. Jagakarsa No. 982, Mojokerto 60013, MalUt', '1981-12-01 11:10:09', '2020-11-05 02:23:44'),
(64, 'Hafshah Gilda Mayasari S.Sos', 'Jr. Gambang No. 583, Palopo 76950, DIY', '1998-08-31 09:14:32', '2020-11-05 02:23:44'),
(65, 'Pranata Opan Kurniawan S.Kom', 'Jr. Dago No. 329, Dumai 50073, BaBel', '1994-12-19 06:24:21', '2020-11-05 02:23:44'),
(66, 'Devi Hasanah', 'Dk. Otista No. 888, Pagar Alam 15593, SulBar', '2000-12-04 01:18:23', '2020-11-05 02:23:44'),
(67, 'Aditya Sitorus', 'Jln. Abdul Muis No. 912, Bogor 76473, PapBar', '2003-09-05 08:52:58', '2020-11-05 02:23:44'),
(68, 'Paiman Harjaya Maulana', 'Ki. R.M. Said No. 505, Langsa 85504, MalUt', '2001-06-05 19:37:12', '2020-11-05 02:23:44'),
(69, 'Lukman Maulana S.Gz', 'Dk. Bazuka Raya No. 863, Bandar Lampung 76818, SulUt', '1973-04-15 06:17:20', '2020-11-05 02:23:44'),
(70, 'Koko Tampubolon M.Kom.', 'Jln. Pasteur No. 130, Administrasi Jakarta Utara 65185, Riau', '2002-02-14 09:07:43', '2020-11-05 02:23:44'),
(71, 'Marsito Saefullah', 'Jln. Baha No. 177, Sungai Penuh 11047, PapBar', '2019-08-01 08:37:54', '2020-11-05 02:23:44'),
(72, 'Vero Simanjuntak', 'Psr. Bakin No. 681, Pasuruan 41991, Jambi', '2005-10-19 03:20:40', '2020-11-05 02:23:44'),
(73, 'Margana Prasasta S.Ked', 'Jr. Otto No. 392, Manado 50027, Riau', '1976-02-16 08:52:04', '2020-11-05 02:23:44'),
(74, 'Adika Nashiruddin', 'Psr. Bara Tambar No. 458, Pontianak 61953, Maluku', '2014-01-12 19:24:20', '2020-11-05 02:23:44'),
(75, 'Asmadi Dagel Dongoran', 'Jr. Baha No. 105, Sabang 70955, Riau', '1990-01-23 15:55:53', '2020-11-05 02:23:45'),
(76, 'Puput Wahyuni', 'Dk. Abdul Rahmat No. 49, Pagar Alam 85116, Maluku', '1994-07-10 00:26:22', '2020-11-05 02:23:45'),
(77, 'Eka Waskita', 'Ds. Sukabumi No. 966, Bontang 74289, KalTim', '1995-09-24 05:12:32', '2020-11-05 02:23:45'),
(78, 'Uli Halimah S.IP', 'Dk. Astana Anyar No. 400, Kotamobagu 45801, MalUt', '1997-03-16 08:25:13', '2020-11-05 02:23:45'),
(79, 'Jati Mahendra', 'Ds. Jend. Sudirman No. 747, Pekalongan 12806, Aceh', '2012-11-29 05:57:20', '2020-11-05 02:23:45'),
(80, 'Farah Oktaviani', 'Ki. Sadang Serang No. 10, Ternate 14960, SulTra', '1976-01-29 11:51:21', '2020-11-05 02:23:45'),
(81, 'Dalima Riyanti', 'Gg. Suharso No. 253, Tidore Kepulauan 60026, Gorontalo', '2016-02-13 23:29:19', '2020-11-05 02:23:45'),
(82, 'Warsa Alambana Adriansyah S.H.', 'Dk. Pelajar Pejuang 45 No. 422, Administrasi Jakarta Selatan 86550, KalUt', '1977-10-16 08:04:31', '2020-11-05 02:23:45'),
(83, 'Darijan Irfan Prabowo S.I.Kom', 'Psr. Baja Raya No. 893, Padangsidempuan 74845, KepR', '1996-01-05 00:25:44', '2020-11-05 02:23:45'),
(84, 'Vicky Nasyiah S.IP', 'Ki. Elang No. 317, Binjai 94345, SulSel', '2008-02-06 19:08:44', '2020-11-05 02:23:45'),
(85, 'Mila Eli Anggraini', 'Ds. Jend. Sudirman No. 530, Bima 58285, Aceh', '1977-11-22 00:17:57', '2020-11-05 02:23:45'),
(86, 'Fitriani Amalia Prastuti', 'Ds. Bara No. 230, Sorong 78598, DKI', '1992-01-31 06:48:48', '2020-11-05 02:23:45'),
(87, 'Cornelia Hastuti S.Gz', 'Psr. Laswi No. 594, Medan 65096, KepR', '1981-06-23 19:54:12', '2020-11-05 02:23:45'),
(88, 'Jaya Permadi', 'Kpg. Ki Hajar Dewantara No. 856, Ternate 75396, Maluku', '2009-02-28 19:22:18', '2020-11-05 02:23:45'),
(89, 'Bakidin Maryadi', 'Gg. Aceh No. 583, Padangpanjang 23652, Lampung', '1984-04-05 18:39:59', '2020-11-05 02:23:45'),
(90, 'Ajeng Aisyah Haryanti S.Gz', 'Psr. Banda No. 238, Balikpapan 19922, Riau', '2017-12-19 01:44:39', '2020-11-05 02:23:45'),
(91, 'Kurnia Jailani', 'Gg. Jamika No. 396, Dumai 73966, NTB', '2014-12-10 19:23:41', '2020-11-05 02:23:45'),
(92, 'Karen Palastri', 'Psr. Halim No. 557, Ternate 15981, Bali', '2000-04-11 18:23:45', '2020-11-05 02:23:45'),
(93, 'Gasti Nurul Hasanah', 'Dk. Bakaru No. 767, Medan 46388, Papua', '2013-09-16 05:26:46', '2020-11-05 02:23:45'),
(94, 'Zamira Fujiati', 'Dk. Abdullah No. 565, Pagar Alam 85098, DKI', '2010-02-06 16:54:16', '2020-11-05 02:23:45'),
(95, 'Eko Gunarto', 'Jr. R.M. Said No. 633, Tebing Tinggi 95741, SumBar', '1974-01-04 01:15:41', '2020-11-05 02:23:45'),
(96, 'Galih Kurniawan', 'Kpg. Peta No. 172, Padangpanjang 68100, SumBar', '1979-10-14 02:58:41', '2020-11-05 02:23:45'),
(97, 'Bella Wastuti', 'Jr. Dewi Sartika No. 586, Padangsidempuan 89531, Bengkulu', '2016-07-27 13:34:17', '2020-11-05 02:23:45'),
(98, 'Abyasa Widodo', 'Jr. Kartini No. 982, Ambon 93466, SumSel', '2015-05-25 11:14:29', '2020-11-05 02:23:45'),
(99, 'Winda Purwanti', 'Psr. Labu No. 268, Metro 76276, KalTim', '2018-08-17 17:11:30', '2020-11-05 02:23:45'),
(100, 'Gaman Jabal Halim', 'Jr. Monginsidi No. 714, Bekasi 10286, Papua', '1997-08-28 13:41:39', '2020-11-05 02:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'andriadam27092000@gmail.com', 'andriadam', '$2y$10$aqxGInxoGWfZPk088gRVmetAqs1Hciin/Yun7cf2uddBaP6WgxmF6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-05 22:43:03', '2020-11-05 22:44:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
