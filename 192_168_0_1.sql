-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2024 pada 18.34
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus87`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'unturnedgegeh@gmail.com', 1, '2023-11-01 12:52:14', 1),
(2, '::1', 'unturnedgegeh@gmail.com', 1, '2023-11-01 12:52:37', 1),
(3, '::1', 'unturnedgegeh@gmail.com', 1, '2023-11-01 13:05:37', 1),
(4, '::1', 'unturnedgegeh@gmail.com', 1, '2023-11-02 07:11:13', 1),
(5, '::1', 'test@example.com', 3, '2023-12-05 16:18:05', 1),
(6, '::1', 'test@example.com', 3, '2023-12-05 16:22:00', 1),
(7, '::1', 'test@example.com', 3, '2023-12-05 16:22:33', 1),
(8, '::1', 'mih37134@gmail.com', 4, '2023-12-12 16:11:49', 1),
(9, '::1', 'test@example.com', NULL, '2023-12-26 07:06:30', 0),
(10, '::1', 'test@example.com', 5, '2023-12-26 07:07:17', 1),
(11, '::1', 'test@example.com', 5, '2023-12-26 07:21:41', 1),
(12, '::1', 'test@example.com', 5, '2023-12-26 10:14:48', 1),
(13, '::1', 'test@example.com', 5, '2023-12-26 10:48:29', 1),
(14, '::1', 'test@example.com', 5, '2023-12-26 10:57:13', 1),
(15, '::1', 'test@example.com', 5, '2023-12-26 10:58:48', 1),
(16, '::1', 'test@example.com', 5, '2023-12-26 11:02:04', 1),
(17, '::1', 'test@example.com', 5, '2023-12-26 11:04:27', 1),
(18, '::1', 'test@example.com', 5, '2023-12-26 11:06:47', 1),
(19, '::1', 'test@example.com', 5, '2023-12-26 11:11:03', 1),
(20, '::1', 'test@example.com', 5, '2023-12-26 11:12:09', 1),
(21, '::1', 'test@example.com', 5, '2023-12-26 11:13:20', 1),
(22, '::1', 'test@example.com', 5, '2023-12-26 11:13:48', 1),
(23, '::1', 'test@example.com', 5, '2023-12-26 11:14:21', 1),
(24, '::1', 'test@example.com', 5, '2023-12-26 11:17:01', 1),
(25, '::1', 'test@example.com', 5, '2023-12-26 11:19:14', 1),
(26, '::1', 'test@example.com', 5, '2023-12-26 11:35:30', 1),
(27, '::1', 'test@example.com', 5, '2023-12-26 11:43:29', 1),
(28, '::1', 'test@example.com', NULL, '2023-12-26 12:12:08', 0),
(29, '::1', 'test@example.com', 5, '2023-12-26 12:12:13', 1),
(30, '::1', 'test@example.com', 5, '2023-12-26 12:14:40', 1),
(31, '::1', 'test@example.com', 5, '2023-12-26 12:23:53', 1),
(32, '::1', 'test@example.com', 5, '2023-12-26 12:24:12', 1),
(33, '::1', 'test@example.com', 5, '2023-12-26 12:51:30', 1),
(34, '::1', 'test@example.com', 5, '2023-12-27 12:57:12', 1),
(35, '::1', 'test@example.com', 5, '2023-12-27 12:57:40', 1),
(36, '::1', 'test@example.com', 5, '2023-12-27 12:57:58', 1),
(37, '::1', 'test@example.com', 5, '2023-12-27 13:00:23', 1),
(38, '::1', 'test@example.com', 5, '2023-12-27 14:09:05', 1),
(39, '::1', 'test@example.com', 5, '2023-12-28 15:16:17', 1),
(40, '::1', 'test@example.com', 5, '2023-12-28 15:40:39', 1),
(41, '::1', 'test@example.com', 5, '2023-12-30 19:36:50', 1),
(42, '::1', 'test@example.com', NULL, '2024-01-01 15:08:56', 0),
(43, '::1', 'test@example.com', NULL, '2024-01-01 15:09:03', 0),
(44, '::1', 'admin', NULL, '2024-01-01 15:09:09', 0),
(45, '::1', 'test@example.com', 5, '2024-01-01 15:09:25', 1),
(46, '::1', 'test@example.com', 5, '2024-01-01 19:26:57', 1),
(47, '::1', 'test@example.com', 5, '2024-01-02 16:39:08', 1),
(48, '::1', 'test@example.com', 5, '2024-01-02 16:47:18', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datakarcis`
--

