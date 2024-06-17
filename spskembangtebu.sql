-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 09:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spskembangtebu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `username`, `password`) VALUES
(1, 'guru', '123456\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kutipan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `kutipan`, `isi`, `tgl_isi`) VALUES
(3, 'A Few Words About Our Center', '', '<p><img src=\"../gambar/schoolProfile.png\" data-filename=\"schoolProfile.png\" class=\"note-float-right\" style=\"float: right;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan. Sed turpis tincidunt id aliquet risus feugiat in. Sed euismod nisi porta lorem mollis aliquam ut porttitor. Mauris nunc congue nisi vitae. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Lorem dolor sed viverra ipsum nunc aliquet bibendum.</p><p>Lectus mauris ultrices eros in cursus turpis massa tincidunt dui. Felis donec et odio pellentesque diam volutpat commodo sed. </p>', '2024-05-27 13:38:12'),
(6, 'Judul 3', 'Kutipan 3', '<p>Isi 3</p>', '2021-03-28 00:10:54'),
(8, 'Welcome to SPS Kembang Tebu', 'A perfect learning center for your kids', '<p><img src=\"../gambar/home.png\" data-filename=\"2b24d495052a8ce66358eb576b8912c8.jpg\" class=\"note-float-left\" style=\"float: left;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan. Sed turpis tincidunt id aliquet risus feugiat in. Sed euismod nisi porta lorem mollis aliquam ut porttitor. Mauris nunc congue nisi vitae. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Lorem dolor sed viverra ipsum nunc aliquet bibendum.</p><p>Lectus mauris ultrices eros in cursus turpis massa tincidunt dui. Felis donec et odio pellentesque diam volutpat commodo sed. </p><p>Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Diam sit amet nisl suscipit adipiscing bibendum est ultricies integer. </p><p>Sit amet commodo nulla facilisi. Nisi porta lorem mollis aliquam. </p><p>Sherly mengaku ada perbedaan besar dalam aktivitas keduanya saat berlajar di rumah karena mereka berada di sekolah yang berbeda.</p><p>\"Sekolah negeri tidak sama dengan sekolah swasta. Sekolah yang swasta lebih terorganisasi dan rapi,\" kata Sherly kepada Hellena Souisa dari ABC News.Commodo ullamcorper a lacus vestibulum. Nibh praesent tristique magna sit. </p><p>Porttitor massa id neque aliquam vestibulum morbi blandit. A lacus vestibulum sed arcu. Ut diam quam nulla porttitor massa id.</p><p>Ac felis donec et odio pellentesque diam. Interdum velit euismod in pellentesque massa placerat duis ultricies lacus. Congue quisque egestas diam in arcu cursus euismod quis.</p><p>Ac felis donec et odio pellentesque diam. Interdum velit euismod in pellentesque massa placerat duis ultricies lacus. </p><p>Ac felis donec et odio pellentesque diam. Interdum velit euismod in pellentesque massa placerat duis ultricies lacus. </p>', '2024-05-27 12:58:28'),
(9, 'Top-notch teachers, limitless learning', 'You Will Need This', '<p style=\"margin: 10px 0px; padding: 10px 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><img src=\"../gambar/service.png\" style=\"width: 626px; float: left;\" class=\"note-float-left\"></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Interdum posuere lorem ipsum dolor sit amet. Arcu bibendum at varius vel pharetra. In nulla posuere sollicitudin aliquam ultrices.</font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\">Nisl nisi scelerisque eu ultrices vitae auctor eu. At imperdiet dui accumsan sit. Integer eget aliquet nibh praesent tristique magna. Commodo viverra maecenas accumsan lacus vel facilisis. </font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\">Nisl nisi scelerisque eu ultrices vitae auctor eu. At imperdiet dui accumsan sit. Integer eget aliquet nibh praesent tristique magna. Commodo viverra maecenas accumsan lacus vel facilisis. </font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Interdum posuere lorem ipsum dolor sit amet. Arcu bibendum at varius vel pharetra. </font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><font color=\"#000000\">Nec dui nunc mattis enim ut tellus elementum sagittis vitae. Fusce id velit ut tortor. Pulvinar mattis nunc sed blandit. Nisl nisi scelerisque eu ultrices vitae auctor eu. At imperdiet dui accumsan sit. Integer eget aliquet nibh praesent tristique magna. Commodo viverra maecenas accumsan lacus vel facilisis. Ultrices neque ornare aenean euismod elementum nisi quis eleifend.</font></p><p style=\"margin: 10px 0px; padding: 10px 0px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-family: var(--bs-font-sans-serif); font-size: 1rem;\">Nec dui nunc mattis enim ut tellus elementum sagittis vitae. Fusce id velit ut tortor. Pulvinar mattis nunc sed blandit. Nisl nisi scelerisque eu ultrices vitae auctor eu. At imperdiet dui accumsan sit. Integer eget aliquet nibh praesent tristique magna. Commodo viverra maecenas accumsan lacus vel facilisis. Ultrices neque ornare aenean euismod elementum nisi quis eleifend.</span></p>', '2024-05-27 13:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `judul`, `isi`, `tgl_isi`) VALUES
(1, 'SPS Kembang Tebu.', '<p>lorem ipsum dolor sit amet</p>', '2024-05-27 14:34:39'),
(2, 'About', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', '2024-05-28 09:10:45'),
(3, 'Contact', '<p>Silakan kontak kami di nomor :&nbsp;</p>', '2021-04-04 23:08:39'),
(4, 'Social', '<p>123220013&123220022</p><p><b> \nYoutube : </b>SPSKembangTebu</p>', '2024-05-27 14:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `token_ganti_password` text DEFAULT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `email`, `nama_lengkap`, `password`, `status`, `token_ganti_password`, `tgl_isi`) VALUES
(2, 'dirumahrafif@gmail.com', 'Di Rumahrafif', 'c33367701511b4f6020ec61ded352059', '1', '', '2021-04-09 00:00:58'),
(6, 'ica.insyuzuu514@gmail.com', 'insyuzuu', '7bc6c31880aeda581aa34e218af25753', '9a1158154dfa42caddbd0694a4e9bdc8', NULL, '2024-05-28 09:57:13'),
(7, 'inibuattwt@gmail.com', 'haqi', 'fcea920f7412b5da7be0cf42b8c93759', 'd14220ee66aeec73c49038385428ec4c', NULL, '2024-05-30 06:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(1, 'UIN Sunan Kalijaga', 'partners_1617496652_uin.jpg', '<p>UIN Sunan Kalijaga<br></p>', '2021-04-04 00:37:32'),
(2, 'UGM', 'partners_1617496676_ugm.jpg', '<p>UGM</p>', '2021-04-04 00:37:56'),
(3, 'UMY', 'partners_1617496689_umy.png', '<p>UMY</p>', '2021-04-04 00:38:09'),
(4, 'UNY', 'partners_1617496703_uny.png', '<p>UNY</p>', '2021-04-04 00:38:23'),
(5, 'UAD', 'partners_1617496716_uad.png', '<p>UAD</p>', '2021-04-04 00:38:36'),
(7, 'UPN', 'partners_1617496766_upn.png', '<p>UPN</p>', '2021-04-04 00:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `pertanyaan` text NOT NULL,
  `pilihan_a` varchar(255) NOT NULL,
  `pilihan_b` varchar(255) NOT NULL,
  `pilihan_c` varchar(255) NOT NULL,
  `pilihan_d` varchar(255) NOT NULL,
  `jawaban` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `silabus`
--

CREATE TABLE `silabus` (
  `id` int(11) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(2, 'Budi rahardjo', 'tutors_1617208710_Budi Rahardjo.jpg', '<p>Budi Raharjo[1] berprofesi sebagai Dosen, praktisi IT dan ahli keamanan informasi. Technopreneur, penulis, peneliti, pembicara, konsultan information security, blogger, rocker, itulah beberapa profesi yang dilakoni oleh Ir. Budi Rahardjo, MSc, PhD. Dengan gayanya yang khas, dosen Teknik Elektro ITB ini turut memberikan kontribusi untuk perkembangan dan kemajuan teknologi informasi di Indonesia.<br></p>', '2021-04-02 22:21:41'),
(3, 'Romi Satrio Wahono', 'tutors_1617209015_Romi Satrio Wahono.jpg', '<p>Romi Satria Wahono. Lahir di Madiun, 2 Oktober 1974. Menyelesaikan pendidikan dasar dan menengah di SD Negeri Sompok 4 dan SMP Negeri 8 Semarang. Menamatkan SMA di SMA Taruna Nusantara, Magelang pada tahun 1993. Menempuh pendidikan S1 (B.Eng), S2 (M.Eng), dan S3 (Dr.Eng) (on-leave) di bidang Software Engineering di Department of Computer Science di Saitama University, Jepang pada tahun 1999, 2001, dan 2004. Juga menyelesaikan PhD di bidang Software Engineering dan Machine Learning di&nbsp; Faculty of Information and Computer Technology di Universiti Teknikal Malaysia Melaka pada tahun 2014. Mantan PNS dan peneliti Lembaga Ilmu Pengetahuan Indonesia (LIPI). Cisco certified instructor lulusan Nanyang Technological University (NTU), Singapore. Bidang minat penelitian adalah Software Engineering dan Machine Learning. Professional member dari asosiasi ilmiah IEEE Computer Society (90598687), ACM (6680333) dan PMI (2822015). Pendiri dan CEO dari PT Brainmatics Cipta Informatika, dan PT IlmuKomputerCom Braindevs Sistema, perusahaan yang bergerak di bidang pengembangan software, enterprise architecture, professional training dan certification center.</p><p>Memiliki pengalaman sebagai pengembang enterprise architecture dan IT blueprint di berbagai instansi pemerintah dan swasta, seperti Komisi Pemberantasan Korupsi, Kementrian Keuangan, Universitas Sriwijaya, dsb. Pemegang sertifikasi industri dan certified trainer berhubungan dengan bidang enterprise architecture (TOGAF), business process modeling (BPMN), systems analysis and design (OMG UML), IT service management (ITIL), data mining (RapidMiner) dan software development (IEEE, Oracle).</p><p>Aktif sebagai peneliti dan dosen, dimana ratusan publikasi penelitian dalam bentuk scientific paper, artikel, dan tutorial telah diterbitkan dalam berbagai proceedings conference, jurnal ilmiah, majalah, koran dan portal, bertaraf nasional maupun internasional. Selain menulis tetap di beberapa kolom majalah IT, juga menyempatkan diri untuk menulis bebas di situs blog pribadi di RomiSatriaWahono.Net. Terjun di dunia industri IT semenjak masa kuliah. Memulai karir sebagai software tester, programmer dan system analyst di beberapa software house dan game developer company di Jepang. Memiliki pengalaman sebagai engineer, konsultan, lecturer dan pembicara seminar, workshop, serta conference baik di Indonesia maupun Jepang.</p><p>Saat ini sebagai reviewer di beberapa journal terindeks SCOPUS yang diterbitkan oleh Elsevier, ACTAPress dan NASA. Di Indonesia, reviewer dari journal Telkomnika dan journal lokal lain yang terakreditasi oleh Dikti. Selain itu memiliki pengalaman sebagai reviewer untuk program hibah penelitian yang diselenggarakan oleh Universitas Indonesia dan beberapa universitas lain, dan juga reviewer untuk kegiatan tender pengembangan software di beberapa kementerian di Indonesia. Technical Assistance program hibah kompetisi dari kementrian pendidikan nasional untuk beberapa universitas di Jakarta, Padang, Lampung, Surabaya dan Yogyakarta. Editor-in-Chief dan reviewer dari journal ilmiah Journal of Software Engineering dan Journal of Intelligent Systems.</p><p>Menjadi juri pada berbagai event lomba dan kompetisi bertaraf nasional maupun internasional, diantaranya adalah: Lomba Pembuatan Multimedia Pembelajaran (LPMP) yang diselenggarakan oleh Kemdiknas, National Innovative Teacher Competition yang diselenggarakan oleh Microsoft, eLearning Award yang diselenggarakan oleh Pustekkom, INAICTA (Indonesia ICT Award) yang diselenggarakan oleh Kominfo dan Aspiluki, Kompetisi Smart Campus yang diselenggarakan oleh Telkom, Imagine Cup yang diselenggarakan oleh Microsoft, dan kompetisi pengembangan aplikasi dan situs web yang diadakan oleh kementrian keuangan, dan berbagai universitas lain di Indoneia.</p><p>Selain tema diatas juga memiliki minat dan aktif menulis dalam tema yang berhubungan dengan manajemen, leadership, self improvement, motivation dan keorganisasian. Aktifis organisasi kampus dan kemahasiswaan semasa menjadi mahasiswa di Saitama University. Menjadi Ketua Umum PPI Jepang (Perhimpunan Pelajar Indonesia di Jepang) periode tahun 2001-2003, dan Ketua Umum IECI Japan (asosiasi ilmiah di bidang elektronika dan informatika) periode tahun 2001-2002.</p><p>Mendapat penghargaan dari PBB pada pertemuan puncak WSIS (World Summit on Information Society) pada tahun 2003 di Jenewa, Swiss, dengan penghargaan the Continental Best Practice Examples in the Category eLearning (IlmuKomputer.Com).</p>', '2021-04-02 22:22:41'),
(4, 'Onno W Purbo', 'tutors_1617209038_onno w purbo.jpg', '<p>Onno Widodo Purbo (lahir di Bandung, Jawa Barat, 17 Agustus 1962; umur 58 tahun) adalah seorang tokoh dan pakar di bidang teknologi informasi asal Indonesia.[1] Selain pakar, Onno juga dikenal sebagai penulis, pendidik, dan pembicara seminar.[1] Sebagai aktivis Onno dikenal dalam upayanya memperjuangkan Linux. Karya inovatifnya diantaranya adalah Wajanbolic, sebagai upaya koneksi internet murah tanpa kabel dan RT/RW-Net sebagai jaringan komputer swadaya masyarakat untuk menyebarkan internet murah, serta penerapan Open BTS[1][2]</p><p>Ia memulai pendidikan akademis di ITB pada jurusan Teknik Elektro pada tahun 1981 dan lulus dengan predikat wisudawan terbaik, kemudian melanjutkan studi ke Kanada dengan beasiswa dari PAUME.</p><p>Ia juga aktif menulis dalam bidang teknologi informasi media, seminar, konferensi nasional maupun internasional dan percaya filosofi copyleft (sumber terbuka), banyak tulisannya dipublikasi secara gratis di internet.[1][3][4] Sebagai pakar teknologi Onno hanya menggunakan netbook dan telepon seluler Android merek lokal.[1].</p><p>Pada bulan November 2020, ia menerima penghargaan Postel Service Award dari Internet Society. Postel Service Award diberikan kepada Onno karena telah memberikan kontribusi luar biasa bagi perkembangan teknologi Internet di Indonesia.[5]</p>', '2021-04-02 22:20:53'),
(5, 'Ricky Elson', 'tutors_1617402687_Ricky Elson.jpg', '<p>Ricky Elson (lahir di Padang, Sumatra Barat, 11 Juni 1980; umur 40 tahun) adalah seorang teknokrat Indonesia yang ahli dalam teknologi motor penggerak listrik. Ia yang merancang bangun mobil listrik Selo bersama Danet Suryatama yang merancang bangun Tucuxi dianggap sebagai pelopor mobil listrik nasional.[1][2][3]</p><p>Ricky menempuh pendidikan tinggi teknologinya di Jepang, kemudian bekerja di sebuah perusahaan di negeri sakura itu. Selama 14 tahun di sana, Ricky telah menemukan belasan teknologi motor penggerak listrik yang sudah dipatenkan di Jepang.[4]</p><p>Tertarik dengan kemampuan Ricky untuk pengembangan teknologi mobil listrik, Menteri Negara Badan Usaha Milik Negara (BUMN), Dahlan Iskan meminta Ricky dan beberapa praktisi pengembang teknologi mobil listrik lainnya untuk bersinergi bersama Kementerian Riset dan Teknologi Indonesia, lembaga penelitian, beberapa universitas dan lembaga pemerintahan terkait, demi mempercepat pengembangan mobil listrik Indonesia. Bahkan Dahlan Iskan rela menghibahkan gajinya sebagai menteri kepada Ricky.[5]</p><p>Sebelum kuliah ke Jepang, Ricky Elson menamatkan sekolah menengahnya di SMA Negeri 5 Padang pada tahun 1998.[6]</p><p>Di pertengahan tahun 2013, Ricky dan timnya bekerja menyelesaikan beberapa purwarupa mobil listrik yang diberi nama Selo dan Gendhis yang digunakan pada KTT APEC yang telah dilaksanakan pada Oktober 2013 di Denpasar, Bali.[7] Namun kemudian proyek mobil listrik nasional itu menghadapi hambatan, karena peraturannya tidak segera keluar. Lelah menunggu kepastian tentang proyek tersebut yang tak kunjung jelas statusnya, ia kemudian kembali ke perusahaan tempat ia semula bekerja di Jepang.[1]</p><p>Kabar terakhir dari tokoh ini, ia telah kembali ke Indonesia dan pada kisaran 2011-2012 ia menggagas sebuah pusat riset yang ia namakan Lentera Angin Nusantara, bertempat di Dusun Lembur Tengah, Desa Ciheras, Kecamatan Cipatujah, Kabupaten Tasikmalaya, Jawa Barat.[8] [9] [10]</p>', '2021-04-02 22:31:27'),
(6, 'Adi Wirawan', 'tutors_1617402809_path4362-14.png', '<p>Adi Wirawan<br></p>', '2021-04-02 22:33:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `silabus`
--
ALTER TABLE `silabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `silabus`
--
ALTER TABLE `silabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
