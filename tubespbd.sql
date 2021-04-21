-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jan 2021 pada 10.56
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubespbd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nid` varchar(100) NOT NULL,
  `jabatan_fungsional` varchar(100) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `username_dosen` varchar(45) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `perkuliahan_id_perkuliahan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nid`, `jabatan_fungsional`, `tahun_masuk`, `username_dosen`, `prodi`, `perkuliahan_id_perkuliahan`) VALUES
('0328047103', 'Guru Besar', 2001, 'rororetno', '90211', 30),
('0402097401', 'Lektor Kepala', 2003, 'putugiriartha', '63211', 310),
('0403067501', 'Guru Besar', 2001, 'arfinatorahmi', '93402', 39),
('0404077804', 'Lektor', 2006, 'setiajulirzal', '57402', 38),
('0404098901', 'Lektor Kepala', 2003, 'rachmaditaandres', '63315', 37),
('0405117407', 'Guru Besar', 2001, 'noraamledarizal', '61201', 36),
('0406086701', 'Guru Besar', 2000, 'agusachmad123', '26201', 35),
('0406097502', 'Guru Besar', 2000, 'abdurahmanb', '55201', 34),
('0408068603', 'Lektor', 2004, 'asepsufyan', '90241', 33),
('0409078801', 'Lektor', 2005, 'faradillahnursari', '20402', 32),
('0409107904', 'Lektor', 2006, 'atimustikasari', '56402', 31),
('0411027801', 'Lektor Kepala', 2002, 'danasulistyo', '55101', 311),
('0411117404', 'Lektor Kepala', 2003, 'rahutaminugrahani', '20202', 313),
('0412067804', 'Guru Besar', 2001, 'levyoliviaolivia', '20201', 312),
('0412108503', 'Lektor Kepala', 2002, 'umarali', '55201', 321),
('0416078801', 'Lektor Kepala', 2002, 'muhammadnashira', '90201', 320),
('0419027907', 'Lektor Kepala', 2003, 'syahputra', '70201', 319),
('0420048304', 'Lektor', 2004, 'ayubilfandyimran', '90221', 318),
('0421076905', 'Lektor', 2004, 'dickyhidayat', '90211', 317),
('0421107801', 'Lektor', 2005, 'indrarinidyahirawati', '93402', 316),
('0422037401', 'Guru Besar', 2001, 'sigityuwono', '30201', 315),
('0422077204', 'Asisten Ahli', 2007, 'rahmadiwijaya', '71441', 314),
('0422087102', 'Asisten Ahli', 2006, 'nelsiwisna', '55401', 322),
('0422097502', 'Lektor Kepala', 2002, 'nikendwiwc', '59201', NULL),
('0424098901', 'Lektor Kepala', 2002, 'ilmamufidah', '57201', NULL),
('0425056604', 'Lektor Kepala', 2002, 'endroariyanto', '59202', NULL),
('0425097601', 'Lektor Kepala', 2002, 'setyoriniii', '26201', NULL),
('0425119001', 'Guru Besar', 2001, 'siskanoviarisanti', '61101', NULL),
('0427088802', 'Lektor', 2005, 'dendigusnadi', '57401', NULL),
('0428017801', 'Lektor Kepala', 2002, 'ariyanuar', '26101', NULL),
('0428106601', 'Guru Besar', 2000, 'adeirmas', '63211', NULL),
('0429087601', 'Guru Besar', 2000, 'bambang123', '20101', NULL),
('0429127805', 'Lektor', 2004, 'doddyfriestya', '90231', NULL),
('0430058602', 'Guru Besar', 2001, 'edywibowo', '56202', NULL),
('07760017', 'Guru Besar', 2001, 'fikysuratman', '20101', NULL),
('405127701', 'Guru Besar', 2001, 'dudipratomo', '62201', NULL),
('409077603', 'Asisten Ahli', 2008, 'abdullah', '90343', NULL),
('419118101', 'Guru Besar', 2000, 'ratriwahyu', '61101', NULL),
('420015903', 'Asisten Ahli', 2008, 'achmadmanshur', '90102', NULL),
('426017302', 'Asisten Ahli', 2008, 'adhiprasetyo', '55203', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `kode_fakultas` varchar(100) NOT NULL,
  `nama_fakultas` varchar(100) NOT NULL,
  `pemimpin_fakultas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`kode_fakultas`, `nama_fakultas`, `pemimpin_fakultas`) VALUES
('FEB', 'Ekonomi dan Bisnis', '419118101'),
('FIF', 'Informatika', '0406097502'),
('FIK', 'Industri Kreatif', '0328047103'),
('FIT', 'Ilmu Terapan', '0403067501'),
('FKB', 'Komunikasi dan Bisnis', '0428106601'),
('FRI', 'Rekayasa Industri', '0406086701'),
('FTE', 'Teknik Elektro', '0429087601');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(45) NOT NULL,
  `status_masuk` varchar(45) NOT NULL,
  `username_mahasiswa` varchar(45) NOT NULL,
  `waldos` varchar(100) DEFAULT NULL,
  `id_wali` int(11) NOT NULL,
  `kode_prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `status_masuk`, `username_mahasiswa`, `waldos`, `id_wali`, `kode_prodi`) VALUES
('1301190090', 'Kelas Internasional', 'hanvito0090', '0425119001', 17, '70201'),
('1301190188', 'USM 1', 'mansel0188', '0425056604', 115, '26201'),
('1301190318', 'UTG 2', 'iqbal0318', '405127701', 19, '90211'),
('1301190345', 'USM 1', 'ahmad0345', '0430058602', 112, '57201'),
('1301190385', 'UTG 2', 'firdaus0385', '0412108503', 113, '20201'),
('1301190424', 'UTG 1', 'claudia0424', '0411027801', 116, '20202'),
('1301190442', 'JPA 2', 'priyan0442', '0424098901', 119, '57402'),
('1301193303', 'UTG 2', 'guido3303', '0422037401', 111, '90201'),
('1301194012', 'Kelas Internasional', 'rizki4012', '0428106601', 14, '90221'),
('1301194024', 'JPA 1', 'kurniadi4024', '0429087601', 10, '61101'),
('1301194040', 'UTG 2', 'vena4040', '0406086701', 11, '20101'),
('1301194042', 'PJJ', 'rizky4042', '0328047103', 15, '90241'),
('1301194056', 'JPA 1', 'michael4056', '0406097502', 12, '63211'),
('1301194073', 'JPA 1', 'naufal4073', '419118101', 13, '62201'),
('1301194089', 'PJJ', 'livia4089', '0403067501', 16, '90231'),
('1301194107', 'JPA 2', 'nanda4107', '0402097401', 115, '20402'),
('1301194138', 'USM 2', 'ignasius4138', '0422097502', 114, '30201'),
('1301194141', 'Kelas Internasional', 'ni4141', '0405117407', 18, '55201'),
('1301194228', 'UTG 2', 'yogi4228', '0412067804', 110, '61201'),
('1301194258', 'JPA 2', 'fadhluraahman4258', '0404098901', 119, '56402'),
('1301194288', 'UTG 1', 'afrizal4288', '0425097601', 117, '93402'),
('1301194397', 'UTG 1', 'kasyifi4397', '0416078801', 118, '55401'),
('1301194427', 'UTG 1', 'muhammad4427', '0428017801', 119, '57401');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mata_kuliah` varchar(100) NOT NULL,
  `nama_mata_kuliah` varchar(100) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `kurikulum` varchar(45) NOT NULL,
  `perkuliahan_id_perkuliahan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mata_kuliah`, `nama_mata_kuliah`, `sks`, `semester`, `kurikulum`, `perkuliahan_id_perkuliahan`) VALUES
