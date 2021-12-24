-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 24 Des 2021 pada 07.25
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webmedia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `avatar`
--

CREATE TABLE `avatar` (
  `id_avatar` int(11) NOT NULL,
  `nama_gambar` varchar(125) NOT NULL,
  `ektensi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `avatar`
--

INSERT INTO `avatar` (`id_avatar`, `nama_gambar`, `ektensi`) VALUES
(1, 'default.png', 'png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `judul_blog` varchar(255) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar_blog` varchar(255) NOT NULL,
  `slug_blog` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `isi_blog` text NOT NULL,
  `yang_baca` int(11) NOT NULL,
  `dibuat` datetime NOT NULL,
  `lupdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `blog`
--

INSERT INTO `blog` (`id_blog`, `judul_blog`, `id_user`, `id_kategori`, `gambar_blog`, `slug_blog`, `pengarang`, `isi_blog`, `yang_baca`, `dibuat`, `lupdate`) VALUES
(1, 'Perang Armenia dan azerbaijan memanas', 5, 1, 'index2.jpeg', 'perang-armenia-dan-azerbaijan-memanas', 'Andi', '<p>Vestibulum sodales erat eros, quis hendrerit est vulputate id. Ut volutpat aliquet augue eget dictum. Integer lectus ligula, pulvinar ac metus pretium, lobortis rutrum justo. Integer vitae arcu id dui posuere rhoncus. Ut nibh nulla, volutpat eu viverra quis, vestibulum a quam. Vivamus nibh ex, malesuada in sapien et, ullamcorper vestibulum mauris. Vivamus efficitur lacus sit amet leo tempor, finibus bibendum orci rutrum. Sed vel consectetur tellus. Aliquam risus felis, semper vel laoreet et, tincidunt nec libero. Nunc sed luctus felis. Nunc egestas sem ac tellus placerat, id feugiat lectus interdum. Morbi eu leo quis lacus convallis interdum. Duis fringilla erat non magna facilisis, et pharetra lectus fermentum. Curabitur ac libero porttitor, porttitor felis eu, scelerisque urna. Nulla ullamcorper libero ac quam tincidunt ultrices vel id ante. Pellentesque at rutrum lacus.</p> <p>Suspendisse potenti. Pellentesque auctor tellus turpis, at hendrerit magna laoreet id. Sed ante urna, rutrum vitae ex et, dapibus dignissim nibh. Cras blandit porta leo vulputate pharetra. Proin feugiat maximus sapien at consequat. Nullam hendrerit orci vel elit lacinia maximus. Donec interdum, dolor vitae aliquam ornare, nunc dui semper arcu, sit amet consectetur tortor elit quis nunc. Donec vel laoreet dolor, maximus ornare enim. Fusce eleifend quis magna et hendrerit. Integer placerat gravida viverra. Nulla lectus augue, laoreet non iaculis viverra, volutpat ac nisl. Duis blandit diam nulla, vitae fermentum ex placerat at. Duis sit amet congue lectus, id euismod justo. Vestibulum tempor, eros in lobortis feugiat, enim leo rhoncus lectus, ac fermentum libero massa non felis. Nullam eros neque, ultricies porttitor hendrerit et, tincidunt id tellus. Nullam cursus cursus tincidunt.</p>\r\n', 0, '2020-07-17 14:03:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `kategori_nama` varchar(100) NOT NULL,
  `deskripsi_singkat` text NOT NULL,
  `kategori_slug` varchar(20) NOT NULL,
  `dibuat_tgl` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `kategori_nama`, `deskripsi_singkat`, `kategori_slug`, `dibuat_tgl`, `last_update`) VALUES
(1, 3, 'Politik', 'Politik, yang berarti dari, untuk, atau yang berkaitan dengan warga negara, adalah proses pembentukan dan pembagian kekuasaan dalam masyarakat yang antara lain berwujud proses pembuatan keputusan, khususnya dalam negara. ', 'politik', '2020-07-17 14:02:32', '2021-12-24 13:22:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komen` int(11) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `komen_status` int(11) NOT NULL,
  `komen_nama` varchar(255) NOT NULL,
  `komen_email` varchar(255) NOT NULL,
  `komen_isi` text NOT NULL,
  `tgl_komen` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak_developer`
--

CREATE TABLE `kontak_developer` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `github` text NOT NULL,
  `email` text NOT NULL,
  `youtube` text NOT NULL,
  `instagram` text NOT NULL,
  `facebook` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontak_developer`
--

INSERT INTO `kontak_developer` (`id`, `nama`, `foto`, `deskripsi`, `github`, `email`, `youtube`, `instagram`, `facebook`) VALUES
(1, 'Muhammad Yusuf Haryadi', 'yusuf.png', 'Saya merupakan seorang web developer\nyang memiliki pengalaman ini selama 1\ntahun lebih di industri start-up dan\nfreelance untuk membuat aplikasi\nwebsite dengan skala projek dari pemerintahan hingga event webinar. Selain keahlian ini saya bisa mengajar\nWeb, Bahasa Pemrograman ataupun hal\nyang\nberkaitan\ndengan\nTeknik\nInformatika.\ndari\nmulai\nDasar Pemrograman hingga Database karena saya pernah menjadi Pemateri untuk pelatihan intensif kelas pembuatan website dengan framework laravel dan bootstrap.', 'https://www.github.com/mYusufH882', 'myusufh882@gmail.com', 'https://www.youtube.com/channel/UCO1ViO5H8Yq5c_DwdoTwOkw', 'https://www.instagram.com/yusufcoding/', 'https://id-id.facebook.com/people/Muhammad-Yusuf-Haryadi/100027998081761/?hc_ref=ARTdhycwaQp36uiCn0PZcRXcogvBQsv_ubDQ5vYltFCRtQrcUfTx86DXZshBIA4nxdk&ref=nf_target');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `ttg_id` int(11) NOT NULL,
  `appname` varchar(25) NOT NULL,
  `judul_tentang` varchar(125) NOT NULL,
  `deskripsi_tentang` varchar(255) NOT NULL,
  `isi_tentang` text NOT NULL,
  `gambar_simpul` varchar(255) NOT NULL,
  `gambar_tentang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`ttg_id`, `appname`, `judul_tentang`, `deskripsi_tentang`, `isi_tentang`, `gambar_simpul`, `gambar_tentang`) VALUES
(1, 'WebMedia', 'Web Media Platform', 'Webmedia merupakan platform web yang menyediakan informasi berita', 'Webmedia merupakan platform web yang menyediakan informasi berita', '', 'tv.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `img_profil` varchar(255) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `di_update` datetime NOT NULL DEFAULT current_timestamp(),
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `img_profil`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `di_update`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(3, '127.0.0.1', 'administrator', '$2y$12$84XS1U0EcxKrfv3dFIfzKe9XT9iIP4gfd5yaEKq7U0j9aiJZzGa0K', 'admin@admin.com', 'default.png', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1640326901, '2021-08-18 16:56:42', 1, 'M Yusuf', 'Haryadi', 'Siber IT', '082115299543');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(20, 3, 1),
(22, 5, 1),
(17, 15, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`id_avatar`);

--
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komen`),
  ADD KEY `FK_Komentar_blog` (`id_blog`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`ttg_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id_avatar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `ttg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `FK_Komentar_blog` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id_blog`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
