-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Des 2021 pada 08.25
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sonyunara`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
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
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'erlangga.fie20@gmail.com', NULL, '2021-11-27 02:49:02', 0),
(2, '::1', 'erlangga.fie@gmail.com', NULL, '2021-11-27 02:50:09', 0),
(3, '::1', 'fathulislamerlangga@gmail.com', 3, '2021-11-27 03:01:48', 0),
(4, '::1', 'erlangga.fie20@gmail.com', 1, '2021-11-27 03:03:18', 0),
(5, '::1', 'fathulislamerlangga@gmail.com', 3, '2021-11-27 03:06:09', 0),
(6, '::1', 'fathulislamerlangga@gmail.com', 5, '2021-11-27 03:19:47', 0),
(7, '::1', 'erlangga.fie@gmail.com', NULL, '2021-11-27 03:30:00', 0),
(8, '::1', 'erlangga.fie@gmail.com', NULL, '2021-11-27 03:30:43', 0),
(9, '::1', 'erlangga.fie20@gmail.com', 7, '2021-11-27 03:31:30', 1),
(10, '::1', 'erlangga.fie@gmail.com', 9, '2021-11-28 21:01:33', 1),
(11, '::1', 'erlangga.fie@gmail.com', 9, '2021-11-29 03:08:30', 1),
(12, '::1', 'erlangga.fie@gmail.com', 9, '2021-11-29 03:20:58', 1),
(13, '::1', 'erlangga.fie@gmail.com', 9, '2021-11-29 03:21:36', 1),
(14, '::1', 'erlangga.fie@gmail.com', 9, '2021-11-29 03:58:32', 1),
(15, '::1', 'afiftrinasukha@gmail.com', 10, '2021-11-29 07:57:42', 1),
(16, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-04 02:47:06', 1),
(17, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-04 02:54:39', 1),
(18, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-04 03:13:23', 1),
(19, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-04 03:22:05', 1),
(20, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-08 01:55:27', 1),
(21, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-08 02:17:33', 1),
(22, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-08 03:08:25', 1),
(23, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-08 05:28:44', 1),
(24, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-08 05:33:49', 1),
(25, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-08 05:35:38', 1),
(26, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-08 07:17:52', 1),
(27, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-08 07:20:37', 1),
(28, '::1', 'erlangga.fie@gmail.com', NULL, '2021-12-08 07:22:02', 0),
(29, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-08 07:22:15', 1),
(30, '::1', 'erlangga.fie@gmail.com', 9, '2021-12-09 01:08:22', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-product', 'Manage All Product'),
(2, 'manage-profile', 'Manage user\'s profile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
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
-- Struktur dari tabel `auth_tokens`
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
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bestsaller`
--

