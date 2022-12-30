-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2022 at 03:07 PM
-- Server version: 10.3.37-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mitraara_mysekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `total_views` int(100) DEFAULT 0,
  `kelas_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `deskripsi`, `foto`, `total_views`, `kelas_id`, `tanggal`) VALUES
(1, 'MUMUT JUARA 1 LOMBA MENYANYI SOLO PROVINSI', 'Pada tanggal 1 maret diadaknnya FLS2N Tak lupa sma 1 bojonggede mengikuti lomba tersebut MUMUT merupakan siswa berprestasi suaranya yang merdu dapat memikat hati juri sekarang MUMUT sedang berjuang untuk menaklukan medali emas di tingkat nasional', 'image/uploads/berita/sekolah/2022121672288758.jpeg', 37, NULL, '2022-12-12'),
(13, 'Diskusi penentuan ketua kelas', 'Diskusi penentuan ketua kelas 10 IPS 1 Pada tahun ajaran baru 2022/2023 disini bapak Akbar selaku wali kelas tersebut melakukan voting untuk penentuan ketua kelas dan struktur kelas lainya disini Azizah terpilih menjadi ketua kelas 10 IPS 1', 'image/uploads/berita/kelas/2022121672287903.jpeg', 37, 2, '2022-12-20'),
(15, 'Kelas 11 IPA 4 Juara 1 lomba kebersihan', 'Pada tanggal 11 agustus 2022 sma negeri 1 surabaya mengadakan lomba kebersihan antar kelas disini Ibu Mutiara vebriani sebagai wali kelas 11 IPA 2 Menghimbau anak didiknya dan memantau proses berjalanya lomba, disini ibu mutiara sangat berperan penting dalam lomba beliau membantu menata dan mengkoordinir anak didiknya tak hanya itu ibu mutiara memberii konsumsi kepada anak muridnya agar anak muridnya semangat dengan penuh perjuangan mengkoordinir kelas jerih payah siswa 11 IPA 2 Terbayar lunas karena berhasil memnangkan lomba kebersihan se sekolahan', 'image/uploads/berita/kelas/2022121672287956.jpeg', 30, 4, '2022-12-20'),
(16, 'SEKOLAH JUARA ADIWIYATA', 'Adiwiyata adalah upaya membangun program atau wadah yang baik dan ideal untuk mendapatkan ilmu pengetahuan dan berbagai norma serta etika yang dapat menjadi dasar manusia menuju terciptanya kesejahteraan hidup untuk cita-cita pembangunan berkelanjutan. Adiwiyata merupakan nama program pendidikan lingkungan hidup.', 'image/uploads/berita/sekolah/2022121672288427.jpeg', 11, NULL, '2022-12-20'),
(17, 'SMA 1 BOJONGGEDE JUARA 1 DIG IDEA UBS YOUTHCON', 'UBS Youth-Con ini selalu menunjukkan pendekatan yang sesuai untuk anak muda. Kompetisi ini berhasil menampung ide-ide mereka yang semakin berkembang di era digital ini,” ungkap Erwin Suganda, Creative Director PT Untung Bersama Sejahtera.\r\n\r\nEnggak kalah dari tahun sebelumnya, banyak yang spesial dan menarik lho di penyelenggaraan UBS Youth-Con tahun ini. Penasaran kan?', 'image/uploads/berita/sekolah/2022121672288590.jpeg', 5, NULL, '2022-12-20'),
(18, 'UPACARA BENDERA 17 AGUSTUS DI SMA 1 BOJONGGEDE', 'Peringatan hari kemerdekaan RI yang ke 73 sma 1 bojonggede ikut serta memeriahkan HUT RI dengan melakukan upacara bendera se kecamatan yang bertepatan pada lapangan atas SMA 1 BOJONGGEDE', 'image/uploads/berita/sekolah/2022121672288744.jpeg', 7, NULL, '2022-12-20'),
(19, 'KELAS 12 IPA BERHASIL RAIH 3 PIALA', 'Pada classmeting kemarin kelas 12 ipa 4 dengan wali kelas ibu tipanny berhasil meraih 3 piala yaitu lomba kebersihan,hias kelas,dan qiroah', 'image/uploads/berita/kelas/2022121672288167.jpeg', 22, 3, '2022-12-20'),
(22, 'hai ini merupakan berita baru', 'ini merupakan berita baru yang akan saya cobaw beritakan', 'image/uploads/berita/kelas/2022121672111270.jpeg', 3, 1, '2022-12-27');

-- --------------------------------------------------------

--
-- Table structure for table `dinas_pendidikan`
--

CREATE TABLE `dinas_pendidikan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `phone` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `foto_profil` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dinas_pendidikan`
--

INSERT INTO `dinas_pendidikan` (`id`, `user_id`, `nama_lengkap`, `tanggal_lahir`, `phone`, `alamat`, `foto_profil`, `jenis_kelamin`) VALUES
(1, 13, 'Ferdi Maizar, S.Pd. M.Pd', '1985-06-20', '08123123234', 'Jl. Jagir Wonokromo, Sidosermo, Kec. Wonocolo, Kota SBY, Jawa Timur 60239', 'image/uploads/User/1/2022121672287794.jpeg', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakulikuler`
--

CREATE TABLE `ekstrakulikuler` (
  `id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jam_mulai` varchar(50) NOT NULL,
  `jadwal_hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ekstrakulikuler`
--

INSERT INTO `ekstrakulikuler` (`id`, `guru_id`, `nama`, `jam_mulai`, `jadwal_hari`) VALUES
(6, 12, 'Basket', '15:30', 'Jumat'),
(7, 5, 'pramuka', '15:00', 'sabtu'),
(9, 11, 'paskibra', '15:00', 'jumat'),
(10, 10, 'volly', '15:00', 'selasa'),
(14, 8, 'Renang', '15:00', 'Kamis'),
(15, 13, 'Osis', '07:00', 'Senin'),
(16, 6, 'lari', '01:23', 'ahad'),
(17, 15, 'Futsal', '15:30', 'Selasa'),
(18, 15, 'tari', '12:00', 'Rabu');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `phone` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `profil_picture` varchar(100) DEFAULT NULL,
  `is_walikelas` enum('Y','N') NOT NULL,
  `is_ekstrakulikuler` enum('Y','N') NOT NULL,
  `is_mapel` enum('Y','N') NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `user_id`, `nama_lengkap`, `tanggal_lahir`, `phone`, `alamat`, `jk`, `profil_picture`, `is_walikelas`, `is_ekstrakulikuler`, `is_mapel`, `created_at`) VALUES
