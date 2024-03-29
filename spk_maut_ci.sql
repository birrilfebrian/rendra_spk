-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 07:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_maut_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nim` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `alamat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nim`, `nama`, `jenis_kelamin`, `jurusan`, `email`, `no_telp`, `alamat`) VALUES
(25, '111111', 'SUGIHARTONO', 'Pria', 'Teknik Informatika', 'tes@gmail.com', '00909090909', 'Jalan Jakarta Raya'),
(26, '', 'ANGGIT SEPTIADI', '', 'Teknik Informatika', '', '', ''),
(27, '', 'KOMARIAH', '', 'Teknik Informatika', '', '', ''),
(28, '', 'KHAIRUN NISAA RAMANDHATY', '', 'Teknik Informatika', '', '', ''),
(29, '', 'NINA SULAWI JAYA PUTRI', '', 'Teknik Informatika', '', '', ''),
(30, '', 'SUCI ARRUM NUROCHMAH', '', 'Teknik Informatika', '', '', ''),
(31, '', 'UNGGUL BAYU PAMUNGKAS', '', 'Teknik Informatika', '', '', ''),
(32, '', 'AI DINA DIANATI SAFARI', '', 'Teknik Informatika', '', '', ''),
(33, '', 'NUGROHO ADI DARMAWAN', '', 'Teknik Informatika', '', '', ''),
(34, '', 'CAHYA FITRI KHASANAH', '', 'Teknik Informatika', '', '', ''),
(35, '', 'NANDA FAUSIYAH', '', 'Teknik Informatika', '', '', ''),
(36, '', 'BUN\'YANUM MARSUS', '', 'Teknik Informatika', '', '', ''),
(37, '', 'NURUL ARDHILAH', '', 'Teknik Informatika', '', '', ''),
(38, '', 'FILDZA IZZATI', '', 'Teknik Informatika', '', '', ''),
(39, '', 'YUSRIL ATHALLAH MUHAMMAD YAZID', '', 'Teknik Informatika', '', '', ''),
(40, '', 'M RIVALDY SAFWAN ANWAR', '', 'Teknik Informatika', '', '', ''),
(41, '', 'MUHAMMAD THORIQ', '', 'Teknik Informatika', '', '', ''),
(42, '', 'ALDINO GERALDO', '', 'Teknik Informatika', '', '', ''),
(43, '', 'ARIF FADLI', '', 'Teknik Informatika', '', '', ''),
(44, '', 'ABDUL RIFAI', '', 'Teknik Informatika', '', '', ''),
(45, '', 'GILANG SAPUTRA RAMADAN', '', 'Teknik Informatika', '', '', ''),
(46, '', 'AHMAD SYARIF HIDAYAT', '', 'Teknik Informatika', '', '', ''),
(47, '', 'MUSLIMIN', '', 'Teknik Informatika', '', '', ''),
(48, '', 'TAUFIQURRAHMAN JABAR P', '', 'Teknik Informatika', '', '', ''),
(49, '', 'MUHAMMAD THAARIQ AL-ISLAMI', '', 'Teknik Informatika', '', '', ''),
(50, '', 'MUHAMMAD BAGAS YOGANTARA', '', 'Teknik Informatika', '', '', ''),
(51, '', 'DIDIN JAMALUDIN', '', 'Teknik Informatika', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 25, 0.4423),
(2, 26, 0.6941),
(3, 27, 0.9388),
(4, 28, 0.9216),
(5, 29, 0.9107),
(6, 30, 0.8660),
(7, 31, 0.8497),
(8, 32, 0.9834),
(9, 33, 0.9276),
(10, 34, 1.0000),
(11, 35, 0.9695),
(12, 36, 0.8658),
(13, 37, 0.9645),
(14, 38, 0.9486),
(15, 39, 0.9346),
(16, 40, 0.7993),
(17, 41, 0.8627),
(18, 42, 0.7849),
(19, 43, 0.8686),
(20, 44, 0.8517),
(21, 45, 0.7051),
(22, 46, 0.7676),
(23, 47, 0.8947),
(24, 48, 0.8589),
(25, 49, 0.8716),
(26, 50, 0.6356),
(27, 51, 0.8967);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `kode_kriteria` varchar(100) NOT NULL,
  `bobot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `keterangan`, `kode_kriteria`, `bobot`) VALUES