CREATE TABLE `datakarcis` (
  `id` varchar(12) NOT NULL,
  `jeniskendaraan` enum('0','1') NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `statusbayar` enum('0','1') NOT NULL,
  `waktuawal` time DEFAULT NULL,
  `waktuakhir` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Trigger `datakarcis`
--
DELIMITER $$
CREATE TRIGGER `history` AFTER INSERT ON `datakarcis` FOR EACH ROW BEGIN
    IF NEW.statusbayar = '0' THEN
        INSERT INTO history (id_datakarcis, nopol, waktuawal, history)
        VALUES (NEW.id, NEW.nopol, NEW.waktuawal, 'Kendaraan Masuk');
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `history_before_delete` BEFORE DELETE ON `datakarcis` FOR EACH ROW BEGIN
    INSERT INTO history (id_datakarcis, nopol, waktuawal, waktuakhir, history)
    VALUES (OLD.id, OLD.nopol, OLD.waktuawal, OLD.waktuakhir, 'karcis telah ditutup dan dihapus dari database');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `history_update` AFTER UPDATE ON `datakarcis` FOR EACH ROW BEGIN
    IF NEW.statusbayar = '1' AND OLD.statusbayar = '0' THEN
        INSERT INTO history (id_datakarcis, nopol, waktuawal,waktuakhir, history)
        VALUES (NEW.id, NEW.nopol, NEW.waktuawal,NEW.waktuakhir, 'Karcis Telah Dibayar');
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `id_datakarcis` varchar(12) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `waktuawal` time NOT NULL,
  `waktuakhir` time NOT NULL,
  `history` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id`, `id_datakarcis`, `nopol`, `waktuawal`, `waktuakhir`, `history`) VALUES
(34, 'GCSBTQ', 'G2658BR', '00:10:45', '00:00:00', 'Kendaraan Masuk'),
(35, 'ICXMQY', 'G8076WD', '00:10:47', '00:00:00', 'Kendaraan Masuk'),
(36, 'ICXMQY', 'G8076WD', '00:10:47', '00:00:00', 'Karcis Telah Dibayar'),
(37, 'ICXMQY', 'G8076WD', '00:10:47', '00:12:18', 'karcis telah ditutup dan dihapus dari database'),
(38, 'GCSBTQ', 'G2658BR', '00:10:45', '00:00:00', 'Karcis Telah Dibayar'),
(39, 'GCSBTQ', 'G2658BR', '00:10:45', '00:18:44', 'karcis telah ditutup dan dihapus dari database'),
(40, 'KSFUPV', 'G0746KB', '00:23:46', '00:00:00', 'Kendaraan Masuk'),
(41, 'KSFUPV', 'G0746KB', '00:23:46', '00:23:52', 'Karcis Telah Dibayar'),
(42, 'KSFUPV', 'G0746KB', '00:23:46', '00:23:52', 'karcis telah ditutup dan dihapus dari database');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'test@example.com', 'admin', '$2y$10$Mtcqy9FA.58YB3QYCBa0Huxfn.xJ6aeAl5/QS.FNxt/bpn3eG3.Zm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-12-26 07:07:10', '2023-12-26 07:07:10', NULL);

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
-- Indeks untuk tabel `datakarcis`
--
ALTER TABLE `datakarcis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