('BAH1A3', 'EKONOMI BISNIS', 3, '1', '2020', 311),
('BAH1B3', 'PENGANTAR ILMU ADMINISTRASI BISNIS', 3, '1', '2020', 312),
('BAH1C2', 'BAHASA INGGRIS BISNIS', 2, '2', '2020', 317),
('BAH1D3', 'TEORI ORGANISASI', 3, '2', '2020', 318),
('BAH1E3', 'MATEMATIKA BISNIS', 3, '2', '2020', 319),
('BAH1F4', 'PRINSIP – PRINSIP AKUNTANSI', 4, '2', '2020', 320),
('BAH1G3', 'HUKUM BISNIS', 3, '2', '2020', 321),
('BAH1H2', 'FILSAFAT BISNIS', 2, '2', '2020', 322),
('CBH1C3', 'DASAR LOGIKA', 3, '1', '2020', 313),
('CII1C2', 'STATISTIKA', 2, '3', '2020', 32),
('CII1I3', 'SISTEM DIGITAL', 3, '3', '2020', 30),
('CII1J3', 'PEMODELAN BASIS DATA', 2, '3', '2020', 35),
('CII2A3', 'ORGANISASI DAN ARSITEKTUR KOMPUTER', 3, '3', '2020', 38),
('CII2C2', 'ANALISIS KOMPLEKSITAS ALGORITMA', 2, '3', '2020', 33),
('CII2E2', 'RLP : ANALISIS KEBUTUHAN', 2, '3', '2020', 37),
('CII2G3', 'TEORI PELUANG', 2, '3', '2020', 34),
('CII2I2', 'WAWASAN GLOBAL TIK', 2, '3', '2020', 31),
('DUH1A2', 'LITERASI TIK', 2, '1', '2020', 315),
('HUH1A2', 'PENDIDIKAN AGAMA DAN ETIKA', 2, '1', '2020', 39),
('HUH1G3', 'PANCASILA DAN KEWARGANEGARAAN', 3, '1', '2020', 310),
('LUH1A2', 'BAHASA INDONESIA', 2, '2', '2020', 316),
('LUH1B2', 'BAHASA INGGRIS', 2, '1', '2020', 314),
('UWI3A2', 'KEWIRAUSAHAAN', 2, '3', '2020', 36);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perkuliahan`
--

CREATE TABLE `perkuliahan` (
  `id_perkuliahan` int(11) NOT NULL,
  `tahun_ajar` varchar(45) NOT NULL,
  `ruangan` varchar(45) NOT NULL,
  `hari` varchar(45) NOT NULL,
  `jam` time NOT NULL,
  `perwalian_kode_prs` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `perkuliahan`
--

INSERT INTO `perkuliahan` (`id_perkuliahan`, `tahun_ajar`, `ruangan`, `hari`, `jam`, `perwalian_kode_prs`) VALUES
(30, '2020/2021', 'KU1.03.01', 'Rabu', '07:30:00', '20'),
(31, '2020/2021', 'KU1.03.02', 'Selasa', '13:45:00', '21'),
(32, '2020/2021', 'KU1.03.03', 'Kamis', '15:30:00', '22'),
(33, '2020/2021', 'KU1.03.04', 'Jumat', '07:30:00', '23'),
(34, '2020/2021', 'KU1.03.05', 'Senin', '07:30:00', '24'),
(35, '2020/2021', 'KU1.03.11', 'Kamis', '13:45:00', '25'),
(36, '2020/2021', 'KU1.03.06', 'Senin', '07:30:00', '26'),
(37, '2020/2021', 'KU1.03.17', 'Rabu', '07:30:00', '27'),
(38, '2020/2021', 'KU1.03.11', 'Kamis', '15:30:00', '28'),
(39, '2020/2021', 'KU1.03.10', 'Jumat', '07:30:00', '29'),
(310, '2020/2021', 'KU3.02.14', 'Kamis', '13:45:00', '210'),
(311, '2020/2021', 'KU3.02.13', 'Selasa', '10:00:00', '211'),
(312, '2020/2021', 'KU1.02.07', 'Rabu', '07:30:00', '212'),
(313, '2020/2021', 'KU1.02.05', 'Rabu', '10:00:00', '213'),
(314, '2020/2021', 'KU1.02.07', 'Jumat', '15:30:00', '214'),
(315, '2020/2021', 'KU3.02.14', 'Kamis', '13:45:00', '215'),
(316, '2020/2021', 'KU3.02.13', 'Selasa', '10:00:00', '216'),
(317, '2020/2021', 'KU1.02.07', 'Rabu', '07:30:00', '217'),
(318, '2020/2021', 'KU1.02.05', 'Rabu', '10:00:00', '218'),
(319, '2020/2021', 'KU1.02.07', 'Jumat', '15:30:00', '219'),
(320, '2020/2021', 'KU1.02.05', 'Rabu', '10:00:00', '220'),
(321, '2020/2021', 'KU1.02.07', 'Jumat', '15:30:00', '221'),
(322, '2020/2021', 'KU3.02.13', 'Selasa', '10:00:00', '222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perwalian`
--

