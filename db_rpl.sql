-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2021 pada 00.25
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rpl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_23_100134_artikel', 2),
(5, '2021_06_23_100257_berita', 2),
(6, '2021_06_25_191313_dosen', 3),
(10, '2021_06_25_192303_penddosen', 4),
(11, '2021_06_25_192334_pengajarandosen', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id_artikel` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_artikel`
--

INSERT INTO `tb_artikel` (`id_artikel`, `judul`, `desc`, `image_path`, `created_at`, `updated_at`, `user_id`) VALUES
(4, 'Mengenal OpenGL', 'Bagi para pemain game, mungkin sudah tidak asing dengan nama “OpenGL”. Biasanya nama ini ditemui di pengaturan grafis dalam suatu game dan dijajarkan dengan nama lain seperti D3D, Vulkan, maupun Software. Meski sering dilihat, kebanyakan dari kita masih belum tahu maksud dari pengaturan itu. Mengapa suatu game memerlukan itu dan apa pengaruhnya pada game? Disini kita akan mencoba sedikit mengenal tentang hal tersebut, terutama pada bahasan utamanya yaitu mengenal OpenGL.<br><br>\r\nOpenGL merupakan API atau Application Programming Interface yang menghasilkan grafis 2D maupun 3D. OpenGL mendorong inovasi dan mempercepat pengembangan aplikasi dengan memasukkan serangkaian rendering yang luas, pemetaan tekstur, efek khusus, dan fungsi visualisasi yang kuat lainnya. Pengembang dapat memanfaatkan kekuatan OpenGL di semua platform desktop dan workstation yang populer, memastikan penyebaran aplikasi yang luas. Singkatnya, OpenGL adalah sistem yang memproses isi tampilan program. OpenGL juga merupakan API yang multi-platfrom, berarti ini dapat ditemukan selain di desktop saja, seperti Android, iOS, dsb. Dengan ini, suatu program seperti game dapat dengan mudah melakukan proses rendering hingga mendapatkan hasil yang baik setelah muncul di layar, juga melakukan pemrosesan tanpa kendala yang berlebih hingga program tetap berjalan dengan baik.<br><br>\r\nSeperti yang dikatakan sebelumnya, ada yang lain selain OpenGL, yaitu D3D/Direct3D, Vulkan, dan Software. Semuanya dalam dibandingkan langsung dalam program, baik dari hasil render-nya, kecepatan rendernya, maupun berapa banyak konsumsi daya yang dibutuhkan untuk melakukan render-nya', '60d3747855498.png', '2021-06-23 10:50:48', '2021-06-23 10:50:48', 1),
(6, 'Good Resources That are Available to all Students SCHOOLEDUCATION, SCHOOL, TEACHER0', 'A student who is at or below the median test score probably needs to do work to get the basic content down. Khan Academy is an excellent free source that can help students learn and practice basic content. However, don’t make the mistake of thinking that Khan Academy teaches test strategy. Khan Academy is the free starting point for mastering content areas that you are weak in; after that, move on to actual test strategies.\r\n\r\nA student who is at or below the median test score probably needs to do work to get the basic content down. Khan Academy is an excellent free source that can help students learn and practice basic content. However, don’t make the mistake of thinking that Khan Academy teaches test strategy. Khan Academy is the free starting point for mastering content areas that you are weak in; after that, move on to actual test strategies.', '60d38f282e07e.jpg', '2021-06-23 12:44:40', '2021-06-23 12:44:40', 1),
(7, 'SoC, tidak hanya prosessor!', '“Hp ini prosessornya udah pake AI”, “Yang ini pake prosessor gaming, dijamin main game apa aja lancar”, “Bagus yang ini, prosessornya hemat daya”.\r\n\r\nSebagian orang yang memerhatikan spesifikasi suatu perangkat pasti akan terpacu dengan otak perangkatnya tersebut yang lebih sering dikenal dengan prosessor. Dalam smartphone, mengatakan bahwa prosessor adalah bagian utama dari perangkat tersebut tidaklah salah, hanya saja masih belum tepat.\r\nMungkin kita pernah mendengar nama-nama seperti Snapdragon, Mediatek, maupun Exynos, dan pikiran kita langsung tertuju bahwa itu adalah sebuah prosessor dalam smartphone. Seperti yang dikatakan sebelumnya, mengatakan prosessor tidak salah tetapi belum sepenuhnya tepat, karena sebenarnya itu adalah SoC atau System on Chip.\r\n\r\nSeperti namanya, System on Chip berarti terdapat suatu sistem yang ditempatkan pada chip. Dikatakan sistem karena tidak hanya prosessor yang ada di dalamnya, namun terdapat berbagai komponen lain yang membangun sistem untuk smartphone, seperti GPU (Graphics Processing Unit), RAM, DSP (Digital Signal Processor), konektivitas modem, Wifi, dll, ISP (Image Signal Processor), fitur keamanan, dan lain sebagainya. Bahkan saat ini sudah ada prosessornya khusus untuk menjalankan dan mengendalikan AI (Artificial Intelligence) atau kecerdasan buatan untuk mengimprovisasi pemrosesan sistem pada smartphone menjadi lebih baik.\r\n\r\nMengingat bahwa saat ini telah hadir suatu benda yang ukurannya lebih kecil dari ruas jari kita yang dapat diisi dengan banyak fitur canggih, maka sebaiknya menjadi pengingat bagi kita untuk tidak kalah pintar dari ponsel pintar kita sendiri.', '60d38f72d3bd4.jpg', '2021-06-23 12:45:54', '2021-06-23 12:45:54', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `judul`, `desc`, `image_path`, `created_at`, `updated_at`) VALUES
(2, 'Prodi RPL Mengikuti Halal Bi Halal bersama Civitas Academica Kampus UPI di Cibiru', 'Prodi RPL bersama Civitas Academica Kampus UPI di Cibiru menggelar acara silaturahmi dalam rangka halal bihalal melalui daring dengan menggunakan media zoom meeting yang disediakan oleh para panitia halal bihalal live dari kampus UPI di Cibiru. Kegiatan tersebut merupakan pertama kali dalam sejarah Kampus UPI di Cibiru melaksanakan halal bihalal melalui daring yang tentunya dalam rangka pencegahan Covid-19.\r\nPuncak acara kegiatan silaturahmi tersebut adalah tausiah yang disampaikan oleh Bpk. Ust. Anang, M.Ag. beliau juga sebagai dosen UIN SGD Bandung. Dalam tausiahnya beliau menyampaikan tentang inti silaturahmi dan silaturahmi dimasa pencegahan Covid-19.', '60d3852e28a3f.png', '2021-06-23 12:02:06', '2021-06-23 12:02:06'),
(3, 'First Episode dari Series “Rekan Podcast” – HimaRPL', 'HimaRPL melakukan siaran perdana “Rekan Podcast”, Rekayasa Perangkat Lunak Podcast. dengan Judul “Nanti Kita Cerita Tentang Ramdhan Tahun Ini”.\r\nEpisode ini kita membahas tentang sedikit flashback soal Ramadhan tahun ini. Seperti kita ketahui Ramadhan kali ini jauh berbeda dengan tahun-tahun sebelumnya. Kondisi pandemi ini minimbulkan berbagai kebijakan yang tetunya sangat berpengaruh terhadap budaya dan kebiasaan yang biasa kita lakukan. Apa iya kita sudah menjalani Ramadhan di tahun ini dengan sebaik-baiknya? Dibahas secara mendalam bersama @alfiannurulyaqien (IG), dan dipandu oleh @fffavzn (IG).', '60d38807f03a4.png', '2021-06-23 12:14:16', '2021-06-23 12:14:16'),
(4, 'HimaRPL meluncurkan series “Rekan Podcast”', 'Himpunan Mahasiswa RPL meluncurkan series “Rekan Podcast”, Rekayasa Perangkat Lunak Podcast.\r\nDi series podcast ini akan banyak pembahasan dari mahasiswa RPL UPI Kampus Cibiru. Di samping itu podcast ini berfungsi juga sebagai sarana mencurahkan isi hati dan berbagai pengetahuan dengan kreasi tanpa batas.', '60d3884819156.jpg', '2021-06-23 12:15:20', '2021-06-23 12:15:20'),
(5, 'Prospek Karir Lulusan Rekayasa Perangkat Lunak (RPL) – UPI', 'Peluang karir lulusan Rekayasa Perangkat Lunak (RPL) merupakan salah satu yang paling diminati dan berkembang pesat saat ini terutama dalam era industri 4.0 baik sebagai IT Professional, Technopreuneur maupun Akademisi.\r\n\r\nDan merupakan salah satu prospek karir lowongan kerja terbesar menurut salah satu situs pencari kerja ternama di Indonesia, jobstreet.com', '60d388cdc3faf.jpg', '2021-06-23 12:17:33', '2021-06-23 12:17:33'),
(6, 'UPI Kampus di Cibiru Mulai Pembangunan Gedung Asrama Bertingkat', 'Kampus UPI di Cibiru sedang melakukan pembangunan gedung asrama bertingkat empat, pembangunan ini dibiayai oleh kementerian PUPR.\r\n\r\nDengan adanya pembangunan asrama baru tersebut kampus UPI diharapkan memiliki asrama yang layak huni, terutama bisa mendukung kegiatan perkuliahan. Mudah-mudahan pembangunan asrama ini berjalan dengan lancar sesuai yang direncanakan.', '60d3895431e85.png', '2021-06-23 12:19:48', '2021-06-23 12:19:48'),
(7, 'Prodi RPL mengikuti Rapat Dinas Kelembagaan secara Daring Kampus UPI di Cibiru', 'Program studi RPL mengikuti rapat dinas kelembagaan yang diselenggarakan oleh Kampus UPI di Cibiru, Rapat diselenggarakan pada hari Kamis, 30 April 2020 dengan menggunakan Zoom Cloud Meeting System yang dimulai pada pukul 10:00 WIB hingga pukul 13:00 WIB.\r\n\r\nRapat kelembagaan ini diharapkan menjadi salah satu solusi dalam melakukan kegiatan kampus dan program kerja yang telah dilaksanakan dimasa pencegahan Covid-19.', '60d389dcf04cb.png', '2021-06-23 12:22:04', '2021-06-23 12:22:04'),
(8, 'Dies Natalis ke-1 Prodi RPL', 'test', '60d38a8c2c1b6.png', '2021-06-23 12:25:00', '2021-06-23 12:25:00'),
(9, 'Prodi RPL Kampus UPI Cibiru Siap Menerima Mahasiswa Baru Milenial', 'Tahun 2020 ini Program Studi Rekayasa Perangkat Lunak (RPL) Kampus UPI di Cibiru akan melaksanakan penerimaan mahasiswa baru melalui tiga jalur penerimaan yaitu SNMPTN, SBMPTN, dan SM UPI. Tahun 2019 yang lalu, penerimaan mahasiswa baru hanya melalui dua jalur penerimaan, yaitu SBMPTN dan SM UPI dengan jumlah pendaftar yang cukup fantastis sebagai prodi baru yaitu sebanyak 708 orang, sedangkan daya tampung hanya untuk 80 orang saja (dua kelas). Dengan banyaknya peminat atau calon mahasiswa untuk memasuki prodi RPL Kampus UPI Cibiru pada tahun yang lalu, Ketua Program Studi RPL yaitu M. Iqbal Ardimansyah, M.T. bersama dengan dosen-dosen RPL yang semuanya berjumlah 6 orang telah jauh-jauh hari mempersiapkan berbagai hal, terutama melakukan pengkajian dan penyempurnaan kurikulum serta proses pembelajaran yang berkualitas untuk memberikan layanan terbaik kepada para mahasiswa era milenial. Saat ini juga sedang dilakukan pembangunan laboratorium komputer RPL yang representatif dengan menggunakan dana pengembangan laboratorium dari Universitas Pendidikan Indonesia.\r\n\r\nProgram Studi Rekayasa Perangkat Lunak (RPL) atau software engineering merupakan salah satu program studi unggulan Universitas Pendidikan Indonesia (UPI) yang berlokasi di Kampus UPI Cibiru Jalan Raya Cibiru km. 15 Kecamatan Cileunyi Kabupaten Bandung. Kampus UPI di Cibiru sendiri saat ini memiliki empat program studi eksisting yaitu Program Studi S1 Pendidikan Guru Sekolah Dasar (PGSD), Program Studi S1 Pendidikan Guru Anak Usia Dini (PGPAUD), Program Studi S1 Pendidikan Multimedia, dan Program Studi S1 Rekayasa Perangkat Lunak (RPL). Direncanakan pada tahun 2020 ini akan dibuka dua program studi baru yaitu Program Studi S-1 Teknik Komputer dan jenjang Magister (S2) Program Studi Pendidikan Guru Sekolah Dasar (PGSD). Program Studi Teknik Komputer sudah memperoleh pengesahan dari BAN-PT tertanggal 8 April 2020 dengan nomor keputusan: 28/SK/BAN-PT/MinAkred/S/IV/2020 dan izin penyelenggaraan dari Rektor UPI melalui Peraturan Rektor UPI Nomor 027 Tahun 2020 tentang Pembukaan Program Studi Teknik Komputer Program Sarjana pada Kampus UPI di Cibiru.\r\n\r\nProgram Studi RPL Kampus UPI di Cibiru berdiri dengan membawa semangat untuk mewujudkan visi UPI yakni leading and outstanding University atau Universitas yang unggul dan pelopor melalui kontribusinya terhadap penyelenggaraan Tridharma Perguruan Tinggi yaitu melaksanakan pendidikan, penelitian, dan pengabdian kepada masyarakat yang terkait dengan pengembangan teknologi perangkat lunak dalam skala nasional maupun internasional.\r\n\r\nTenaga Dosen Program Studi RPL Kampus UPI di Cibiru merupakan lulusan Universitas terkemuka baik dalam negeri maupun luar negeri seperti Waseda University di Jepang, Institut Teknologi Bandung (ITB), dan Telkom University yang memiliki kompetensi profesional dalam bidang software engineering, project management, data mining, game development, artificial intelligence, ubiquitous computing, dan internet of things.\r\n\r\nBagi calon mahasiswa milenial sangat cocok dan tepat menjadikan Program Studi RPL di Kampus UPI Cibiru ini menjadi program studi pilihan untuk melanjutkan studi. Program studi ini pada dasarnya menekankan pemerolehan kemampuan dalam merancang dan mengembangkan perangkat lunak (software) mencakup pengetahuan bagaimana membangun sebuah perangkat lunak sistem (system software) dan perangkat lunak penunjang (tool software). Adapun gambaran ringkas mengenai beberapa mata kuliah inti yang dipelajari di program studi RPL Kampus UPI Cibiru diantaranya: (1) Pengembangan Perangkat Lunak; (2) Analisa Kebutuhan, Konstruksi dan Penjaminan Mutu Perangkat Lunak; (3) Pemrograman Desktop, Mobile, Web dan Pengembangan Game; (4) Manajemen Proyek Perangkat Lunak; (5) Rekayasa Data dan Inteligensi Bisnis; (6) Ubiquitous Computing. Selain itu, para mahasiswa akan dibekali pula dengan wawasan kewirausahaan, kemandirian, serta kerja sama tim untuk menambah kompetensi agar lulusannya mampu berkompetisi dalam dunia industri teknologi.\r\n\r\nDilihat dari prospek karir di masa mendatang, program studi ini sangat menjanjikan. Saat ini berbagai raksasa bisnis dunia lahir dalam bidang industri teknologi dan berjalan dengan perangkat lunak seperti Google, Amazon, Facebook, Microsoft, Grab, Tokopedia, OVO dan perusahaan lainnya yang akan terus berkembang pesat. Lulusan Program Studi RPL mempunyai peluang untuk bekerja sebagai Professional IT, Technopreneur, dan Akademisi. Sebagai IT Professional berpeluang untuk berkarir sebagai Requirement Engineer, Analis Sistem (System Analyst), Analis Sistem Bisnis (Business System Analyst), Perancang Sistem (System Designer), Programmer, Arsitek Aplikasi (Application Architect), Manajer Proyek pengembangan sistem informasi (Project Manager), dan perancang antarmuka pengguna (UI designer). Sebagai Technopreneur berpeluang untuk bekerja sebagai konsultan IT, menyediakan jasa pengembangan sistem informasi (software specialist). Sebagai Akademisi mempunyai peluang untuk bekerja sebagai pengajar dan peneliti di lembaga Pemerintahan maupun perusahaan swasta, seperti: Apple, Google, Facebook, dll.\r\n\r\nKehadiran Program Studi Rekayasa Perangkat Lunak (RPL) di Kampus UPI Cibiru diharapkan mampu menjawab tantangan Pemerintah Indonesia terhadap pengembangan sumber daya manusia (SDM) di bidang teknologi informasi dan komunikasi (TIK).', '60d38ad597280.png', '2021-06-23 12:26:13', '2021-06-23 12:26:13'),
(10, 'Keputusan Rektor Tentang Pemberian Bantuan Biaya Pengganti Internet Bagi Mahasiswa', 'Sistem belajar di kampus telah dirubah menjadi Kuliah From Home bagi seluruh mahasiswa UPI dari pertengahan bulan Maret sampai akhir bulan Mei 2020.\r\n\r\nPenggunaan media secara daring membutuhkan jaringan internet, maka dari itu UPI memberikan bantuan biaya pengganti internet bagi mahasiswa di lingkungan Universitas Pendidikan Indonesia.', '60d38afb5434b.jpg', '2021-06-23 12:26:51', '2021-06-23 12:26:51'),
(11, 'Implementasi Pelaksanaan Ujian Tengah Semester (UTS) secara Daring', 'Ada yang berbeda di pelaksanaan Ujian Tengah Semester (UTS) kali ini. Jika ditahun sebelumnya dilaksanakan di kampus maka ditahun ini proses pelaksanaannya dilakukan secara daring (Online) akibat pandemi Covid-19 yang sedang merebak di Indonesia.\r\n\r\nNamun hal tersebut tidak memudarkan Prodi RPL dalam menyelenggarakan ujian tersebut, Ujian Tengah Semester (UTS) dilakukan secara daring dengan memanfaatkan Aplikasi unggulan seperti Zoom, Google Meet dan juga Aplikasi dari UPI seperti SPOT dan SPADA.', '60d38b35b00f3.png', '2021-06-23 12:27:49', '2021-06-23 12:27:49'),
(12, 'Surat Semangat Direktur UPI Kampus di Cibiru untuk para Dosen, Tendik dan Mahasiswa di Masa Covid-19', 'test', '60d38b509606c.jpg', '2021-06-23 12:28:16', '2021-06-23 12:28:16'),
(13, 'Pelantikan HimaRPL Generasi Pertama', 'Jum’at, 06 Maret 2020 Ketua Program Studi RPL UPI Kampus di Cibiru M. Iqbal Ardimansyah, S.T., M.Kom. Melantik Pengurus HIMA RPL Generasi Pertama.\r\n\r\nAcara Pelantikan berlangsung khidmat yang diselenggarakan di Aula Bumi Siliwangi Kampus UPI Cibiru.\r\n\r\nMuhammad Rayhan Wibowo sebagai ketua BE HIMA dan Guntur Ramadan sebagai ketua DP juga Jajaran Pengurusnya resmi dilantik. Selamat mengemban amanah, semangat dan terus berkarya.', '60d38b709ab94.png', '2021-06-23 12:28:48', '2021-06-23 12:28:48'),
(14, 'UPI menempati Peringkat #1 di Indonesia pada “QS World University Ranking by Subject in Education”', 'Dengan mengucap syukur atas berkat rahmat Yang Maha Kuasa, Pada Tahun 2020, UPI menempati Peringkat #251-300 Dunia dan Peringkat #1 di Indonesia pada “QS World University Ranking by Subject in Education”.\r\n\r\nAtas pencapaian ini, Pimpinan UPI menyampaikan apresiasi dan ucapan terima kasih yang besar kepada seluruh dosen, mahasiswa, tenaga kependidikan, alumni, dan stakeholder UPI lainnya yang telah bahu membahu bekerja, berkarya, dan berdedikasi untuk pencapaian UPI tersebut. Semoga Tuhan YME membalasnya dengan berlipat ganda.\r\n\r\nRektor UPI\r\nProf. Dr. R. Asep Kadarohman, M.Si.', '60d38b9102142.jpg', '2021-06-23 12:29:21', '2021-06-23 12:29:21'),
(15, 'Edaran Rektor Terkait Covid-19 di Universitas Pendidikan Indonesia', 'Berkaitan dengan mewabahnya Virus Corona (Covid-19) saat ini, maka Rektor UPI, Prof. Dr. Asep Kadarohman, M.Si memberikan himbauan kepada seluruh civitas akademik UPI dalam upaya pencegahan dari penyebaran virus ini.', '60d38bb054f45.jpg', '2021-06-23 12:29:52', '2021-06-23 12:29:52'),
(16, 'Sosialisasi UPI Sebagai World Class University Tahun 2020', 'Tim Sosialisasi untuk perangkingan Universitas Pendidikan Indonesia yang dipimpin oleh Wakil Rektor Bidang Riset, Kemitraan, dan Usaha Prof. Dr. Didi Sukyadi, MA beserta rekan-rekannya didampingi oleh Direktur Kampus UPI Cibiru Dr. Asep Herry Hernawan, M.Pd mengadakan sosialisasi perangkingan UPI kepada Dosen dilingkungan Kampus UPI Cibiru.\r\n\r\nMenurut Data Scopus per 1 Januari 2020, menurut penuturan Dr. Eng. Asep Bayu Dani N., Universitas Pendidikan Indonesia menempati posisi ke 15 jumlah jurnal yang terindeks Scopus.\r\n\r\nDengan adannya sosialisasi ini diharapkan dosen UPI dapat terpacu untuk semakin produktif dalam berkarya, guna mewujudkan UPI sebagai World Class University di tahun 2020.', '60d38bdc3faeb.jpg', '2021-06-23 12:30:36', '2021-06-23 12:30:36'),
(17, 'Deep Learning, AI yang Paling Mutakhir', 'Deep Learning (DL) adalah teknik dalam NN yang menggunakan teknik tertentu seperti Restricted Boltzmann Machine (RBM) untuk mempercepat proses pembelajaran dalam NN yang menggunakan lapis yang banyak atau lebih dari 7 lapis. Dengan adanya DL, waktu yang dibutuhkan untuk training akan semakin sedikit karena masalah hilangnya gradien pada propagasi balik akan semakin rendah. 3,4 Beberapa jenis DL antara lain Deep Auto Encoder, Deep Belief Nets, Convolutional NN, dan lain lain.\r\n\r\nDeep Learning adalah salah satu jenis algoritma jaringan saraf tiruan yang menggunakan metadata sebagai input dan mengolahnya menggunakan sejumlah lapisan tersembunyi (hidden layer) transformasi non linier dari data masukan untuk menghitung nilai output. Algortima pada Deep Learning memiliki fitur yang unik yaitu sebuah fitur yang mampu mengekstraksi secara otomatis. Hal ini berarti algoritma yang dimilikinya secara otomatis dapat menangkap fitur yang relevan sebagai keperluan dalam pemecahan suatu masalah. Algortima semacam ini sangat penting dalam sebuah kecerdasan buatan karena mampu mengurangi beban pemrograman dalam memilih fitur yang eksplisit. Dan, algortima ini dapat digunakan untuk memecahkan permasalahan yang perlu pengawasan (supervised), tanpa pengawasan (unsupervised), dan semi terawasi (semi supervised).\r\n\r\nDalam jaringan saraf tiruan tipe Deep Learning setiap lapisan tersembunyi bertanggung jawab untuk melatih serangkaian fitur unik berdasarkan output dari jaringan sebelumnya. Algortima ini akan menjadi semakin komplek dan bersifat abstrak ketika jumlah lapisan tersembunyi (hidden layer) semakin bertambah banyak. Jaringan saraf yang dimiliki oleh Deep Learning terbentuk dari hirarki sederhana dengan beberapa lapisan hingga tingkat tinggi atau banyak lapisan (multi layer). Berdasarkan hal itulah Deep Learning dapat digunakan untuk memecahkan masalah kompleks yang lebih rumit dan terdiri dari sejumlah besar lapisan transformasi non linier.\r\n\r\nTerdapat 2 jenis pada Deep Learning, antara lain:\r\n\r\nDeep Learning untuk Pembelajaran Tanpa Pengawasan\r\n            Deep Learning tipe ini digunakan pada saat label dari variabel target tidak tersedia dan korelasi nilai yang lebih tinggi harus dihitung dari unit yang diamati untuk menganalisis polanya.\r\n\r\nHybrid Deep Networks (Deep Learning gabungan)\r\n            Pendekatan tipe ini bertujuan agar dapat dicapai hasil yang baik dengan menggunakan pembelajaran yang diawasi untuk melakukan analisis pola atau dapat juga dengan menggunakan pembelajaran tanpa pengawasan.\r\n\r\nOleh Ari Sandy Kurniawan', '60d38c2217d9d.jpg', '2021-06-23 12:31:46', '2021-06-23 12:31:46'),
(18, 'Mengenal Cloud Gaming', 'Apakah cloud gaming itu? Cloud gaming adalah kemampuan untuk memainkan gim dalam segala perangkat tanpa harus memiliki perangkat keras yang memadai untuk memainkannya serta tidak memerlukan penyimpanan lokal gim. Diibaratkan konsep cloud gaming seperti menonton video melalui situs video streaming, dimana pengguna dapat memberikan input yang diberikan baik berupa gerakan kursor oleh tetikus maupun ketikan dari papan ketik.\r\n\r\nCloud gaming bekerja dengan mengutamakan peran internet. Dengan internet yang stabil, maka kebutuhan teknis untuk latensi akan dibatasi untuk menghindari adanya hambatan atau delay.\r\n\r\nArsitektur atau rangkaian yang dilalui oleh cloud gaming ini mencakup kedalam tiga poin penting, hal ini sering disebut dengan General Architecture of a Cloud Gaming System (CGS) antara lain adalah 3D Graphics Streaming, Video Streaming, dan Video Streaming with Post-Rendering Operation. Terdapat dua sisi yang dipisahkan, yaitu sisi dari klien atau pengguna dan sisi dari pemilik platform atau server :\r\n\r\n1. Sisi Klien\r\n\r\nPada sisi ini, pengguna atau klien akan memiliki modul User Interaction sebagai awal proses dan modul Video Player/Decoder sebagai akhir proses. Modul user interaction memiliki fungsi yaitu untuk merekam semua gerakan atau masukan yang dilakukan oleh pengguna melalui piranti masukan. Data-data rekaman berikut kemudian akan disalurkan sisi lainnya yaitu sisi platform atau server. Setelah data-data tersebut diolah di sisi platform atau server, maka hasil olahan berikutnya akan kembali ke sisi klien menuju Video Player/Decoder\r\n\r\n2. Sisi Paltform atau Server\r\n\r\nPemilik dari platform atau server akan berperan besar di sisi platform atau server. Fungsi dari sisi platform atau server ini merupakan hal yang paling penting, baik dari segi kapasitas bagaimana perangkat keras dan perangkat lunak harus dapat melakukan pemroresan data yang dikirim dari sisi klien. Terdapat empat modul yang berada di sisi platform atau server ini, antara lain game logic, CPU/GPU rendering, rendering command atau video encoding, dan data transmission. \r\n\r\nAdanya konsep cloud gaming orang-orang dapat bermain gim secara cross platform meskipun spesifikasi perangkat inkompatibel dengan spesifikasi minimum dari suatu gim. Internet stabil dan cepat yang dimana menjadi bayangan dari harapan teknologi 5G juga dapat membantu konsep cloud gaming ini berjalan secara lancar. Dalam hal ini, sudah ada platform yang dirilis oleh perusahaan yang cukup terkenal di dunia, yaitu Stadia oleh Google, dan Geforce Now oleh Nvidia. Selain itu, untuk ruang lingkup Indonesia, muncul sebuah startup cloud gaming yaitu Skyegrid\r\n\r\nOleh : Muhammad Raihan Satrio', '60d38c4e55716.jpg', '2021-06-23 12:32:30', '2021-06-23 12:32:30'),
(19, 'Chatbot, Komputer Pintar yang Bisa Ngobrol', 'Udah pernah dengar chatbot sebelumnya? Chatbot berasal dari kata chatter bot, atau computer robot yang mampu melakukan percakapan. Dengan perkembangan teknologi yang makin canggih ini, sampai-sampai chating pun bisa dilakukan oleh robot.\r\n\r\nChatbot merupakan program computer yang memiliki kemampuan mengobrol dengan manusia menggunakan Natural Language Processing (NLP). Jadi si computer ini diberikan kemampuan kecerdasan buatan (AI) untuk bisa melakukan percakapan tersebut. Bot ini menggunakan keyword untuk menemukan jawaban yang paling tepat ketika mengobrol.\r\n\r\nMenggunakan chatbot akan memudahkan pekerjaan, apalagi dalam bidang bisnis. Chatbot bisa digunakan sebagai customer service ketika menerima keluhan customer. Walaupun begitu, ada beberapa dampak adanya chatbot ini, berikut kelebihan dan kekurangan chatbot:\r\n\r\nKelebihan\r\n\r\n1. Bisa standby 24 jam\r\n2. membantu pekerjaan customer service\r\n3. memberikan respon cepat dalam membalas pesa\r\nKekurangan\r\n\r\n1. Hanya bisa menjawab pertanyaan yang umum\r\n2. Tidak bisa menyelesaikan keseluruhan masalah apalagi masalah kompleks\r\n3. Kedepannya bisa mematikan pekerjaan customer service\r\nItulah penjelasan sedikit mengenai chatbot, di RPL tentunya kita akan mempelajari lebih dalam mengenai AI dan bagaimana chatbot ini bekerja. Semoga dengan penjelasan ini menambah wawasan kalian', '60d38c9027ecd.jpg', '2021-06-23 12:33:36', '2021-06-23 12:33:36'),
(20, '7 Bahasa Pemrograman dan Framework Populer Tahun 2020', 'Memilih bahasa pemrograman atau framework untuk membangun suatu sistem.\r\n\r\nBahasa Pemrograman dapat kita sebut sebagai bahasa komputer. Bahasa Pemrograman adalah sebuah instruksi dasar untuk dapat memerintahkan komputer yang sedang digunakan. Namun perkembangan teknologi begitu cepat sehingga banyak bahasa pemrograman muncul untuk  memudahkan programmer untuk membangun suatu sistem. Memilih bahasa pemrograman tidak hanya membangun sistem yang memiliki speeddan timeline development, namun disamping itu juga mempengaruhi karir dimasa yang akan datang.\r\n\r\nBerikut 7 bahasa pemrograman dan framework yang popoluer di tahun 2020.\r\nJava/Kotlin – Spring Framework\r\n\r\nJava merupkan bahasa pemrograman yang sampai saat ini popular sampai saat ini. Java tetap menjadi strandar pemrograman dan banyak digunakan. Selain itu juga peluang pekerjaan pada yang menggunakan bahasa pemrogramman ini masih sangat terbuka luas.\r\nKotlin merupakan cross-platform, dapat digunakan antar sistem operasi yang berbeda-beda. Kotlin dibuat berbasis java dengan standar versi yang bergantung pada Java Class Library, namun tetap memiliki syntax yang lebih ringkas.\r\nGolang\r\n\r\nBahas Go dikenal juga dengan Golang yang merupakan bahasa pemrograman yang bersifat open-source yang dibuat oleh Google dengan ukuran file yang lebih kecil (10X) dibandingkan dengan Spring jar.\r\n\r\nPython – Django Framework\r\n\r\nDjango framework merupakan salah satu frame python terbaik yang digunakan untuk membangun web application, bersifar free dan open-source. Framwork ini menawarkan stability, paket library, dan dokumen yang didukung oleh komuniti.\r\n\r\nNode.js – Express\r\n\r\nJava script merupakan salah satu bahasa pemrograman yang paling kuat dan paling cepat berkembang sampai saat ini. Namun saat ini java script dapat digunakan khusus untuk membangun web application, backend yang terintegrasi dengan database, desktop application, bahkan mobile.\r\nAngular – Web Framework\r\n\r\nAngular merupakan script yang bersifat open-source web application yang dibangun oleh Google. Angular mensupport web, mobile dan desktop.\r\nVue.js\r\n\r\nVue dibuat oleh Evan You yang pada saat itu sebagai karyawan di Google divisi AngluarJS dan framework javascript yang populer dan berkembang sangat cepat sampai saat ini dikarenakan simple penggunaannya.Ionic Framework\r\n\r\nIonic Framework, framework open-source SDK yang bertipe hybrid mobile apps. Programmer dapat membangun mobile apps menggunakan framework javascript.\r\n\r\nSumber : https://medium.com/swlh/the-7-programming-languages-frameworks-to-learn-in-2020-6f9ac923ec5d', '60d38d0aad104.jpg', '2021-06-23 12:35:38', '2021-06-23 12:35:38'),
(21, 'Dosen Prodi RPL menjadi Juri di PILMAPRES Tingkat Kampus UPI di Cibir TAHUN 2020', 'Cibiru-. Dalam rangka meningkatkan prestasi dan menciptakan budaya akademik yang baik dikalangan mahasiswa dengan pelaksanaan Pemilihan Mahasiswa Berprestasi (Pilmapres) tahun 2020, Kampus UPI Cibiru menggelar pemaparan karya tulis ilmiah mahasiswa di Auditorium Kampus UPI Cibiru pada tanggal 7 Februari 2020. Pemaparan Karya tulis ilmiah mahasiswa diikuti oleh sebanyak 14 orang mahasiswa dari program studi PGSD, PDPAUD, dan Prodi Pendidikan Multimedia dilingkungan Kampus UPI Cibiru. Pelaksanaan Pemaparan Karya Tulis Ilmiah dibuka oleh Direktur Kampus UPI CIbiru Dr. H. Asep Herry Hernawan, M.Pd yang sebelumnya Dr. Ai Sutini, M.Pd sebagai Ketua Pelaksana menyampaikan laporan kegiatan tersebut. Pada sambutannya, Direktur mengharapkan mahasiswa Kampus UPI Cibiru dapat berlanjut ketingkat pemilihan tingkat nasional 2020.\r\n\r\nMahasiswa Memaparkan Karya Tulis ilmiah di depan Tim Penilai yang disaksikan oleh mahasiswa lainnya dengan waktu terbatas juga adanya tanggapan dari para Tim Penilai yang terdiri dari para dosen Kampus UPI Cibiru yaitu : Dr. Yunus Abidin, M.Pd, Endah SIlawati, M.Pd., Feri Hidayatullah F., S.Pd., M.T., Raditya Muhammad, M.T., dan Asyifa Imanda Septiana, M.Eng. Mahasiswa berprestasi peringkat pertama pada pemilihan tingkat Kampus Daerah akan diikut sertakan pada Pembinaan dan Pemilihan Mahasiswa Berprestasi Tingkat Universitas yang akan dilaksanakan pada tanggal 19 Februari – 4 Maret 2020 yang akan datang.', '60d38d360a854.jpg', '2021-06-23 12:36:22', '2021-06-23 12:36:22'),
(22, 'Rapat Persiapan Perkuliahan Semester Genap TA 2019/2020', 'Hari Jumat tanggal 31 Januari 2020, ketua program studi RPL UPI Cibiru, Bapak M. Iqbal Ardimansyah, S.T., M.Kom mengundang seluruh dosen dan tendik RPL UPI untuk menghadiri rapat yang diadakan di Delapan Padi Resto Bandung. Rapat ini membahas beberapa bekal untuk perkuliahan semester genap TA 2019/2020 yang akan segera dilaksanakan awal Februari nanti.\r\n\r\nPada rapat tersebut disampaikan kaprodi terkait kontrak kuliah yang dilakukan mahasiswa apakah sudah sesuai atau belum. Selain itu Pembimbing Akademik harus mengecek jadwal perkuliahan apabila terdapat jadwal yang bentrok agar diatur ulang.\r\n\r\nSelain itu, Pak kaprodi juga menyampaikan hal-hal yang berkaitan dengan kegiatan belajar-mengajar dikelas, seperti penilaian mahasiswa, kebutuhan alat dan bahan praktikum, modul, dan lain sebagainya.\r\n\r\nDi akhir rapat, Pak kaprodi mengingatkan kembali bahwa tugas dosen tidak hanya mengajar saja, namun mendidik. Selain itu diingatkan pula terkait penelitian dan pengabdian masyarakat yang harus dilakukan sebagai tugas pokok dan fungsi dosen.', '60d38d8dc0a91.jpg', '2021-06-23 12:37:49', '2021-06-23 12:37:49'),
(23, 'Dosen RPL ikuti Training of Trainers USAID JAPRI', '29 – 30 Januari 2020 diadakan Training of Trainers yang diikuti oleh 30 Dosen UPI pengampu  matakuliah kewiraushaan dari berbagai program studi dan kampus daerah, salah satunya dari dosen program studi rekayasa perangkat lunak (RPL) UPI Kampus Cibiru. Acara ini diadakan di Fakultas Pendidikan Ekonomi dan Bisnis, Classroom lantai 5.\r\n\r\nProgram JAdi Pengusaha MandiRI (JAPRI) adalah program yang didanai oleh Badan Pembangunan Internasional Amerika Serikat (USAID), berfokus kepada pengembangan kewirausahaan, dan diimplementasikan oleh IIE (Institute of International Education) dengan sub pelaksana: Prestasi Junior Indonesia (PJI), dan Mien R Uno Foundation (MRUF). Ketika ekonomi Indonesia terus tumbuh, ketimpangan ekonomi juga meningkat, dan penduduk yang hidup di dekat atau di bawah garis kemiskinan berisiko untuk semakin tertinggal. Kewirausahaan memberikan peluang penting bagi kaum muda yang kurang mampu dan rentan, dan mahasiswa untuk meningkatkan mata pencaharian mereka, menciptakan peluang ekonomi bagi diri mereka sendiri dan orang lain di komunitas mereka, dan berkontribusi terhadap pembangunan ekonomi Indonesia.', '60d38dbcc9913.jpg', '2021-06-23 12:38:36', '2021-06-23 12:38:36'),
(24, 'Technical Meeting Kegiatan Training of Trainers (ToT) Dosen UPI', 'Setiabudi, Bandung – University Center UPI, Meeting Room II Lantai 3 pada hari selasa, 28 Januari 2020 diadakan Technical Meeting Training of Trainers (ToT) untuk dosen UPI dari berbagai program studi termasuk kampus daerah, dan dari Program studi rekayasa perangkat lunak (RPL) diwakili oleh Bp. Hendriyana. Pada technical meeting dihadiri oleh Rektor Universitas Pendidikan Indonesia bapak Prof. Dr. H. Rd. Asep Kadarohman, M.Si dan Direktur Human Capacity and Partnership USAID Indonesia, Mr. Thomas Crehan.\r\n\r\nKegiatan ini bertujuan mengajak dosen pengampu matakuliah kewirausahaan untuk menularkan bakat wirausaha kepada mahasiswa UPI.', '60d38de0cc42c.jpg', '2021-06-23 12:39:12', '2021-06-23 12:39:12'),
(25, 'Pelatihan Dekorasi Toko Online untuk Komunitas Kampus Shopee Bandung', 'Komunitas KSB (Kampus Shopee Bandung) merupkan salah satu wadah yang berisikan sejumlah entrepreneur atau wirasusaha yang memiliki usaha pada platform shopee yang berlokasi di kota Bandung dengan berbagai macam jenis usaha yang berbeda-beda. Salah satu program kerja KSB ialah BEBENAH (Belajar Bareng Ahinya) yang mengusung topik mendekorasi toko (foto produk, frame foto produk, dan banner toko) menggunakan aplikasi pengolah foto.\r\n\r\nKegiatan ini berlangsung pada hari senin, 27 Januari 2020 bertempat di Snack n Stay dengan menghadirkan pemateri dari salah satu dosen program studi Rekayasa Perangkat Lunak, Bapak Hendriyana.', '60d38dfdac198.jpg', '2021-06-23 12:39:41', '2021-06-23 12:39:41'),
(26, 'Program Studi Rekayasa Perangkat Lunak (RPL) mengikuti Silaturahmi Idul Fitri 1440H Kampus UPI Cibiru', 'Program studi rekayasa perangkat lunak (RPL) mengikuti Silaturahmi Idul Fitri 1440 H yang di selenggarakan oleh Kampus UPI di Cibiru pada hari Kamis tanggal 13 Juni 2019 bertempat di Auditorium Bumi Siliwangi Kampus UPI di Cibiru. Silaturahim Idul FItri ini diselenggarakan dalam rangka memperkuat tali silaturahim antar pimpinan, dosen, pegawai, dan mahasiswa di lingkungan Kampus UPI Cibiru beserta elemen masyarakat dan kepolisian di lingkungan sekitar Kampus UPI Cibiru. Pada acara Silaturahmi ini dihadiri oleh Direktur Kampus UPI CIbiru, Wakil Direktur, para Ketua Prodi, Para Kasubbag, Para Dosen serta para tenaga kependidikan di lingkungan Kampus UPI di Cibiru, tak lupa acara ini juga dihadiri oleh para pensiunan Kampus Cibiru baik tenaga pendidikan maupun dosen.\r\n\r\nAcara silaturahim disertai dengan materi yang disampaikan oleh Prof. Dr. H. Juntika Nurikhsan, M.Pd. yang tak lain merupakan Direktur Kampus UPI CIbiru Periode 2007– 2011, Prof. Juntika menyampaikan materi mengenai urgensi untuk menjaga tali silaturahim yang manfaatnya tidak hanya dirasakan di dunia, tapi juga di akhirat kelak.', '60d38e351e36d.png', '2021-06-23 12:40:37', '2021-06-23 12:40:37'),
(27, 'Program Studi RPL mengikuti Rapat Kelembagaan UPI Kampus di Cibiru', 'Direktur Kampus UPI Cibiru, Bapak Dr. Herry Hernawan, M.Pd mengundang seluruh dosen termasuk dosen dari program studi rekayasa perangkat lunak (RPL) dan tendik Kampus UPI Cibiru untuk melaksanakan rapat kelembagaan. Rapat ini diselenggarakan di gedung baru UPI Kampus di Cibiru. Sebelumnya, direktur UPI Kampus di Cibiru mengucapkan terima kasih kepada seluruh pihak atas terselenggaranya perkuliahan semester ganjil TA 2019/2020.\r\n\r\nPada rapat tersebut, Bapak Dr. Herry Hernawan, M.Pd membahas visi UPI Kampus di Cibiru yaitu sebagai penyangga utama universitas. Menurut beliau, untuk kedepannya beliau ingin mengembangkan UPI Kampus di Cibiru sebagai penyangga dan etalase universitas. Berkaitan dengan hal itu, beliau memaparkan mengenai kondisi UPI Kampus di Cibiru saat ini yaitu:\r\n\r\nUPI Kampus di Cibiru sudah ISO 9001:2015\r\nDua program studi sudah berakreditasi unggul (A)\r\nDua program studi lainnya baru minimum Ban-PT\r\nTahun ini ada usulan 2 program studi baru\r\nJumlah dosen yang ada saat ini adalah 54 orang yang terdiri dari 30 dosen PGSD, 12 dosen PGPAUD, 6 dosen Multimedia, dan 6 dosen RPL.\r\nSelain itu, Bapak Dr. Herry Hernawan, M.Pd menyampaikan target-target yang berkaitan dengan kemahasiswaan, diantaranya ialah:\r\n\r\nMahasiswa harus difasilitasi\r\nPublikasi mahasiswa\r\nProgram penalaran mahasiswa\r\nProgram minat dan bakat\r\nInkubasi kemahasiswaan\r\nPrestasi akademik\r\nStudent Exchange\r\nSelanjutnya, kegiatan rapat diisi dengan pemaparan masing-masing ketua program studi UPI Kampus di Cibiru yang terdiri dari PGSD, PGPAUD, Multimedia, dan RPL. Masing-masing kaprodi memaparkan kegiatan-kegiatan serta evaluasi perkuliahan selama semester ganjil TA 2019/2020 kemarin.', '60d38e89dc70c.jpg', '2021-06-23 12:42:01', '2021-06-23 12:42:01'),
(28, 'Pengenalan “Recommender Systems”', 'Recommender Sytems adalah sebuah perangkat lunak dan teknik menyediakan saran suatu item produk yang berguna untuk pengguna.\r\n\r\nRecommender Sytems adalah sebuah perangkat lunak dan teknik menyediakan saran suatu item produk yang berguna untuk pengguna.\r\n\r\nEvaluasi Recommender System\r\n\r\nAdapun untuk experiment evaluasi dengan melakukan koleksi data baik dengan kualitatif maupun kuantitatif.\r\n\r\nSystem Recommender dalam beberapa multidisiplin\r\n\r\nRecommender system like Information Retirieval, mempunyai kebanyakan masalah pada Filtering dan Perankingan.\r\n\r\nTopik dan Tantangan\r\n\r\n1. Skabilitas algoritma dengan dataset yang besar dan real-world datasets.\r\n\r\nMenentukan bagaimana menanamkan teknik rekomendasi inti dalam sistem operasional yang nyata dan bagaimana menghadapi set besar dan dinamis dari data yang dihasilkan oleh interaksi dari pengguna dengan (peringkat, preferensi, ulasan, dll) item.\r\n\r\n2. Proactive recommender systems\r\n\r\nRecommender system dapat memberikan informasi lebih sekalipun tidak diminta.\r\n\r\n3. Pelayanan privasi dalam recommender systems\r\n\r\nKarakteristik recommender systemsyang mengkoleksi preferensi data pengguna membuat selanjutnya harus memikirkan bagaimana melindungi data tersebut agar tidak dimanfaatkan oleh semacam malicious users.\r\n4. Memberikan keragaman produk pada pengguna\r\n\r\n5. Mengintegrasikan pemantauan jangka panjang dan jangka pendek pada pembangunan recommender system.\r\n\r\nRecommender system dibagi menjadi 2 kelas, jangka pendek dan jangka panjang dengan menggabungkan semua data transaksi, dengan begitu akan lebih terfokus dalam implementasinya.\r\n\r\n6. Pemodelan pengguna umum dan spesifik dapat di handle dengan system dan domain aplikasi\r\n\r\nPemodelan dapat dilakukan secara generic tapi tidak bisa menghandle perbedaan, guna menjadi lebih umum digunakalah teknik hybrid.\r\n\r\n7. Pendistribusian recommender systems yang beroperasi di jaringan terbuka\r\n\r\nModel komputasi dari sebagian terbesar dari RSs menganut arsitektur client-server biasa, hal ini menjadi tantangan bagaimana agar komputasi menjadi lebih effisien.\r\n\r\n8. Recommender dapat mengoptimalkan urutan rekomendasi\r\n\r\nMeningkatkan kualitas rekomendasi yang diberikan oleh system berdasarkan pendekatan yang lebih sederhana: satu kali permintaan / tanggapan.\r\n\r\n9. Recommenders di desain dapat beroperasi pada mobile devices and usage contexts\r\n\r\nKomputasi mobile yang muncul sebagai platform alami yang paling untuk komputasi personal.\r\n\r\nSumber :\r\n\r\nRecommender Systems Handbook\r\n\r\nFrancesco Ricci · Lior Rokach · Bracha Shapira ·Paul B. Kantor', '60d38ecd15f28.jpg', '2021-06-23 12:43:09', '2021-06-23 12:43:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `id_dosen` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_dosen`
--

INSERT INTO `tb_dosen` (`id_dosen`, `nama`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Raditya Muhammad, S.T., M.T.', '60d63cbd4c81d.jpg', '2021-06-25 13:29:49', '2021-06-25 13:29:49'),
(2, 'Hendriyana, S.T., M.Kom.', '60d63d310f016.jpg', '2021-06-25 13:31:45', '2021-06-25 13:31:45'),
(3, 'Mochamad Iqbal Ardimansyah, S.T., M.Kom.', '60d63d4ddae34.jpg', '2021-06-25 13:32:13', '2021-06-25 13:32:13'),
(4, 'Asyifa Imanda Septiana, S.Pd., M.Eng.', '60d63d6d67b14.jpg', '2021-06-25 13:32:45', '2021-06-25 13:32:45'),
(5, 'Indira Syawanodya, S.Kom., M.Kom.', '60d63d9351127.jpg', '2021-06-25 13:33:23', '2021-06-25 13:33:23'),
(6, 'Dian Anggraini, S.St., M.T.', '60d63dbd4660d.jpg', '2021-06-25 13:34:05', '2021-06-25 13:34:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pendidikan_dosen`
--

CREATE TABLE `tb_pendidikan_dosen` (
  `id_pendidikan` int(10) UNSIGNED NOT NULL,
  `id_dosen` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_pendidikan_dosen`
--

INSERT INTO `tb_pendidikan_dosen` (`id_pendidikan`, `id_dosen`, `nama`, `created_at`, `updated_at`) VALUES
(1, 1, 'S1 : Teknik Telekomunikasi, Telkom University', '2021-06-25 13:58:22', '2021-06-25 13:58:22'),
(2, 1, 'S2 : Teknik Elektro, Institut Teknologi Bandung', '2021-06-25 13:58:48', '2021-06-25 13:58:48'),
(3, 2, 'S1 : Informatika, Universitas Pasundan', '2021-06-25 13:58:58', '2021-06-25 13:58:58'),
(4, 2, 'S2 : Informatika, Telkom University', '2021-06-25 13:59:05', '2021-06-25 13:59:05'),
(5, 3, 'S1 : Teknik Informatika, STMIK LPKIA Bandung', '2021-06-25 13:59:14', '2021-06-25 13:59:14'),
(6, 3, 'S2 : Informatika, Telkom University', '2021-06-25 13:59:22', '2021-06-25 13:59:22'),
(7, 4, 'S1 : Pendidikan Ilmu Komputer, Universitas Pendidikan Indonesia', '2021-06-25 13:59:34', '2021-06-25 13:59:34'),
(8, 4, 'S2 : Information, Production and System, Waseda University, Jepang', '2021-06-25 13:59:44', '2021-06-25 13:59:44'),
(9, 5, 'S1 : Teknik Informatika, Telkom University', '2021-06-25 13:59:56', '2021-06-25 13:59:56'),
(10, 5, 'S2 : Informatika, Telkom University', '2021-06-25 14:00:05', '2021-06-25 14:00:05'),
(11, 6, 'D4 : Teknik Komputer Jaringan dan Media Digital, Institut Teknologi Bandung', '2021-06-25 14:00:12', '2021-06-25 14:00:12'),
(12, 6, 'S2 : Teknik Elektro, Institut Teknologi Bandung', '2021-06-25 14:00:22', '2021-06-25 14:00:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengajaran_dosen`
--

CREATE TABLE `tb_pengajaran_dosen` (
  `id_pengajaran` int(10) UNSIGNED NOT NULL,
  `id_dosen` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_pengajaran_dosen`
--

INSERT INTO `tb_pengajaran_dosen` (`id_pengajaran`, `id_dosen`, `nama`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kalkulus', '2021-06-25 14:11:22', '2021-06-25 14:11:22'),
(2, 1, 'Matematika, Sains, Teknologi, dan Rekayasa', '2021-06-25 14:11:30', '2021-06-25 14:11:30'),
(3, 2, 'Dasar Pemrograman', '2021-06-25 14:11:40', '2021-06-25 14:11:40'),
(4, 3, 'Matematika, Sains, Teknologi, dan Rekayasa', '2021-06-25 14:11:55', '2021-06-25 14:11:55'),
(5, 3, 'Bahasa Inggris', '2021-06-25 14:12:04', '2021-06-25 14:12:04'),
(6, 4, 'Pengantar Rekayasa Perangkat Lunak', '2021-06-25 14:12:15', '2021-06-25 14:12:15'),
(7, 4, 'Bahasa Inggris', '2021-06-25 14:12:23', '2021-06-25 14:12:23'),
(8, 5, 'Dasar Pemrograman', '2021-06-25 14:12:34', '2021-06-25 14:12:34'),
(9, 6, 'Pengantar Rekayasa Perangkat Lunak', '2021-06-25 14:12:44', '2021-06-25 14:12:44'),
(10, 6, 'Kalkulus', '2021-06-25 14:12:54', '2021-06-25 14:12:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_publikasi_dosen`
--

CREATE TABLE `tb_publikasi_dosen` (
  `id_publikasi` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_dosen` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_publikasi_dosen`
--

INSERT INTO `tb_publikasi_dosen` (`id_publikasi`, `nama`, `created_at`, `updated_at`, `id_dosen`) VALUES
(1, 'Comparison of accuracy level K-nearest neighbor algorithm and support vector machine algorithm in classification water quality status', '2021-06-25 14:13:22', '2021-06-25 14:13:22', 6),
(2, 'Design and implementation of system prediction and traffic conditions visualization in two dimensional map (case study: Bandung city)', '2021-06-25 14:13:34', '2021-06-25 14:13:34', 6),
(3, 'Design and implementation of web based real time chat interfacing server', '2021-06-25 14:13:40', '2021-06-25 14:13:40', 6),
(4, 'Improvement on Stemmer Algorithm for Indonesian Language With Spellchecker', '2021-06-25 14:13:57', '2021-06-25 14:13:57', 5),
(5, 'Morphological Rule Improvement Stemmer for Indonesian Language.', '2021-06-25 14:14:08', '2021-06-25 14:14:08', 5),
(6, 'Measuring Performance of Aerial Projection of 3D Hologram Object (3DHO)', '2021-06-25 14:14:17', '2021-06-25 14:14:17', 4),
(7, 'Real-time remote projection using 3D aerial holographic image interface', '2021-06-25 14:14:25', '2021-06-25 14:14:25', 4),
(8, 'Implementation of Haptic Feedback in 3D Aerial Holographic Image Interface', '2021-06-25 14:14:32', '2021-06-25 14:14:32', 4),
(9, 'IOT ~ Prototipe Alat Sortir Bola Berdasarkan Perbedaan Warna Menggunakan Led RGB Dan LDR Berbasis Mikrokontroler', '2021-06-25 14:14:43', '2021-06-25 14:14:43', 3),
(10, 'Data Mining ~ Preprocessing Matrix Factorization for Solving Data Sparsity on Memory-Based Recommender System', '2021-06-25 14:14:51', '2021-06-25 14:14:51', 3),
(11, 'Data Mining ~ Studi Komparasi Algoritma Silimaritas pada Prediksi Rating berbasis Item pada Collaborative Filtering Studi Kasus Data Review Restoran', '2021-06-25 14:14:58', '2021-06-25 14:14:58', 3),
(12, 'Context Information from Customer Review Amazon', '2021-06-25 14:15:06', '2021-06-25 14:15:06', 2),
(13, 'Sistem Informasi Tempat Kost Berbasis Webservice di Sekitar Universitas Islam Nusantara menggunakan Metode SAW (Simple Additive Weighting)', '2021-06-25 14:15:13', '2021-06-25 14:17:30', 2),
(14, 'Ring Topology Optimization for Wireless Sensor Network: A New Heuristic Method', '2021-06-25 14:15:21', '2021-06-25 14:15:21', 1),
(15, 'Assessment of IT Governance of Bakti Internet Access Program Based on the COBIT5 Framework (Case Study: Balai Latihan Kerja Kendari)', '2021-06-25 14:15:28', '2021-06-25 14:15:28', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'farhan ff', 'faruzaan@upi.edu', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, '2021-06-23 02:36:44'),
(8, 'rpl.kd-cibiru.upi.edu', 'rpl_cibiru@upi.edu', NULL, '$2y$10$9R6Pqy2m.FL/9y8H2kK0cOYDeQ5ZVuUZxGWTi..0iCwY2C6cDh6na', NULL, '2021-06-25 15:24:02', '2021-06-25 15:24:02');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `tb_artikel_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `tb_pendidikan_dosen`
--
ALTER TABLE `tb_pendidikan_dosen`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indeks untuk tabel `tb_pengajaran_dosen`
--
ALTER TABLE `tb_pengajaran_dosen`
  ADD PRIMARY KEY (`id_pengajaran`);

--
-- Indeks untuk tabel `tb_publikasi_dosen`
--
ALTER TABLE `tb_publikasi_dosen`
  ADD PRIMARY KEY (`id_publikasi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id_artikel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tb_dosen`
--
ALTER TABLE `tb_dosen`
  MODIFY `id_dosen` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_pendidikan_dosen`
--
ALTER TABLE `tb_pendidikan_dosen`
  MODIFY `id_pendidikan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_pengajaran_dosen`
--
ALTER TABLE `tb_pengajaran_dosen`
  MODIFY `id_pengajaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_publikasi_dosen`
--
ALTER TABLE `tb_publikasi_dosen`
  MODIFY `id_publikasi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD CONSTRAINT `tb_artikel_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