(24, 'IPK', 'C1', '0.3125'),
(25, 'Masa Studi (Semester)', 'C2', '0.25'),
(26, 'Tidak Ada Nilai D', 'C3', '0.25'),
(27, 'Nilai Tahfidz', 'C4', '0.1875');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(153, 25, 24, 128),
(154, 25, 25, 155),
(155, 25, 26, 157),
(156, 25, 27, 138),
(157, 26, 24, 134),
(158, 26, 25, 135),
(159, 26, 26, 156),
(160, 26, 27, 140),
(161, 27, 24, 127),
(162, 27, 25, 135),
(163, 27, 26, 136),
(164, 27, 27, 151),
(165, 28, 24, 126),
(166, 28, 25, 135),
(167, 28, 26, 136),
(168, 28, 27, 150),
(169, 29, 24, 131),
(170, 29, 25, 135),
(171, 29, 26, 136),
(172, 29, 27, 139),
(173, 30, 24, 125),
(174, 30, 25, 135),
(175, 30, 26, 136),
(176, 30, 27, 139),
(177, 31, 24, 120),
(178, 31, 25, 135),
(179, 31, 26, 136),
(180, 31, 27, 143),
(181, 32, 24, 132),
(182, 32, 25, 135),
(183, 32, 26, 136),
(184, 32, 27, 152),
(185, 33, 24, 130),
(186, 33, 25, 135),
(187, 33, 26, 136),
(188, 33, 27, 144),
(189, 34, 24, 134),
(190, 34, 25, 135),
(191, 34, 26, 136),
(192, 34, 27, 153),
(193, 35, 24, 132),
(194, 35, 25, 135),
(195, 35, 26, 136),
(196, 35, 27, 151),
(197, 36, 24, 118),
(198, 36, 25, 135),
(199, 36, 26, 136),
(200, 36, 27, 150),
(201, 37, 24, 133),
(202, 37, 25, 135),
(203, 37, 26, 136),
(204, 37, 27, 148),
(205, 38, 24, 131),
(206, 38, 25, 135),
(207, 38, 26, 136),
(208, 38, 27, 147),
(209, 39, 24, 129),
(210, 39, 25, 135),
(211, 39, 26, 136),
(212, 39, 27, 147),
(213, 40, 24, 115),
(214, 40, 25, 135),
(215, 40, 26, 136),
(216, 40, 27, 147),
(217, 41, 24, 119),
(218, 41, 25, 135),
(219, 41, 26, 136),
(220, 41, 27, 148),
(221, 42, 24, 116),
(222, 42, 25, 135),
(223, 42, 26, 136),
(224, 42, 27, 142),
(225, 43, 24, 121),
(226, 43, 25, 135),
(227, 43, 26, 136),
(228, 43, 27, 145),
(229, 44, 24, 117),
(230, 44, 25, 135),
(231, 44, 26, 136),
(232, 44, 27, 146),
(233, 45, 24, 119),
(234, 45, 25, 135),
(235, 45, 26, 136),
(236, 45, 27, 137),
(237, 46, 24, 114),
(238, 46, 25, 135),
(239, 46, 26, 136),
(240, 46, 27, 141),
(241, 47, 24, 124),
(242, 47, 25, 135),
(243, 47, 26, 136),
(244, 47, 27, 148),
(245, 48, 24, 122),
(246, 48, 25, 135),
(247, 48, 26, 136),
(248, 48, 27, 142),
(249, 49, 24, 120),
(250, 49, 25, 135),
(251, 49, 26, 136),
(252, 49, 27, 149),
(253, 50, 24, 113),
(254, 50, 25, 135),
(255, 50, 26, 136),
(256, 50, 27, 142),
(257, 51, 24, 124),
(258, 51, 25, 135),
(259, 51, 26, 136),
(260, 51, 27, 149);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `nilai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `deskripsi`, `nilai`) VALUES
(113, 24, '1.65', '1.65'),
(114, 24, '2.61', '2.61'),
(115, 24, '2.68', '2.68'),
(116, 24, '2.72', '2.72'),
(117, 24, '3.07', '3.07'),
(118, 24, '3.1', '3.1'),
(119, 24, '3.12', '3.12'),
(120, 24, '3.17', '3.17'),
(121, 24, '3.22', '3.22'),
(122, 24, '3.25', '3.25'),
(123, 24, '3.31', '3.31'),
(124, 24, '3.35', '3.35'),
(125, 24, '3.43', '3.43'),
(126, 24, '3.5', '3.5'),
(127, 24, '3.58', '3.58'),
(128, 24, '3.61', '3.61'),
(129, 24, '3.65', '3.65'),
(130, 24, '3.7', '3.7'),
(131, 24, '3.75', '3.75'),
(132, 24, '3.8', '3.8'),
(133, 24, '3.85', '3.85'),
(134, 24, '3.89', '3.89'),
(135, 25, '8', '8'),
(136, 26, '2', '2'),
(137, 27, '0', '0'),
(138, 27, '22', '22'),
(139, 27, '59', '59'),
(140, 27, '66', '66'),
(141, 27, '67', '67'),
(142, 27, '68', '68'),
(143, 27, '69', '69'),
(144, 27, '71', '71'),
(145, 27, '75', '75'),
(146, 27, '77', '77'),
(147, 27, '78', '78'),
(148, 27, '79', '79'),
(149, 27, '80', '80'),
(150, 27, '82', '82'),
(151, 27, '85', '85'),
(152, 27, '92', '92'),
(153, 27, '94', '94'),
(155, 25, '7', '7'),
(156, 26, '0', '0'),
(157, 26, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `nama`, `email`, `username`, `password`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(7, 2, 'User', 'user@gmail.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `nilai` (`nilai`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user_level` (`id_user_level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`nilai`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user_level`) REFERENCES `user_level` (`id_user_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