CREATE TABLE `perwalian` (
  `kode_prs` varchar(100) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `tahun_ajar` varchar(45) NOT NULL,
  `jumlah_sks` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `tanggal_diajukan` date NOT NULL,
  `tanggal_disetujui` date NOT NULL,
  `dosen_nid` varchar(100) DEFAULT NULL,
  `mahasiswa_nim` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `perwalian`
--

INSERT INTO `perwalian` (`kode_prs`, `semester`, `tahun_ajar`, `jumlah_sks`, `status`, `tanggal_diajukan`, `tanggal_disetujui`, `dosen_nid`, `mahasiswa_nim`) VALUES
('20', 'Semester Ganjil', '2020/2021', 22, 'ACC', '2020-04-18', '2020-04-26', '0429087601', '1301190188'),
('21', 'Semester Genap', '2020/2021', 21, 'ACC', '2021-04-05', '2021-04-26', '0406086701', '1301194042'),
('210', 'Semester Ganjil', '2020/2021', 23, 'ACC', '2020-04-19', '2020-04-26', '0412067804', '1301190442'),
('211', 'Semester Ganjil', '2020/2021', 19, 'ACC', '2020-04-04', '2020-04-26', '0422037401', '1301190385'),
('212', 'Semester Ganjil', '2020/2021', 23, 'ACC', '2020-04-15', '2020-04-26', '0430058602', '1301194258'),
('213', 'Semester Ganjil', '2020/2021', 22, 'ACC', '2020-04-16', '2020-04-26', '0412108503', '1301194288'),
('214', 'Semester Ganjil', '2020/2021', 22, 'ACC', '2018-04-17', '2018-04-26', '0422097502', '1301194397'),
('215', 'Semester Ganjil', '2020/2021', 22, 'ACC', '2020-04-20', '2020-04-26', '0425056604', '1301194427'),
('216', 'Semester Ganjil', '2020/2021', 19, 'ACC', '2020-04-15', '2020-04-26', '0411027801', '1301190424'),
('217', 'Semester Ganjil', '2020/2021', 21, 'ACC', '2020-04-10', '2020-04-26', '0425097601', '1301194138'),
('218', 'Semester Ganjil', '2020/2021', 23, 'ACC', '2020-04-04', '2020-04-26', '0416078801', '1301194107'),
('219', 'Semester Ganjil', '2020/2021', 19, 'ACC', '2018-04-04', '2018-04-26', '0428017801', '1301190090'),
('22', 'Semester Ganjil', '2020/2021', 22, 'ACC', '2020-04-13', '2020-04-26', '0406097502', '1301194056'),
('220', 'Semester Ganjil', '2020/2021', 19, 'ACC', '2020-04-07', '2020-04-26', '0424098901', '1301194012'),
('221', 'Semester Ganjil', '2020/2021', 19, 'ACC', '2020-04-20', '2020-04-26', '0404098901', '1301194024'),
('222', 'Semester Ganjil', '2020/2021', 23, 'ACC', '2018-04-20', '2018-04-26', '0402097401', '1301194040'),
('23', 'Semester Genap', '2020/2021', 19, 'ACC', '2021-04-13', '2021-04-26', '419118101', '1301194073'),
('24', 'Semester Genap', '2020/2021', 21, 'ACC', '2021-04-22', '2021-04-26', '0428106601', '1301194089'),
('25', 'Semester Ganjil', '2020/2021', 23, 'ACC', '2020-04-04', '2020-04-26', '0328047103', '1301190318'),
('26', 'Semester Ganjil', '2020/2021', 23, 'ACC', '2018-04-16', '2018-04-26', '0403067501', '1301190345'),
('27', 'Semester Ganjil', '2020/2021', 23, 'ACC', '2020-04-03', '2020-04-26', '0425119001', '1301193303'),
('28', 'Semester Ganjil', '2020/2021', 19, 'ACC', '2020-04-03', '2020-04-26', '0405117407', '1301194141'),
('29', 'Semester Ganjil', '2020/2021', 22, 'ACC', '2020-04-18', '2020-04-26', '405127701', '1301194228');

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_studi`
--

CREATE TABLE `program_studi` (
  `kode_prodi` varchar(100) NOT NULL,
  `nama_prodi` varchar(100) NOT NULL,
  `kode_fakultas` varchar(100) NOT NULL,
  `pemimpin_prodi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `program_studi`
--

INSERT INTO `program_studi` (`kode_prodi`, `nama_prodi`, `kode_fakultas`, `pemimpin_prodi`) VALUES
('20101', 'S2 Teknik Elektro', 'FTE', '07760017'),
('20201', 'S1 Teknik Elektro', 'FTE', '0412067804'),
('20202', 'S1 Teknik Telekomunikasi', 'FTE', '0411117404'),
('20402', 'D3 Teknologi Telekomunikasi', 'FTE', '0409078801'),
('26101', 'S2 Teknik Industri', 'FRI', '0428017801'),
('26201', 'S1 Teknik Industri', 'FRI', '0425097601'),
('30201', 'S1 Teknik Fisika', 'FTE', '0422037401'),
('55101', 'S2 Informatika', 'FIF', '0411027801'),
('55201', 'S1 Informatika', 'FIF', '0412108503'),
('55203', 'S1 PJJ Informatika', 'FIF', '426017302'),
('55401', 'D3 Rekayasa Perangkat Lunak Aplikasi', 'FIF', '0422087102'),
('56202', 'S1 Teknik Komputer', 'FTE', '0430058602'),
('56402', 'D3 Teknologi Komputer', 'FIT', '0409107904'),
('57201', 'S1 Sistem Informasi', 'FRI', '0424098901'),
('57401', 'D3 Sistem Informasi', 'FIT', '0427088802'),
('57402', 'D3 Sistem Informasi Akuntansi', 'FIT', '0404077804'),
('59201', 'S1 Teknologi Informasi', 'FIF', '0422097502'),
('59202', 'S1 Rekayasa Perangkat Lunak', 'FRI', '0425056604'),
('61101', 'S2 Manajemen', 'FEB', '0425119001'),
('61201', 'S1 Manajemen', 'FEB', '0405117407'),
('62201', 'S1 Akuntansi', 'FEB', '405127701'),
('63211', 'S1 Administrasi Bisnis', 'FKB', '0402097401'),
('63315', 'S1 Teknik Logistik', 'FRI', '0404098901'),
('70201', 'S1 Ilmu Komunikasi', 'FKB', '0419027907'),
('71441', 'S1 Hubungan Masyarakat', 'FKB', '0422077204'),
('90102', 'S2 Desain', 'FIK', '420015903'),
('90201', 'S1 Seni Rupa', 'FIK', '0416078801'),
('90211', 'S1 Kriya', 'FIK', '0421076905'),
('90221', 'S1 Desain Interior', 'FIK', '0420048304'),
('90231', 'S1 Desain Produk', 'FIK', '0429127805'),
('90241', 'S1 Desain Komunikasi Visual', 'FIK', '0408068603'),
('90343', 'D4 Teknologi Rekayasa Multimedia', 'FIT', '409077603'),
('93402', 'D3 Perhotelan', 'FIT', '0421107801');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(45) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `telp` varchar(45) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `email`) VALUES
('abdullah', 'abdullah0123', 'ABDULLAH', 'ABDULLAH', 'Laki - laki', 'Zimbabwe', '1980-12-21', 'Jl. alanin dulu, Surabaya, Jawa Timur', '08123456789', 'abdullah01@telkomuniversity.ac.id'),
('abdurahmanb', 'abdurahman123', 'Z.K ABDURAHMAN', 'BAIZAL', 'Laki - laki', 'Magelang', '1970-12-21', 'Jl Gethuk, Bayeman, Magelang', '085878797686', 'abdurahmanbaizal@telkomuniversity.ac.id'),
('achmadmanshur', 'manshur132', 'ACHMAD MANSHUR', 'ALI SUYANTO', 'Laki - laki', 'Suriname', '1983-11-21', 'Jl. alanin aja, Surakarta, Jawa Tengah', '08457456789', 'alisuyanto123@telkomuniversity.ac.id'),
('adeirmas', 'adeirma456', 'ADE IRMA', 'SUSANTY', 'Perempuan', 'Bali', '1973-10-23', 'Jl Bambu, Bojongsoang, Bandung', '085898976768', 'adeirmasusanty@telkomuniversity.ac.id'),
('adhiprasetyo', 'adhiprasetio123', 'ADHI', 'PRASETIO', 'Laki - laki', 'Trenggalek', '1985-05-21', 'Jl. hiahia, Surakarta, Jawa Tengah', '08456723898', 'adhiprasetio123@telkomuniversity.ac.id'),
('afrizal4288', '4288afrizal', 'AFRIZAL', 'SYAHRULUDDIN YUSUF', 'Laki - laki', 'Kayong Utara', '2001-06-03', 'Jl. apel 4 nomor 141', '082234894288', 'afrizalsyahruluddin.yusuf@student.telkomuniversity.ac.id'),
('agusachmad123', 'agusas', 'AGUS ACHMAD', 'SUHENDRA', 'Laki - laki', 'Purwakarta', '1970-12-21', 'Jl Punakawan, Sriwedari, Yogyakarta', '085898976867', 'agusas@telkomuniversity.ac.id'),
('agustantram', 'agus57', 'AGUS', 'TANTRAM', 'Laki - laki', 'Surakarta', '1985-02-24', 'Jl. Hiatus No. 90 Klaten', '081536798613', 'agustantram@gmail.com'),
('ahmad0345', '0345ahmad', 'AHMAD', 'JULIUS TARIGAN', 'Laki - laki', 'Aceh Timur', '2001-08-18', 'Jl. jeruk 1 nomor 151', '082234890345', 'ahmadjulius.tarigan@student.telkomuniversity.ac.id'),
('alikanaga', 'alikanaga1314', 'ALIKA', 'NAMAGA', 'Perempuan', 'Payakumbuh', '1987-12-12', 'Ds. Raya Ujungberung', '084023445313', 'alikanaga@gmail.com'),
('anited', 'anited1415', 'ANI TALIA', 'UYAINAH', 'Perempuan', 'Jambi', '1990-05-13', 'Gg. Bakit No. 544, Pangkal Pinang', '08454271516', 'anited@gmail.com'),
('arfinatorahmi', 'arfiantofahmi123', 'ARFIANTO', 'FAHMI', 'Laki - laki', 'Yogyakarta', '1972-02-12', 'Jl Sukapura, Bojongsoang, Bandung', '085890897879', 'arfiantofahmi@telkomuniversity.ac.id'),
('ariyanuar', 'ariyanuar678', 'ARI', 'YANUAR', 'Laki - laki', 'Surakarta', '1972-10-13', 'Jl Pattimura, Bandung, Jawa Barat', '0814567869', 'ariyanuar@telkomuniversity.ac.id'),
('asepsufyan', 'asepsufyan124', 'ASEP SUFYAN', 'MUHAKIK ATAMTAJANI', 'Laki - laki', 'Ponorogo', '1972-11-10', 'Jl Alas, Ponorogo, Jawa Timur', '0816469597', 'asepsuyfan@telkomuniversity.ac.id'),
('atimustikasari', 'atimustikasari456', 'ATI', 'MUSTIKASARI', 'Perempuan', 'Jakarta', '1974-12-10', 'Jl Alam, Kediri, Jawa Timur', '0816467879', 'atimustikasari@telkomuniversity.ac.id'),
('ayubilfandyimran', 'ayub25', 'AYUB ILFANDY', 'IMRAN', 'Perempuan', 'Klaten', '1974-12-10', 'Jl Perintis, Madiun, Jawa Timur', '08164678989', 'ayubilfandy@telkomuniversity.ac.id'),
('bambang123', 'bambangsn', 'BAMBANG SETIA', 'NUGROHO', 'Laki - laki', 'Malang', '1971-12-21', 'Jl Bolodewo, Sriwedari, Surakarta', '08587868987', 'bambangsn@telkomuniversity.ac.id'),
('bambangaji', 'aji1232', 'BAMBANG', 'AJI', 'Laki - laki', 'Surabaya', '1989-07-25', 'Jl. Braga No. 75, Bandung', '085812435768', 'kurniawanteguh@gmail.com'),
('banasi', 'banasi24', 'BANARA', 'HIDAYANTO', 'Laki - laki', 'Pekalongan', '1978-12-23', 'Ki. K.H. Wahid Hasyim (Kopo) No. 280', '08932567971', 'banasi@gmail.com'),
('claudia0424', '0424claudia', 'CLAUDIA', 'MEI SERIN SITIO', 'Perempuan', 'Kudus', '2001-07-28', 'Jl. mangga 1 nomor 177', '082234890424', 'claudiamei.serin sitio@student.telkomuniversity.ac.id'),
('danasulistyo', 'danasulistyo4343', 'DANA SULISTYO', 'KUSUMO', 'Laki - laki', 'Surakarta', '1973-11-13', 'Jl Gedung Sate, Bandung, Jawa Barat', '0813567869', 'danasulistyo@telkomuniversity.ac.id'),
('dendigusnadi', 'dendigusnadi65', 'DENDI', 'GUSNADI', 'Laki - laki', 'Jakarta', '1973-10-10', 'Jl Alam, Kediri, Jawa Timur', '08164657685', 'dendigusnadi@telkomuniversity.ac.id'),
('dickyhidayat', 'dickyhidayat125', 'DICKY', 'HIDAYAT', 'Laki - laki', 'Ponorogo', '1973-12-10', 'Jl Manis, Kediri, Jawa Timur', '08164656789', 'dickyhidayat@telkomuniversity.ac.id'),
('doddyfriestya', 'dodyfriestya24', 'DODDY FRIESTYA', 'ASHARSINYO', 'Laki - laki', 'Klaten', '1973-10-10', 'Jl Braga, Bandung, Jawa Barat', '0816469102', 'doddyfriestya@telkomuniversity.ac.id'),
('dudipratomo', 'dudipratomo456', 'DUDI', 'PRATOMO', 'Laki - laki', 'Mojokerto', '1973-02-26', 'Jl Teuku Umar, Semarang, Jawa Tengah', '085875678910', 'dudipratomo@telkomuniversity.ac.id'),
('edywibowo', 'edywibowo456', 'EDY', 'WIBOWO', 'Laki - laki', 'Cirebon', '1972-07-19', 'Jl Kuningan, Cirebon, Jawa Barat', '085890908989', 'edywibowo@telkomuniversity.ac.id'),
('elipaarm', '487b7116', 'ELI', 'PADMASARI', 'Perempuan', 'Singkawang', '1970-08-19', 'Singkawang 37246, KALTENG', '087506228695', 'elipaarm@gmail.com'),
('endroariyanto', 'endroariyanto6456', 'ENDRO', 'ARIYANTO', 'Laki - laki', 'Yogyakarta', '1969-03-29', 'Jl Malioboro, Yogyakarta, Daerah Istimewa Yog', '085890908085', 'endroariyanto@telkomuniversity.ac.id'),
('fadhluraahman4258', '4258fadhluraahman', 'FADHLURRAHMAN', 'AKBAR NASUTION', 'Laki - laki', 'Dharmasraya', '2001-12-08', 'Jl. mangga 0 nomor 69', '082234894258', 'fadhlurrahmanakbar.nasution@student.telkomuniversity.ac.id'),
('faradillahnursari', 'faradillahnursari123', 'FARADILLAH', 'NURSARI', 'Perempuan', 'Jakarta', '1973-12-10', 'Jl Manis, Kediri, Jawa Timur', '08164656789', 'dickyhidayat@telkomuniversity.ac.id'),
('fikysuratman', 'fikysuratman135', 'FIKY YOSEF', 'SURATMAN', 'Laki - laki', 'Purwokerto', '1973-03-24', 'Jl Diponegoro, Semarang, Jawa Tengah', '085897685040', 'fikysuratman@telkomuniversity.ac.id'),
('firdaus0385', '0385firdaus', 'FIRDAUS', 'PUTRA KURNIYANTO', 'Laki - laki', 'Malang', '2001-07-10', 'Jl. Merdeka, Trenggalek', '082234890385', 'firdausputra.kurniyanto@student.telkomuniversity.ac.id'),
('galaknta', 'galaknta013', 'GALAK NARADI', 'WASITA', 'Laki - laki', 'Papua', '1987-11-13', 'Sabang, Papua', '08428146388', 'galaknta@gmail.com'),
('galurip', 'galurip156', 'GALUR', 'MANDALA', 'Laki - laki', 'Bali', '1989-12-03', 'Banjarbaru 12476', '08598502072', 'galurip@gmail.com'),
('guido3303', '3303guido', 'GUIDO', 'TAMARA', 'Laki - laki', 'Tapanuli Selatan', '2001-10-19', 'Jl. apel 1 nomor 29', '082234893303', 'guidotamara@student.telkomuniversity.ac.id'),
('hanasi', 'hanasi46', 'HANA TAMI', 'NOVITASARI', 'Perempuan', 'Jambi', '1978-09-09', 'Jl. Baing No. 810', '084081900389', 'hanasi@gmail.com'),
('hanigz', '608415ab', 'HANI', 'YULIANTI', 'Perempuan', 'Tidore', '1964-10-02', 'Tidore Kepulauan 77755', '083971651499', 'hanigz@gmail.com'),
('hanvito0090', '0090hanvito', 'HANVITO', 'MICHAEL LEE', 'Laki - laki', 'Polewali Mandar', '2001-06-15', 'Jl. mangga 6 nomor 86', '082234890090', 'hanvitomichael.lee@student.telkomuniversity.ac.id'),
('ignasius4138', '4138ignasius', 'IGNASIUS', 'NINDRA KARISMA FORESTYANTO', 'Laki - laki', 'Parigi Moutong', '2001-09-25', 'Jl. apel 1 nomor 105', '082234894138', 'ignasiusnindra.karisma forestyanto@student.telkomuniversity.ac.id'),
('ilmamufidah', 'ilmamufidah6788', 'ILMA', 'MUFIDAH', 'Perempuan', 'Malang', '1974-10-13', 'Jl Pattimura, Bandung, Jawa Barat', '0814876590', 'ilmamufidah@telkomuniversity.ac.id'),
('indrarinidyahirawati', 'indarini123', 'INDRARINI DYAH', 'IRAWATI', 'Perempuan', 'Jakarta', '1974-08-10', 'Jl Asam, Blitar, Jawa Timur', '08164657689', 'indrarinidyahirawati@telkomuniversity.ac.id'),
('iqbal0318', '0318iqbal', 'IQBAL', 'SAVIOLA SYAH BILLHAQ', 'Laki - laki', 'Bungo', '2001-03-07', 'Jl. mangga 2 nomor 147', '082234890318', 'iqbalsaviola.syah billhaq@student.telkomuniversity.ac.id'),
('jokopriambodo', 'joko151', 'JOKO', 'PRIAMBODO', 'Laki - laki', 'Semarang', '1979-10-24', 'Jl. Hiatus No. 45, Surakarta', '085761342483', 'jokopriambodo@gmail.com'),
('kasyifi4397', '4397kasyifi', 'KASYFI', 'ZULKAISI AUFAR', 'Laki - laki', 'Katingan', '2001-07-16', 'Jl. sawo 3 nomor 31', '082234894397', 'kasyfizulkaisi.aufar@student.telkomuniversity.ac.id'),
('kaylaarm', 'kay891', 'KAYLA', 'RAHIMAH', 'Perempuan', 'Bengkulu', '1989-11-21', 'Padangsidempuan 40388, Bengkulu', '08435294713', 'kaylaarm@gmail.com'),
('kurniadi4024', '4024kurniadi', 'KURNIADI', 'AHMAD WIJAYA', 'Laki - laki', 'Kepulauan Yapen', '2001-04-09', 'Jl. pepaya 0 nomor 150', '082234894024', 'kurniadiahmad.wijaya@student.telkomuniversity.ac.id'),
('kurniawant', 'teguh1212', 'KURNIAWAN', 'TEGUH', 'Laki - laki', 'Jakarta', '1990-09-20', 'Jl. Braga No. 90, Bandung', '085864532813', 'kurniawanteguh@gmail.com'),
('levyoliviaolivia', 'levyolivianur135', 'LEVY OLIVIA', 'NUR', 'Perempuan', 'Magelang', '1973-03-24', 'Jl Pangeran Diponegoro, Magelang, Jawa Tengah', '085812432569', 'levyolivia@telkomuniversity.ac.id'),
('livia4089', '4089livia', 'LIVIA', 'NAURA AQILLA', 'Perempuan', 'Buton', '2001-12-04', 'Jl. apel 1 nomor 136', '082234894089', 'livianaura.aqilla@student.telkomuniversity.ac.id'),
('mansel0188', '0188mansel', 'MANSEL', 'LORENZO NUGRAHA', 'Laki - laki', 'Mamuju Utara', '2001-01-23', 'Jl. jeruk 6 nomor 109', '082234890188', 'mansellorenzo.nugraha@student.telkomuniversity.ac.id'),
('meliah', 'meliah1612', 'MELINDA', 'HALIMAH', 'Perempuan', 'Surabaya', '1978-11-25', 'Jl. Ikan No. 929, Surabaya 65508', '08565800222', 'meliah@gmail.com'),
('michael4056', '4056michael', 'MICHAEL', 'PUTERA WARDANA', 'Laki - laki', 'Flores Timur', '2001-01-29', 'Jl. nangka 1 nomor 68', '082234894056', 'michaelputera.wardana@student.telkomuniversity.ac.id'),
('mitratu', 'mitratu15', 'MITRA', 'PANGESTU', 'Laki - laki', 'Yogyakarta', '1978-10-09', 'Ds. Salam No. 336, Yogyakarta', '08290024194', 'mitratu@gmail.com'),
('muhammad4427', '4427muhammad', 'MUHAMMAD', 'ARYUSKA PRADANA', 'Laki - laki', 'Kepulauan Yapen', '2001-05-20', 'Jl. sawo 0 nomor 63', '082234894427', 'muhammadaryuska.pradana@student.telkomuniversity.ac.id'),
('muhammadnashira', 'muhammadnasir2323', 'MUHAMMAD NASHIR', 'ARDIANSYAH', 'Laki - laki', 'Medan', '1972-10-21', 'Jl Gedung Sate, Bandung, Jawa Barat', '0858897086', 'mnashirardiansyah@telkomuniversity.ac.id'),
('nanda4107', '4107nanda', 'NANDA', 'IHWANI SAPUTRI', 'Perempuan', 'Bener Meriah', '2001-11-06', 'Jl. pepaya 5 nomor 89', '082234894107', 'nandaihwani.saputri@student.telkomuniversity.ac.id'),
('naufal4073', '4073naufal', 'NAUFAL', 'HARITSAH LUTHFI', 'Laki - laki', 'Pinrang', '2001-02-25', 'Jl. jeruk 2 nomor 110', '082234894073', 'naufalharitsah.luthfi@student.telkomuniversity.ac.id'),
('nelsiwisna', 'nelsiwisna22', 'NELSI', 'WISNA', 'Perempuan', 'Jakarta', '1971-07-10', 'Jl Barat, Trenggalek, Jawa Timur', '081656777889', 'nelsiwisna@telkomuniversity.ac.id'),
('ni4141', '4141ni', 'NI', 'MADE DWIPADINI PUSPITARINI', 'Perempuan', 'Pangandaran', '2001-08-13', 'Jl. apel 1 nomor 80', '082234894141', 'nimade.dwipadini puspitarini@student.telkomuniversity.ac.id'),
('nikendwiwc', 'nikendwiwc45', 'NIKEN DWI', 'WAHYU CAHYANI', 'Perempuan', 'Surabaya', '1971-04-20', 'Jl Panas, Surabaya, Jawa Timur', '085867689890', 'nikendwiwc@telkomuniversity.ac.id'),
('noraamledarizal', 'noraamelda123', 'NORA', 'AMELDA RIZAL', 'Perempuan', 'Sulawesi Utara', '1973-01-12', 'Jl Imam Bonjol, Semarang, Jawa Tengah', '085876869090', 'norameldarizal@telkomuniversity.ac.id'),
('oninilpd', 'oninilpd13', 'ONI NILAM', 'HASSANAH', 'Perempuan', 'Yogyakarta', '1987-12-03', 'Ds. Gremet No. 285, Yogyakarta', '08652051636', 'oninilpd@gmail.com'),
('priyan0442', '0442priyan', 'PRIYAN', 'FADHIL SUPRIYADI', 'Laki - laki', 'Mappi', '2001-03-01', 'Jl. mangga 4 nomor 92', '082234890442', 'priyanfadhil.supriyadi@student.telkomuniversity.ac.id'),
('putugiriartha', 'putugiriartha123', 'PUTU GIRI', 'ARTHA KUSUMA', 'Laki - laki', 'Bali', '1970-11-10', 'Jl Sumedang, Sumedang, Jawa Barat', '08178787909', 'putugiriartha@telkomuniversity.ac.id'),
('rachmaditaandres', 'rachmadita2325', 'RACHMADITA', 'Andreswari', 'Perempuan', 'Sidoarjo', '1975-12-13', 'Jl Soeharto, Bandung, Jawa Barat', '0816785679', 'rachmaditaandreswari@telkomuniversity.ac.id'),
('rahmadiwijaya', 'rahmadiwijaya23', 'RAHMADI', 'WIJAYA', 'Laki - laki', 'Jakarta', '1972-10-15', 'Jl Utara, Trenggalek, Jawa Timur', '081656790203', 'rahmadiwijaya@telkomuniversity.ac.id'),
('rahutaminugrahani', 'rahutami111', 'RAH UTAMI', 'NUGRAHANI', 'Perempuan', 'Surakarta', '1973-11-13', 'Jl Otto Iskandar, Purbalingga, Jawa Timur', '08164586790', 'rahutaminugrahani@telkomuniversity.ac.id'),
('ratriwahyu', 'ratriwah123', 'RATRI', 'WAHYUNINGTYAS', 'Perempuan', 'Magelang', '1973-10-23', 'Jl Gudeg, Gejayan, Yogyakarta', '085878706865', 'ratriwahyuningtyas@telkomuniversity.ac.id'),
('rizki4012', '4012rizki', 'RIZKI', 'TRI SETIAWAN', 'Laki - laki', 'Batang', '2001-05-15', 'Jl. nangka 1 nomor 54', '082234894012', 'rizkitri.setiawan@student.telkomuniversity.ac.id'),
('rizky4042', '4042rizky', 'RIZKY', 'HAFFIYAN ROSENO', 'Laki - laki', 'Seram Bagian Barat', '2001-04-15', 'Jl. mangga 3 nomor 184', '082234894042', 'rizkyhaffiyan.roseno@student.telkomuniversity.ac.id'),
('rororetno', 'roro789', 'RORO RETNO', 'WULAN', 'Perempuan', 'Yogyakarta', '1974-01-24', 'Jl Sukabirus, Bojongsoang, Bandung', '085875678689', 'rororetnowulan@telkomuniversity.ac.id'),
('salwalari', 'salwalari131', 'SALWA', 'LAILASARI', 'Perempuan', 'Jambi', '1978-10-23', 'Jl. Qrisdoren No. 464, Gorontalo', '08661852483', 'salwalari@gmail.com'),
('sendangsejati', 'sendang1505', 'SENDANG', 'SEJATI', 'Laki - laki', 'Surakarta', '1990-05-24', 'Jl. Borobudur No. 90, Yogyakarta', '081643789', 'sendangsejati@gmail.com'),
('setiajulirzal', 'setiajulirzal24', 'SETIA JULI', 'IRZAL ISMAIL', 'Laki - laki', 'Jakarta', '1974-10-10', 'Jl Timur, Trenggalek, Jawa Timur', '08165678791', 'setiajulirzal@telkomuniversity.ac.id'),
('setyoriniii', 'setyorini6456', 'SETYORINI', 'SETYORINI', 'Perempuan', 'Yogyakarta', '1971-09-21', 'Jl Ringroad utara, Yogyakarta, Daerah Istimew', '08584567365', 'setyorini@telkomuniversity.ac.id'),
('sigityuwono', 'sigityuwono123', 'SIGIT', 'YUWONO', 'Laki - laki', 'Cirebon', '1974-02-18', 'Jl Brantas, Cirebon, Jawa Barat', '08584567458', 'sigityuwono@telkomuniversity.ac.id'),
('siskanoviarisanti', 'siskanovi123', 'SISKA', 'NOVIARISTANTI', 'Perempuan', 'Surakarta', '1974-02-14', 'Jl Braga, Braga, Bandung', '085878679080', 'siskanoviaristanti@telkomuniversity.ac.id'),
('syahputra', 'syahputra111', 'SYAHPUTRA', 'SYAHPUTRA', 'Laki - laki', 'Jombang', '1972-10-09', 'Jl Otto Iskandar, Sumedang, Jawa Barat', '08165498707', 'syahputra@telkomuniversity.ac.id'),
('umarali', 'umarali4646', 'UMAR ALI', 'AHMAD', 'Laki - laki', 'Surabaya', '1971-04-20', 'Jl Kuningan, Purwakarta, Jawa Barat', '08587867543', 'umaraliahmad@telkomuniversity.ac.id'),
('umayaala', 'umayaala152', 'UMAYA', 'MANDALA', 'Laki - laki', 'Magelang', '1987-12-30', 'K.H. Maskur No. 229, Magelang', '08781568302', 'umayaala@gmail.com'),
('vena4040', '4040vena', 'VENA', 'ERLA CANDRIKA', 'Perempuan', 'Maluku Tenggara', '2001-04-07', 'Jl. mangga 6 nomor 99', '082234894040', 'venaerla.candrika@student.telkomuniversity.ac.id'),
('waniah', 'waniah115', 'WANI HALIMA', 'RAHIMAH', 'Perempuan', 'Singkawang', '1967-09-12', 'Jl. Jend. A. Yani No. 327', '080448040472', 'waniah@gmail.com'),
('yogi4228', '4228yogi', 'YOGI', 'FIRGIAWAN', 'Laki - laki', 'Buleleng', '2001-03-21', 'Jl. pepaya 4 nomor 142', '082234894228', 'yogifirgiawan@student.telkomuniversity.ac.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_orang_tua`
--

CREATE TABLE `wali_orang_tua` (
  `id_wali` int(11) NOT NULL,
  `status_wali` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `username_wali` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `wali_orang_tua`
--

INSERT INTO `wali_orang_tua` (`id_wali`, `status_wali`, `pekerjaan`, `username_wali`) VALUES
(10, 'Orang Tua', 'Pegawai Negeri Sipil', 'hanigz'),
(11, 'Orang Tua', 'Pegawai Negeri Sipil', 'elipaarm'),
(12, 'Orang Tua', 'Wiraswasta', 'kaylaarm'),
(13, 'Orang Tua', 'Anggota DPD', 'oninilpd'),
(14, 'Orang Tua', 'Dokter', 'umayaala'),
(15, 'Saudara', 'Wiraswasta', 'mitratu'),
(16, 'Orang Tua', 'Wiraswasta', 'galaknta'),
(17, 'Orang Tua', 'Pegawai Negeri Sipil', 'meliah'),
(18, 'Orang Tua', 'Anggota DPR-RI', 'salwalari'),
(19, 'Orang Tua', 'Wiraswasta', 'alikanaga'),
(110, 'Keponakan', 'Pensiunan', 'waniah'),
(111, 'Orang Tua', 'Wiraswasta', 'banasi'),
(112, 'Orang Tua', 'Wiraswasta', 'anited'),
(113, 'Orang Tua', 'Tentara Nasional Indonesia', 'galurip'),
(114, 'Orang Tua', 'Kepolisian RI', 'hanasi'),
(115, 'Orang Tua', 'Kepolisian RI', 'jokopriambodo'),
(116, 'Saudara', 'Kepolisian RI', 'agustantram'),
(117, 'Orang Tua', 'Tentara Nasional Indonesia', 'sendangsejati'),
(118, 'Orang Tua', 'Tentara Nasional Indonesia', 'kurniawant'),
(119, 'Orang Tua', 'Dosen', 'bambangaji');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `fk_dosen_user1_idx` (`username_dosen`),
  ADD KEY `fk_dosen_program_studi2_idx` (`prodi`),
  ADD KEY `fk_dosen_perkuliahan1_idx` (`perkuliahan_id_perkuliahan`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`kode_fakultas`),
  ADD KEY `fk_fakultas_dosen1_idx` (`pemimpin_fakultas`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `fk_mahasiswa_user1_idx` (`username_mahasiswa`),
  ADD KEY `fk_mahasiswa_dosen1_idx` (`waldos`),
  ADD KEY `fk_mahasiswa_wali_orang_tua1_idx` (`id_wali`),
  ADD KEY `fk_mahasiswa_program_studi1_idx` (`kode_prodi`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mata_kuliah`),
  ADD KEY `fk_mata_kuliah_perkuliahan1_idx` (`perkuliahan_id_perkuliahan`);

--
-- Indeks untuk tabel `perkuliahan`
--
ALTER TABLE `perkuliahan`
  ADD PRIMARY KEY (`id_perkuliahan`),
  ADD KEY `fk_perkuliahan_perwalian1_idx` (`perwalian_kode_prs`);

--
-- Indeks untuk tabel `perwalian`
--
ALTER TABLE `perwalian`
  ADD PRIMARY KEY (`kode_prs`),
  ADD KEY `fk_perwalian_dosen1_idx` (`dosen_nid`),
  ADD KEY `fk_perwalian_mahasiswa1_idx` (`mahasiswa_nim`);

--
-- Indeks untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`kode_prodi`),
  ADD KEY `fk_program_studi_fakultas1_idx` (`kode_fakultas`),
  ADD KEY `fk_program_studi_dosen1_idx` (`pemimpin_prodi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `wali_orang_tua`
--
ALTER TABLE `wali_orang_tua`
  ADD PRIMARY KEY (`id_wali`),
  ADD KEY `fk_wali_orang_tua_user_idx` (`username_wali`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `fk_dosen_perkuliahan1` FOREIGN KEY (`perkuliahan_id_perkuliahan`) REFERENCES `perkuliahan` (`id_perkuliahan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dosen_program_studi2` FOREIGN KEY (`prodi`) REFERENCES `program_studi` (`kode_prodi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dosen_user1` FOREIGN KEY (`username_dosen`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD CONSTRAINT `fk_fakultas_dosen1` FOREIGN KEY (`pemimpin_fakultas`) REFERENCES `dosen` (`nid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_mahasiswa_dosen1` FOREIGN KEY (`waldos`) REFERENCES `dosen` (`nid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mahasiswa_program_studi1` FOREIGN KEY (`kode_prodi`) REFERENCES `program_studi` (`kode_prodi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mahasiswa_user1` FOREIGN KEY (`username_mahasiswa`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mahasiswa_wali_orang_tua1` FOREIGN KEY (`id_wali`) REFERENCES `wali_orang_tua` (`id_wali`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `fk_mata_kuliah_perkuliahan1` FOREIGN KEY (`perkuliahan_id_perkuliahan`) REFERENCES `perkuliahan` (`id_perkuliahan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `perkuliahan`
--
ALTER TABLE `perkuliahan`
  ADD CONSTRAINT `fk_perkuliahan_perwalian1` FOREIGN KEY (`perwalian_kode_prs`) REFERENCES `perwalian` (`kode_prs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `perwalian`
--
ALTER TABLE `perwalian`
  ADD CONSTRAINT `fk_perwalian_dosen1` FOREIGN KEY (`dosen_nid`) REFERENCES `dosen` (`nid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perwalian_mahasiswa1` FOREIGN KEY (`mahasiswa_nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  ADD CONSTRAINT `fk_program_studi_dosen1` FOREIGN KEY (`pemimpin_prodi`) REFERENCES `dosen` (`nid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_program_studi_fakultas1` FOREIGN KEY (`kode_fakultas`) REFERENCES `fakultas` (`kode_fakultas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `wali_orang_tua`
--
ALTER TABLE `wali_orang_tua`
  ADD CONSTRAINT `fk_wali_orang_tua_user` FOREIGN KEY (`username_wali`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