(1, 2, 'Mohammad Akbar', '1988-02-11', '081236510976', 'Sepanjang', 'L', 'image/uploads/Guru/1/2022121672286635.png', 'N', '', 'Y', '0000-00-00 00:00:00'),
(5, 6, 'Khoirun Arining Azizah', '2001-06-21', '085730488805', 'Jombang', 'P', 'image/uploads/Guru/5/2022121672287147.jpg', 'Y', 'Y', 'Y', '2022-11-16 02:20:01'),
(6, 7, 'Refanda Puspitasari', '2002-12-18', '081236785439', 'Surabaya', 'P', 'image/uploads/Guru/6/2022121672286782.jpg', 'Y', 'Y', 'Y', '2022-11-16 02:20:20'),
(8, 18, 'Erlangga Dwi Kusuma', '2003-02-14', '089505084036', 'Probolinggo', 'L', 'image/uploads/Guru/8/2022121672287177.jpg', 'Y', 'Y', 'Y', '2022-12-17 15:42:45'),
(9, 14, 'M.Fatih', '2022-12-01', '083425780121', 'Mojokerto', 'L', 'image/uploads/Guru/9/2022121672286808.png', 'Y', 'Y', 'Y', '2022-12-18 21:03:27'),
(10, 21, 'Mutiara Vebriani', '2022-12-07', '089324571280', 'Ponorogo', 'P', 'image/uploads/Guru/10/2022121672286945.png', 'Y', 'Y', 'Y', '2022-12-20 11:57:01'),
(11, 22, 'Tifanny Maulida Innayah', '2005-12-20', '086754325344', 'Tulungagung', 'P', 'image/uploads/Guru/11/2022121672286981.jpg', 'Y', 'Y', 'Y', '2022-12-20 12:49:42'),
(12, 23, 'Tyas  Adi', '2001-12-19', '081345268901', 'Blora', 'L', 'image/uploads/Guru/12/2022121672287016.png', 'N', 'Y', 'Y', '2022-12-20 13:18:30'),
(13, 40, 'Guru Osis', '2022-11-29', '1231313', 'Guru Osis', 'L', 'image/uploads/Guru/13/2022121672287059.png', 'N', 'Y', 'N', '2022-12-25 14:56:02'),
(14, 45, 'Guru Mapel', '2022-11-30', '123123123', 'guru_mapel', 'L', 'image/uploads/Guru/14/2022121672287098.png', 'N', 'N', 'Y', '2022-12-26 08:37:00'),
(15, 46, 'Guru Ekstra', '2022-11-30', '1231312', 'guru_ekstra', 'L', 'image/uploads/Guru/15/2022121672287236.jpeg', 'N', 'Y', 'N', '2022-12-26 08:37:27'),
(16, 47, 'Guru Walikelas', '2022-12-01', '123123', 'guru_walikelas', 'L', 'image/uploads/Guru/16/2022121672287269.jpeg', 'Y', 'N', 'Y', '2022-12-26 08:38:19'),
(17, 58, 'abdurahman najib', '1988-02-04', '08647362617362', 'jl kaliurang 5 no 32 surabaya', 'L', 'image/uploads/User/58/2022121672090131.JPG', 'N', 'N', 'Y', '2022-12-27 04:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `guru_absensi`
--

CREATE TABLE `guru_absensi` (
  `id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `is_izin` enum('Y','N') NOT NULL DEFAULT 'N',
  `alasan_izin` varchar(50) DEFAULT NULL,
  `keterangan_izin` varchar(100) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `guru_absensi`
--

INSERT INTO `guru_absensi` (`id`, `guru_id`, `is_izin`, `alasan_izin`, `keterangan_izin`, `foto`, `waktu`) VALUES
(1, 1, 'Y', 'SAKIT', 'jcjc', 'image/uploads/guru_absensi/1/2022121671200447.jpg', '2022-12-16 21:20:47'),
(2, 1, 'Y', 'alasan', 'alasan', 'image/uploads/guru_absensi/2/2022121671613394.png', '2022-12-21 16:03:14'),
(3, 14, 'N', 'MASUK', NULL, 'image/uploads/guru_absensi/3/2022121672288055.jpg', '2022-12-29 11:27:35'),
(4, 14, 'N', 'MASUK', NULL, 'image/uploads/guru_absensi/4/2022121672304789.jpg', '2022-12-29 16:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_pembelajaran`
--

CREATE TABLE `jadwal_pembelajaran` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `jadwal_hari` varchar(50) NOT NULL,
  `jadwal_waktu_mulai` time NOT NULL,
  `jadwal_waktu_akhir` time NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jadwal_pembelajaran`
--

INSERT INTO `jadwal_pembelajaran` (`id`, `mapel_id`, `kelas_id`, `jadwal_hari`, `jadwal_waktu_mulai`, `jadwal_waktu_akhir`, `created_at`) VALUES
(1, 1, 1, 'Jumat', '10:30:00', '12:30:00', '2022-12-18 20:22:47'),
(2, 2, 2, 'Selasa', '09:45:00', '11:00:00', '2022-12-19 20:56:32'),
(3, 2, 1, 'Senin', '07:00:00', '08:45:00', '2022-12-19 20:59:39'),
(4, 3, 1, 'Selasa', '07:15:00', '09:45:00', '2022-12-19 21:09:26'),
(5, 4, 2, 'Selasa', '12:30:00', '14:00:00', '2022-12-20 10:31:32'),
(6, 7, 4, 'selasa', '10:00:00', '10:50:00', '2022-12-20 13:06:16'),
(7, 8, 2, 'rabu', '13:00:00', '14:15:00', '2022-12-20 13:07:54'),
(8, 9, 5, 'kamis', '07:15:00', '09:00:00', '2022-12-20 13:08:59'),
(9, 10, 7, 'Senin', '11:00:00', '12:30:00', '2022-12-26 08:50:25'),
(10, 12, 5, 'Kamis', '11:24:00', '05:24:00', '2022-12-29 11:27:49'),
(11, 3, 7, 'KAMIS', '11:33:00', '16:39:00', '2022-12-29 11:33:26'),
(12, 1, 7, 'Kamis', '11:39:00', '14:42:00', '2022-12-29 11:38:26'),
(13, 8, 7, 'Jumat', '12:00:00', '13:00:00', '2022-12-29 16:01:30'),
(14, 10, 2, 'Kamis', '08:00:00', '09:45:00', '2022-12-30 07:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_sekolah`
--

CREATE TABLE `jadwal_sekolah` (
  `id` int(11) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `jam_mulai` varchar(5) NOT NULL,
  `jam_selesai` varchar(5) NOT NULL,
  `jadwal_hari` varchar(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jadwal_sekolah`
--

INSERT INTO `jadwal_sekolah` (`id`, `kegiatan`, `jam_mulai`, `jam_selesai`, `jadwal_hari`, `created_at`) VALUES
(1, 'Upacara', '07:00', '08:00', 'Senin', '2022-12-12'),
(2, 'Pramuka', '07:00', '09:00', 'Sabtu', '2022-12-12'),
(3, 'Kerja bakti', '07:00', '10:00', 'Jumat', '2022-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `kantin`
--

CREATE TABLE `kantin` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `qr_code` varchar(100) NOT NULL,
  `saldo` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kantin`
--

INSERT INTO `kantin` (`id`, `foto`, `nama`, `pegawai_id`, `qr_code`, `saldo`) VALUES
(1, 'image/uploads/kantin/2022121672289447.jpeg', 'Kantin Kenangan', 11, '', 80500),
(2, 'image/uploads/kantin/2022121672289709.jpeg', 'Kantin asyik', 2, '', 0),
(3, 'image/uploads/kantin/2022121672290792.jpeg', 'Kantin sehat', 11, '', 80500);

-- --------------------------------------------------------

--
-- Table structure for table `kantin_penjualan`
--

CREATE TABLE `kantin_penjualan` (
  `id` int(11) NOT NULL,
  `kantin_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `harga_total` int(150) NOT NULL,
  `tanggal_pembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kantin_penjualan`
--

INSERT INTO `kantin_penjualan` (`id`, `kantin_id`, `user_id`, `nama_pembeli`, `keterangan`, `harga_total`, `tanggal_pembelian`) VALUES
(11, 1, 1, 'admin', 'es teh', 5000, '2022-12-26'),
(12, 1, 49, 'Siswa Biasa', 'NASIIII', 100000, '2022-12-29'),
(13, 1, 10, 'Muhammad Apindo', 'bakso', 10000, '2022-12-29'),
(14, 1, 10, 'Muhammad Apindo', 'Risoles', 3000, '2022-12-29'),
(15, 1, 10, 'Muhammad Apindo', 'Es Teh', 1500, '2022-12-29'),
(16, 1, 10, 'Muhammad Apindo', 'Nasi Goreng', 10000, '2022-12-29'),
(17, 1, 10, 'Muhammad Apindo', 'Martabak', 1000, '2022-12-29'),
(18, 1, 10, 'Muhammad Apindo', 'Tahu isi', 2000, '2022-12-29'),
(19, 1, 10, 'Muhammad Apindo', 'Risoles', 5000, '2022-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_osis`
--

CREATE TABLE `kegiatan_osis` (
  `id` int(11) NOT NULL,
  `kegiatan` varchar(150) NOT NULL,
  `jam_mulai` varchar(5) NOT NULL,
  `jam_selesai` varchar(5) NOT NULL,
  `pelaksana` varchar(150) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kegiatan_osis`
--

INSERT INTO `kegiatan_osis` (`id`, `kegiatan`, `jam_mulai`, `jam_selesai`, `pelaksana`, `tanggal`) VALUES
(1, 'Rapat Internal', '10:00', '00:00', 'asep', '2022-04-17'),
(4, 'HUT Sekolah', '08:00', '13:00', 'asep', '2022-10-20'),
(5, 'Pemilihan Ketua OSIS', '07:00', '10:30', 'asep', '2022-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `guru_id`, `created_at`) VALUES
(1, 'XI IPA 2', 6, '0000-00-00 00:00:00'),
(2, 'X IPS 1', 9, '0000-00-00 00:00:00'),
(3, 'XII IPA 2', 5, '2022-12-20 03:02:33'),
(4, 'XII IPA 1', 8, '2022-12-20 11:39:02'),
(5, 'X IPS 2', 10, '2022-12-20 12:59:34'),
(6, 'X IPA 3', 11, '2022-12-20 13:00:02'),
(7, 'X IPA 6', 16, '2022-12-26 08:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `kepala_sekolah`
--

CREATE TABLE `kepala_sekolah` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `phone` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `foto_profil` varchar(100) NOT NULL,
  `jenis_kelamin` enum('P','L') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kepala_sekolah`
--

INSERT INTO `kepala_sekolah` (`id`, `user_id`, `nama_lengkap`, `tanggal_lahir`, `phone`, `alamat`, `foto_profil`, `jenis_kelamin`) VALUES
(0, 24, 'Fahmie Amrullah,S.Pd M.Pd', '1981-05-05', '12312312312', 'Jalan Wijayakusuma No. 48, Surabaya 60272', 'image/uploads/User/0/2022121672287826.jpeg', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `kepala_sekolah_absensi`
--

CREATE TABLE `kepala_sekolah_absensi` (
  `id` int(11) NOT NULL,
  `kepala_sekolah_id` int(11) NOT NULL,
  `is_izin` enum('Y','N') NOT NULL DEFAULT 'N',
  `alasan_izin` varchar(50) DEFAULT NULL,
  `keterangan_izin` varchar(100) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kepala_sekolah_absensi`
--

INSERT INTO `kepala_sekolah_absensi` (`id`, `kepala_sekolah_id`, `is_izin`, `alasan_izin`, `keterangan_izin`, `foto`, `waktu`) VALUES
(1, 2, 'N', NULL, NULL, 'image/uploads/kepala_sekolah_absensi/1/2022121671517477.jpeg', '2022-12-20 13:24:37'),
(2, 0, 'N', NULL, NULL, 'image/uploads/kepala_sekolah_absensi/2/2022121671526420.jpg', '2022-12-20 15:53:40'),
(3, 0, 'N', NULL, NULL, 'image/uploads/kepala_sekolah_absensi/3/2022121671540421.jpg', '2022-12-20 19:47:01'),
(4, 0, 'N', NULL, NULL, 'image/uploads/kepala_sekolah_absensi/4/2022121672289120.jpg', '2022-12-29 11:45:20'),
(5, 0, 'N', NULL, NULL, 'image/uploads/kepala_sekolah_absensi/5/2022121672373578.jpg', '2022-12-30 11:12:58'),
(6, 0, 'N', NULL, NULL, 'image/uploads/kepala_sekolah_absensi/6/2022121672375945.jpg', '2022-12-30 11:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `id` int(11) NOT NULL,
  `keuangan_kategori_id` int(11) NOT NULL,
  `nominal` int(150) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `bukti_pembayaran` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`id`, `keuangan_kategori_id`, `nominal`, `siswa_id`, `keterangan`, `bukti_pembayaran`, `created_at`) VALUES
(1, 1, 50000, 10, 'bayar november', 'image/uploads/keuangan/1/2022121672287267.jpeg', '2022-12-29 11:14:27'),
(2, 1, 50000, 11, 'Bayar November', 'image/uploads/keuangan/2/2022121672287292.jpeg', '2022-12-29 11:14:52'),
(3, 1, 50000, 3, 'Bulan November', 'image/uploads/keuangan/3/2022121672287315.jpeg', '2022-12-29 11:15:15'),
(4, 1, 150000, 10, 'Spp Bulan Januari', 'image/uploads/keuangan/4/2022121672287943.jpg', '2022-12-29 11:25:43'),
(5, 3, 85000, 10, 'Buku IPA', 'image/uploads/keuangan/5/2022121672288333.jpg', '2022-12-29 11:32:13'),
(6, 1, 150000, 10, 'Bulan Januari', 'image/uploads/keuangan/6/2022121672306466.jpg', '2022-12-29 16:34:26'),
(7, 1, 150000, 10, 'Januari', 'image/uploads/keuangan/7/2022121672306514.jpg', '2022-12-29 16:35:14'),
(8, 1, 550000, 1, 'April', 'image/uploads/keuangan/8/2022121672352993.jpg', '2022-12-30 05:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan_kategori`
--

CREATE TABLE `keuangan_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `keuangan_kategori`
--

INSERT INTO `keuangan_kategori` (`id`, `nama`) VALUES
(1, 'Bayar SPP'),
(2, 'Bayar Tabungan'),
(3, 'Bayar Buku');

-- --------------------------------------------------------

--
-- Table structure for table `koperasi`
--

CREATE TABLE `koperasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `saldo` int(100) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `koperasi`
--

INSERT INTO `koperasi` (`id`, `nama`, `saldo`, `created_at`) VALUES
(1, 'koperasi1', 348000, '2022-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `koperasi_list`
--

CREATE TABLE `koperasi_list` (
  `id` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `koperasi_list`
--

INSERT INTO `koperasi_list` (`id`, `pegawai_id`, `nama`, `harga`, `created_at`) VALUES
(1, 1, 'buku', 10000, '2022-11-27 04:11:55'),
(2, 1, 'alat tulis', 10000, '2022-11-27 04:12:04'),
(3, 1, 'Spidol', 6000, '2022-12-23 06:03:38'),
(4, 1, 'Kaos kaki', 12000, '2022-12-23 15:32:57'),
(6, 9, 'Topi', 16000, '2022-12-25 14:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `koperasi_penjualan`
--

CREATE TABLE `koperasi_penjualan` (
  `id` int(11) NOT NULL,
  `koperasi_list_id` int(11) NOT NULL,
  `koperasi_transaksi_id` int(11) NOT NULL,
  `jumlah_pembelian` int(100) NOT NULL,
  `total_harga` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `koperasi_penjualan`
--

INSERT INTO `koperasi_penjualan` (`id`, `koperasi_list_id`, `koperasi_transaksi_id`, `jumlah_pembelian`, `total_harga`, `created_at`) VALUES
(6, 2, 4, 1, 10000, '2022-12-14 07:22:23'),
(12, 3, 8, 15, 90000, '2022-12-24 15:52:39'),
(13, 2, 9, 1, 10000, '2022-12-29 05:12:26'),
(14, 1, 10, 1, 10000, '2022-12-29 19:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `koperasi_transaksi`
--

CREATE TABLE `koperasi_transaksi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qr_code` varchar(1000) NOT NULL,
  `total_pembayaran` int(100) NOT NULL,
  `is_lunas` enum('Y','N') NOT NULL DEFAULT 'N',
  `pegawai_id` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `koperasi_transaksi`
--

INSERT INTO `koperasi_transaksi` (`id`, `user_id`, `qr_code`, `total_pembayaran`, `is_lunas`, `pegawai_id`, `tanggal`) VALUES
(4, NULL, '/koperasi/show/4', 10000, 'Y', 1, '2022-12-14'),
(8, NULL, '', 90000, 'Y', 9, '2022-12-24'),
(9, NULL, '', 10000, 'N', 9, '2022-12-29'),
(10, NULL, '', 10000, 'N', 9, '2022-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `log_transaksi`
--

CREATE TABLE `log_transaksi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('KELUAR','MASUK') NOT NULL,
  `nominal` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `bukti_tf` text DEFAULT NULL,
  `is_approve` enum('Y','N') DEFAULT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `log_transaksi`
--

INSERT INTO `log_transaksi` (`id`, `user_id`, `status`, `nominal`, `keterangan`, `bukti_tf`, `is_approve`, `created_date`) VALUES
(1, 1, 'MASUK', 100000, 'tes upload topup', 'image/uploads/dompet_digital/1/2022121670818635.jpg', 'Y', '2022-12-12 11:17:15'),
(2, 1, 'MASUK', 10000, 'Tes', NULL, 'N', '2022-12-15 14:36:06'),
(3, 1, 'MASUK', 120000, 'Tes', NULL, 'N', '2022-12-15 14:45:17'),
(4, 1, 'MASUK', 33666, 'hg', 'image/uploads/dompet_digital/4/2022121671090795.jpg', 'Y', '2022-12-15 14:53:15'),
(5, 1, 'MASUK', 538383, 'ccc', 'image/uploads/dompet_digital/5/2022121671091098.jpg', 'Y', '2022-12-15 14:58:18'),
(6, 10, 'MASUK', 100000, 'tf BCA,  100.000', 'image/uploads/dompet_digital/6/2022121671254708.png', 'Y', '2022-12-17 12:25:08'),
(7, 4, 'MASUK', 2500000, '2500000', 'image/uploads/dompet_digital/7/2022121671255217.png', 'Y', '2022-12-17 12:33:37'),
(8, 0, 'MASUK', 10000, 'top up', NULL, 'N', '2022-12-19 07:59:55'),
(9, 0, 'MASUK', 100000, 'top up', 'image/uploads/dompet_digital/9/2022121671412144.jpg', 'Y', '2022-12-19 08:09:04'),
(10, 6, 'MASUK', 500000, 'top up saldo', 'image/uploads/dompet_digital/10/2022121671526121.jpg', NULL, '2022-12-20 15:48:41'),
(11, 4, 'MASUK', 50000, 'lunas', 'image/uploads/dompet_digital/11/2022121671540384.jpg', NULL, '2022-12-20 19:46:24'),
(12, 0, 'MASUK', 2000000, 'saldo', 'image/uploads/dompet_digital/12/2022121671542641.jpg', NULL, '2022-12-20 20:24:01'),
(13, 6, 'MASUK', 1000000, 'lunas', 'image/uploads/dompet_digital/13/2022121671577749.jpg', NULL, '2022-12-21 06:09:09'),
(14, 3, 'MASUK', 500000, 'lunas', 'image/uploads/dompet_digital/14/2022121671591075.jpg', NULL, '2022-12-21 09:51:15'),
(15, 4, 'MASUK', 50000, 'pegawai tu', 'image/uploads/dompet_digital/15/2022121671694065.jpg', NULL, '2022-12-22 14:27:45'),
(16, 6, 'MASUK', 50000, 'siswa', 'image/uploads/dompet_digital/16/2022121671695785.jpg', NULL, '2022-12-22 14:56:25'),
(17, 0, 'MASUK', 50000, 'lunas', 'image/uploads/dompet_digital/17/2022121671700299.jpg', NULL, '2022-12-22 16:11:39'),
(18, 5, 'MASUK', 20000, 'uangku', 'image/uploads/dompet_digital/18/2022121671719470.jpg', NULL, '2022-12-22 21:31:10'),
(19, 5, 'MASUK', 200000, 'top up', 'image/uploads/dompet_digital/19/2022121671801230.jpg', NULL, '2022-12-23 20:13:50'),
(20, 6, 'MASUK', 34646, 'ajajja', 'image/uploads/dompet_digital/20/2022121671912440.jpg', NULL, '2022-12-25 03:07:20'),
(21, 18, 'MASUK', 50000, 'dasda', 'image/uploads/dompet_digital/21/2022121671992201.jpeg', 'Y', '2022-12-26 01:16:41'),
(22, 49, 'MASUK', 500000, 'qgdjagD', 'image/uploads/dompet_digital/22/2022121672287553.jpg', 'Y', '2022-12-29 11:19:13'),
(23, 10, 'MASUK', 50000, 'Saldo', 'image/uploads/dompet_digital/23/2022121672306172.jpg', 'Y', '2022-12-29 16:29:32'),
(24, 49, 'MASUK', 50000, 'dgd', 'image/uploads/dompet_digital/24/2022121672306343.png', 'Y', '2022-12-29 16:32:23'),
(25, 4, 'MASUK', 2000, 'jjjkj', 'image/uploads/dompet_digital/25/2022121672346700.jpg', 'Y', '2022-12-30 03:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `nama`, `guru_id`, `created_at`) VALUES
(1, 'Fisika', 1, '0000-00-00 00:00:00'),
(2, 'Matematika', 9, '0000-00-00 00:00:00'),
(3, 'IPA', 5, '0000-00-00 00:00:00'),
(4, 'IPS', 12, '2022-12-20 03:08:17'),
(6, 'Kimia', 8, '2022-12-20 13:01:55'),
(7, 'Bahasa Indoensia', 11, '2022-12-20 13:02:28'),
(8, 'Seni Budaya', 10, '2022-12-20 13:02:47'),
(9, 'Ekonomi', 6, '2022-12-20 13:03:35'),
(10, 'Pend Agama Islam', 14, '2022-12-26 08:49:56'),
(11, 'Bahasa Inggris', 16, '2022-12-26 11:22:08'),
(12, 'Sastra', 17, '2022-12-27 10:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_pembelajaran`
--

CREATE TABLE `nilai_pembelajaran` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `semester` enum('Ganjil','Genap') NOT NULL,
  `ulangan_harian` int(100) NOT NULL,
  `nilai_tugas` int(100) NOT NULL,
  `nilai_uts` int(100) NOT NULL,
  `nilai_uas` int(100) NOT NULL,
  `nilai_rata` int(100) NOT NULL,
  `created_at` date NOT NULL,
  `is_show` enum('N','Y') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nilai_pembelajaran`
--

INSERT INTO `nilai_pembelajaran` (`id`, `kelas_id`, `mapel_id`, `siswa_id`, `semester`, `ulangan_harian`, `nilai_tugas`, `nilai_uts`, `nilai_uas`, `nilai_rata`, `created_at`, `is_show`) VALUES
(1, 1, 1, 1, 'Genap', 100, 100, 99, 99, 100, '2022-12-12', 'Y'),
(2, 1, 4, 1, 'Genap', 60, 60, 99, 99, 80, '2022-12-12', 'Y'),
(3, 2, 2, 6, 'Ganjil', 80, 80, 80, 90, 82, '2022-12-20', 'Y'),
(4, 1, 5, 1, 'Genap', 99, 99, 99, 99, 90, '2022-12-21', 'N'),
(5, 3, 2, 3, 'Ganjil', 66, 90, 85, 90, 83, '2022-12-22', 'Y'),
(7, 1, 4, 1, 'Genap', 70, 60, 90, 90, 78, '2022-12-22', 'Y'),
(8, 1, 4, 1, 'Ganjil', 70, 60, 90, 90, 78, '2022-12-22', 'Y'),
(9, 1, 4, 1, 'Ganjil', 20, 20, 20, 20, 20, '2022-12-22', 'Y'),
(10, 2, 2, 5, 'Ganjil', 90, 85, 90, 90, 0, '2022-12-26', 'N'),
(11, 1, 1, 5, 'Ganjil', 80, 90, 85, 81, 84, '2022-12-26', 'Y'),
(12, 1, 10, 12, 'Ganjil', 100, 100, 98, 99, 99, '2022-12-26', 'Y'),
(13, 2, 10, 8, 'Ganjil', 80, 90, 70, 60, 0, '2022-12-29', 'N'),
(14, 7, 10, 10, 'Ganjil', 90, 80, 90, 90, 88, '2022-12-29', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_seen` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `judul`, `deskripsi`, `created_at`, `user_id`, `is_seen`) VALUES
(1, 'judul1', 'asd', '2022-12-27', 1, 'Y'),
(2, 'Pinjam Fasilitas', 'Peminjaman fasilitas berhasil di konfirmasi kamu bisa menggunakan fasilitas sekolah sekarang', '2022-12-15', 1, 'Y'),
(3, 'Pinjam Fasilitas', 'Peminjaman fasilitas berhasil di konfirmasi kamu bisa menggunakan fasilitas sekolah sekarang', '2022-12-15', 2, 'Y'),
(4, 'Berhasil isi saldo', 'Saldo dompet digital kamu sudah terisi', '2022-12-17', 4, 'Y'),
(5, 'Berhasil isi saldo', 'Saldo dompet digital kamu sudah terisi', '2022-12-18', 1, 'Y'),
(6, 'Berhasil Withdraw', 'Admin sudah transfer silahkan cek rekening anda', '2022-12-18', 6, 'Y'),
(7, 'Gagal Withdraw', 'Penarikan uang tidak di konfirmasi oleh admin, harap teliti pastikan data telah sesuai', '2022-12-18', 6, 'Y'),
(8, 'Gagal Isi Saldo', 'Saldo dompet digital kamu tidak di acc oleh admin, harap teliti pastikan data telah sesuai', '2022-12-19', 1, 'Y'),
(9, 'Gagal Isi Saldo', 'Saldo dompet digital kamu tidak di acc oleh admin, harap teliti pastikan data telah sesuai', '2022-12-19', 1, 'Y'),
(10, 'Berhasil isi saldo', 'Saldo dompet digital kamu sudah terisi', '2022-12-19', 1, 'Y'),
(11, 'Gagal Withdraw', 'Penarikan uang tidak di konfirmasi oleh admin, harap teliti pastikan data telah sesuai', '2022-12-19', 1, 'Y'),
(12, 'Berhasil Withdraw', 'Admin sudah transfer silahkan cek rekening anda', '2022-12-19', 1, 'Y'),
(13, 'Pinjam Fasilitas', 'Peminjaman fasilitas berhasil di konfirmasi kamu bisa menggunakan fasilitas sekolah', '2022-12-19', 6, 'Y'),
(14, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 1, 'Y'),
(15, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 1, 'Y'),
(16, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 1, 'Y'),
(17, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 1, 'Y'),
(18, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 17, 'N'),
(19, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 17, 'N'),
(20, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 17, 'N'),
(21, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 17, 'N'),
(22, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 17, 'N'),
(23, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 17, 'N'),
(24, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 17, 'N'),
(25, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 17, 'N'),
(26, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 17, 'N'),
(27, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 4, 'Y'),
(28, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 4, 'Y'),
(29, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-19', 4, 'Y'),
(30, 'Berhasil Withdraw', 'Admin sudah transfer silahkan cek rekening anda', '2022-12-20', 1, 'Y'),
(31, 'Gagal Pinjam Fasilitas', 'Peminjaman fasilitas ditolak pegawai, mungkin fasilitas sedang dipakai', '2022-12-20', 2, 'Y'),
(32, 'Sumbang Buku', 'Sumbangan buku anda berhasil di konfirmasi pegawai, buku anda sekarang ada pada katalog perpus', '2022-12-20', 18, 'Y'),
(33, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-21', 4, 'Y'),
(34, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-21', 4, 'Y'),
(35, 'Berhasil isi saldo', 'Saldo dompet digital kamu sudah terisi', '2022-12-22', 10, 'Y'),
(36, 'Gagal Isi Saldo', 'Saldo dompet digital kamu tidak di acc oleh admin, harap teliti pastikan data telah sesuai', '2022-12-22', 0, 'Y'),
(37, 'Berhasil Withdraw', 'Admin sudah transfer silahkan cek rekening anda', '2022-12-23', 6, 'N'),
(38, 'Gagal Pinjam Buku', 'Peminjaman buku tidak diacc oleh pagawai perpus harap mencoba meminjam buku lain', '2022-12-25', 1, 'Y'),
(39, 'Gagal Pinjam Buku', 'Peminjaman buku tidak diacc oleh pagawai perpus harap mencoba meminjam buku lain', '2022-12-25', 4, 'N'),
(40, 'Berhasil Daftar OSIS', 'Selamat anda telah menjadi OSIS, sekarang anda dapat melakukan kegiatan osis dan menambahkan kegiata', '2022-12-25', 10, 'Y'),
(41, 'Berhasil isi saldo', 'Saldo dompet digital kamu sudah terisi', '2022-12-26', 18, 'N'),
(42, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-26', 24, 'Y'),
(43, 'Berhasil isi saldo', 'Saldo dompet digital kamu sudah terisi', '2022-12-29', 0, 'Y'),
(44, 'Berhasil isi saldo', 'Saldo dompet digital kamu sudah terisi', '2022-12-29', 49, 'Y'),
(45, 'Berhasil Withdraw', 'Admin sudah transfer silahkan cek rekening anda', '2022-12-29', 52, 'N'),
(46, 'Berhasil Daftar OSIS', 'Selamat anda telah menjadi OSIS, sekarang anda dapat melakukan kegiatan osis dan menambahkan kegiata', '2022-12-29', 50, 'Y'),
(47, 'Berhasil Daftar OSIS', 'Selamat anda telah menjadi OSIS, sekarang anda dapat melakukan kegiatan osis dan menambahkan kegiata', '2022-12-29', 66, 'N'),
(48, 'Berhasil Daftar OSIS', 'Selamat anda telah menjadi OSIS, sekarang anda dapat melakukan kegiatan osis dan menambahkan kegiata', '2022-12-29', 66, 'N'),
(49, 'Berhasil Withdraw', 'Admin sudah transfer silahkan cek rekening anda', '2022-12-29', 52, 'N'),
(50, 'Gagal Pinjam Fasilitas', 'Peminjaman fasilitas ditolak pegawai, mungkin fasilitas sedang dipakai', '2022-12-29', 6, 'N'),
(51, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-29', 49, 'Y'),
(52, 'Maaf, Anak Anda Belum Diterima', 'Admin tidak menerima Siswa Anda di Sekolah Kami', '2022-12-29', 19, 'N'),
(53, 'Maaf, Anak Anda Belum Diterima', 'Admin tidak menerima Siswa Anda di Sekolah Kami', '2022-12-29', 19, 'N'),
(54, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 67, 'N'),
(55, 'Maaf, Anak Anda Belum Diterima', 'Admin tidak menerima Siswa Anda di Sekolah Kami', '2022-12-29', 60, 'N'),
(56, 'Maaf, Anak Anda Belum Diterima', 'Admin tidak menerima Siswa Anda di Sekolah Kami', '2022-12-29', 56, 'N'),
(57, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 9, 'N'),
(58, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 48, 'Y'),
(59, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 69, 'N'),
(60, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 71, 'N'),
(61, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 71, 'N'),
(62, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 71, 'N'),
(63, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 71, 'N'),
(64, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 71, 'N'),
(65, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 5, 'N'),
(66, 'Pinjam Fasilitas', 'Peminjaman fasilitas berhasil di konfirmasi kamu bisa menggunakan fasilitas sekolah', '2022-12-29', 24, 'N'),
(67, 'Selamat, Anak Anda diterima', 'Admin telah menerima Siswa Anda di Sekolah Kami', '2022-12-29', 73, 'N'),
(68, 'Berhasil Daftar OSIS', 'Selamat anda telah menjadi OSIS, sekarang anda dapat melakukan kegiatan osis dan menambahkan kegiata', '2022-12-29', 4, 'N'),
(69, 'Pinjam Buku', 'Peminjaman buku berhasil di konfirmasi kamu bisa pergi ke perpus untuk pinjam buku', '2022-12-29', 64, 'N'),
(70, 'Berhasil isi saldo', 'Saldo dompet digital kamu sudah terisi', '2022-12-29', 10, 'N'),
(71, 'Berhasil isi saldo', 'Saldo dompet digital kamu sudah terisi', '2022-12-29', 49, 'N'),
(72, 'Berhasil isi saldo', 'Saldo dompet digital kamu sudah terisi', '2022-12-30', 4, 'N'),
(73, 'Berhasil Daftar OSIS', 'Selamat anda telah menjadi OSIS, sekarang anda dapat melakukan kegiatan osis dan menambahkan kegiata', '2022-12-30', 50, 'N'),
(74, 'Berhasil Withdraw', 'Admin sudah transfer silahkan cek rekening anda', '2022-12-30', 52, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `profil_picture` varchar(100) NOT NULL,
  `is_kantin` enum('Y','N') NOT NULL,
  `is_koperasi` enum('Y','N') NOT NULL,
  `is_perpus` enum('Y','N') NOT NULL,
  `is_tata_usaha` enum('Y','N') NOT NULL,
  `is_pengawas_sekolah` enum('Y','N') NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `user_id`, `nama_lengkap`, `tanggal_lahir`, `phone`, `address`, `gender`, `profil_picture`, `is_kantin`, `is_koperasi`, `is_perpus`, `is_tata_usaha`, `is_pengawas_sekolah`, `created_at`) VALUES
(1, 11, 'Lestari Permatasari', '1987-11-25', '081232657431', 'Sumbergempol', 'P', 'image/uploads/Pegawai/1/2022121672287395.png', 'N', 'Y', 'N', 'N', 'N', '2022-12-14 16:43:43'),
(2, 12, 'Mariani', '1996-05-20', '081235321789', 'Sukodono', 'P', 'image/uploads/Pegawai/2/2022121672287438.png', 'Y', 'N', 'N', 'N', 'N', '2022-12-14 16:46:46'),
(4, 6, 'Ira Purnama', '1997-09-10', '089431675892', 'Wonokromo', 'P', 'image/uploads/Pegawai/4/2022121672287465.jpeg', 'N', 'N', 'N', 'Y', 'N', '2022-12-15 16:02:39'),
(5, 15, 'Ani Isnaini', '1997-05-14', '087435218976', 'Kalimas', 'P', 'image/uploads/Pegawai/5/2022121672287622.png', 'N', 'N', 'Y', 'N', 'N', '2022-12-17 10:04:36'),
(7, 25, 'Yosana Irfan', '1973-06-08', '085762109823', 'Ketintang Madya', 'L', 'image/uploads/Pegawai/7/2022121672287811.jpg', 'N', 'N', 'N', 'N', 'Y', '2022-12-21 10:40:02'),
(8, 36, 'ka azizah', '2022-12-22', '087572535676', 'jakarta', 'P', 'image/uploads/Pegawai/8/2022121672287771.jpg', 'N', 'N', 'Y', 'N', 'N', '2022-12-22 17:12:34'),
(9, 38, 'pegawai kopsis', '2022-12-08', '0282920373', 'pegawaikopsis', 'L', 'image/uploads/Pegawai/9/2022121672287750.png', 'N', 'Y', 'N', 'N', 'N', '2022-12-24 01:15:23'),
(10, 51, 'pegawai_kopsis', '2022-11-30', '2131231321', 'pegawai_kopsis', 'L', 'image/uploads/Pegawai/10/2022121672287662.jpeg', 'N', 'Y', 'N', 'N', 'N', '2022-12-26 08:46:04'),
(11, 52, 'pegawai_kantin', '2022-11-30', '123131312', 'pegawai_kantin', 'L', 'image/uploads/Pegawai/11/2022121672287696.jpg', 'Y', 'N', 'N', 'N', 'N', '2022-12-26 08:46:30'),
(12, 53, 'pegawai_tu', '2022-12-01', '2131313', 'pegawai_tu', 'P', 'image/uploads/Pegawai/12/2022121672041763.png', 'N', 'N', 'N', 'Y', 'N', '2022-12-26 08:47:05'),
(13, 54, 'pegawai_perpus', '2022-11-30', '213123123', 'pegawai_perpus', 'P', 'image/uploads/Pegawai/13/2022121672041779.png', 'N', 'N', 'Y', 'N', 'N', '2022-12-26 08:47:32'),
(14, 55, 'pengawas_sekolah', '2022-11-30', '123123123', 'pengawas_sekolah', 'L', 'image/uploads/Pegawai/14/2022121672041791.png', 'N', 'N', 'N', 'N', 'Y', '2022-12-26 08:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_absensi`
--

CREATE TABLE `pegawai_absensi` (
  `id` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `is_izin` enum('Y','N') NOT NULL DEFAULT 'N',
  `alasan_izin` varchar(50) DEFAULT NULL,
  `keterangan_izin` varchar(100) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pegawai_absensi`
--

INSERT INTO `pegawai_absensi` (`id`, `pegawai_id`, `is_izin`, `alasan_izin`, `keterangan_izin`, `foto`, `waktu`) VALUES
(1, 4, 'Y', 'alasan', 'alasan', 'image/uploads/pegawai_absensi/1/2022121671196640.jpg', '2022-12-16 20:17:20'),
(2, 4, 'N', 'MASUK', NULL, 'image/uploads/pegawai_absensi/2/2022121671525451.jpg', '2022-12-20 15:37:31'),
(3, 1, 'N', 'MASUK', NULL, 'image/uploads/pegawai_absensi/3/2022121671526078.png', '2022-12-20 15:47:58'),
(4, 7, 'N', 'MASUK', NULL, 'image/uploads/pegawai_absensi/4/2022121671621376.jpg', '2022-12-21 18:16:16'),
(5, 5, 'N', 'MASUK', NULL, 'image/uploads/pegawai_absensi/5/2022121671767931.jpg', '2022-12-23 10:58:51'),
(6, 12, 'N', 'MASUK', NULL, 'image/uploads/pegawai_absensi/6/2022121672289263.jpg', '2022-12-29 11:47:43'),
(7, 13, 'N', 'MASUK', NULL, 'image/uploads/pegawai_absensi/7/2022121672289349.jpg', '2022-12-29 11:49:09'),
(8, 12, 'N', 'MASUK', NULL, 'image/uploads/pegawai_absensi/8/2022121672383461.jpg', '2022-12-30 13:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_fasilitas`
--

CREATE TABLE `peminjaman_fasilitas` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `peminjaman_fasilitas`
--

INSERT INTO `peminjaman_fasilitas` (`id`, `nama`, `created_at`) VALUES
(1, 'lapangan sekolah', '2022-12-12'),
(2, 'Lab Komputer', '2022-12-12'),
(3, 'lapangan voli', '2022-12-15'),
(17, 'Lapangan Basket', '2022-12-19'),
(20, 'Lab Biologi', '2022-12-29'),
(21, 'Lab Fisika', '2022-12-29'),
(22, 'Aula', '2022-12-29'),
(23, 'Ruang Kelas', '2022-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_fasilitas_jadwal`
--

CREATE TABLE `peminjaman_fasilitas_jadwal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL COMMENT 'not null ketika peminjaman di acc oleh pegawai TU',
  `peminjaman_fasilitas_id` int(11) NOT NULL,
  `jam_mulai` varchar(5) NOT NULL,
  `jam_selesai` varchar(5) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `peminjaman_fasilitas_jadwal`
--

INSERT INTO `peminjaman_fasilitas_jadwal` (`id`, `user_id`, `pegawai_id`, `peminjaman_fasilitas_id`, `jam_mulai`, `jam_selesai`, `tanggal`) VALUES
(12, 6, NULL, 3, '10:00', '11:00', '2022-12-01'),
(13, 6, 4, 3, '10:00', '11:00', '2022-12-01'),
(15, 6, NULL, 2, '23:02', '23:02', '2022-12-23'),
(16, 6, NULL, 3, '23:03', 'Inval', '2022-12-17'),
(17, 6, NULL, 2, '21:00', '00:00', '2022-12-19'),
(19, 6, NULL, 2, '09:00', '15:00', '2022-12-16'),
(22, 6, NULL, 2, 'Inval', 'Inval', '2022-12-20'),
(23, 6, NULL, 2, 'Inval', 'Inval', '2022-12-15'),
(24, 6, NULL, 2, '20:00', '01:00', '2022-12-15'),
(32, 1, NULL, 1, '10:11', '11:11', '2022-12-01'),
(33, 1, NULL, 1, '10:11', '11:11', '2022-12-01'),
(34, 1, NULL, 1, '10:11', '11:11', '2022-12-01'),
(35, 1, NULL, 1, '10:11', '11:12', '2022-12-01'),
(36, 1, NULL, 1, '10:11', '11:12', '2022-12-01'),
(37, 1, NULL, 1, '00:00', '00:00', '2022-12-01'),
(39, 4, 4, 3, '01:17', '01:17', '2022-12-16'),
(40, 4, NULL, 2, '13:22', '13:22', '2022-12-17'),
(42, 6, NULL, 1, '15:38', '15:38', '2022-12-20'),
(43, 18, NULL, 2, '06:31', '06:31', '2022-12-21'),
(44, 24, NULL, 1, '10:36', '10:36', '2022-12-21'),
(45, 24, 12, 1, '15:29', '15:29', '2022-12-22'),
(46, 18, NULL, 1, '15:43', '15:43', '2022-12-22'),
(47, 18, NULL, 1, '15:43', '15:43', '2022-12-22'),
(49, 24, NULL, 2, '17:34', '17:34', '2022-12-22'),
(50, 18, NULL, 1, '19:26', '21:00', '2022-12-22'),
(51, 18, NULL, 2, '21:27', '23:00', '2022-12-22'),
(52, 18, NULL, 1, '21:31', '21:31', '2022-12-22'),
(53, 18, NULL, 1, '17:30', '17:30', '2022-12-24'),
(54, 38, NULL, 1, '01:12', '04:15', '2022-12-25'),
(55, 38, NULL, 2, '04:15', '05:16', '2022-12-25'),
(56, 49, NULL, 1, '11:23', '11:23', '2022-12-29'),
(57, 45, NULL, 2, '07:32', '09:32', '2022-12-29'),
(58, 49, NULL, 17, '11:36', '11:36', '2022-12-30'),
(59, 70, NULL, 2, '10:00', '13:00', '2022-12-29'),
(60, 50, NULL, 3, '08:00', '09:00', '2022-12-29'),
(61, 4, NULL, 3, '21:00', '04:10', '2022-12-30'),
(62, 49, NULL, 23, '11:12', '11:12', '2022-12-29'),
(63, 1, 12, 1, '11:11', '13:11', '2022-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `perpustakaan`
--

CREATE TABLE `perpustakaan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `saldo` int(100) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `perpustakaan`
--

INSERT INTO `perpustakaan` (`id`, `nama`, `saldo`, `created_at`) VALUES
(1, 'Perpus Ceria', 1589999, '2022-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `perpus_katalog`
--

CREATE TABLE `perpus_katalog` (
  `id` int(11) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `perpus_kategori_id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `bahasa` varchar(100) NOT NULL,
  `total_halaman` int(100) NOT NULL,
  `stok_buku` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `perpus_katalog`
--

INSERT INTO `perpus_katalog` (`id`, `pegawai_id`, `perpus_kategori_id`, `foto`, `judul`, `author`, `bahasa`, `total_halaman`, `stok_buku`) VALUES
(17, 5, 5, 'image/uploads/perpus/2022121672292286.jpeg', 'Malin Kundang', 'Rini Kurniasih', 'indonesia', 100, 0),
(30, 5, 8, 'image/uploads/perpus/2022121672292322.jpeg', 'Paket Biologi Semester Ganjil', 'Henny Riandri', 'Indonesia', 200, 100),
(31, 5, 6, 'image/uploads/perpus/2022121672292346.jpeg', 'Dear Hyun Nam', 'Choo Nam-joo', 'korea', 250, 20),
(32, 5, 2, 'image/uploads/perpus/2022121672292367.jpeg', 'Kamus Bahasa Inggris dan Indonesia', 'John', 'English & Indonesian', 300, 1),
(34, 5, 9, 'image/uploads/perpus/2022121672293424.jpeg', 'Pepak Bahasa Jawa', 'Imron almari', 'Isyarat', 158, 50),
(36, 5, 5, 'image/uploads/perpus/2022121672293305.jpg', 'Laskar Pelangi', 'komeng', 'ajja', 200, 50),
(37, 8, 6, 'image/uploads/buku/2022121672288829.jpg', 'Api Tauhid: Cahaya Keagungan Cinta Sang Mujaddid', 'Habiburrahman El Shirazy', 'Indonesia', 573, 100),
(38, 13, 5, 'image/uploads/buku/2022121672289451.jpg', 'Maling kundangs', 'Sulis', 'Indonesia', 140, -1),
(39, 13, 5, 'image/uploads/buku/2022121672289601.jpg', 'Si kancil', 'Lina', 'Indonesia', 80, 1),
(40, 8, 2, 'image/uploads/buku/2022121672289680.jpg', 'Paket Kimia', 'Tine Maria', 'Indonesia', 262, 1),
(41, 8, 2, 'image/uploads/buku/2022121672289772.jpg', 'Paket Kimia', 'Tine Maria', 'Indonesia', 262, 15),
(42, 13, 6, 'image/uploads/buku/2022121672289995.jpg', 'Pulang', 'tere liye', 'Indonesia', 400, 20);

-- --------------------------------------------------------

--
-- Table structure for table `perpus_kategori`
--

CREATE TABLE `perpus_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `perpus_kategori`
--

INSERT INTO `perpus_kategori` (`id`, `nama`, `pegawai_id`, `created_at`) VALUES
(1, 'horor', 5, '2022-12-19 21:18:27'),
(2, 'pendidikan', 5, '2022-12-19 21:18:30'),
(3, 'teknologi', 5, '2022-12-19 21:18:33'),
(5, 'Buku Cerita', 5, '2022-12-19 21:18:35'),
(6, 'Novel', 5, '2022-12-19 21:18:40'),
(8, 'Biologi', 5, '2022-12-19 21:18:42'),
(9, 'Sejarah', 5, '2022-12-19 21:18:08'),
(10, 'Dongeng', 5, '2022-12-19 21:19:55'),
(15, 'Olahraga', 5, '2022-12-19 21:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `perpus_kehilangan`
--

CREATE TABLE `perpus_kehilangan` (
  `id` int(11) NOT NULL,
  `perpus_katalog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nominal` text NOT NULL,
  `tanggal_pembayaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `perpus_kehilangan`
--

INSERT INTO `perpus_kehilangan` (`id`, `perpus_katalog_id`, `user_id`, `nominal`, `tanggal_pembayaran`) VALUES
(1, 17, 18, '50000', '2022-12-15'),
(2, 17, 4, '50000', '2022-12-20'),
(3, 17, 4, '50000', '2022-12-20'),
(4, 17, 4, '50000', '2022-12-20'),
(5, 17, 4, '50000', '2022-12-22'),
(6, 17, 4, '50000', '2022-12-22'),
(7, 17, 1, '50000', '2022-12-24'),
(8, 17, 1, '50000', '2022-12-24'),
(9, 17, 10, '50000', '2022-12-29'),
(10, 30, 49, '50000', '2022-12-29'),
(11, 17, 10, '50000', '2022-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `perpus_peminjaman`
--

CREATE TABLE `perpus_peminjaman` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `total_denda` int(100) NOT NULL DEFAULT 0,
  `is_lunas` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_kembali` enum('Y','N') NOT NULL DEFAULT 'N',
  `tanggal_dikembalikan` varchar(100) DEFAULT NULL,
  `is_acc` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `perpus_peminjaman`
--

INSERT INTO `perpus_peminjaman` (`id`, `user_id`, `pegawai_id`, `tanggal_peminjaman`, `tanggal_pengembalian`, `total_denda`, `is_lunas`, `is_kembali`, `tanggal_dikembalikan`, `is_acc`) VALUES
(1, 64, 13, '2022-12-29', '2023-01-05', 0, 'N', 'N', '2022-12-29', 'Y'),
(2, 63, 8, '2022-12-29', '2023-01-05', 0, 'N', 'N', NULL, 'N'),
(3, 65, 13, '2022-12-29', '2023-01-05', 0, 'N', 'N', NULL, 'N'),
(4, 22, 5, '2022-12-29', '2023-01-05', 0, 'N', 'N', NULL, 'N'),
(5, 4, NULL, '2022-12-29', '2023-01-05', 0, 'Y', 'N', '2022-12-29', 'N'),
(6, 49, NULL, '2022-12-29', '2023-01-05', 0, 'Y', 'N', '2022-12-29', 'N'),
(7, 70, NULL, '2022-12-29', '2023-01-05', 0, 'Y', 'N', '2022-12-30', 'N'),
(8, 72, NULL, '2022-12-29', '2023-01-05', 0, 'N', 'N', NULL, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `perpus_peminjaman_katalog`
--

CREATE TABLE `perpus_peminjaman_katalog` (
  `id` int(11) NOT NULL,
  `perpus_peminjaman_id` int(11) NOT NULL,
  `perpus_katalog_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `perpus_peminjaman_katalog`
--

INSERT INTO `perpus_peminjaman_katalog` (`id`, `perpus_peminjaman_id`, `perpus_katalog_id`, `created_at`) VALUES
(9, 10, 31, '0000-00-00 00:00:00'),
(12, 13, 17, '0000-00-00 00:00:00'),
(13, 14, 30, '0000-00-00 00:00:00'),
(17, 15, 32, '0000-00-00 00:00:00'),
(18, 15, 32, '0000-00-00 00:00:00'),
(19, 16, 30, '0000-00-00 00:00:00'),
(20, 17, 36, '0000-00-00 00:00:00'),
(22, 18, 34, '0000-00-00 00:00:00'),
(23, 12, 17, '0000-00-00 00:00:00'),
(24, 19, 30, '0000-00-00 00:00:00'),
(25, 20, 30, '0000-00-00 00:00:00'),
(26, 21, 34, '0000-00-00 00:00:00'),
(27, 22, 30, '0000-00-00 00:00:00'),
(31, 1, 37, '0000-00-00 00:00:00'),
(32, 2, 41, '0000-00-00 00:00:00'),
(33, 3, 42, '0000-00-00 00:00:00'),
(34, 4, 32, '0000-00-00 00:00:00'),
(35, 5, 37, '0000-00-00 00:00:00'),
(36, 6, 17, '0000-00-00 00:00:00'),
(37, 7, 32, '0000-00-00 00:00:00'),
(38, 8, 38, '0000-00-00 00:00:00'),
(39, 8, 38, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `perpus_sumbang`
--

CREATE TABLE `perpus_sumbang` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `perpus_kategori_id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `bahasa` varchar(100) NOT NULL,
  `total_halaman` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `perpus_sumbang`
--

INSERT INTO `perpus_sumbang` (`id`, `user_id`, `pegawai_id`, `perpus_kategori_id`, `foto`, `judul`, `author`, `bahasa`, `total_halaman`, `created_at`) VALUES
(3, 14, 5, 6, 'image/uploads/buku/2022121671517365.png', 'Laskar Pelangi', 'Andrea', 'Indonesia', 150, '2022-12-20 06:22:45'),
(4, 4, 5, 2, 'image/uploads/buku/2022121671517555.jpg', 'Kamus Bahasa Inggris dan Indonesia', 'John', 'English & Indonesian', 300, '2022-12-20 06:25:55'),
(6, 18, 5, 3, 'image/uploads/buku/2022121671527469.jpeg', 'coba sumbang buku', 'anonim', 'indonesia', 50, '2022-12-20 09:12:01'),
(10, 1, NULL, 1, 'image/uploads/buku/2022121671635965.png', 'inpo mabar mazehhh', 'amang cuyy', 'ind', 100, '2022-12-21 15:19:25'),
(11, 11, NULL, 1, 'image/uploads/buku/2022121671886174.png', 'inpo mabar mazehhh', 'amang cuyy', 'ind', 100, '2022-12-24 12:49:34'),
(12, 4, NULL, 8, 'image/uploads/buku/2022121671886419.jpg', 'nsjs', 'hshs', 'yh', 336, '2022-12-24 12:53:39'),
(13, 4, NULL, 8, 'image/uploads/buku/2022121671886437.jpg', 'nsjs', 'hshs', 'yh', 336, '2022-12-24 12:53:57'),
(14, 13, NULL, 6, 'image/uploads/buku/2022121671981708.jpg', 'Api Tauhid: Cahaya Keagungan Cinta Sang Mujaddid', 'Habiburrahman El Shirazy', 'Indonesia', 573, '2022-12-25 15:21:48'),
(15, 10, NULL, 6, 'image/uploads/buku/2022121671987318.jpg', 'Api Tauhid: Cahaya Keagungan Cinta Sang Mujaddid', 'Habiburrahman El Shirazy', 'Indonesia', 573, '2022-12-25 16:55:18'),
(16, 38, NULL, 3, 'image/uploads/buku/2022121671988527.jpg', 'Naga Api', 'ari peterpan', 'indo', 400, '2022-12-25 17:15:27'),
(17, 47, NULL, 9, 'image/uploads/buku/2022121672021507.jpg', 'Atlas Sejarah Indonesia Dan Dunia', 'Pustaka Baru Press', 'Indonesia', 130, '2022-12-26 02:25:07'),
(18, 50, NULL, 5, 'image/uploads/buku/2022121672288061.jpg', 'buah apa ya', 'maira', 'indonesia', 87, '2022-12-29 04:27:41'),
(19, 49, NULL, 5, 'image/uploads/buku/2022121672289050.jpg', 'Quiet', 'Susan Cain', 'Indonesia', 150, '2022-12-29 04:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `ppdb`
--

CREATE TABLE `ppdb` (
  `id` int(11) NOT NULL,
  `is_active` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ppdb`
--

INSERT INTO `ppdb` (`id`, `is_active`) VALUES
(1, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `raport`
--

CREATE TABLE `raport` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai_rapot` float NOT NULL,
  `uts` float NOT NULL,
  `uas` float NOT NULL,
  `tugas` float NOT NULL,
  `ulangan_harian` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `nama`) VALUES
(1, 'admin'),
(2, 'siswa'),
(3, 'walimurid'),
(4, 'guru'),
(5, 'pegawai'),
(6, 'kepala sekolah'),
(7, 'dinas pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wali_murid_id` int(11) NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `agama` varchar(50) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `foto_profil` varchar(255) DEFAULT NULL,
  `kartu_digital` varchar(255) NOT NULL,
  `is_osis` enum('Y','N') NOT NULL DEFAULT 'N',
  `tanggal_daftar` date NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `tanggal_daftar_osis` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `wali_murid_id`, `kelas_id`, `nama_lengkap`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `agama`, `phone`, `foto_profil`, `kartu_digital`, `is_osis`, `tanggal_daftar`, `tempat_lahir`, `nama_ayah`, `nama_ibu`, `nisn`, `tanggal_daftar_osis`) VALUES
(1, 4, 3, 1, 'asep', '2022-12-19', 'L', 'asda', 'sd', '123', 'asd', 'asd', 'Y', '2022-12-12', 'Malang', 'Ayah Asep', 'Ibu Asep', '123123', '2022-12-29'),
(2, 10, 2, 1, 'Muhammad Apindo', '2003-05-05', 'L', 'Ketintang Barat No.VII', 'islam', '085158765234', 'image/uploads/User/2/2022121672289911.jpeg', 'https://sipena-manpro.test/generatekartudigital?id=2', 'Y', '2018-06-12', 'Malang', 'Sutrisno', 'Ida', '135465732', '2022-12-25'),
(3, 14, 1, 1, 'Arka Nanta', '2003-11-12', 'L', 'Sidoarjo', 'Islam', '07821312313', 'image/uploads/User/3/2022121672290007.png', 'https://sipena.wapfive.com/generatekartudigital?id=3', 'N', '2018-06-06', 'Gresik', 'Suyitno', 'Yuni', '137829035', '2022-12-22'),
(4, 17, 1, 7, 'Bagus Sunarno', '2009-03-14', 'L', 'kebraon 2 185', 'Islam', '+6282246545825', 'image/uploads/User/4/2022121671887596.png', 'https://mysekolah.mitraarafah.com/sipena-manpro/generatekartudigital?id=17', 'Y', '2022-12-17', 'surabaya', 'bambang', 'Tia', '136789213', '2022-12-23'),
(5, 21, 5, 1, 'blablablabla', '2022-12-21', 'L', 'asdasdasdasd', 'dasdas', '05258252', 'image/uploads/User/21/2022121671370065.png', 'https://sipena.wapfive.com/generatekartudigital?id=5', 'N', '2022-12-20', 'anggasdas', 'sadasd', 'asgsadas', '123124', NULL),
(6, 18, 3, 2, 'mifta', '2022-12-01', 'L', 'alamat mifta', 'islam', '43673242373423423', 'image/uploads/User/18/2022121671425771.png', 'https://sipena.wapfive.com/generatekartudigital?id=6', 'N', '2022-12-08', 'mojokerto', 'ayah mifta', 'ibu mifta', '1231231324324', '2022-12-26'),
(7, 33, 4, 4, 'Mumut Anjani', '2009-10-20', 'P', 'jombangg', 'islam', '+62 898-3701-70921', 'image/uploads/User/7/2022121672290081.jpg', 'https://sipena.my.id/generatekartudigital?id=7', 'Y', '2022-12-22', 'Jombang', 'Imam', 'Katemi', '65378979823789', '2022-12-23'),
(8, 35, 14, 0, 'Mutiara vebriani', '2022-12-22', 'P', 'ponoooorogo', 'Islam', '+62 895-3930-49407', 'image/uploads/Walimurid/35/2022121671702241.jpg', '', 'N', '2022-12-22', 'Ponorogo', 'Purwanto', 'Pipit', '123455', NULL),
(9, 41, 2, 1, 'ilainana', '2022-12-22', 'P', 'sby', 'Islam', '09812938782', NULL, 'https://sipena.my.id/generatekartudigital?id=9', 'N', '2022-12-07', 'pasuruan', 'bpk', 'ibu', '230987', NULL),
(10, 49, 20, 7, 'Siswa Biasa', '2022-11-30', 'L', 'alamat Siswa Biasa', 'islam', '12312312313', 'image/uploads/User/10/2022121672290984.png', 'https://sipena.wapfive.com/generatekartudigital?id=10', 'N', '2022-12-06', 'mojokerto', 'Ayah Siswa Biasa', 'Ibu Siswa Biasa', '21312313213', '2022-12-29'),
(11, 50, 20, 7, 'Siswa Osis', '2022-12-01', 'L', 'alamat Siswa Osis', 'islam', '089381311231', 'image/uploads/User/11/2022121672289844.jpeg', 'https://sipena.wapfive.com/generatekartudigital?id=11', 'Y', '2022-12-01', 'sidoarjo', 'ayah Siswa Osis', 'ibu Siswa Osis', '8239798213', '2022-12-30'),
(13, 59, 2, 1, 'murid baru', '2015-11-30', 'L', 'alamat rumah yang sedan', 'islam', '098978787', 'image/uploads/User/13/2022121672290950.png', 'https://mysekolah.mitraarafah.com/test/generatekartudigital?id=13', 'N', '2022-12-27', 'surabaya', 'ayah murid', 'murid ibu', '8329342', NULL),
(15, 62, 3, 4, 'shiva anggraini', '2002-06-04', 'P', 'Jl. Mangga Jakarta utara', 'islam', '+6285730488805', 'image/uploads/Murid/62/2022121672286959.jpeg', 'https://mysekolah.mitraarafah.com/sipena-manpro/generatekartudigital?id=15', 'N', '2022-12-29', 'jakarta', 'budiono', 'indah', '3124577', NULL),
(16, 63, 18, 2, 'novia ismi', '2002-02-11', 'P', 'Jl. manggis, Sooko,  Mojokerto', 'islam', '085730488805', 'image/uploads/Murid/63/2022121672287221.jpeg', 'https://mysekolah.mitraarafah.com/sipena-manpro/generatekartudigital?id=16', 'N', '2022-12-29', 'mojokerto', 'Angga', 'Azizah', '343657665', NULL),
(17, 64, 21, 6, 'rafatar', '2004-02-02', 'L', 'Jl Semangka no.11B', 'islam', '08123123234', 'image/uploads/Murid/64/2022121672287368.jpeg', 'https://mysekolah.mitraarafah.com/sipena-manpro/generatekartudigital?id=17', 'N', '2022-12-29', 'ponorogo', 'rafi ahmad', 'nagita slavina', '3564767', NULL),
(18, 65, 10, 4, 'iqbal ramadhan', '2001-06-21', 'L', 'Jakarta utara', 'islam', '+6285730488806', 'image/uploads/Murid/65/2022121672287797.jpg', 'https://mysekolah.mitraarafah.com/sipena-manpro/generatekartudigital?id=18', 'N', '2022-12-29', 'jakarta utara', 'imam', 'tina', '3412356', NULL),
(19, 66, 20, 7, 'tes_osis', '2022-11-30', 'L', 'tes_osis', 'islam', '123123', 'image/uploads/Murid/66/2022121672288965.png', 'https://mysekolah.mitraarafah.com/sipena-manpro/generatekartudigital?id=19', 'N', '2022-12-08', 'gresik', 'tes_osis', 'tes_osis', '123123131', NULL),
(20, 68, 23, NULL, 'Dita Leni Rafi', '2022-12-29', 'P', 'ponorogo', 'Islam', '+62 895-3930-49407', 'image/uploads/Murid/68/2022121672290394.png', '', 'N', '2022-12-29', 'Ponorogo', 'Sulis Purnomo', 'Katemi Aini', '1889729', NULL),
(21, 70, 24, 0, 'adelia', '2002-06-15', 'P', 'ketintang', 'Islam', '9809213867321853', 'image/uploads/Murid/70/2022121672293151.jpg', '', 'N', '2022-12-29', 'surabaya', 'hibat', 'maira', '1979876245', NULL),
(22, 72, 25, 7, 'gagah', '2002-12-29', 'L', 'ketintang', 'Islam', '107467124541', 'image/uploads/Murid/72/2022121672297334.png', 'https://mysekolah.mitraarafah.com/sipena-manpro/generatekartudigital?id=72', 'N', '2022-12-29', 'jombang', 'adi', 'sih', '9846765151', NULL),
(23, 74, 26, 7, 'sila', '2003-12-29', 'P', 'ketintang', 'Islam', '08365264177', 'image/uploads/Murid/74/2022121672299392.png', 'https://mysekolah.mitraarafah.com/sipena-manpro/generatekartudigital?id=74', 'N', '2022-12-29', 'surabaya', 'husein', 'aisyah', '908429867864', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siswa_absensi`
--

CREATE TABLE `siswa_absensi` (
  `id` int(11) NOT NULL,
  `jadwal_pembelajaran_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `is_izin` enum('Y','N') NOT NULL DEFAULT 'N',
  `alasan_izin` varchar(50) DEFAULT NULL,
  `keterangan_izin` varchar(100) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `siswa_absensi`
--

INSERT INTO `siswa_absensi` (`id`, `jadwal_pembelajaran_id`, `siswa_id`, `is_izin`, `alasan_izin`, `keterangan_izin`, `foto`, `created_at`) VALUES
(1, 2, 6, 'N', 'MASUK', NULL, 'image/uploads/siswa_absensi/1/2022121671506950.jpg', '2022-12-20 10:29:10'),
(2, 5, 6, 'N', 'MASUK', NULL, 'image/uploads/siswa_absensi/2/2022121671508923.jpg', '2022-12-20 11:02:03'),
(3, 1, 1, 'Y', 'alasan', 'alasan', 'image/uploads/siswa_absensi/3/2022121671782750.png', '2022-12-23 15:05:50'),
(4, 4, 13, 'N', 'MASUK', NULL, 'image/uploads/siswa_absensi/4/2022121672110549.jpg', '2022-12-27 10:09:09'),
(5, 12, 10, 'N', 'MASUK', NULL, 'image/uploads/siswa_absensi/5/2022121672288835.jpg', '2022-12-29 11:40:35'),
(6, 10, 21, 'N', 'MASUK', NULL, 'image/uploads/siswa_absensi/6/2022121672304962.jpg', '2022-12-29 16:09:22'),
(7, 13, 10, 'N', 'MASUK', NULL, 'image/uploads/siswa_absensi/7/2022121672373517.jpg', '2022-12-30 11:11:57'),
(8, 12, 11, 'N', 'MASUK', NULL, 'image/uploads/siswa_absensi/5/2022121672288835.jpg', '2022-12-29 11:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_mutasi`
--

CREATE TABLE `siswa_mutasi` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `status` enum('KELUAR','MASUK') NOT NULL DEFAULT 'KELUAR',
  `surat_keterangan_pindah_sekolah_asal` varchar(100) DEFAULT NULL,
  `tanda_bukti_mutasi_dispen_provinsi` varchar(100) NOT NULL,
  `surat_rekom_penyaluran_dari_deriktorat_jendral_dikdasmen` varchar(100) NOT NULL,
  `raport_asal` varchar(100) NOT NULL,
  `fotocoy_raport` varchar(100) NOT NULL,
  `fotocopy_sertifikat` varchar(100) NOT NULL,
  `surat_rekomendasi_penerimaan` varchar(100) NOT NULL,
  `pas_foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `siswa_mutasi`
--

INSERT INTO `siswa_mutasi` (`id`, `siswa_id`, `status`, `surat_keterangan_pindah_sekolah_asal`, `tanda_bukti_mutasi_dispen_provinsi`, `surat_rekom_penyaluran_dari_deriktorat_jendral_dikdasmen`, `raport_asal`, `fotocoy_raport`, `fotocopy_sertifikat`, `surat_rekomendasi_penerimaan`, `pas_foto`) VALUES
(2, 6, 'KELUAR', NULL, '', '', '', '', '', '', ''),
(3, 7, 'MASUK', 'file/uploads/siswa_mutasi/3/surat_keterangan_pindah_sekolah_asal/2022121671692562.pdf', '', '', '', '', '', '', ''),
(4, 4, 'MASUK', NULL, '', '', '', '', '', '', ''),
(5, 3, 'KELUAR', NULL, '', '', '', '', '', '', ''),
(6, 5, 'MASUK', 'file/uploads/siswa_mutasi/6/surat_keterangan_pindah_sekolah_asal/2022121671950712.pdf', 'file/uploads/siswa_mutasi/6/tanda_bukti_mutasi_dispen_provinsi/2022121671950712.pdf', 'file/uploads/siswa_mutasi/6/surat_rekom/2022121671950712.pdf', 'file/uploads/siswa_mutasi/6/raport_asal/2022121671950712.pdf', 'file/uploads/siswa_mutasi/6/fotocoy_raport/2022121671950712.pdf', 'file/uploads/siswa_mutasi/6/fotocopy_sertifikat/2022121671950712.pdf', 'file/uploads/siswa_mutasi/6/surat_rekomendasi_penerimaan/2022121671950712.pdf', 'image/uploads/siswa_mutasi/6/pas_foto/2022121671950712.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_login` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_active` enum('Y','N') NOT NULL DEFAULT 'N',
  `saldo` int(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role_id`, `is_login`, `is_active`, `saldo`, `created_at`, `updated_at`) VALUES
(0, 'pegawaiperpusold', 'pegawaiperpusold123', 5, 'N', 'Y', 100000, '0000-00-00 00:00:00', NULL),
(1, 'admin', 'admin123', 1, 'Y', 'Y', 742260, '0000-00-00 00:00:00', '2022-12-30 14:03:14'),
(2, 'guru', 'guru123', 4, 'Y', 'Y', NULL, '0000-00-00 00:00:00', '2022-12-27 10:13:52'),
(4, 'siswa', 'siswa123', 2, 'Y', 'Y', 9258000, '2022-11-16 02:20:01', '2022-12-26 01:12:58'),
(6, 'pegawaitu', 'pegawaitu123', 5, 'Y', 'Y', 620000, '2022-12-12 02:16:07', '2022-12-26 07:39:29'),
(7, 'guru2', 'guru2', 4, 'N', 'Y', 0, '2022-11-18 23:59:37', '0000-00-00 00:00:00'),
(8, 'pegawai1', 'pegawai1', 4, 'N', 'Y', 0, '2022-12-13 21:58:05', NULL),
(9, 'walimurid1', 'walimurid', 3, 'N', 'Y', 0, '2022-12-13 22:19:00', NULL),
(10, 'apin', 'apin123', 2, 'Y', 'Y', 25500, '2022-12-13 22:20:22', '2022-12-26 08:21:31'),
(11, 'pegawaikoperasi', 'pegawaikoperasi123', 2, 'Y', 'Y', 0, '2022-12-14 22:03:12', '2022-12-26 09:01:45'),
(13, 'dinaspendidikan', 'dinaspendidikan123', 7, 'Y', 'Y', 0, '2022-12-18 12:13:27', '2022-12-29 21:15:57'),
(14, 'walikelas', 'walikelas123', 4, 'Y', 'Y', 0, '2022-12-18 21:03:27', '2022-12-26 09:40:34'),
(15, 'pegawaiperpus', 'pegawaiperpus123', 5, 'Y', 'Y', NULL, '2022-12-18 23:12:29', '2022-12-26 01:49:06'),
(17, 'bagus', 'bagus123', 3, 'N', 'Y', 0, '2022-12-19 11:27:55', NULL),
(18, 'mifta', 'mifta123', 2, 'Y', 'Y', 50000, '2022-12-19 11:56:11', '2022-12-26 07:36:05'),
(19, 'walimuridnew', 'walimuridnew123', 3, 'Y', 'Y', 0, '2022-12-19 22:14:16', '2022-12-26 14:15:06'),
(20, 'e', 'e', 3, 'N', 'Y', 0, '2022-12-20 11:56:22', NULL),
(21, 'ara', 'ara123', 4, 'N', 'N', 0, '2022-12-20 11:57:01', NULL),
(22, 'ameena', 'ameena', 4, 'N', 'Y', 0, '2022-12-20 12:49:42', NULL),
(23, 'tyastok', 'tyastok', 4, 'N', 'Y', 0, '2022-12-20 13:18:30', NULL),
(24, 'kepalasekolah', 'kepalasekolah123', 6, 'Y', 'Y', 0, '2022-12-20 13:51:46', '2022-12-30 09:00:11'),
(25, 'pengawassekolah', 'pengawassekolah123', 5, 'Y', 'Y', 0, '2022-12-21 10:40:02', '2022-12-30 11:22:07'),
(26, 'aulia', 'aulia123', 3, 'N', 'Y', 0, '2022-12-21 21:31:28', NULL),
(29, 'tes', 'tes', 3, 'N', 'Y', 0, '2022-12-21 21:49:47', NULL),
(30, 'fadhil', 'fadhil', 3, 'N', 'Y', 0, '2022-12-21 21:53:32', NULL),
(32, 'fadhillah2', 'fadhillah2', 3, 'N', 'Y', 0, '2022-12-21 21:55:26', NULL),
(33, 'Mumut', 'Mumut123', 2, 'Y', 'Y', 0, '2022-12-22 14:01:46', '2022-12-24 23:59:18'),
(34, 'Purwanto', 'purwanto123', 3, 'Y', 'Y', 0, '2022-12-22 15:40:32', '2022-12-25 22:45:54'),
(35, 'Mutiara', '123', 2, 'N', 'Y', 0, '2022-12-22 16:44:01', NULL),
(36, 'cipung', 'cipung', 5, 'N', 'Y', 0, '2022-12-22 17:12:34', NULL),
(38, 'pegawaikopsis', 'pegawaikopsis123', 5, 'Y', 'Y', 0, '2022-12-24 01:15:23', '2022-12-26 02:15:33'),
(40, 'guru_osis', 'guru_osis123', 4, 'Y', 'Y', 0, '2022-12-25 14:56:02', '2022-12-29 13:07:53'),
(41, 'inaaa', 'ina123', 2, 'N', 'Y', 0, '2022-12-25 22:07:55', NULL),
(42, 'paiman', 'paiman123', 3, 'N', 'Y', 0, '2022-12-25 22:22:52', NULL),
(43, 'anggawali', 'anggawali123', 3, 'N', 'Y', 0, '2022-12-26 08:21:18', NULL),
(44, 'angga', 'angga123', 3, 'N', 'Y', 0, '2022-12-26 08:22:07', NULL),
(45, 'guru_mapel', 'guru_mapel123', 4, 'Y', 'Y', 0, '2022-12-26 08:37:00', '2022-12-30 14:02:28'),
(46, 'guru_ekstra', 'guru_ekstra123', 4, 'Y', 'Y', 0, '2022-12-26 08:37:27', '2022-12-29 14:43:19'),
(47, 'guru_walikelas', 'guru_walikelas123', 4, 'Y', 'Y', 0, '2022-12-26 08:38:19', '2022-12-26 12:08:05'),
(48, 'minti', 'minti123', 3, 'Y', 'Y', 0, '2022-12-26 08:39:02', '2022-12-30 13:24:55'),
(49, 'siswa_biasa', 'siswa_biasa123', 2, 'Y', 'Y', 400000, '2022-12-26 08:43:58', '2022-12-29 16:31:57'),
(50, 'siswa_osis', 'siswa_osis123', 2, 'Y', 'Y', 0, '2022-12-26 08:45:12', '2022-12-30 11:14:27'),
(51, 'pegawai_kopsis', 'pegawai_kopsis123', 5, 'Y', 'Y', 0, '2022-12-26 08:46:04', '2022-12-29 21:13:58'),
(52, 'pegawai_kantin', 'pegawai_kantin123', 5, 'Y', 'Y', 0, '2022-12-26 08:46:30', '2022-12-30 11:15:56'),
(53, 'pegawai_tu', 'pegawai_tu123', 5, 'Y', 'Y', 0, '2022-12-26 08:47:05', '2022-12-30 13:58:02'),
(54, 'pegawai_perpus', 'pegawai_perpus123', 5, 'Y', 'Y', 0, '2022-12-26 08:47:32', '2022-12-30 13:55:35'),
(55, 'pengawas_sekolah', 'pengawas_sekolah123', 5, 'Y', 'Y', 0, '2022-12-26 08:48:04', '2022-12-29 12:20:34'),
(56, 'Akbar', 'akbar123', 3, 'Y', 'Y', 0, '2022-12-26 14:20:45', '2022-12-26 14:28:50'),
(58, 'rahman', 'coba', 4, 'N', 'Y', 0, '2022-12-27 04:28:51', NULL),
(59, 'murid', 'murid', 2, 'Y', 'Y', 0, '2022-12-27 10:07:50', '2022-12-27 10:15:47'),
(60, 'maira', 'maira123', 3, 'Y', 'Y', 0, '2022-12-29 10:58:08', '2022-12-29 11:03:38'),
(62, 'shiva anggraini', 'shivaanggraini', 2, 'N', 'Y', 0, '2022-12-29 11:09:19', NULL),
(63, 'novia ismi', 'noviasmi123', 2, 'N', 'Y', 0, '2022-12-29 11:13:41', NULL),
(64, 'rafatar', 'rafatar123', 2, 'N', 'Y', 0, '2022-12-29 11:16:08', NULL),
(65, 'iqbal', 'iqbal123', 2, 'N', 'Y', 0, '2022-12-29 11:23:17', NULL),
(66, 'tes_osis', 'tes_osis123', 2, 'Y', 'N', 0, '2022-12-29 11:42:45', '2022-12-30 11:08:23'),
(67, 'Katemi', 'katemi123', 3, 'Y', 'Y', 0, '2022-12-29 12:03:10', '2022-12-29 12:10:59'),
(68, 'Dita', 'Dita123', 2, 'N', 'Y', 0, '2022-12-29 12:06:34', NULL),
(69, 'hibat', 'hibat123', 3, 'Y', 'Y', 0, '2022-12-29 12:51:17', '2022-12-29 12:51:33'),
(70, 'lia', 'lia123', 2, 'Y', 'Y', 0, '2022-12-29 12:52:31', '2022-12-29 12:55:27'),
(71, 'rizky', 'rizky123', 3, 'Y', 'Y', 0, '2022-12-29 14:00:41', '2022-12-29 14:01:04'),
(72, 'gagah', 'gagah123', 2, 'N', 'Y', 0, '2022-12-29 14:02:14', '2022-12-30 14:25:13'),
(73, 'husein', 'husein123', 3, 'Y', 'Y', 0, '2022-12-29 14:35:29', '2022-12-29 14:35:42'),
(74, 'sila', 'sila123', 2, 'N', 'Y', 0, '2022-12-29 14:36:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wali_murid`
--

CREATE TABLE `wali_murid` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `phone` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `foto_profil` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wali_murid`
--

INSERT INTO `wali_murid` (`id`, `user_id`, `jenis_kelamin`, `nama_lengkap`, `tanggal_lahir`, `phone`, `alamat`, `foto_profil`, `tempat_lahir`) VALUES
(1, 5, 'L', 'Bambang', '1975-07-16', '081234678329', 'Purwosari', 'image/uploads/User/1/2022121672287106.jpeg', 'Trenggalek'),
(2, 9, 'L', 'Sutrisno', '1985-10-22', '083846721098', 'Jalan pagesangan 2 no 64', 'image/uploads/User/2/2022121672287123.jpeg', 'Batu'),
(3, 19, 'P', 'Indah', '1983-09-12', '081917249137', 'Waru, Sidoarjo', 'image/uploads/User/3/2022121672287338.jpeg', 'Blitar'),
(4, 20, 'L', 'Ruben', '1978-06-13', '+6289505084036', 'Sidoarjo', 'image/uploads/User/4/2022121672287146.jpg', 'Probolinggo'),
(5, 19, 'L', 'Muhammad Aldi', '1985-09-15', '089345672186', 'Gedangan', 'image/uploads/User/5/2022121672287211.jpeg', 'Mojokerto'),
(6, 20, 'P', 'Yuni', '1987-02-23', '6285231154534', 'Kedungsuko', 'image/uploads/User/6/2022121672287366.jpeg', 'Pasuruan'),
(7, 26, 'L', 'Lina', '1989-08-15', '089435712504', 'Krian', 'image/uploads/User/7/2022121672287384.jpeg', 'Sidoarjo'),
(10, 29, 'L', 'Raffi Ahmad', '1990-01-08', '123123123', 'temenggungan', 'image/uploads/User/10/2022121672287499.jpg', 'Malang'),
(11, 30, 'P', 'Fuji', '1994-05-23', '081367523869', 'Jambangan 1, no.12', 'image/uploads/User/11/2022121672287447.jpeg', 'Nganjuk'),
(13, 32, 'P', 'Nagita Slavina', '1992-05-26', '083465718236', 'Jakarta Timur', 'image/uploads/User/13/2022121672287570.jpeg', 'Kediri'),
(14, 34, 'P', 'Purwanto', '2022-12-22', '+62 895-3930-49407', 'pspskp', 'image/uploads/Walimurid/14/2022121671698432.png', 'Ponorogo'),
(17, 42, 'L', 'paimanto', '2022-12-13', '087124536899', 'surabaya', NULL, 'Batu'),
(18, 43, 'L', 'Angga', '2003-02-14', '+6285231154534', 'Probolinggo', NULL, 'Probolinggo'),
(19, 44, 'L', 'Erlangga Dwi Kusuma', '2022-12-14', '+6289505084036', 'asa', 'image/uploads/Walimurid/19/2022121672017727.jpg', 'Probolinggo'),
(20, 48, 'L', 'Minti', '2022-11-30', '12313123', 'Minti', 'image/uploads/User/20/2022121672041709.png', 'mojokerto'),
(21, 56, 'L', 'Akbar barokah', '1980-02-02', '+62 898-3701-70921', 'Pulung', 'image/uploads/Walimurid/21/2022121672039245.png', 'Ponorogo'),
(22, 60, 'P', 'mairatul', '2022-12-29', '967415415672', 'ketintang', 'image/uploads/Walimurid/22/2022121672286288.jpg', 'surabaya'),
(23, 67, 'P', 'Katemi aini', '2022-12-29', '+62 898-3701-70921', 'jombang', 'image/uploads/Walimurid/23/2022121672290190.jpg', 'Ponorogo'),
(24, 69, 'L', 'hibatullah', '2003-08-16', '0831796124512', 'ketintang', 'image/uploads/Walimurid/69/2022121672293077.jpg', 'medan'),
(25, 71, 'L', 'rizky', '1987-12-29', '94613785i512', 'ketintang', 'image/uploads/Walimurid/71/2022121672297241.jpg', 'jombang'),
(26, 73, 'L', 'husein', '1987-12-29', '089743264565', 'ketintang', 'image/uploads/Walimurid/73/2022121672299329.png', 'surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `saldo` int(100) NOT NULL DEFAULT 0,
  `keterangan` varchar(100) NOT NULL,
  `nominal` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_approve` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `user_id`, `saldo`, `keterangan`, `nominal`, `created_at`, `is_approve`) VALUES
(23, 6, 240000, 'bca 1232321', 200000, '2022-12-16 06:40:28', 'Y'),
(24, 1, 240000, 'bca 1232321', 200000, '2022-12-16 06:40:33', 'Y'),
(25, 1, 240000, 'bca 1232321', 200000, '2022-12-16 07:07:37', NULL),
(26, 1, 240000, 'bca 1232321', 200000, '2022-12-18 11:46:44', 'Y'),
(27, 6, 90000, '88880.', 9888, '2022-12-18 12:04:01', 'Y'),
(28, 6, 90000, '88880.', 9888, '2022-12-18 12:04:01', 'N'),
(29, 6, 90000, '88880.', 9888, '2022-12-18 12:04:02', NULL),
(30, 52, 130500, 'tes', 5000, '2022-12-29 04:26:23', 'Y'),
(31, 52, 127500, 'mao belanja', 50000, '2022-12-29 04:46:05', 'Y'),
(32, 52, 82500, 'tes bca', 2000, '2022-12-30 04:15:11', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `dinas_pendidikan`
--
ALTER TABLE `dinas_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `guru_absensi`
--
ALTER TABLE `guru_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indexes for table `jadwal_pembelajaran`
--
ALTER TABLE `jadwal_pembelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `kantin`
--
ALTER TABLE `kantin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kantin_ibfk_1` (`pegawai_id`);

--
-- Indexes for table `kantin_penjualan`
--
ALTER TABLE `kantin_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kantin_penjualan_ibfk_1` (`kantin_id`),
  ADD KEY `kantin_penjualan_ibfk_2` (`user_id`);

--
-- Indexes for table `kegiatan_osis`
--
ALTER TABLE `kegiatan_osis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indexes for table `kepala_sekolah`
--
ALTER TABLE `kepala_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kepala_sekolah_absensi`
--
ALTER TABLE `kepala_sekolah_absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `keuangan_kategori_id` (`keuangan_kategori_id`);

--
-- Indexes for table `keuangan_kategori`
--
ALTER TABLE `keuangan_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `koperasi`
--
ALTER TABLE `koperasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `koperasi_list`
--
ALTER TABLE `koperasi_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `koperasi_penjualan`
--
ALTER TABLE `koperasi_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `koperasi_transaksi`
--
ALTER TABLE `koperasi_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_transaksi`
--
ALTER TABLE `log_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indexes for table `nilai_pembelajaran`
--
ALTER TABLE `nilai_pembelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pegawai_absensi`
--
ALTER TABLE `pegawai_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_id` (`pegawai_id`);

--
-- Indexes for table `peminjaman_fasilitas`
--
ALTER TABLE `peminjaman_fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman_fasilitas_jadwal`
--
ALTER TABLE `peminjaman_fasilitas_jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjaman_fasilitas_id` (`peminjaman_fasilitas_id`);

--
-- Indexes for table `perpustakaan`
--
ALTER TABLE `perpustakaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perpus_katalog`
--
ALTER TABLE `perpus_katalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perpus_kategori`
--
ALTER TABLE `perpus_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perpus_kehilangan`
--
ALTER TABLE `perpus_kehilangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perpus_peminjaman`
--
ALTER TABLE `perpus_peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pegawai_id` (`pegawai_id`);

--
-- Indexes for table `perpus_peminjaman_katalog`
--
ALTER TABLE `perpus_peminjaman_katalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perpus_sumbang`
--
ALTER TABLE `perpus_sumbang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ppdb`
--
ALTER TABLE `ppdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raport`
--
ALTER TABLE `raport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `mapel_id` (`mapel_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_ibfk_1` (`user_id`),
  ADD KEY `siswa_ibfk_2` (`wali_murid_id`);

--
-- Indexes for table `siswa_absensi`
--
ALTER TABLE `siswa_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_pembelajaran_id` (`jadwal_pembelajaran_id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indexes for table `siswa_mutasi`
--
ALTER TABLE `siswa_mutasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wali_murid`
--
ALTER TABLE `wali_murid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wali_murid_ibfk_1` (`user_id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `guru_absensi`
--
ALTER TABLE `guru_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jadwal_pembelajaran`
--
ALTER TABLE `jadwal_pembelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kantin`
--
ALTER TABLE `kantin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kantin_penjualan`
--
ALTER TABLE `kantin_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kegiatan_osis`
--
ALTER TABLE `kegiatan_osis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kepala_sekolah_absensi`
--
ALTER TABLE `kepala_sekolah_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `keuangan_kategori`
--
ALTER TABLE `keuangan_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `koperasi`
--
ALTER TABLE `koperasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `koperasi_list`
--
ALTER TABLE `koperasi_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `koperasi_penjualan`
--
ALTER TABLE `koperasi_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `koperasi_transaksi`
--
ALTER TABLE `koperasi_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nilai_pembelajaran`
--
ALTER TABLE `nilai_pembelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pegawai_absensi`
--
ALTER TABLE `pegawai_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peminjaman_fasilitas`
--
ALTER TABLE `peminjaman_fasilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `peminjaman_fasilitas_jadwal`
--
ALTER TABLE `peminjaman_fasilitas_jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `perpustakaan`
--
ALTER TABLE `perpustakaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perpus_katalog`
--
ALTER TABLE `perpus_katalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `perpus_kategori`
--
ALTER TABLE `perpus_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `perpus_kehilangan`
--
ALTER TABLE `perpus_kehilangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `perpus_peminjaman`
--
ALTER TABLE `perpus_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `perpus_peminjaman_katalog`
--
ALTER TABLE `perpus_peminjaman_katalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `perpus_sumbang`
--
ALTER TABLE `perpus_sumbang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ppdb`
--
ALTER TABLE `ppdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `raport`
--
ALTER TABLE `raport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `siswa_absensi`
--
ALTER TABLE `siswa_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `siswa_mutasi`
--
ALTER TABLE `siswa_mutasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wali_murid`
--
ALTER TABLE `wali_murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`);

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `guru_absensi`
--
ALTER TABLE `guru_absensi`
  ADD CONSTRAINT `guru_absensi_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`);

--
-- Constraints for table `jadwal_pembelajaran`
--
ALTER TABLE `jadwal_pembelajaran`
  ADD CONSTRAINT `jadwal_pembelajaran_ibfk_1` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`),
  ADD CONSTRAINT `jadwal_pembelajaran_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`);

--
-- Constraints for table `kantin`
--
ALTER TABLE `kantin`
  ADD CONSTRAINT `kantin_ibfk_1` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`);

--
-- Constraints for table `kantin_penjualan`
--
ALTER TABLE `kantin_penjualan`
  ADD CONSTRAINT `kantin_penjualan_ibfk_1` FOREIGN KEY (`kantin_id`) REFERENCES `kantin` (`id`),
  ADD CONSTRAINT `kantin_penjualan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`);

--
-- Constraints for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD CONSTRAINT `keuangan_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `keuangan_ibfk_2` FOREIGN KEY (`keuangan_kategori_id`) REFERENCES `keuangan_kategori` (`id`);

--
-- Constraints for table `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `mapel_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`);

--
-- Constraints for table `pegawai_absensi`
--
ALTER TABLE `pegawai_absensi`
  ADD CONSTRAINT `pegawai_absensi_ibfk_1` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`);

--
-- Constraints for table `peminjaman_fasilitas_jadwal`
--
ALTER TABLE `peminjaman_fasilitas_jadwal`
  ADD CONSTRAINT `peminjaman_fasilitas_jadwal_ibfk_1` FOREIGN KEY (`peminjaman_fasilitas_id`) REFERENCES `peminjaman_fasilitas` (`id`);

--
-- Constraints for table `perpus_peminjaman`
--
ALTER TABLE `perpus_peminjaman`
  ADD CONSTRAINT `perpus_peminjaman_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `perpus_peminjaman_ibfk_2` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`);

--
-- Constraints for table `raport`
--
ALTER TABLE `raport`
  ADD CONSTRAINT `raport_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `raport_ibfk_2` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `raport_ibfk_3` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`wali_murid_id`) REFERENCES `wali_murid` (`id`);

--
-- Constraints for table `siswa_absensi`
--
ALTER TABLE `siswa_absensi`
  ADD CONSTRAINT `siswa_absensi_ibfk_1` FOREIGN KEY (`jadwal_pembelajaran_id`) REFERENCES `jadwal_pembelajaran` (`id`),
  ADD CONSTRAINT `siswa_absensi_ibfk_2` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Constraints for table `siswa_mutasi`
--
ALTER TABLE `siswa_mutasi`
  ADD CONSTRAINT `siswa_mutasi_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