CREATE TABLE `bestsaller` (
  `id` int(11) NOT NULL,
  `code` int(30) NOT NULL,
  `image` varchar(150) NOT NULL,
  `title` varchar(60) NOT NULL,
  `price` int(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `stock` int(4) NOT NULL,
  `rating` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bestsaller`
--

INSERT INTO `bestsaller` (`id`, `code`, `image`, `title`, `price`, `description`, `stock`, `rating`) VALUES
(1, 283940, 'https://img.sonyunara.com/files/goods/53386/1567390097_5.gif.webp', 'Salte Sneakers', 323000, 'Keep your feet warm and toasty in these wool blend socks. They have ribbed hems, a snug fit, and a nice crew length. These are best worn with low-cut sneakers.', 23, '4.5'),
(2, 364728, 'https://img.sonyunara.com/files/goods/68020/1608614920_5_uniq5fe458db0792e.gif.webp', 'Sweatshirt Warm', 320000, 'Keep your feet warm and toasty in these wool blend socks. They have ribbed hems, a snug fit, and a nice crew length. These are best worn with low-cut sneakers.', 32, '4.5'),
(3, 374091, 'https://img.sonyunara.com/files/goods/68092/1608627250_5.gif.webp', 'Sweatshirt up to the neck', 425000, 'Keep your feet warm and toasty in these wool blend socks. They have ribbed hems, a snug fit, and a nice crew length. These are best worn with low-cut sneakers.', 35, '4.0'),
(4, 467290, 'https://img.sonyunara.com/files/goods/68098/1608684314_5.gif.webp', 'Sweatshirt Woodford', 430000, 'Keep your feet warm and toasty in these wool blend socks. They have ribbed hems, a snug fit, and a nice crew length. These are best worn with low-cut sneakers.', 40, '4.2'),
(5, 874093, 'https://img.sonyunara.com/files/goods/68216/1609312408_5.gif.webp', 'Sweatshirt Character Casual', 483000, 'Keep your feet warm and toasty in these wool blend socks. They have ribbed hems, a snug fit, and a nice crew length. These are best worn with low-cut sneakers', 23, '4.5'),
(6, 901390, 'https://img.sonyunara.com/files/goods/61642/1588042491_5.gif.webp', 'Mini Cross Bag', 346000, 'Keep your feet warm and toasty in these wool blend socks. They have ribbed hems, a snug fit, and a nice crew length. These are best worn with low-cut sneakers.', 34, '4.4'),
(7, 493020, 'https://img.sonyunara.com/files/goods/36241/1516091985_5.jpg.webp', 'BackPack', 334000, 'Keep your feet warm and toasty in these wool blend socks. They have ribbed hems, a snug fit, and a nice crew length. These are best worn with low-cut sneakers.', 43, '4.5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id_brand` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id_brand`, `name`, `image`) VALUES
(1, 'the executive', 'https://dynamic.zacdn.com/wMZYiOrqAZqPfP2BYtZV2mSwt_c=/fit-in/x/filters:quality(80):fill(ffffff)/https://static-id.zacdn.com/cms/cw42/241x165_DESKTOPBRAND_EXECUTIVEBUY2GET40_42B1.jpg'),
(2, 'H&M', 'https://dynamic.zacdn.com/UAzjbPyoeNsVJh6NVHISe65pnbg=/fit-in/x/filters:quality(80):fill(ffffff)/https://static-id.zacdn.com/cms/cw42/241x165_DESKTOPBRAND_HM_42RE.jpg'),
(3, 'nike', 'https://dynamic.zacdn.com/FZ9bhHSrKCnWqhIptoQ8aTagbQs=/fit-in/x/filters:quality(80):fill(ffffff)/https://static-id.zacdn.com/cms/cw42/241x165_DESKTOPBRAND_NIKE40_W42B3.jpg'),
(4, 'toliver', 'https://dynamic.zacdn.com/n64M0G2-TbzN2q6eCk1n18vznt8=/fit-in/x/filters:quality(80):fill(ffffff)/https://static-id.zacdn.com/cms/cw42/241x165_DESKTOPBRAND_TOLLIVER_42B4.jpg'),
(5, 'palomino', 'https://dynamic.zacdn.com/YwKwep1eAL8vKRipdzCpVUqV1PM=/fit-in/x/filters:quality(80):fill(ffffff)/https://static-id.zacdn.com/cms/cw42/241x165_DESKTOPBRAND_ZAP_PALOMINOENJI_W_42B6.jpg'),
(6, 'levis', 'https://dynamic.zacdn.com/nx2JK9MVEKJbAa1VpXrzYaadyuU=/fit-in/x/filters:quality(80):fill(ffffff)/https://static-id.zacdn.com/cms/cw42/241x165_DESKTOPBRAND_LEVIS_42B7.jpg'),
(7, 'pomelo', 'https://dynamic.zacdn.com/5Ngnyx_wTdyTaizD16JiYVke-Gw=/fit-in/x/filters:quality(80):fill(ffffff)/https://static-id.zacdn.com/cms/cw42/241x165_DESKTOPBRAND_POMELO1111_42B8.jpg'),
(8, 'lesuport', 'https://dynamic.zacdn.com/aBgAjqwQ3o-9oG3xLKTZwdpWWQc=/fit-in/x/filters:quality(80):fill(ffffff)/https://static-id.zacdn.com/cms/cw42/241x165_DESKTOPBRAND_LESPORTSAC_4210.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `highlights`
--

CREATE TABLE `highlights` (
  `id` int(30) NOT NULL,
  `image` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `highlights`
--

INSERT INTO `highlights` (`id`, `image`) VALUES
(1, 'H1.png'),
(2, 'H2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
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
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1637919986, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(60) DEFAULT NULL,
  `user_image` varchar(150) NOT NULL DEFAULT 'man.png',
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'erlangga.fie@gmail.com', 'erlangga24', NULL, 'man.png', '$2y$10$/2W/CYfLK.ZBd4EjQWqMXOWm0E.ySqFJxi5TcQNMTele9ZR3NgmWm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-28 05:14:00', '2021-11-28 05:14:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `bestsaller`
--
ALTER TABLE `bestsaller`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indeks untuk tabel `highlights`
--
ALTER TABLE `highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bestsaller`
--
ALTER TABLE `bestsaller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `highlights`
--
ALTER TABLE `highlights`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
