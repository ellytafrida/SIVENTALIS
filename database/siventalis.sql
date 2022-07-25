-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 08:19 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siventalis`
--

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id`, `nama`, `foto`, `created_at`, `updated_at`) VALUES
('96bbe957-0ae8-454e-8ce1-e214a0e45455', 'foto', 'app/tim/1657603301-tpV8l.jpg', '2022-07-12 05:21:41', '2022-07-11 22:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `homeconfig`
--

CREATE TABLE `homeconfig` (
  `id` char(36) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homeconfig`
--

INSERT INTO `homeconfig` (`id`, `Nama`, `Deskripsi`, `created_at`, `updated_at`) VALUES
('96ba76e9-a980-44bb-bb1b-3139cdb0d27a', 'Tugas dan Fungsi', '1. Menyelenggarakan Pendidikan Vokasi dalam berbagai rumpun ilmu pengetahuan dan/atau teknologi, meliputi program diploma dan/atau sarjana terapan dan dapat menyelenggarakan program magister terapan, dan/atau doktor terapan sesuai dengan ketentuan peraturan perundangundangan', '2022-07-08 03:27:11', '2022-07-08 03:27:11'),
('96ba76f3-4493-4be8-a8f9-589094777994', 'Misi', '1. menghasilkan sumber daya manusia yang mampu dan menguasai ilmu pengetahuan dan teknologi terapan di bidang pertanian dan pertambangan dalam rangka pembangunan wilayah dan pembangunan nasional', '2022-07-08 03:27:17', '2022-07-08 03:27:17'),
('96ba7709-9db2-4867-989c-7c1759c4c2d5', 'Visi', 'Menjadi Politeknik unggul di bidang pertanian dan pertambangan, baik di tingkat nasional maupun internasional.', '2022-07-08 03:27:32', '2022-07-08 03:27:32'),
('96bbe5dd-9be9-4cda-a3dc-ed5fe083c9ea', 'Tugas dan Fungsi', '1. Menyelenggarakan Pendidikan Vokasi dalam berbagai rumpun ilmu pengetahuan dan/atau teknologi, meliputi program diploma dan/atau sarjana terapan dan dapat menyelenggarakan program magister terapan, dan/atau doktor terapan sesuai dengan ketentuan peraturan perundangundangan', '2022-07-08 20:33:15', '2022-07-08 20:33:15'),
('96c1e650-8213-4709-a533-b07d7cdcbe03', 'Misi', '2. menghasilkan penelitian terapan yang bermanfaat bagi pengembangan ilmu pengetahuan dan teknologi, dunia usaha dan industri serta masyarakat; dan', '2022-07-11 20:09:28', '2022-07-11 20:09:28'),
('96c1e674-a1dd-4ca0-8833-5349e05c53d8', 'Misi', '3. menghasilkan pengabdian kepada masyarakat yang berbasis pada teknologi terapan dan jasa untuk meningkatkan kesejahteraan masyarakat;', '2022-07-11 20:09:52', '2022-07-11 20:09:52'),
('96c1e6bd-0073-47c7-b306-69c66e98e6f2', 'Misi', '4. menghasilkan sistem manajemen pendidikan yang memenuhi prinsip tata kelola yang baik; dan', '2022-07-11 20:10:40', '2022-07-11 20:10:40'),
('96c1e6e8-c394-4242-84c2-1429ed0f9e96', 'Misi', '5. menghasilkan lulusan yang berakhlak mulia, beretika, memiliki kompetensi unggul, dan berdaya saing, baik di tingkat nasional maupun internasional.', '2022-07-11 20:11:08', '2022-07-11 20:11:08'),
('96c1e70b-020b-4e7e-8dce-628033c3aa09', 'Tugas dan Fungsi', '2. Menyelenggarakan kegiatan penelitian yang berorientasi pada penerapan dan pengembangan bidang ilmu pengetahuan dan teknologi serta kebutuhan masyarakat', '2022-07-11 20:11:31', '2022-07-11 20:11:31'),
('96c1e729-6f7d-482f-8193-bf88f6b14231', 'Tugas dan Fungsi', '3. Menyelenggarakan bentuk kegiatan pengabdian kepada masyarakat dalam rangka pengembangan, pendayagunaan, dan penyebarluasan serta pemanfaatan ilmu pengetahuan dan teknologi', '2022-07-11 20:11:51', '2022-07-11 20:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `id` char(36) NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `id_ruangan` char(36) NOT NULL,
  `id_unit` char(36) NOT NULL,
  `id_kondisi` char(36) NOT NULL,
  `Nama_Barang` varchar(255) NOT NULL,
  `Spesifikasi` text NOT NULL,
  `kepemilikan` varchar(255) NOT NULL,
  `Tahun_Pengadaan` year(4) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventaris`
--

INSERT INTO `inventaris` (`id`, `kode_barang`, `id_ruangan`, `id_unit`, `id_kondisi`, `Nama_Barang`, `Spesifikasi`, `kepemilikan`, `Tahun_Pengadaan`, `Foto`, `created_at`, `updated_at`) VALUES
('96dc4995-e397-4986-920b-9cd79ff09d73', 'Multi-001', '96dc3cbd-e451-4a89-8a2f-7f872113b088', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP 280', '1 Mouse & Keyboard', 'Jurusan', 2018, 'app/inventaris/1658728715-ePbSX.jpg', '2022-07-24 22:58:35', '2022-07-24 22:58:35'),
('96dc4a28-27f3-4fc4-8b96-b40be0b3a3d9', 'Multi-002', '96dc3cbd-e451-4a89-8a2f-7f872113b088', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP 280', 'PC', 'Jurusan', 2018, 'app/inventaris/1658728811-cXNhp.jpg', '2022-07-24 23:00:11', '2022-07-24 23:00:11'),
('96dc4a66-d2da-4e5d-a95f-089503174c21', 'Multi-003', '96dc3cbd-e451-4a89-8a2f-7f872113b088', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP 280', 'PC', 'Jurusan', 2018, 'app/inventaris/1658728852-Rgski.jpg', '2022-07-24 23:00:52', '2022-07-24 23:00:52'),
('96dc4add-9a43-4f68-87fb-63f1d93e4a34', 'Multi-004', '96dc3cbd-e451-4a89-8a2f-7f872113b088', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP 280', 'PC', 'Jurusan', 2018, 'app/inventaris/1658728930-UiWlI.jpg', '2022-07-24 23:02:10', '2022-07-24 23:02:10'),
('96dc4b2c-cb5d-4f1e-923f-6916fbd24daf', 'Multi-005', '96dc3cbd-e451-4a89-8a2f-7f872113b088', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP 280', 'PC', 'Jurusan', 2018, 'app/inventaris/1658728981-gyTka.jpg', '2022-07-24 23:03:01', '2022-07-24 23:03:01'),
('96dc4b6d-90f2-462d-b7b0-a160ec44c3ee', 'Multi-006', '96dc3cbd-e451-4a89-8a2f-7f872113b088', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP 280', 'PC', 'Jurusan', 2018, 'app/inventaris/1658729024-ywTQj.jpg', '2022-07-24 23:03:44', '2022-07-24 23:03:44'),
('96dc4bb1-41d0-4a2b-89c6-9de99a17fda6', 'Multi-007', '96dc3cbd-e451-4a89-8a2f-7f872113b088', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP 280', 'PC', 'Jurusan', 2018, 'app/inventaris/1658729068-72Dgg.jpg', '2022-07-24 23:04:28', '2022-07-24 23:04:28'),
('96dc4c08-9acc-4091-acf8-55f2e7a6a480', 'Multi-008', '96dc3cbd-e451-4a89-8a2f-7f872113b088', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP 280', 'PC', 'Jurusan', 2018, 'app/inventaris/1658729125-QjXDg.jpg', '2022-07-24 23:05:26', '2022-07-24 23:05:26'),
('96dc4c60-895e-4782-82d0-ede4a1e49572', 'Multi-009', '96dc3cbd-e451-4a89-8a2f-7f872113b088', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP 280', 'PC', 'Jurusan', 2018, 'app/inventaris/1658729183-l9QDm.jpg', '2022-07-24 23:06:23', '2022-07-24 23:06:23'),
('96dc4d75-869a-432c-be05-1b08082443ae', 'Rekay-001', '96dc3c81-3314-4478-9826-300a372e7816', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP Slimline', 'PC', 'Jurusan', 2018, 'app/inventaris/1658729365-6qL6s.jpg', '2022-07-24 23:09:25', '2022-07-24 23:09:25'),
('96dc4e5e-0911-4b53-9416-d04037dd0a4f', 'Rekay-002', '96dc3c81-3314-4478-9826-300a372e7816', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP Slimline', 'PC', 'Jurusan', 2018, 'app/inventaris/1658729517-ALfif.jpg', '2022-07-24 23:11:57', '2022-07-24 23:11:57'),
('96dc4eca-06ef-4227-9e16-a4367052a384', 'Rekay-003', '96dc3c81-3314-4478-9826-300a372e7816', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit HP Slimline', 'PC', 'Jurusan', 2018, 'app/inventaris/1658729588-Q8SGt.jpg', '2022-07-24 23:13:08', '2022-07-24 23:13:08'),
('96dc4f97-fb2f-4032-bec6-b55bf6c72190', 'Progr-001', '96dc3c48-4d08-435a-b5c2-3c9832e86958', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit All Lenovo', 'PC', 'Jurusan', 2021, 'app/inventaris/1658729723-2xfJz.jpg', '2022-07-24 23:15:23', '2022-07-24 23:15:23'),
('96dc5008-00a1-4bad-8332-5bbbfbcab0ab', 'Progr-002', '96dc3c48-4d08-435a-b5c2-3c9832e86958', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit All Lenovo', 'PC', 'Jurusan', 2021, 'app/inventaris/1658729796-wSjsM.jpg', '2022-07-24 23:16:36', '2022-07-24 23:16:36'),
('96dc504f-0c15-44f0-b406-af83175fd5a9', 'Progr-003', '96dc3c48-4d08-435a-b5c2-3c9832e86958', '96d23804-19e9-44aa-95db-c007af6d9d21', '96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'PC Unit All Lenovo', 'PC', 'Jurusan', 2021, 'app/inventaris/1658729843-j58io.jpg', '2022-07-24 23:17:23', '2022-07-24 23:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` char(36) NOT NULL,
  `kondisi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `created_at`, `updated_at`) VALUES
('96d239d3-26c2-4c7b-8fa5-8747d45c5265', 'Baik', '2022-07-19 22:56:14', '2022-07-19 22:56:14'),
('96d239dd-7463-4157-837d-acf5d8ccb701', 'Rusak', '2022-07-19 22:56:21', '2022-07-19 22:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_07_08_043014_create_simadu_pegawai_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_unit` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik_ktp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_depan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_belakang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmasi_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `id_unit`, `nip`, `nup`, `nik_ktp`, `username`, `nama`, `foto`, `gelar_depan`, `gelar_belakang`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `password`, `confirmasi_password`, `created_at`, `updated_at`) VALUES
('02b2a632-7432-4eaa-9898-b2ea879ff373', '96d23804-19e9-44aa-95db-c007af6d9d21', NULL, '19780803201505168', NULL, 'admin', 'Heri Darmawan', '', NULL, 'S.T', 'Ketapang', '1978-08-03', 'laki-laki', NULL, '$2y$10$wiWISani/w3ElZhKNvzqfuAOHbTku5CicmOqJkmFKa7EaTF/2uyuG', 'admin', '2022-07-07 21:30:16', '2022-07-20 00:24:25'),
('02fb52d1-876d-4dca-83d5-a8d769842eb5', '0', NULL, '19890614 201302 129', NULL, NULL, 'M. Riduan', '', NULL, 'A.Md', 'Ketapang', '1989-06-14', 'Laki-laki', 'Islam', '$2y$10$PiMqi80/xUHN22maPicj2e8Ggi56.XyWfPWxJ3MRoUvckQn1pObSu', NULL, '2022-07-07 21:30:16', '2022-07-07 21:30:16'),
('03968e4c-1c63-4e6e-8d6a-4c31651cb5ac', '0', '19850516 202121 2 004', NULL, NULL, NULL, 'Eva Susana', '', NULL, 'A.Md', 'Ketapang', '1985-05-16', 'Perempuan', '', '$2y$10$aWCmbZ2P.cXmFUQaX1v2BejYJ4hDUvqZgfbgtiQXjAy40/fMfieu.', NULL, '2022-07-07 21:30:16', '2022-07-07 21:30:16'),
('03c8bbe4-15b5-4fa5-8024-dcc8abd2f9ac', '0', NULL, NULL, NULL, NULL, 'Vensya Aswal Anugerah Panca Poetri', '', NULL, 'A.Md', 'Pontianak', '1993-03-31', 'Perempuan', 'Islam', '$2y$10$w7oWFqgMGMw.1fPtDeUMpudvYqMDAYILUZSkn7WoiyOZZ2B7eSDjy', NULL, '2022-07-07 21:30:16', '2022-07-07 21:30:16'),
('045cfd08-9a76-4c18-a1eb-b43a99f48c57', '0', NULL, '19920717 201512 174', NULL, NULL, 'Devi Elvira', '', NULL, 'S.Pd', 'Ketapang', '1992-07-17', 'Perempuan', '', '$2y$10$Mwd./Qgp71l3WmRQ..tRJ.VryA6HZvl8I3otMm.T353PcsHLzerau', NULL, '2022-07-07 21:30:16', '2022-07-07 21:30:16'),
('0854e795-2c48-484e-b919-675b7be7dc7c', '0', '19830917 202121 1 001', NULL, NULL, NULL, 'Adha Panca Wardanu', '', NULL, 'S.TP.,M.P', 'Pontianak', '1983-09-17', 'Laki-laki', 'Islam', '$2y$10$AK2MeqORf3ZlQCWJJIBaZOcTHzzu4KsFIHWJCXKfBCL3.lmilxvSu', NULL, '2022-07-07 21:30:16', '2022-07-07 21:30:16'),
('093cca9b-a773-4867-a5f6-a665467f791b', '0', NULL, '19890622 201601 95', NULL, NULL, 'Juniarti', '', NULL, 'A.Md', 'Ketapang', '1989-06-22', 'Perempuan', '', '$2y$10$d7iG0elqZmgpT2v1DYpz5uqzy4YRAQuk1szM.8KiWVJdkdg7OcN6G', NULL, '2022-07-07 21:30:16', '2022-07-07 21:30:16'),
('0a89879b-7875-4420-ab42-4ec9cb00e86e', '0', '19910217 202121 1 002', NULL, NULL, NULL, 'Fajar Pebriyono', '', NULL, 'A. Md', 'Ketapang', '1991-02-17', 'Laki-laki', '', '$2y$10$JYt9KON/0RBjZkqNYdfyXe6Iqpv0dzzF0prAHVjzxDT3HA4XGC.96', NULL, '2022-07-07 21:30:16', '2022-07-07 21:30:16'),
('0ed02966-83fd-4b68-b3e6-077f75582dd2', '0', NULL, '19961119 202107 260', '6171035911960020', NULL, 'Dyah Novia Nugraheni', '', NULL, 'S.Tr.Ak.,M.Ak.', 'pontianak', '1996-11-19', 'Perempuan', 'Islam', '$2y$10$F/QpEzx6GSUtldPE.5EZ7O7RJrM.0bZ0kybe3.R3gbhfOAw16klxK', NULL, '2022-07-07 21:30:16', '2022-07-07 21:30:16'),
('13c7279b-9d2e-4afa-a641-ca2ebc14f151', '0', NULL, NULL, NULL, NULL, 'Moh Rokim', '', NULL, '', 'Purworejo', '1970-01-01', 'Laki-laki', '', '$2y$10$I9qZUx/6OIFRGFyk.iZS/.jQ98np3lQuWuZ/F4z245Pt/AEkbdLhq', NULL, '2022-07-07 21:30:16', '2022-07-07 21:30:16'),
('13dd745d-221f-421f-b78b-138131893d28', '0', NULL, NULL, NULL, NULL, 'Dedi Kurniadi', '', NULL, '', 'Ketapang', '1970-01-01', 'Laki-laki', '', '$2y$10$dISrOEUUPmFIKIUx5ccM0.WLGP4bXrdFP3ES4CwmpgGBvFHFdBPKu', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('143f2dec-fc53-45e6-a700-989bdf50c019', '0', '19851008 202121 1 005', NULL, NULL, NULL, 'Erick Radwitya', '', NULL, 'S.ST., MT', 'Ketapang', '1985-10-08', 'Laki-laki', 'Islam', '$2y$10$dWv/7eM4RgPwhzthpVpsuuNe7tRD6ABLoBE51yTnU.Z5YIwxDPcwa', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('14e636c6-3ca1-4e24-9072-3b0b707abc99', '0', NULL, NULL, NULL, NULL, 'M. Randi Hardiyanto', '', NULL, '', 'Ketapang', '1993-05-25', 'Laki-laki', '', '$2y$10$v5VbJlzvgC9TonktIDEVEOG6px4gLf/9sRFlIRSDtFZtilX4fXAa6', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('15417e2f-797e-43fe-ac3f-54b550f683ad', '0', '19710324 202121 1 001', NULL, NULL, NULL, 'Molyadi', '', NULL, 'A.Md', 'Ketapang', '1971-03-24', 'Laki-laki', 'Islam', '$2y$10$e/HVDrFbJICuOwb/EaJmUOVy.jO2Hf4mupQkffDvhO1gGO9C232Ky', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('159c1ff3-499e-4acc-84c2-bc844f8da135', '0', '19820310 202121 1 003', NULL, NULL, NULL, 'Trian Adimarta', '', NULL, 'S.TP., M.Sc', 'Surabaya', '1982-03-10', 'Laki-laki', 'Islam', '$2y$10$B3tevwwt6ZZFOowdFBKSb.K3P.S7R3ix9QHAUaP8jYjuqZ5PVbcQi', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('16cb2f5a-392a-48bf-b846-bcf548ded51f', '0', NULL, '19920521 201512 175', NULL, NULL, 'Muhamad Reza Lukmana', '', NULL, 'A.Md', 'Ketapang', '1992-05-21', 'Laki-laki', 'Islam', '$2y$10$O5OfybQv4IPnRrLHKEQqHe418Vt7wXvhszWKedCylFR3e2xdUzTC6', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('18413e6f-09d1-4ae5-b32e-cb0d2c2f4427', '0', NULL, NULL, NULL, NULL, 'Supiandi', '', NULL, '', 'Ketapang', '1980-06-09', 'Laki-laki', '', '$2y$10$6CCeir.WXBsiBzoDPhDqdu6Vcukpd4tDJwlIDOBmOMk2srIZrxCl.', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('18514bb6-0287-4061-b323-05247b4132c4', '0', '19720918 202121 2 002', NULL, NULL, NULL, 'Heni Haryani', '', NULL, NULL, 'Ketapang', '1972-09-18', 'Perempuan', '', '$2y$10$kKgzedV/haGQ5DxlMlO32OhLSEfF8Qt4Z8EvYJHZlk6AcJ/SD43YG', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('189bd94f-5fd1-451a-8a00-031840e9a07a', '0', NULL, NULL, NULL, NULL, 'Khairil', '', NULL, 'S.P.,M.P', 'Samili', '1981-09-17', 'Laki-laki', 'Islam', '$2y$10$RVOBPs3CHeWO6esEAciEjuQUDnmlbTNXJKsuXD9/GToKWIbzv7Etu', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('18eebaa7-84fd-48ac-9c61-81dfe56e8074', '0', '19770221 200803 1 001', NULL, NULL, NULL, 'Uti Rustam Efendi', '', NULL, 'S.T., M.T', NULL, '1977-02-21', 'Laki-laki', 'Islam', '$2y$10$aCbo6xMgNjwDyK6jdbobX.p1utCg44ONoCDbL/Pxv9gZmFJ2UkUdO', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('193ca687-65a0-4711-b0c0-1927043c277d', '0', NULL, '19930528 201603 202', NULL, NULL, 'Fachrul Rozie', '', NULL, 'S.T, M.Tr.T', 'Ketapang', '1993-05-28', 'Laki-laki', 'Islam', '$2y$10$kjXESsIDGZTMQ9NDAdJvFew7att3VKqqEeUHQvCmRGHr1562RcxRi', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('1a3344f4-7b24-487e-a9fb-5ad326c13fff', '0', '19900802 201903 1 003', NULL, NULL, NULL, 'Kondhang Dhika Kusuma', '', NULL, 'A.Md', 'Surakarta', '1990-08-02', 'Laki-laki', 'Islam', '$2y$10$tz2Xf8kwvZIzKnBeZQvSWuS.QtKATc3UNZxDNjcle/Mrge0euQm46', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('1a9c1f07-2017-4492-a4f6-0dc243e7d999', '0', '19911112 201903 1 014', NULL, NULL, NULL, 'Kasrianto Wijaya', '', NULL, 'A.Md', 'Palopo', '1991-11-12', 'Laki-laki', 'Islam', '$2y$10$.EfhhwsolC2ziN9Z2oh/ZuFeVJK6A/3Wyxm2ilunFTg7UihCnYTw.', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('1b0267f4-d517-4512-a4c3-301a96372d12', '0', '19890623 201903 2 015', NULL, NULL, NULL, 'Syarifah Aqla', '', NULL, 'S.Pd.,M.T', 'Pontianak', '1989-06-23', 'Perempuan', 'Islam', '$2y$10$UsM5VoNE6hVs5X9oPccfW.NVFZEO1rD7TfxSWigtF1qe3W/hvKURy', NULL, '2022-07-07 21:30:17', '2022-07-07 21:30:17'),
('1b483074-16f8-4c4a-908a-ba3e3ee8e7e1', '0', '19780511 202121 1 003', NULL, NULL, NULL, 'Helanianto', '', NULL, 'S.T.,M.T', 'Randau', '1978-05-11', 'Laki-laki', 'Katholik', '$2y$10$K97LsZc.6giX6lqbXuq1SOjPibrZQqKGlA2suBRpOYyUcgySzTwjm', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('1ba7321f-8186-4fbb-8cff-ff1d597d4336', '0', '19760921 202121 1 002', NULL, NULL, NULL, 'Normansyah', '', NULL, 'S.T.,M.T', 'Ketapang', '1976-09-21', 'Laki-laki', 'Islam', '$2y$10$j/jsPgZMzoERe2olJgQrbu2l9tiR9KO1x2/qKrd/7C/sIJBiG4esq', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('1d5b7688-73c1-4142-99f3-94bbae58ed79', '0', '19880501 201903 1 007', NULL, NULL, NULL, 'Budi Pratomo Sibuea', '', NULL, 'S.ST.,M.ST', 'Tebing Karimun', '1988-05-01', 'Laki-laki', 'Kristen', '$2y$10$J/4BmgkfE2Dc0OwxwKtXYuj5EBq3yQHEpo.KijmcmwCKwjNsUF8Ty', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('1e0985f8-2c11-4f3f-845b-6bf9a09c3b2d', '96ba9def-6773-4fc3-a886-a45e093e5dfe', NULL, '19930128 201609 210', NULL, 'admin', 'Ar-Razy Muhammad', '', NULL, 'S.T', 'Pontianak', '1993-01-28', 'Laki-laki', 'Islam', '$2y$10$orGREta3.6.nlySRqMyXyOXwG3x.94MhNzauLVsazjApEnvZpfIGO', 'admin', '2022-07-07 21:30:18', '2022-07-11 19:05:16'),
('1e9dc080-4487-494e-9225-72b737e726c3', '0', NULL, '19880328 201802 230', NULL, NULL, 'Muhammad Fadli', '', NULL, 'A.Md', 'Semarang', '1988-03-28', 'Laki-laki', 'Islam', '$2y$10$G1QfLNPNzc5qg0wHGJhlZeMnqp4Puh..X4oKRJ93Hq4uRcAnxvHIW', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('1f160b23-2073-4ad4-9ffc-1e417dc85cc9', '0', NULL, '19900109 201512 171', NULL, NULL, 'Sarwendah Ratnawati Hermanto', '', NULL, 'S.Pd., M.Sc', 'Surakarta', '1990-01-09', 'Perempuan', 'Islam', '$2y$10$oxherJm9jf5AagHXZQv7wehxi3Urid6Xz5EeMAIsKwE3bCXyZe69S', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('20ab0593-f9f5-405f-86ff-a3f3c50d804b', '0', NULL, '19910413 201509 161', NULL, NULL, 'Rika Fitry Ramanda', '', NULL, 'M.P', 'Ketapang', '1991-04-13', 'Perempuan', 'Islam', '$2y$10$T05mqYh1WnLYuoE7of8x6ub0rNZtEs4C4EcHJp1Odm4FKE6BXdNye', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('20c6f98d-f528-4fc2-9016-ef526e32b7ba', '0', NULL, '19830327 201701 215', NULL, NULL, 'Uray Sriyani', '', NULL, '', 'Balai Karangan', '1983-03-27', 'Perempuan', '', '$2y$10$bPknvABPTH7N5/7BCcAOvOVfXcCX6Xww2FvlrR.4bI36K7XmJt35.', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('2189d7cd-773e-4845-84a5-fffaa1ea901f', '0', '19880315 201903 2 011', NULL, NULL, NULL, 'Maya Santi', '', NULL, 'S.Pd.,M.T', 'Ketapang', '1988-03-15', 'Perempuan', 'Islam', '$2y$10$B8ZHpvqgmP/Zg0tSY8w78OxDGRlpju8nWdRRiomVEOCVdiXe9dxXO', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('22bf31f9-6306-425e-9d54-89ace70ccda4', '0', '19880424 201903 2 012', NULL, NULL, NULL, 'Hurul\'ain', '', 'Ir.', 'S.T.,M.T', 'Pemangkat', '1988-04-24', 'Perempuan', 'Islam', '$2y$10$8MpKZms1mgFPwGZo.IzrJePX0uBWu0f85nLuW3fqSYRPmXp5PCYKW', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('22e45ac1-e10f-4134-8739-23fd2faa507c', '0', '19840605 202121 1 005', NULL, NULL, NULL, 'Effendi', '', NULL, ' A.Md', 'Ketapang', '1984-06-05', 'Laki-laki', '', '$2y$10$UpCgGfZeCf7uiu7Lz3m4nO.AikQ5QRHsdEpPApqzqOgzrqPDQxehK', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('252e762f-e81d-4c33-8aae-11b68c651c17', '0', NULL, NULL, NULL, NULL, 'Ibnu Hajar', '', NULL, '', 'Ketapang', '1969-01-29', 'Laki-laki', '', '$2y$10$V36TO1CBuHsQ0GG9e1UL8eS3LirwmZNInJgvIGC3v9HSLxmc9UiJG', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('26f5893c-c355-4040-9ae4-6e53187c725f', '0', '19740722 202121 1 005', NULL, NULL, NULL, 'Muh Anhar', '', NULL, 'S.T.,M.T', 'Boyolali', '1974-07-22', 'Laki-laki', 'Islam', '$2y$10$moGRf0VsjUPIuSZMv5N33.x.ltHoJbDKtlLjXRjoUGO03zOe2NL.a', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('28e2a56e-3c76-4d19-844f-a3092954f0b7', '0', '19850217 201504 2 002', NULL, NULL, NULL, 'Encik Eko Rifkowaty', '', NULL, 'S.TP.,M.P', 'Pontianak', '1985-02-17', 'Perempuan', 'Islam', '$2y$10$7ZG5EHSVC95weRDZf83UF.R4AH6gxxrJIcEVnAgbaEUKYjwQD0CmS', NULL, '2022-07-07 21:30:18', '2022-07-07 21:30:18'),
('29157361-a115-43a4-86ed-fbe66964c0d7', '0', '19810521 202121 1 006', NULL, NULL, NULL, 'Dedi Sartono', '', NULL, 'A.Md', 'Ketapang', '1981-05-21', 'Laki-laki', '', '$2y$10$5tG1iqNDL/10IuEXd65/7OhcN5jBaXPibvMcyaMKq/KcsENZ8ax3C', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('295e592a-3426-40a6-899c-8860e5929164', '0', NULL, '19911010 201507 155', NULL, NULL, 'Lita Nurpuspita Sari', '', NULL, 'S.Sos.', 'Singkawang', '1991-10-10', 'Perempuan', 'Islam', '$2y$10$o4vMGu9.DpVePvnwE1d3LukLgBe6H4gA/m4PV27/FrBBqQwEq1yEi', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('29cb26c6-4361-4341-971d-07be567f2a6f', '0', NULL, '19820601 201602 198', NULL, NULL, 'Lusia Romana', '', NULL, 'S.IP', 'Pantan', '1982-06-01', 'Perempuan', '', '$2y$10$SvHzWt./Mm7fdsP1jrhjpeQ.O/slmEQ5nyLgeNI5M2dKhX32fNLq.', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('30ccea2e-48be-4213-ae9a-379abd41a42c', '0', NULL, '19821217 201509 164', NULL, NULL, 'Beny Setiawan', '', NULL, 'S.TP.,M.P', 'Pontianak', '1982-12-17', 'Laki-laki', 'Islam', '$2y$10$VZwrR4S2bboQhROhEgxPX.oFdK96q.zfcU/MaXQkzuauESWgf/x.G', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('30f2648e-3a3a-45a0-bdc2-e984af4abb7f', '96ba9df8-96ac-41ad-b6a7-544436507028', '19890705 202121 1 002', NULL, NULL, 'admin', 'M. Iwan Toro', '', NULL, 'A.Md.', 'Pebihingan', '1989-07-05', 'Laki-laki', 'Islam', '$2y$10$HQj/wJZUrGBgeD1FFMQUuOZ1b6Hw66dqdNbbZTeFoOy.ETISr8Bfm', 'admin', '2022-07-07 21:30:19', '2022-07-11 19:56:00'),
('31236e8b-5191-4433-95a9-0390e1e13ac1', '0', NULL, '19931213 201601 183', NULL, NULL, 'Yunita', '', NULL, 'A.Md', 'Ketapang', '1993-12-13', 'Perempuan', 'Islam', '$2y$10$pOmzNJCBAK.I9tAzVCJyfeh8020zRpBIEA1RM0IP9K8zfwEc1I2Z6', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('321326cb-17cd-4634-bdc8-619c26d4aea3', '0', NULL, '19911112 201411 146', NULL, NULL, 'Winda Arlianty', '', NULL, 'S.Kom.', 'Ketapang', '1991-11-12', 'Perempuan', 'Islam', '$2y$10$OUTLFd.ljXQsZMMPKl.5/upis.PZQrhgaKIoiXNZ6zYum0QbCS.H2', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('32d16bd7-58b5-487a-aab3-66cbb4801605', '0', '19761218 202121 1 004', NULL, NULL, NULL, 'Abang Suryadi', '', NULL, 'A.Md', 'Putussibau', '1976-12-18', 'Laki-laki', 'Islam', '$2y$10$X58o/xojHV2ezxjN.JmCyeWNCd4WjIpqU9ZnqqObhqIb1Pj8EcHWy', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('35a66251-da37-4d69-b652-7eee40512ca2', '0', '19820521 202121 1 003', NULL, NULL, NULL, 'Refid Ruhibnur', '', NULL, 'S.ST., M.M.', 'Pontianak', '1982-05-21', 'Laki-laki', 'Islam', '$2y$10$dz8bKS1TyaS40OvlAWBBVu3c6KkzWQ.k.5eT9fqVtaz9pG0sljmuO', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('384a1c52-c826-4a58-9dac-effcab2e701a', '0', NULL, '19901117 201604 205', NULL, NULL, 'Uci Novianti', '', NULL, 'S.Pd', 'Ketapang', '1990-11-17', 'Perempuan', '', '$2y$10$r3SkaOwvkAG2nud9EzUTWe8IJ55JbXtdagdEqWPamUeYt9tSNgwnu', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('38e42c98-b490-4f03-a289-35939e035cfa', '0', NULL, '19900123 201601 178', NULL, NULL, 'Irfan Cholid', '', NULL, 'S.P.,M.MA', 'Ketapang', '1990-01-23', 'Laki-laki', 'Islam', '$2y$10$zDz4/UCDsIoK1zP4HRXgReW6T3QkXBv/18AhbNvZxXimFKnU.6Hzu', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('3a1f1872-c67a-4bc7-9f92-0c852f44e1ec', '0', NULL, NULL, NULL, NULL, 'Agus Sudrajat', '', NULL, '', 'Banyumas', '1979-06-08', 'Laki-laki', '', '$2y$10$gQiaqwmcIbRm.KQIdk3Ro.AOMbs7YL9ctSyqyVYSKcfLVz7eVpVtW', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('3ae1bb68-15ef-4eaa-a153-0d7dd87c6654', '0', NULL, NULL, NULL, NULL, 'Rosnila', '', NULL, '', 'Sembelangaan', '1967-01-05', 'Perempuan', '', '$2y$10$6GVdUqs9u2d7Cv0TWMHhSOCoGTboTf7YgnZM1hg3qMK1nxsLgi4Ym', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('3bb510ed-d9cc-4ae5-bf83-ecb726cbc832', '0', '19640914 198601 1 003', NULL, NULL, NULL, 'Temy Akhyar', '', NULL, NULL, NULL, NULL, 'Laki-laki', 'Islam', '$2y$10$Y3IZeVBztGNl.VQZIFTb4OFLDuJEv5BlqIfUdtsJoEx6Y6S6ysd1O', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('3c7a9d69-339d-4ee3-9943-b9acec923fc5', '0', NULL, '19871107 201507 156', NULL, NULL, 'Lukman Faisal', '', NULL, 'S.H.', 'Singkawang', '1987-11-07', 'Laki-laki', 'Islam', '$2y$10$1VkuHO/eQRvCqBmW1PWURuMGu2v26Oq5H4pO/t6eRXO.AsryZn.P6', NULL, '2022-07-07 21:30:19', '2022-07-07 21:30:19'),
('3eeb6e49-8f87-483b-b811-e7b91dc94a8d', '0', NULL, '19911121 201701 214', NULL, NULL, 'Anugrah Bayu Saputra', '', NULL, 'A.Md', 'Pontianak', '1991-11-21', 'Laki-laki', 'Islam', '$2y$10$UoPRIUpJzo909iG.6UKGtOP/Llg2C0rEp34YOPFUvTy4uK470NpEK', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('3f60bbb2-e5e2-4297-b003-62fe2ffebf43', '96d23804-19e9-44aa-95db-c007af6d9d21', NULL, '19980609 202104 252', NULL, 'junaidi', 'Junaidi', 'app/pegawai/1657510110-JwAcM.jpg', NULL, 'A.Md.Kom', NULL, '1998-06-09', 'laki-laki', 'Islam', '$2y$10$Hf5qTQbNrGh47SDCXw6MU.iuxlgwrSqQMTPNEVv/wtG97c3QxPi9u', '12345', '2022-07-07 21:30:20', '2022-07-19 22:58:31'),
('42e5ae5d-611b-4c00-833e-ea735145b325', '0', NULL, '19930216 201809 240', NULL, NULL, 'Ira Arianti', '', NULL, 'S.P.,M.P', 'Ketapang', '1993-02-16', 'Perempuan', '', '$2y$10$BGM.s/4wMjllJ2cuTleTvugaHFw88xQ9bblaZkvnAc2cyH2TY8PQu', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('436521dd-c443-4db6-89ae-9e237e349402', '0', '19791002 202121 2 008', NULL, NULL, NULL, 'Erma Novita', '', NULL, 'A.Md', 'Ketapang', '1979-10-02', 'Perempuan', 'Islam', '$2y$10$x5mHt3.bIiKCa34SSZsQr.y26NuUJfALidCcGO8Ri0pJYdS3sxdY6', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('43a2c3e2-6794-4fe3-a410-260d71bec47d', '0', NULL, '19840207 201001 092', NULL, NULL, 'M. Hanif Faisal', '', NULL, 'M.T.', 'Pontianak', '1984-02-07', 'Laki-laki', '', '$2y$10$3uBQriEuLuQDAYDP5QlWRO1MJkGIJ4kA23BG5dXNnr9aap4TQgWaW', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('4408ed64-f04d-48df-ba7f-9b082c9438fc', '0', NULL, NULL, NULL, NULL, 'Ary Rubiyanto', '', NULL, '', 'Ketapang', '1989-02-18', 'Laki-laki', '', '$2y$10$suUNhPobtHJal3.m1krWgO43ysZHnhuGnOH8MAEOCZK72ppXR/nnu', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('44c7b811-eae2-42cb-b1d6-243f09822b99', '0', '19890816 201903 1 002', NULL, NULL, NULL, 'Ahmad Ravi', '', NULL, 'S.Pd.,M.Pd', 'Masamba', '1989-08-16', 'Laki-laki', 'Islam', '$2y$10$LRoAgvWUAvmqcvilMUfQcOrUK.DfVlPkdlV6vmoFj2tBP66Z06Gmu', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('458c592c-348c-46d1-b344-b792fb64d42c', '0', NULL, '19980908 202008 241', '6104174809980004', NULL, 'Shela Krisdayanti', '', NULL, 'A.Md.P', NULL, '1998-09-08', 'Perempuan', 'Islam', '$2y$10$C3n8Fkaj352nFT1vltF46u/X2iTv7yfg4VZEXl5d3aNRyRHn6wX52', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('47ceee1a-b33b-4239-9a46-1e58b5a672ad', '0', NULL, '19830627 201512 176', NULL, NULL, 'Wienda Soesanti Putri', '', NULL, 'SE', 'Surabaya', '1983-06-27', 'Perempuan', 'Islam', '$2y$10$JxYziGUwBu0oA3FjyCPmTOJk0ABGQBlTZwl.skIEQ2HRCrpNY43eG', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('4839ee6d-2c3e-426a-9354-7db9e48ae439', '0', '19880808 202121 1 001', NULL, NULL, NULL, 'Erwin', '', NULL, 'A.Md', 'Ketapang', '1988-08-08', 'Laki-laki', 'Islam', '$2y$10$oImwVq3iPZylrR8Mf43Eruy.fizLw1S3nymXx4yheydnplU3sKnci', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('488fb59f-f26b-48f9-96a9-fad9e800e4d1', '0', '19891023 202121 1 001', NULL, NULL, NULL, 'A.Yani', '', NULL, 'SP', 'Ketapang', '1989-10-23', 'Laki-laki', 'Islam', '$2y$10$MOJfIn74cFSkrRspGvWkLeS6WssauclqCJqa1Sw5BB2ITcqeQDGPe', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('49ce6c30-837f-45c3-8e2c-6f9870ebc2e9', '0', '19750116 202121 1 003', NULL, NULL, NULL, 'Tardi Kurniawan', '', NULL, 'S.Sos,.M.Si', 'Pontianak', '1975-01-16', 'Laki-laki', 'Islam', '$2y$10$exTj9HBANWq5kO0FAWTHCOG5ignVL5UwfOgjDpRu8h4fvJ.BMVN8a', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('4c3d0071-440e-4e4a-837f-59eea1cc348e', '0', NULL, NULL, NULL, NULL, 'Sy. Adly', '', NULL, '', 'Ketapang', '1980-09-04', 'Laki-laki', '', '$2y$10$CQv8kcC1pJX56LbJpwA9Yu4xU7Y9/kcivHKP0yOSjDZSsBRAxJagu', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('4d744851-78a2-40b9-ada0-0a17f50d990e', '0', '19790626 202121 1 006', NULL, NULL, NULL, 'Sy. Ishak Alkadri', '', NULL, 'S.ST., M.T', 'Pontianak', '1979-06-26', 'Laki-laki', 'Islam', '$2y$10$0YZli.QxTJqk2G.uCWocdOypWpcPTTkgy.YKzN4yMEWm/Fq3sbfEG', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('4e441045-7e87-46c6-8f0c-68298b2934ae', '0', NULL, '19770627 201601 187', NULL, NULL, 'Masyhudi', '', NULL, 'SE', 'Jakarta', '1977-06-27', 'Laki-laki', 'Islam', '$2y$10$mTkRHE/Oo2UcDuk9T3rZK.SW1IxsuURZNhSmR0OMfIo3WrPkydZ7q', NULL, '2022-07-07 21:30:20', '2022-07-07 21:30:20'),
('4eae5a1d-bc44-4301-afd8-833a1bd0f6cf', '0', '19880919 201903 1 014', NULL, NULL, NULL, 'Herman', '', NULL, 'S.Si.,M.T', 'Singkawang', '1988-09-19', 'Laki-laki', 'Budha', '$2y$10$6bHDCBIGnGeLJbYp16CI3Oj.rBCy7jpqsjFUt01fSa1JH5ZcQxsIe', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('50660972-640c-49bd-b4f3-b988cfa241ec', '0', '19910414 201903 1 008', NULL, NULL, NULL, 'Sy. Muhammad Zaki', '', NULL, 'SST', 'Ketapang', '1991-04-14', 'Laki-laki', 'Islam', '$2y$10$ca2VsOZ.CAxrIJe7c2FLH.9dUvkT.bNqETNDzlqIms52c8XvUQWhC', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('5123ac8d-c8fb-436a-b417-28a153cf6c16', '0', '19921021 201903 2 017', NULL, NULL, NULL, 'Diani Dwi Oktavianti', '', NULL, 'S.ST', 'Putussibau', '1992-10-21', 'Perempuan', 'Islam', '$2y$10$sEGFmU5qVRAxWfU1BsbCseb4rfh7zZz3L9ivTtoZej5TxrYagRGmq', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('51a80ae5-f512-4310-8243-2a4abe75a345', '0', NULL, NULL, NULL, NULL, 'Sy. Abdurrahman', '', NULL, '', 'Pontianak', '1980-05-09', 'Laki-laki', '', '$2y$10$5fVBdVHN5r7.Y/pCN3VehOBoqgLntoHSQXlIJY1oEIl5WAHdo80Tq', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('53765b6c-4322-4c67-956a-12f6b811fdbc', '0', NULL, '19910102 201406 134', NULL, NULL, 'Januarso', '', NULL, 'S.P.', 'Ketapang', '1991-01-02', 'Laki-laki', 'Islam', '$2y$10$JEcPTkBM3A8WCHPDb1Q7B.F6kqS6DNU0gRrpdl2lDMPN1SfSAJ6Gy', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('54981c04-da78-4aa6-93db-6b30fb625794', '0', NULL, NULL, NULL, NULL, 'Uti Nailul Auhar', '', NULL, '', 'Ketapang', '1983-06-16', 'Laki-laki', '', '$2y$10$z0myr/fY2c5D0jVRe39mou3pp1NDeNessMOwgaJNY4xxB9yhijHj6', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('56391bb3-7220-4c57-97d8-c5e72987d775', '0', NULL, NULL, NULL, NULL, 'Zulinda', '', NULL, '', 'Ketapang', '1979-09-28', 'Laki-laki', '', '$2y$10$lV0.1Ozo4Cf0TbHY5L3ol.nJ4teWK7U.exZjarRpBTDcAkUwfT3A2', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('56d27921-8de3-4a64-8db0-fa30ec6d9a85', '0', '19820701 202121 2 009', NULL, NULL, NULL, 'Novia Dhian Yulita', '', NULL, 'A.Md', 'Ketapang', '1982-07-01', 'Perempuan', 'Islam', '$2y$10$USrUT9fazZkoBFyFyActTOOBgci4Z7HpLkVjytdHFY3mDfMfCU1I2', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('57e7dded-12ef-41c3-a728-71bee06f9526', '0', NULL, '19941011 201803 239', NULL, NULL, 'Alan Purtanto', '', 'Ir.', 'M.T', 'Sintang', '1994-10-11', 'Laki-laki', 'Katholik', '$2y$10$HikBJnI.IsaFpOSwgE44puZwh78T6bV5ZxdmY7tRKCw6RPv6WwyH6', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('58563118-abc4-4d1b-93a4-58e327972409', '0', NULL, NULL, NULL, NULL, 'Desy Putri Syafrianti', '', NULL, 'S.Kom', 'Sekadau', '1991-12-02', 'Perempuan', 'Islam', '$2y$10$3NITHRe3u5uJOHhRUj6t/.w7tHyqyjSUbWzSWJqDyFZv/mqhwMOae', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('589661c7-7bc4-4517-aeda-812297d91c0c', '0', '19940812 201903 2 019', NULL, NULL, NULL, 'Fionna Araminta Fabiola', '', NULL, 'S.E', 'Ketapang', '1994-08-12', 'Perempuan', 'Islam', '$2y$10$Cj/yf6WRO4kIzb0NnT1sDO2qYvu6zgPmWeJ3ybvqqrJdYnd7ySE/2', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('5997603c-54d6-4b59-bb77-0fda630ee588', '0', NULL, '19910127 201509 166', NULL, NULL, 'Pusparini Akhmad', '', NULL, 'S.Si', 'Palembang', '1987-01-27', 'Perempuan', 'Islam', '$2y$10$svhD2ydJZP.lJvSJVcKgauCghbHrQML0Vu4b/0wDKN7l/tHyjiqtO', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('5cde66a2-643d-46ea-83b0-7b1de9399637', '0', NULL, '19890404 201512 117', NULL, NULL, 'Irfan', '', NULL, 'A.Md', 'Teluk Melano', '1989-04-04', 'Laki-laki', '', '$2y$10$ca88M.yVrcFaEt7eUB.cbe6/07UJm5Qks38q7iDaV9NPeKp1O0B4a', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('5e418a66-3916-43d2-aabb-6ff1908d25f4', '0', '19741026 202121 2 003', NULL, NULL, NULL, 'Utin Ida Fitriana', '', NULL, 'SE', 'Ketapang', '1974-10-26', 'Perempuan', 'Islam', '$2y$10$CWltQG4qMW7jTiAUL7QONuaClyweX08m./VzNs.s.ROPm5vvvL6oO', NULL, '2022-07-07 21:30:21', '2022-07-07 21:30:21'),
('5e636dc2-6006-420e-88ac-18b7521e50bb', '0', NULL, '19961218 202008 250', '6104175812960003', NULL, 'AMANDA TIARA REZKI', '', NULL, 'SM', NULL, '1996-12-18', 'Perempuan', 'Islam', '$2y$10$RWHc1yQMCwxhN.DsTXzWmuVheC1ee8jd/uS17.p2kHZTmcwWTsLAm', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('5eb61db0-c4dc-4013-b48d-7aaafd73b9b6', '0', NULL, NULL, NULL, NULL, 'Suherman', '', NULL, '', 'Ketapang', '1988-10-12', 'Laki-laki', '', '$2y$10$PenmH2MgFMEsb.poS4VBd.ZbFdCsmX3L3hTSOF/hEL4zrb0ojsFWa', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('5fb62dca-5b17-44ef-8849-257eaf4c8cc2', '0', '19840105 202121 1 003', NULL, NULL, NULL, 'Epriyandi', '', NULL, 'S.T.,M.T', 'Ketapang', '1984-01-05', 'Laki-laki', 'Islam', '$2y$10$ZBNHvkhQ0zDG.lspV/j7re.FrvVMHHnBro6h57230m3uCJvyNlqq2', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('5ffd6435-601b-4276-8c73-53c7cecdd701', '0', '19801126 202121 2 005', NULL, NULL, NULL, 'Novitawati', '', NULL, 'A.Md', 'Ketapang', '1980-11-26', 'Perempuan', 'Islam', '$2y$10$Guvb9Sy2mtZ6K6wq1jaygeVRLQy0RHuEg7hEc/dAglJECTGqarAxy', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('6351842b-6db4-4549-94c6-587f7e8d3883', '0', '19840425 202121 1 001', NULL, NULL, NULL, 'Khairul Muttaqin', '', NULL, 'S.Pd.I.,M.Ag.', 'Singkawang', '1984-04-25', 'Laki-laki', 'Islam', '$2y$10$Ufo7BXxT5qKPykVg3eH8EuKvSBQDlZyq/bHzZYRcYCcptPcLTZqTG', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('643a252e-3129-4f67-aba4-8ad6cbaca0c8', '0', '19930818 201903 2 026', NULL, NULL, NULL, 'Firmanilah Kamil', '', NULL, ' S.Pd.,M.Pd', 'Malang', '1993-08-18', 'Perempuan', '', '$2y$10$6gEd6GdtL5rBfrixvAJ1vOBmwlz1wh3j3QPDVmuP/MM3G9S2xBxya', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('652d3790-71e1-449e-88fb-a380428c0135', '0', '19900619 202121 1 001', NULL, NULL, NULL, 'Zulpandi', '', NULL, 'A.Md', 'Ketapang', '1990-06-19', 'Laki-laki', 'Islam', '$2y$10$0A9GiIX3sqoGAPtt1cC2AunQSvamfPD1MpM5znLJCSCM3iFB5HrHC', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('68117ca1-bd03-47f2-849f-08f9d7c0d593', '0', NULL, '19870311 201601 179', NULL, NULL, 'Sopiana', '', NULL, 'S.P.,M.Si', 'Mentibar', '1987-03-11', 'Perempuan', 'Islam', '$2y$10$hZQsTQvD6mb.7ZhCkSbu.eRYgwoJ46xdX/s.IfCX524Uqv26Wd4M2', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('6885f19d-bc29-4b2b-9062-c2fedf8efc79', '0', NULL, '19820623 201509 169', NULL, NULL, 'Saifudin Usman', '', NULL, 'S.T., M.Tr.Kom', 'Pontianak', '1982-06-23', 'Laki-laki', 'Islam', '$2y$10$M.WE9GE1Y1n6bpTq54hyP.xscLJecSQ6Vc2Fz6aVZQFm81GtZ8X.G', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('6c395ad5-e91f-47f3-aa21-bc294c185ada', '0', '19880830 201803 2 001', NULL, NULL, NULL, 'Venti Jatsiyah', '', NULL, 'S.P.,M.Si', 'Sambas', '1988-08-30', 'Perempuan', '', '$2y$10$9rmD/cM.e/HcsElzN0o8kuh7uil5plKlvTKyFwntFOTi1zIDbRBCq', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('6d42c4a4-f4de-4a38-9b96-bc7f1ee1bea4', '0', NULL, '19790731 201211 123', NULL, NULL, 'Henny Yulianti', '', NULL, 'A.Md.', 'Ketapang', '1979-07-31', 'Perempuan', 'Islam', '$2y$10$0kjkmok3l/jphc6ctuHs4.2lU17uDA3veW4UmyTcKXLrJhsE81qkq', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('6da9d71f-9c64-40cf-b6b7-2d0657767ca4', '0', '19771006 199703 1 003', NULL, NULL, NULL, 'Untoro Budi Harjanto', '', NULL, NULL, 'Yogyakarta', '1977-10-06', 'Laki-laki', 'Islam', '$2y$10$s8X8zjVJ/Ujg9tSXFnKEVOJ8jFAQ3Z51rotmk10scwj/bzmCEWxk6', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('6ed6b0f9-dc4b-4b84-90b6-099cfdd2e1c2', '0', '19721212 202121 2 006', NULL, NULL, NULL, 'Utin Aimanul Habasiah', '', NULL, 'S.Sos', 'Ketapang', '1972-12-12', 'Perempuan', 'Islam', '$2y$10$pE8YfdQNBzX9vpx1Ac.F6ugzenrqK2uufEwFWrt.AoKbrP1vR7qbe', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('6f6de946-5158-424c-8bfe-aa4b8a9c4df6', '0', '19811225 201503 1 001', NULL, NULL, NULL, 'M. Rangga CH', '', NULL, 'S.Kom', 'Ketapang', '1981-12-25', 'Laki-laki', 'Islam', '$2y$10$/njL6oLQ3V0itENnJxPxnufcXO566G9z6XfxUWAvx/jKtfZeLecde', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('709b3b4e-969a-4c04-9e92-5e5654ea1172', '0', '19861031 202121 1 001', NULL, NULL, NULL, 'M. Jimi Rizaldi', '', NULL, 'S.ST.,M.T', 'Ketapang', '1986-10-31', 'Laki-laki', 'Islam', '$2y$10$atmLPIrwDAXI6d0DT..C2Oq3j4vrTObVUFNoVUci3L34IUZtj3OFa', NULL, '2022-07-07 21:30:22', '2022-07-07 21:30:22'),
('71b2657e-188b-4504-b605-6a488d35875a', '0', NULL, '19871218 201512 173', NULL, NULL, 'Assrorudin', '', NULL, 'S.Pd.,M.Pd', 'Sidoarejo', '1987-12-18', 'Laki-laki', 'Islam', '$2y$10$ClVmwbiibz91fRJz/8s.b.0DNKPq.0FJ8pJ5ErwQyrDgQcj03Aqs2', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('73d67075-744c-43c1-b3db-90e635121b08', '0', NULL, NULL, NULL, NULL, 'Almiana', '', NULL, '', 'Ketapang', '1974-05-07', 'Perempuan', '', '$2y$10$uUGzsnMiK1b9qjXYbc9pyuLmS9iqAewltgM0gL4KLf8RYukMGbdoa', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('769cc3ea-a955-4af8-9d8b-1509351aded3', '0', '19910704 201903 1 015', NULL, NULL, NULL, 'Darmanto', '', NULL, 'M.Kom', 'Ngawi', '1991-07-04', 'Laki-laki', 'Islam', '$2y$10$OtiIsYWyjzK62uZ2utwGnO4sCah95D6sqUu/BmhbhuYuueMyjs3jK', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('78b3c200-ec4f-427c-be1e-eb899e259673', '0', '19810822 202121 1 002', NULL, NULL, NULL, 'Awang Roy Lesmana', '', NULL, 'A.Md', 'Pontianak', '1981-08-22', 'Laki-laki', '', '$2y$10$kP8Hp2TxZjNG/Rye2PfmmeaKz6Pen9FkkzSerJx.BaLJIrtlt2l5K', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('792d0bfd-2dc1-4f35-8a26-83a306dacfdc', '0', '19900921 202203 1 005', '19900920 201603 201', NULL, NULL, 'Ivan Suwanda', '', NULL, 'M.T', 'Pontianak', '1990-09-20', 'Laki-laki', 'Islam', '$2y$10$Q8rL8fAUXNDP9uGqV176ZeaWEpOaGDFLQl7E3XOlUm/NLYFwfwpUS', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('799b456b-0e87-49de-8367-d2e78e9e74ae', '0', NULL, '19841114 200801 047', NULL, NULL, 'Ningrum Dwi Hastuti', '', NULL, 'S.TP.,M.P', 'Klaten', '1984-11-14', 'Perempuan', '', '$2y$10$..7Nyp2RinvBuIARMwXSp.w9MFnd4h7nWOuvGBRSYDlRXUz2hnMou', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('79ae72a0-23be-4b20-ba79-703fb35a5eca', '0', '19840504 201903 1 007', NULL, NULL, NULL, 'AKHDIYATUL', '', NULL, 'S.ST.,M.T', 'Ketapang', '1984-05-04', 'Laki-laki', 'Islam', '$2y$10$R1gktt86iliCzgkew0m3.uhlYVYwmEkQlux00ELcNmWoCAjux6h.O', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('7a8c08a9-467b-4afe-8abf-07f6c2431afb', '0', NULL, '19860615 200810 025', NULL, NULL, 'Endi', '', NULL, 'SE', 'Mambuk', '1986-07-15', 'Laki-laki', 'Islam', '$2y$10$qAJdobttOuFKyHeMdijVeeqLNP2Qy0j..tnQJEzjnud4.aTmRC2ra', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('7acb40e6-5725-40ae-a4ec-02f6ed63bd94', '0', '19830526 201504 1 001', NULL, NULL, NULL, 'Anto Susanto', '', NULL, 'SST, M.P', 'Bandung', '1983-05-26', 'Laki-laki', 'Islam', '$2y$10$moAK.BRsx38.4bTQLd1p3u5.86i34uqGu9pQB0J5S4r8WkV1L1Hhe', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('7bd1033c-7dfe-4f83-9aad-e11c292b1d84', '0', NULL, NULL, NULL, NULL, 'Satira', '', NULL, '', 'Ketapang', '1974-09-06', 'Perempuan', '', '$2y$10$GPSJ6F.qrmM03ywcFajtw.dyb4ZTa5YB25uVPuy/4RwF16gCyxe/2', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('7bea437a-8777-4c94-bf63-8e0ca9651691', '0', '19640610 202121 1 004', NULL, NULL, NULL, 'Uti Sahibul Hekmi', '', NULL, 'A.Md', 'Ketapang', '1964-06-10', 'Laki-laki', 'Islam', '$2y$10$RvuC0WJg/EXjPEVLyKyoiuf69X6hmTN7Vn/lzoi26Ydqd.haBXhLS', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('7c7c26c8-47b9-48b3-8499-7ef04f7564ec', '0', '19831001 202121 2 004', NULL, NULL, NULL, 'Nely Kurnila', '', NULL, 'S.Pd., M.Pd', 'Ketapang', '1983-10-01', 'Perempuan', 'Katholik', '$2y$10$Qq8lqH8m.znwdAz/y9/Tq.kvtA1Indk/zSqPxqIf1e4NFkK/q3g2S', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('7e03dfc9-498e-4b16-8bce-d4823ce87ba8', '0', NULL, '19860710 201204 118', NULL, NULL, 'Mustapa', '', NULL, ' A. Md', 'Ketapang', '1986-07-10', 'Laki-laki', '', '$2y$10$rOuUFP4WiLbXTwLCiRCyce3EayIhouChlw3DpKSHCucA0Ark8enBq', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('8084ae53-5ac6-40a7-9f5f-dea40fa2aab5', '96d23804-19e9-44aa-95db-c007af6d9d21', '19870114 201903 1 007', NULL, NULL, 'Eka Wahyudi', 'Eka Wahyudi', 'app/pegawai/1657348831-JzOOK.png', NULL, 'S.Pd., M.Cs', 'Mekar Asri', '1987-01-14', 'Laki-laki', 'Islam', '$2y$10$YRPYpRyIdXQqcVZo3JrRouRr152Iuj4qkd0AzVED7gtxLPWZ9nnc.', '12345', '2022-07-07 21:30:23', '2022-07-19 22:53:57'),
('86f15cfc-fcb7-47a6-ae81-5129f6ef4ddc', '0', '19910310 202121 1 001', NULL, NULL, NULL, 'Sarijanto', '', NULL, 'A.Md', 'Ketapang', '1991-03-10', 'Laki-laki', '', '$2y$10$tqLyNxAw00hbmAT0eQfDyO5mtau9iq8qj42YUfvmAq5eZpIpOWB9e', NULL, '2022-07-07 21:30:23', '2022-07-07 21:30:23'),
('87284e92-8239-44a0-86cd-2040f3406f47', '0', '19870716 202121 1 001', NULL, NULL, NULL, 'Deden Nugraha', '', NULL, 'S.P', 'Sukaresmi', '1987-07-16', 'Laki-laki', 'Islam', '$2y$10$4R7lrpsR/uMzjbaICam8y.e.3gUACn6vNFDohg8vHS2lEx/bI9tci', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8784ed8e-9d88-44a6-bb02-3f085de35b8c', '0', NULL, '19890124 201512 172', NULL, NULL, 'Firman', '', NULL, 'S.Pd., M.P.Fis', 'Ketapang', '1989-01-24', 'Laki-laki', 'Islam', '$2y$10$IA.a.nqt71skDEeGyMguSOIBRUHGRV3EwvXeiroUoKO3U6bE/F5Jm', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('891f6a6b-8bd9-4ad4-bdd6-13c7b2d46782', '0', NULL, '19950704 201708 222', NULL, NULL, 'Utin Kurnia Putri', '', NULL, 'A.Md', 'Semarang', '1995-07-04', 'Perempuan', 'Islam', '$2y$10$ONcx3pczPM2xUN0ZpTOBS.L0G8szs1QyXGtNyimwcg8yntE3Lwh/i', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('89286b3a-69ef-47dc-8038-34175938abbc', '0', NULL, '19880611 201601 196', NULL, NULL, 'Maya Andriana', '', NULL, 'SE', 'Teluk Melano', '1988-06-11', 'Perempuan', '', '$2y$10$GcRxFw8018rqyxgg0vioPOUwU6R3VlBqWBhMYHUAwyFMDfTHQMxfm', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8961f1e3-2848-4d15-b6b9-d79fdaa8a107', '0', NULL, NULL, NULL, NULL, 'Karmila', '', NULL, '', 'Ketapang', '1970-01-01', 'Perempuan', '', '$2y$10$Q5DG.6NcID5OnfbqvtljgO6T2qy7g9AtK9roFLCBd/6EPhNh6udgO', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8a2a0fc9-7adb-47bc-978f-a12b9db859aa', '0', '19860414 201903 2 011', NULL, NULL, NULL, 'Rosmalinda', '', NULL, 'S.ST.,M.P', 'Karang Baru', '1986-04-14', 'Perempuan', 'Islam', '$2y$10$DEm9Ig9b/WSjoZ3Pc4b1x.XzIbO4.f6kosbNY5jlPMz4Ed7AFctfO', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8a593376-eea9-4931-b0d7-86b72fd79b74', '0', NULL, NULL, NULL, NULL, 'Henni', '', NULL, '', 'Ketapang', '1985-07-05', 'Perempuan', '', '$2y$10$g6IVlagxMzIT/ilAcohw3.yFHNMXOA.IvM2yf6RZ37cw/PHfWM2NO', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8a75b21c-c073-4a58-8bf6-de1a0f9b5438', '0', '19860125 201803 1 001', NULL, NULL, NULL, 'Yusuf', '', NULL, 'S.ST., M.T', 'Ketapang', '1986-01-25', 'Laki-laki', 'Islam', '$2y$10$RRodGJyzVOaCrsgCFXQOw.nwoSb9Lzk3047TTpmn74vVZuj5c6fgK', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8c2e117d-01ad-4da2-a049-5490e078db83', '0', '19770906 202121 1 003', NULL, NULL, NULL, 'Edi Rahmanto', '', NULL, ' SE', 'Kelampai', '1977-09-06', 'Laki-laki', '', '$2y$10$yWTLW/DC2yJr9p4HoP/LX.AuzkbiSkbpc.FuVsO7X.blCMVkv1qJy', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8c6fdd85-dccf-4df8-888d-61910ca28761', '0', '19891028 201903 2 011', NULL, NULL, NULL, 'Roida Oktovia Sihombing', '', NULL, 'SE', 'Pontianak', '1989-10-28', 'Perempuan', 'Kristen', '$2y$10$40Q7dD1BBec7AYFHyCWSKupscxTPvk6X4cqnoqYnPYwyHY7afyNuy', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8d1a9392-ee5b-4086-a103-c86dbf04d2c6', '0', NULL, NULL, NULL, NULL, 'ADMIN EVENT', '', NULL, NULL, 'BUMI', '2021-01-01', 'Laki-laki', 'Islam', '$2y$10$e0TSsegrGxU9cFzkH8WIiuJfI3qH/w.WODyyPC06D4vEJ9lYaKl2S', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8da944a0-f7df-43a4-8bda-cc6c2b01cb5f', '0', '19841207 201903 1 005', NULL, NULL, NULL, 'Munawar Kholil', '', NULL, 'S.Si.,M.Pd', 'Pamekasan', '1984-12-07', 'Laki-laki', 'Islam', '$2y$10$W88BuSl6wklWM3nHgWs8RevYsnAV0DsBqkbf909MmE5f0aIWWRIEK', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8dbaf7b4-fdc6-4664-ad8f-28925262baaf', '0', NULL, '19900126 201409 141', NULL, NULL, 'Syarifah Mastura', '', NULL, 'S.Pd.', 'Ketapang', '1990-01-26', 'Perempuan', 'Islam', '$2y$10$wyhLamU.WSCwP4lULCAhR.aML9V4pY8rg/Qhm4ncpu5CxEnzzNjIe', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8e33ce55-5330-4cb2-836e-a22a0800b01c', '0', '19890424 202121 1 002', NULL, NULL, NULL, 'Halimansyah', '', NULL, 'A.Md.', 'Kendawangan', '1989-04-24', 'Laki-laki', '', '$2y$10$L9R6dcV9S2aLQumfMGNzzeORoxjLledZRANlNHtUrT5Q/8ezaQacy', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8eea1d3b-f883-435d-a8a9-453e46053607', '0', '19831217 201903 2 008', NULL, NULL, NULL, 'Alfath Desita Jumiar', '', NULL, 'S.P.,M.Si', 'Pontianak', '1983-12-17', 'Perempuan', 'Islam', '$2y$10$um/U5sWsHMSjb7q4h/y2VuoZlDsLH02pRX5hRnxT7dZJdKj05mgbO', NULL, '2022-07-07 21:30:24', '2022-07-07 21:30:24'),
('8fdecaee-a3ef-4096-9165-26476c4e4753', '0', '19710814 200604 1 005', NULL, NULL, NULL, 'Hidayat', '', NULL, NULL, 'Ketapang', '1971-08-14', 'Laki-laki', 'Islam', '$2y$10$OO2g4HHO6UJeEXw71sOyFu5pKVXVuGs7ibq301S2yQonFGQA2wwrS', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('8ffd423c-6a57-454d-b643-d1f134117073', '0', NULL, '19780510 200801 055', NULL, NULL, 'Asep Ruchiyat', '', NULL, 'S.T.,M.T', 'Bengkayang', '1978-05-10', 'Laki-laki', 'Islam', '$2y$10$Dg4EPNuU.GcUBHZ0bwUdDuNnzBosSgILY.K559d9h4OU4llQCmKru', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('908b7dcc-8b5f-4d2a-b745-3caacb11c1c9', '0', '19900614 202121 2 001', NULL, NULL, NULL, 'Kurnia Dewi Permata Sari', '', NULL, ' A.Md', 'Ketapang', '1990-06-14', 'Perempuan', '', '$2y$10$dLLK9s6NRCvlU4WB6PDko.5Nk.tsF/erQ3jSJ53jUiq2RCVSzScba', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('92408291-4e21-41bc-ba91-b632dbc03201', '0', '19630804 198601 1 005', NULL, NULL, NULL, 'Safi\'ie', '', NULL, 'SE', NULL, '1963-08-04', 'Laki-laki', 'Islam', '$2y$10$tO/pXIOJiSXrG21apt3C1eIy5n0YFNIwRSi94iJ6tiPdxoA5vQYmO', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('966bb315-7f59-470d-aaae-c9a60336c823', '0', NULL, NULL, '3318091606890003', NULL, 'Rois Indriawan', '', NULL, NULL, 'Pati', '1989-06-16', 'Laki-laki', 'Islam', '$2y$10$s8BAGQrp.ly4eNOkypVYLeYnR/yvaZKKCSCpBnYoVs8npD3opRwZK', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('966bb413-e9b5-46d7-9d60-6361134df0ea', '0', NULL, NULL, '6172016207870003', NULL, 'Dewi Nurmayasari', '', NULL, NULL, NULL, NULL, 'Perempuan', '', '$2y$10$pic/8NUeRxovwKWLFVw.Quc1M35fyTE4h6.oW.skr9WwHkMDULDd6', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('968a0145-7799-46f2-b501-e4a26899ac9a', '0', NULL, '19881026 201707 221', NULL, NULL, 'Redika Maulidya', '', NULL, 'ST', 'Ketapang', '1988-10-26', 'Perempuan', '', '$2y$10$JravnkyOOsyyOP/8gyTID.6TrPq/lswDfoq2tYVi0o5z4/TGtl4eC', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('96dc3ba9-bce3-4ae1-b748-78e941f1c420', '96d23804-19e9-44aa-95db-c007af6d9d21', '012010', '808644566788', NULL, 'admin', 'Muhammad Juni Rian Effendi', 'app/pegawai/1658726379-XThFt.png', 'A.Md.Kom', 'A.Md.Kom', NULL, NULL, 'laki-laki', 'Islam', '$2y$10$29RSF521BUZFvknpGL5H4eNHVdHtk9HgymcnsY3JjmvDbz3qy99x.', 'admin', '2022-07-24 22:19:39', '2022-07-24 22:19:39'),
('97693558-91bc-4335-b3cb-0311f337a795', '0', '19631008 199603 1 003', NULL, NULL, NULL, 'Suratmin', '', 'Ir.', 'M.T', 'Ketapang', '1963-10-08', 'Laki-laki', 'Islam', '$2y$10$.FwHa0hPWdDq/kYVaC6mLOXIDQd3YldfhqqYr3R/ZVnjrHRX0yLDu', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('98ae6c59-c188-498e-83e4-e511251529b7', '0', NULL, '19840310 200801 017', NULL, NULL, 'Rustiarni', '', NULL, 'M.H', 'Ketapang', '1984-03-10', 'Perempuan', 'Islam', '$2y$10$U1RndYnPKmOWGhaEAAUsk.d2W/yLNJSW9QJsiwzdWcbsFlARUL5JG', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('98baf7ed-28bf-4a5d-8f4b-c0e789081d91', '0', NULL, NULL, NULL, NULL, 'Muhammad Sa\'ari', '', NULL, '', 'Ketapang', '1963-06-23', 'Laki-laki', '', '$2y$10$Cn0mitmI9mxxTNZWmDnhF.tnnlt0TUsQjGoINts/gMdYPnCH7mllq', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('98db1f9b-7be6-446f-a5ab-46208a47867b', '96d23804-19e9-44aa-95db-c007af6d9d21', '19861109 201903 1 005', NULL, NULL, 'admin', 'Rosi Arrasyid', '', NULL, 'A.Md', 'Sentebang', '1986-11-09', 'Laki-laki', 'Islam', '$2y$10$.Sidvau9gb182rdWKODPIeF/hLcELEnYZxgAT4gSYYT4OIMasr3Iy', 'admin', '2022-07-07 21:30:25', '2022-07-24 22:15:53'),
('99bba172-f59c-4bf4-a7df-31b6d3b00050', '0', '19860923 201903 1 005', NULL, NULL, NULL, 'Yudi Chandra', '', NULL, 'S.ST., M.T', 'Ketapang', '1986-09-23', 'Laki-laki', 'Islam', '$2y$10$Bjr7fnJIXQczhuSOEfrPNersXPXnqeO8r.Bd.narZ/VnftHHhWsf6', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('9a8e0752-f115-4c47-a7bc-49f8c1a862b4', '0', '19880901 201903 1 010', NULL, NULL, NULL, 'Sy. Indra Septiansyah', '', NULL, 'S.Si.,M.T', 'Pontianak', '1988-09-01', 'Laki-laki', 'Islam', '$2y$10$Qu33WXPfT6HY/qtaTkeUseV9l3EiEZv44lfBnYHmPjtRlaZuC8dpu', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('9b26a021-e661-4f49-ab22-6f49afe9cd9b', '0', NULL, '19790910 200801 058', NULL, NULL, 'Hairian Rahmadi', '', NULL, 'S.T.,M.T', 'Sungai Jaga B', '1979-09-10', 'Laki-laki', 'Islam', '$2y$10$dEwlpi/nU3SrbSZPuPAajO.9QvmZA8ZxAx0.mKEoc3xox/pKS3FgS', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('9b7afb74-0772-48e9-acee-2720557d1384', '0', NULL, NULL, NULL, NULL, 'Ahmad Riduan', '', NULL, '', 'Ketapang', '1996-02-24', 'Laki-laki', '', '$2y$10$ZjxRDNC3OKyRVaEdUHED3O9jJINlqT845OnBFTPh5yy44Y6lBA1SW', NULL, '2022-07-07 21:30:25', '2022-07-07 21:30:25'),
('9cc7f277-d556-4fae-8d75-68e64bcfcad4', '0', NULL, '19820404 201611 213', NULL, NULL, 'Nurhayati', '', NULL, 'S.P.,M.Si', 'Pedada', '1982-04-04', 'Perempuan', 'Islam', '$2y$10$ZDXD7wc.FifP7E4MDd7kB.trsO9rFdAsYbpwAF0zHU8M74U80aR4W', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('9ebea3d2-60b0-4817-9e36-661f71d69e73', '0', NULL, '19950203 202107 259', '6104174302950003', NULL, 'Heni Rahmadianingsih', '', NULL, 'M.Pd', NULL, NULL, 'Perempuan', '', '$2y$10$Nga1cWZVPziKAe6GvvdMNeHYHk6mCpH8X2mzmLcxxJAbknPZujJuq', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('9faa86a0-147d-4657-9592-160f9bb9d06f', '0', '19850805 202121 2 009', NULL, NULL, NULL, 'Nur Aida', '', NULL, 'S.Pd.,M. Pd', 'Ketapang', '1985-08-05', 'Perempuan', 'Islam', '$2y$10$GGK.rNwVtIt9sIByZ3Z6Au12hGtD1MpzALnIuvT7WOwZnps/lGsz6', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('a12f6e04-c76b-44d0-ad59-7427ac275be8', '0', '19931228 201903 1 012', NULL, NULL, NULL, 'Rahmat Aryanto', '', NULL, 'A.Md', 'Ketapang', '1993-12-28', 'Laki-laki', 'Islam', '$2y$10$dR7/otdJ3h7y2NmkbhW/U.HOUIZAMSqTqvlrAV95NMH18Ymj59DYm', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('a15ebfc3-4700-4231-b982-f6fd6f150f1f', '0', NULL, NULL, NULL, NULL, 'Evi Mellianti', '', NULL, 'SST', 'Ketapang', '1993-06-02', 'Perempuan', 'Islam', '$2y$10$eNPiEZkOerjaYetaNzwmNunsUgdIQwykhQaTAFetWNXWfXSjVHl7C', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('a1c5ae62-36d7-4d2e-b207-999afa6a6103', '0', NULL, '19740401 201311 132', NULL, NULL, 'Ahmadin', '', NULL, 'S.Sos.', 'Pontianak', '1974-04-01', 'Laki-laki', '', '$2y$10$ActwSbSDxPTycBTDtLOlSuq2kxRUDwNix/U7tY526NMZigmQ8ZzY6', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('a1f6271f-46a8-4f4d-ad97-b11ed9ecca1b', '0', NULL, '19860505 201602 203', NULL, NULL, 'Ade Herlinda', '', NULL, 'S.Pd', 'Ketapang', '1986-05-05', 'Perempuan', 'Islam', '$2y$10$bJeEMAiZe1IyRVy0UALnyeCQkXETOoOWqUaNkL9tuRQBrLGt3RZy.', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('a3cf6b37-c6e0-411e-ab87-9333e5f9e84a', '0', '19800518 202121 1 007', NULL, NULL, NULL, 'Fathurrahmi', '', NULL, 'SE.,MM.', 'Ketapang', '1980-05-18', 'Laki-laki', 'Islam', '$2y$10$m4XyNhNo1xuv79SCBcx.wOyV1bs0OEiAWTuqQDSSJpuF67NwRH5EK', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('a64ec6c9-f25d-40c9-acf2-f8054184f6c5', '0', '19820520 202121 1 005', NULL, NULL, NULL, 'Ardiansyah Putra', '', NULL, 'A.Md.', 'Pontianak', '1982-05-20', 'Laki-laki', 'Islam', '$2y$10$QUtFHUYjBux238BHbrgBSetUAjxeqFiI4AxcPqtoeE50/jo1.a4pi', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('a7ab3156-4a6a-4d34-b4fd-ecdee3e951de', '0', '19840926 201903 1 008', NULL, NULL, NULL, 'Irianto SP', '', NULL, 'S.ST.,M.MA', 'Pontianak', '1984-09-26', 'Laki-laki', 'Islam', '$2y$10$ADUoH/AhUOZmvB88vzN/POfGFiWAW4R90zzNQorTXF2vl96KlaC2e', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('a8025fce-d1b8-4acf-80c2-ace804464787', '0', NULL, NULL, NULL, NULL, 'Andri Gunawan', '', NULL, '', 'Ketapang', '1988-01-01', 'Laki-laki', '', '$2y$10$319VMwVmhJfPDh4PhjSg2uWpuemYQwvdErJUPbj8m9HAc1FE/uaaC', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('ac0df63f-204d-400a-83bd-66b7fc7d1d8d', '0', '19770503 202121 1 004', NULL, NULL, NULL, 'Yudi Adlia', '', NULL, 'SE', 'Ketapang', '1977-05-03', 'Laki-laki', 'Islam', '$2y$10$LacpaRw76FVMj/SQigATp.9kSwz0RPtxg/nvQJeRVIgCskSoHLCfm', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('aeb5d395-09f4-42b1-8680-75663045684e', '0', NULL, NULL, NULL, NULL, 'Supardi', '', NULL, '', 'Ketapang', '1979-01-17', 'Laki-laki', '', '$2y$10$Dk66geY6QYJrp/54b0sLo.7KcNjv82gusRPt33Frr1NwLq.kkwaO6', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('af76d150-7435-4f3a-bf5f-3fb3d991c626', '0', '19920106 201903 2 015', NULL, NULL, NULL, 'Betti Ses Eka Polonia', '', NULL, 'S.Pd.,M.Pd', 'Lamongan', '1992-01-06', 'Perempuan', 'Islam', '$2y$10$zS.b00ZeO8J55eCdQ9aReOuyvci5GinoTbMlQnmb1Aw.DkS1CHCZu', NULL, '2022-07-07 21:30:26', '2022-07-07 21:30:26'),
('b14b7e81-2fc3-45e5-adc1-750cc73f0fb2', '0', NULL, '19740510 200801 041', NULL, NULL, 'Isye Selvianti', '', NULL, 'SH.,M.AP', 'Solo', '1974-05-10', 'Perempuan', 'Islam', '$2y$10$JVDQRvaPXaznImbMgXOJ8.szo5AwygI/oDyM0jDPcvaiR.kNL0A0.', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b2035d20-b83c-479d-a032-ecdef5bf9eb0', '96d23804-19e9-44aa-95db-c007af6d9d21', '19780324 202121 1 005', NULL, NULL, 'admin', 'Rodiansyah', '', NULL, 'A.Md', 'Ketapang', '1978-03-24', 'Laki-laki', 'Islam', '$2y$10$3Wd2QL5fAu4MNmabYFKTvuvFvRumtz1Ph695KLvY/37yrm7OHQhOa', 'admin', '2022-07-07 21:30:27', '2022-07-24 22:17:01'),
('b2c740a8-348b-4e2e-9713-38c9712fe1d8', '0', '19910617 201903 2 022', NULL, NULL, NULL, 'Saima Putrini R Harahap', '', NULL, 'S.Pd.,M.Pd', 'Padang Sidimpuan', '1991-06-17', 'Perempuan', 'Islam', '$2y$10$V7NIogph2zpb.b3ed.tdb.5nPDtM63itAI1aPGESw.qBGCKKY0WWu', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b2f3b1cc-0b55-4c9d-9e5b-0e6c7fac9c8b', '0', '19750619 202121 2 006', NULL, NULL, NULL, 'Rohyati', '', NULL, 'A.Md', 'Trenggalek', '1975-06-19', 'Perempuan', '', '$2y$10$LK5/rX25iODn8bfBVN7DXeU771yImsitNZB9VhawUMHK9BCoUC0nu', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b3b814f5-e354-47b3-a000-156679809080', '0', '19901105 201903 1 007', NULL, NULL, NULL, 'A. Nova Zulfahmi', '', NULL, 'S.Pi.,M.Sc', 'Kediri', '1990-11-05', 'Laki-laki', 'Islam', '$2y$10$WP8oHaN2MUaJtX5xsoh9QOiUzUrzsbeuO3ZiwwVn0l5OrA59w9f9O', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b5f4d025-952e-4260-a45b-ab50e561a491', '0', NULL, '19890730 201601 189', NULL, NULL, 'Nurhanudin', '', NULL, 'A.Md', 'Ketapang', '1989-07-30', 'Laki-laki', 'Islam', '$2y$10$PngGJ66a.sHOAvpjjqYp3ewO35uGLl/1gxWu2k2gSnaATtcug.i/y', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b6308b4f-7569-47c1-980f-f266d255b293', '0', '19780926 202121 1 003', NULL, NULL, NULL, 'Martanto', '', NULL, 'ST., MT', 'Sleman', '1978-09-26', 'Laki-laki', 'Islam', '$2y$10$ACTDrXGNzKiT/Ku9DjY5serAIZ5l2923PngeJIucmZUAqmCuw6Jf.', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b674c34c-18d8-4f2e-b78d-ba263ecb6f03', '0', NULL, '19890711 201601 188', NULL, NULL, 'Nanang Hartoni', '', NULL, 'A.Md', 'Ketapang', '1989-07-11', 'Laki-laki', 'Islam', '$2y$10$mx6v6Lt269LkPzkUJfqFLOr/yUUOjtYW6cbBQWpcfDqG.I7d.4Gu2', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b67e1667-7681-4ba7-8eb7-49df4cae2eed', '0', '19890316 202121 1 001', NULL, NULL, NULL, 'Faisal', '', NULL, 'A.Md.', 'Ketapang', '1989-03-16', 'Laki-laki', 'Islam', '$2y$10$.XRvtrx.KIlv.wbQXVVR1eX2e9Jt5mcbRD5eQmNyx671Wj1/XsZtS', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b7369622-3dd7-487f-8add-b67d8512a6c3', '0', NULL, '19911112 201601 184', NULL, NULL, 'Eva Prawinda', '', NULL, 'S.Pd', 'Ketapang', '1991-11-12', 'Perempuan', 'Islam', '$2y$10$.r5.2ZKLgFQlLUJm4ygD5OJF1htp1R8zeh7V7BlmIdEvPIoxgnnly', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b77f8f84-beb9-4d27-8a5f-475ac4fd520b', '0', '19900228 202121 2 001', NULL, NULL, NULL, 'Nisa Zahara', '', NULL, 'A.Md', 'Ketapang', '1990-02-28', 'Perempuan', 'Islam', '$2y$10$Tb8cJf0NhHPVFwHs1s6n7uKmFAHEI/8n3JF0uCQEOLab6hmq/a7Be', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b83e233a-d9b4-459d-93de-d33523c566b0', '0', NULL, '19890424 201509 165', NULL, NULL, 'Indra Pratiwi', '', NULL, 'M.Pd', 'Ketapang', '1989-04-24', 'Perempuan', 'Islam', '$2y$10$LBrDneJwab6y8krC1iLYNeaTYTrXoOBLhO3OPJkw.qvgXMq3AavwK', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('b95679cb-9866-4c31-8c5b-960b8ecec93c', '0', NULL, NULL, NULL, NULL, 'Reino Muhammad', '', NULL, 'ST., M.Cs', 'Indonesia', '1945-08-18', 'Perempuan', '', '$2y$10$nTV9fem/Z.1vJMJurErEAuDg/c7BhXtbvtRrZlw0golIjOavH4YAW', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('bc1f265d-00ef-485c-867a-a32b2899a4e8', '96d23804-19e9-44aa-95db-c007af6d9d21', NULL, '19951222 202104 253', NULL, 'admin', 'Teguh Eko Saputra', '', NULL, 'A.Md.Kom', 'Mayak', '1995-12-22', 'Laki-laki', 'Islam', '$2y$10$cwIS4W2fzGRf7EbDcgadi.ILEzYviKggbMHYPqAWgut9gPV5udpSG', 'admin', '2022-07-07 21:30:27', '2022-07-19 22:54:13'),
('c0a53e24-a714-47cc-8651-1f413b8b72fe', '0', NULL, '19881113 201601 182', NULL, NULL, 'Noprizan Azmi', '', NULL, 'ST', 'Simpang Empat', '1988-11-13', 'Laki-laki', 'Islam', '$2y$10$RKrYGQCpx7ObIzD.A5Mjy.id7.OLtRvDjp25TWFQtF9qsBNAz8W0.', NULL, '2022-07-07 21:30:27', '2022-07-07 21:30:27'),
('c37724c8-36bf-4bbf-82ad-bac50ce9078a', '0', NULL, '19940929 201601 193', NULL, NULL, 'Lia Kurnia', '', NULL, 'SP', 'Ketapang', '1994-09-29', 'Perempuan', 'Islam', '$2y$10$DnEhadxTrs/NM/Xb7NRble82wM7XiL5AtRkE1PD7xub0yKCIuD126', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28');
INSERT INTO `pegawai` (`id`, `id_unit`, `nip`, `nup`, `nik_ktp`, `username`, `nama`, `foto`, `gelar_depan`, `gelar_belakang`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `password`, `confirmasi_password`, `created_at`, `updated_at`) VALUES
('c5bc3f89-addd-4737-bd78-ac8b414679da', '0', '19750808 202121 1 005', NULL, NULL, NULL, 'Sahardi', '', NULL, 'SE', 'Ketapang', '1975-08-08', 'Laki-laki', '', '$2y$10$fJCHOZG./ARAXmdut3Fs4OtrFLOEmhHk4qxyFMz2rUHYOOxY9L70q', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('cc37bab9-4d25-4dff-9ac9-3552e5921705', '0', NULL, '19890424 201507 158', NULL, NULL, 'Aprianda Ibrahim', '', NULL, 'S.Kom', NULL, '1989-04-24', 'Laki-laki', 'Islam', '$2y$10$t5AyBkeryYJ6MQxpWGw.a.HlpbC9g3.8qdEWmf8cp8p0/3XIP3opm', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('cda69cea-4502-4db3-9954-70f92c28f2f1', '0', NULL, '19860410 201502 153', NULL, NULL, 'Arman', '', NULL, 'A.Md.', 'Ketapang', '1986-04-10', 'Laki-laki', 'Islam', '$2y$10$K4mQ3DoeY3pgWsib4SgZzeT/aXWvq52Enr2g05Z47aMEzOSsiEfo6', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('cda9609b-0bed-49c5-96cc-e46831985dc7', '0', NULL, '19950219 201708 220', NULL, NULL, 'Rahmadi', '', NULL, 'A.Md', 'Ketapang', '1995-02-19', 'Laki-laki', 'Islam', '$2y$10$aegnUnME4J9LPcA9RIkJZOTIfrg.VQ.B3tJi6pglTR1eY20y24Od.', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('cdb42c37-d361-44aa-9d90-85dc5c02cc4c', '0', NULL, '19891220 201404 133', NULL, NULL, 'Emy Arahman', '', NULL, 'S.Pd., M.Pd', 'Pontianak', '1989-12-20', 'Perempuan', 'Islam', '$2y$10$u7mT7TALkbJo2C3ZHDfuQ.WRzYSI3TzKPCwatgTPO1X/SMMgZZ3CK', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('d039bc2d-7c92-4349-ae77-e67fd4dcea7f', '96d23804-19e9-44aa-95db-c007af6d9d21', '19830501 202121 1 002', NULL, NULL, 'admin', 'Muhammad Rizal', '', NULL, 'A.Md', 'Ketapang', '1983-05-01', 'Laki-laki', 'Islam', '$2y$10$9c2FyQGxwIRojire4XLm.OULNMv7XLqAYzZTme0nLnjtKnvMyRutC', 'admin', '2022-07-07 21:30:28', '2022-07-24 22:16:21'),
('d04a0a35-e772-4766-abc3-d90346ecc0a9', '0', NULL, NULL, NULL, NULL, 'Zulkarnaen', '', NULL, '', 'Ketapang', '1988-09-24', 'Laki-laki', '', '$2y$10$YrDKFtZ9LTiIlAsqqxo2re.egi8zp.RmHEoBXXvltPirVaShshR4m', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('d2bc54ef-e3ec-46ae-adcf-8f856bbd35fc', '0', '19901230 202121 1 001', NULL, NULL, NULL, 'Nasriadi', '', NULL, 'A.Md.', 'Watampone', '1990-12-30', 'Laki-laki', 'Islam', '$2y$10$HkX1S70jUHvZx2a531qB5OG3sM.n1fecoZl8lrDNUawAUSA8zgSXi', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('d307a54a-f25e-4a3b-95e5-75c0a78fe2e2', '0', NULL, '19890807 201302 128', NULL, NULL, 'Diah Chairunisa', '', NULL, 'SE.', 'Ketapang', '1989-08-07', 'Perempuan', 'Islam', '$2y$10$vfZ92y8/mErLLEe3jypfQ.pKrfs6kRA.3VbY2i.sXnwwW9lqAKiD6', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('d399b985-7411-4a15-8eed-fbdb43b44dbc', '0', '19891109 201803 2 001', NULL, NULL, NULL, 'Rizqia Lestika Atimi', '', NULL, 'S.T., M.T', 'Pontianak', '1989-11-09', 'Perempuan', 'Islam', '$2y$10$AtX4p1tFjdtHh8WgujUmd.u4IA2s704lJEdN4hh2n9pLEYf6tFrDW', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('d4845c8d-dcda-421c-99ec-545bf9527ca1', '0', NULL, '19940130 201601 185', NULL, NULL, 'Utin Asiyatin Nur', '', NULL, 'SE', 'Ketapang', '1994-01-30', 'Perempuan', 'Islam', '$2y$10$zVvLBUAX2PrOxFuZEtv8H.9f0K5AOZHzj05dyIk717JTebRmkaeLu', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('d5090102-10f3-42ae-903d-0e583097ed02', '0', NULL, '19911222 201409 144', NULL, NULL, 'Ningli Diniyati', '', NULL, 'S, ST', 'Teluk Melano', '1991-12-22', 'Perempuan', 'Islam', '$2y$10$HHaoevHq7.iDf3uNBLzi1e6f/AGbPYhcXm7J9w1C13/XpyTozqvhu', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('d8987bf5-6238-4cc0-9be7-305f922cc657', '0', NULL, NULL, NULL, NULL, 'Ernawati', '', NULL, '', 'Ketapang', '1970-01-01', 'Perempuan', '', '$2y$10$8qoCgLqkUMW5S47jzC4XROyi2CE4PNFsdgh9uhKGX9XrkhiI0Y1Zq', NULL, '2022-07-07 21:30:28', '2022-07-07 21:30:28'),
('da2352ee-66c7-41f4-b95a-ebfbc4f231ad', '0', '19821107 202121 2 007', NULL, NULL, NULL, 'Dian Fitriarni', '', NULL, 'S.ST.,M.Sc', 'Ketapang', '1982-11-07', 'Perempuan', 'Islam', '$2y$10$scbKs6sk2PXKtlcmzyHpve63qUWzxy/vH1o7o.8VSpbwtunRZ75Sa', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('da94c955-4436-4ea5-bb45-b8fce9a4b154', '96ba9def-6773-4fc3-a886-a45e093e5dfe', NULL, '19910219 201507 154', NULL, 'admin', 'Kharisma', '', NULL, 'S.Kom. M.Kom', 'Ketapang', '1991-02-19', 'Laki-laki', NULL, '$2y$10$4aCuJT2.6WbJpJe9QWoHkuPaUiyrsVPEOMpnjVeXotJD30LUuEpKq', 'admin', '2022-07-07 21:30:29', '2022-07-11 19:05:49'),
('db6d49db-22b0-409f-8450-1beb34250905', '0', '19901111 201903 2 018', NULL, NULL, NULL, 'Novi Indah Pradasari', '', NULL, 'S.Kom., M.Kom', 'Ketapang', '1990-11-11', 'Perempuan', 'Islam', '$2y$10$lrFg/odJfNXbuD.LLFRovec8ostuJsypp5FtXkSOMuoMbOmiX5xeK', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('dc497585-9080-4954-8417-89be283b4665', '0', '19881104 201903 1 004', NULL, NULL, NULL, 'Idris Herkan Afandi', '', NULL, 'S.Pd.,M.T', 'Ketapang', '1988-11-04', 'Laki-laki', 'Islam', '$2y$10$FjRkmg3J5ioz4QvrKDIgO.5w60.jW5QExvsPlSDxMyFUJXv5n/Wca', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('de4b9779-eb40-42bf-8bfd-6bb1125c1703', '0', NULL, '19840327 201110 103', NULL, NULL, 'Muhammad Taufik', '', NULL, ' S.T', 'Mempawah', '1984-03-27', 'Laki-laki', '', '$2y$10$e.dJMXuI9RlxwZq8tp.yJ.8ge.5FBp3fIt6slYO.pxmSVW6IHcG8C', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('de9a5fdb-117c-45fe-8b46-ae4ce536270f', '0', NULL, 'NIP.1985 070720 080', NULL, NULL, 'Julyan Purnomo', '', NULL, 'S.ST., M.T.', 'Ketapang', '1985-07-07', 'Laki-laki', '', '$2y$10$Ysh.yo5/QKbSPkcBwUHk4.e6K6RHI3uw.L8Y8hRZV6RPlpbZPZkz.', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('dee9fbb6-7eda-4464-8d26-1a41838a13d5', '0', NULL, '19940702 201709 223', NULL, NULL, 'Agung Iswandi', '', NULL, 'ST', 'Ketapang', '1994-07-02', 'Laki-laki', 'Islam', '$2y$10$w5G.IVIvywNd6eu9qFSDkO3TcRw5jLw8imsvVYAMz8Ba30/SgUd1C', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('e22b1a40-7094-48a7-8a1b-a7407d679e4c', '0', '19771010 200811 1 024', NULL, NULL, NULL, 'Harsusani', '', NULL, 'S.T., M.T', NULL, '1970-01-01', 'Perempuan', '', '$2y$10$5UdPW/vXcX5O3zYuU8NPkugNmM2LBSOpUjGOQmYtA/WIe4wGQrqzO', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('e32d5a13-49c3-481a-9485-2ad0789512cc', '0', '19880513 202121 1 001', NULL, NULL, NULL, 'Citro Handoyo', '', NULL, 'S.T', 'Pontianak', '1988-05-13', 'Laki-laki', 'Islam', '$2y$10$hFoqeKeJ1oJ1C/Rh4dzwt.o5/XwZu.KXsKuEFjnfr1iofuTZL9ugG', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('e3825cea-49cf-4e22-8b9e-6927099e859f', '0', NULL, NULL, NULL, NULL, 'Syarif Niswah', '', NULL, '', 'Ketapang', '1975-05-05', 'Laki-laki', '', '$2y$10$uU2TrBJbLArkxa7NtUgTj.4tvAIAUwmO4KUOE96JiNwwTq2c/LEF.', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('e6ba9e74-e855-4438-b2de-32099b533aa2', '0', NULL, '19880402 201601 191', NULL, NULL, 'Mulyo Hadi Santoso', '', NULL, ' A.Md', 'Jelai Hulu', '1988-04-02', 'Laki-laki', '', '$2y$10$mW65OIKzYNAnd6TnnmmEB.EZXh2IuQFcc1QZrsap2ZPi63ViZWxgS', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('e70044c4-9afe-4ba9-88dc-67ece46c36f8', '0', NULL, NULL, NULL, NULL, 'Nurmalawati', '', NULL, '', 'Ketapang', '1973-04-13', 'Perempuan', '', '$2y$10$ZGfW3Zzw6bZPf.1yh/bZBO2kpLshXQSokeNRSxRs/NubVICiUxQMS', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('e8e2dbb1-c651-4a0a-8dea-0926135e428b', '0', '19900121 201803 2 001', NULL, NULL, NULL, 'Sartika', '', NULL, 'S.Si.,M.T', 'Pontianak', '1990-01-21', 'Perempuan', 'Islam', '$2y$10$.3EKPkH4upD9uKnEqv.Bjev6ikEG8gyCgqBBKYFqu0L59hy3a148q', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('e8fd3915-260d-4079-8962-6608c6550e77', '96d23804-19e9-44aa-95db-c007af6d9d21', '19901203 202121 1 001', NULL, NULL, 'admin', 'Wahyu Iswanto', '', NULL, 'A.Md', 'Ketapang', '1990-12-03', 'Laki-laki', 'Islam', '$2y$10$Nh9XpXyQU5JKjqz5hIqBXOlL8LV/e5I3wXW8LD8RelEXiR.boMw/C', 'admin', '2022-07-07 21:30:29', '2022-07-24 22:16:43'),
('e9b3eaac-e378-4e61-a660-c06a4f47490a', '0', '19820310 202121 2 011', NULL, NULL, NULL, 'Nenengsih Verawati', '', NULL, 'S.TP.,M.P', 'Bima', '1982-03-10', 'Perempuan', 'Islam', '$2y$10$WJwTOe6xwpzZlVZJSrj32uKt.AtWHAfKLwbzWLW5EkqoE3pjOn2NO', NULL, '2022-07-07 21:30:29', '2022-07-07 21:30:29'),
('eb09439a-7370-4b1e-b765-252298ab31a8', '0', NULL, NULL, NULL, NULL, 'M. Hidayat', '', NULL, '', 'Ketapang', '1978-10-26', 'Laki-laki', '', '$2y$10$pw0szM3cjzsiJqWfznv2c.A2INDTPB.yNWv.gZ6PpGvNKSY6e5jKm', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('ed7828d3-b34d-4d25-8378-7e3b75a08f66', '0', NULL, '19850220 201601 192', NULL, NULL, 'Abdul Hafid', '', NULL, 'S.T', 'Nanga Tayap', '1985-02-20', 'Laki-laki', 'Islam', '$2y$10$FEmpWNIlo.dxSnS2jGTTTexhuAShet5SEUnSFrhkXo5G9ZVHjQnQO', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('ef103381-4e22-4d34-a141-83dfeb98340f', '0', '19741101 202121 2 005', NULL, NULL, NULL, 'Sri Handayani', '', NULL, 'A.Md', 'Ketapang', '1974-11-01', 'Perempuan', 'Islam', '$2y$10$Tf9.kERhfmWP51/z7MCLeOiX/27T2kOpAdbVnmHzieOQQGHy0YKZa', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('f34be033-0f08-4655-b2ba-b68f4139017f', '0', '19770505 202121 1 007', NULL, NULL, NULL, 'Ismael Marjuki', '', NULL, 'S.T.,M.T', 'Ampalu Tinggi', '1977-05-05', 'Laki-laki', 'Islam', '$2y$10$ZmdA1Mq9roI9zGgm/3yS/emGCCIa2.M.o/XTNapSuYcLApgh4y4eG', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('f585f46a-98ed-4663-9f26-28891e3127cc', '0', NULL, '19900611 201604 204', NULL, NULL, 'Ari Budiansyah', '', NULL, 'SE', 'Ketapang', '1990-06-11', 'Laki-laki', 'Islam', '$2y$10$1oYg83lUXwi0EATMDHFjSeNbec8kJ5uhLArKe1lEZBVXH4JMGavTW', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('f59fa54b-a4e7-4bc2-90c3-6ec9f03a928b', '0', '19681030 200112 1 002', NULL, NULL, NULL, 'Endang Kusmana', '', NULL, 'S.E.,M.M.,Ak,CA', 'Ciamis', '1968-10-30', 'Laki-laki', 'Islam', '$2y$10$TzmgkvkhqpfoCe4p41Q5zOQWWWDXYJHLdEsbfpSOqCUWL.iwxz/uq', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('f7c75340-cf0b-4402-963f-e8aca8e5936b', '0', NULL, '19920917 202104 251', '6104171709920003', NULL, 'M. Alpiani', '', NULL, 'S.T', NULL, NULL, 'Laki-laki', '', '$2y$10$eCX76EcYAQ3QpGnwm6f8Te0xOfkvF8MZBD3xWgVfELvmGjhl2NiHC', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('f851e7bd-cc56-49dc-ab9b-97944d6041cd', '0', NULL, '19810817 200801 042', NULL, NULL, 'Syf. Umi Kalsum', '', NULL, 'S.Sos.,M.AP', 'Ketapang', '1981-08-17', 'Perempuan', 'Islam', '$2y$10$.tM26zoL7byPp4pB/GhIN.7NPmDgMghuFYa0ayHY9TVeiO4xmJ1Y6', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('f97a9a05-82df-4dea-af31-c8014d4ca784', '0', NULL, NULL, NULL, NULL, 'Rico Anugrah', '', NULL, '', 'Ketapang', '1994-09-01', 'Laki-laki', '', '$2y$10$LURNC/Kb7KBb92j/HtIR0.F3v625CfuZlaTNT7Gk0Tz.FOBck84Q.', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('fcf015d0-91e5-4808-8aa3-a8cf44bd547b', '0', '19891017 202121 2 001', NULL, NULL, NULL, 'Tri Kumala', '', NULL, 'SP', 'Ketapang', '1989-10-17', 'Perempuan', 'Islam', '$2y$10$XyAV6KSd40puXPe6qI.aSOzCFWEqZOZ9gqwLrIo9dD59jTMjQi2sC', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('fd63b679-ae5a-46da-9ac2-3759ece0eac6', '0', '19920414 201903 2 025', NULL, NULL, NULL, 'Mia Anggreini', '', NULL, 'A.Md', 'Nanga Keduai', '1992-04-14', 'Perempuan', 'Islam', '$2y$10$fF9kcprchZmgXPp6W81R2.3DVnHIxyM.1HcAYlkrRTA9HNRi04yRa', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('fea080ab-8d56-4ba0-99f2-5ed8f0d4e1d5', '0', NULL, '19811111 200801 012', NULL, NULL, 'Marisa Nopriyanti', '', NULL, 'STP., M.P.', 'Ketapang', '1981-11-11', 'Perempuan', 'Islam', '$2y$10$45qMjbqDgSmw1oh76JDYe.xnhJ5vIy31TltwmcuDdnjFdvYNM.tBa', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30'),
('fed5ef8b-675f-46be-9dc4-947c09e14dac', '0', NULL, '19911104 201601 190', NULL, NULL, 'Nurimansyah', '', NULL, ' SP', 'Ketapang', '1991-11-04', 'Laki-laki', '', '$2y$10$/ZuOLTBlz.YRDivwGFAFQeGe5TlkSjkmJJzksOYwnn2BYwjbfE0SO', NULL, '2022-07-07 21:30:30', '2022-07-07 21:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `profil_pimpinan`
--

CREATE TABLE `profil_pimpinan` (
  `id` char(36) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Jabatan` varchar(255) NOT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_pimpinan`
--

INSERT INTO `profil_pimpinan` (`id`, `Nama`, `Jabatan`, `Foto`, `created_at`, `updated_at`) VALUES
('96d2613a-6195-4ab3-ae3f-4c249dc1f059', 'Endang Kusuma', 'Direktur', 'app/profil_pimpinan/1658303185-B2MCG.jpg', '2022-07-20 00:46:25', '2022-07-20 00:46:25'),
('96d2619f-13bd-4e2c-b182-4c656ae66ca5', 'Adha Panca Wardhanu', 'Wakil Direktur Bidang Akademik', 'app/profil_pimpinan/1658303251-iXgQS.jpg', '2022-07-20 00:47:31', '2022-07-20 00:47:31'),
('96d261be-9893-499e-8d52-df08b3a1fb13', 'Encik Eko Rifkowaty', 'Wakil Direktur Bidang Keuangan', 'app/profil_pimpinan/1658303271-23jK6.jpg', '2022-07-20 00:47:51', '2022-07-20 00:47:51'),
('96d261f2-7c72-43bf-a5c6-196c6a77c663', 'Epriyandi', 'Wakil Direktur Bidang Kemahasiswaan', 'app/profil_pimpinan/1658303305-4l5HS.jpg', '2022-07-20 00:48:25', '2022-07-20 00:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` char(36) NOT NULL,
  `id_unit` char(36) NOT NULL,
  `id_pegawai` char(36) DEFAULT NULL,
  `nama_ruangan` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `id_unit`, `id_pegawai`, `nama_ruangan`, `foto`, `created_at`, `updated_at`) VALUES
('96dc3c48-4d08-435a-b5c2-3c9832e86958', '96d23804-19e9-44aa-95db-c007af6d9d21', '98db1f9b-7be6-446f-a5ab-46208a47867b', 'Laboratorium Programming', 'app/ruangan/1658726483-YfrTW.jpg', '2022-07-24 22:21:23', '2022-07-24 22:21:23'),
('96dc3c81-3314-4478-9826-300a372e7816', '96d23804-19e9-44aa-95db-c007af6d9d21', 'e8fd3915-260d-4079-8962-6608c6550e77', 'Laboratorium Rekayasa Perangkat Lunak', 'app/ruangan/1658726520-rb50L.jpg', '2022-07-24 22:22:00', '2022-07-24 22:22:00'),
('96dc3cbd-e451-4a89-8a2f-7f872113b088', '96d23804-19e9-44aa-95db-c007af6d9d21', 'b2035d20-b83c-479d-a032-ecdef5bf9eb0', 'Laboratorium Multimedia', 'app/ruangan/1658726560-r8Ilh.jpg', '2022-07-24 22:22:40', '2022-07-24 22:22:40'),
('96dc3d66-aef1-4e9b-8f14-fa0a643c3f41', '96d23804-19e9-44aa-95db-c007af6d9d21', 'd039bc2d-7c92-4349-ae77-e67fd4dcea7f', 'Workspace Project Based Learning 1', 'app/ruangan/1658726671-xQuu9.jpg', '2022-07-25 05:25:30', '2022-07-24 22:25:30'),
('96dc3db2-353d-4c51-a74b-ea425f8eafca', '96d23804-19e9-44aa-95db-c007af6d9d21', '98db1f9b-7be6-446f-a5ab-46208a47867b', 'Workspace Project Based Learning 2', 'app/ruangan/1658726720-Ez6GT.jpg', '2022-07-24 22:25:20', '2022-07-24 22:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `tim`
--

CREATE TABLE `tim` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tim`
--

INSERT INTO `tim` (`id`, `nama`, `jabatan`, `foto`, `created_at`, `updated_at`) VALUES
('96bbe71b-5331-4a98-8aae-1d715030aec1', 'Syarifah Tasya Aldawiyah', '304 2020 015', 'app/tim/1657337803-X2HWx.jpg', '2022-07-11 04:03:26', '2022-07-10 21:03:26'),
('96bbe734-ea21-451f-9a98-8dd114bfd4e5', 'Riska', '304 2021 063', 'app/tim/1657512521-AUfa0.png', '2022-07-11 04:08:41', '2022-07-10 21:08:41'),
('96bbe74d-6492-4437-9d86-f9b79db91c3c', 'Elly Tafrida', '304 2020 049', 'app/tim/1657337836-An9rc.jpg', '2022-07-11 04:04:45', '2022-07-10 21:04:45'),
('96bbe769-6fb3-4a0b-8cb7-f63a79450d92', 'Kiki Triani', '304 2020 054', 'app/tim/1657337854-MG7FD.jpg', '2022-07-11 04:05:10', '2022-07-10 21:05:10'),
('96bff59d-78b4-4dbd-8304-11ab9664f306', 'Anwar Zaim', '304 2021 064', 'app/tim/1657512036-afEj1.jpg', '2022-07-11 04:06:12', '2022-07-10 21:06:12'),
('96bff658-8d4a-45fb-a988-96d4583fca1a', 'Dian Utari', '304 2021 031', 'app/tim/1657512159-nWbk9.jpg', '2022-07-11 04:05:56', '2022-07-10 21:05:56'),
('96bffc7a-2841-4e57-ad88-19f9902fc4ca', 'Lola Reghita', '304 2021 030', 'app/tim/1657513187-CvRFh.jpg', '2022-07-10 21:19:47', '2022-07-10 21:19:47'),
('96c1e557-613e-4e6b-8999-57ba9ddb4d0a', 'Umi Ambarsari', '304 2019 063', 'app/tim/1657595205-bjgTu.jpg', '2022-07-11 20:06:45', '2022-07-11 20:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` char(36) NOT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `nama_unit`, `created_at`, `updated_at`) VALUES
('96d23804-19e9-44aa-95db-c007af6d9d21', 'Teknik Informatika', '2022-07-19 22:51:10', '2022-07-19 22:51:10'),
('96d23818-4037-4f77-bf1c-3b94120de26a', 'Teknik Mesin', '2022-07-19 22:51:24', '2022-07-19 22:51:24'),
('96d23829-d36a-4a1a-a38d-9f4c50c8e30c', 'Teknik Sipil', '2022-07-19 22:51:35', '2022-07-19 22:51:35'),
('96d2383f-c1ac-4d87-8a69-e1e2cfb7fe65', 'Teknik Elektro', '2022-07-19 22:51:50', '2022-07-19 22:51:50'),
('96d2385b-b2e3-4da1-b6bf-a908a2521cd6', 'Teknik Pertambangan', '2022-07-19 22:52:08', '2022-07-19 22:52:08'),
('96d2386d-7cca-49af-aa73-4b2f0f643b36', 'Agroindustri', '2022-07-19 22:52:19', '2022-07-19 22:52:19'),
('96d2387e-ea88-4c88-a99e-11d31f04a0de', 'BTP', '2022-07-19 22:52:31', '2022-07-19 22:52:31'),
('96d2388e-6fd2-4a7f-b754-45eef6cae370', 'TPHP', '2022-07-19 22:52:41', '2022-07-19 22:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmasi_password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `remeber_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `confirmasi_password`, `foto`, `remeber_token`, `created_at`, `updated_at`) VALUES
('2', 'Super Admin', 'admin', '$2y$10$taYo7BgJz9pfUOv5x9XYOO.thMaxWtp.cOCGhucOhi4lVza4jerza', '', '', NULL, '2022-03-22 22:05:29', '2022-03-22 22:05:29'),
('3', 'Riska', 'Riska', 'Riska', 'Riska', 'Riska.jpeg', NULL, '2022-06-30 06:09:10', '2022-06-30 06:09:10'),
('4', 'Elly Tafrida', 'admin', '1234', '1234', 'admin.png', NULL, '2022-07-02 03:11:57', '2022-07-02 03:11:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homeconfig`
--
ALTER TABLE `homeconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil_pimpinan`
--
ALTER TABLE `profil_pimpinan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
