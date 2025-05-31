-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 31 Bulan Mei 2025 pada 10.37
-- Versi server: 8.0.30
-- Versi PHP: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galeri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `photo_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `photo_id`, `created_at`, `updated_at`) VALUES
(2, 2, 6, '2025-05-30 04:57:02', '2025-05-30 04:57:02'),
(3, 2, 8, '2025-05-30 05:10:25', '2025-05-30 05:10:25'),
(4, 2, 9, '2025-05-30 05:12:28', '2025-05-30 05:12:28'),
(7, 2, 9, '2025-05-30 05:28:59', '2025-05-30 05:28:59'),
(8, 2, 9, '2025-05-30 05:29:03', '2025-05-30 05:29:03'),
(9, 2, 9, '2025-05-30 05:29:06', '2025-05-30 05:29:06'),
(10, 2, 9, '2025-05-30 05:29:06', '2025-05-30 05:29:06'),
(11, 2, 9, '2025-05-30 05:29:07', '2025-05-30 05:29:07'),
(12, 2, 9, '2025-05-30 05:29:07', '2025-05-30 05:29:07'),
(13, 2, 9, '2025-05-30 05:29:07', '2025-05-30 05:29:07'),
(14, 2, 9, '2025-05-30 05:29:08', '2025-05-30 05:29:08'),
(15, 2, 9, '2025-05-30 05:29:08', '2025-05-30 05:29:08'),
(16, 2, 9, '2025-05-30 05:29:08', '2025-05-30 05:29:08'),
(17, 2, 9, '2025-05-30 05:29:09', '2025-05-30 05:29:09'),
(18, 2, 6, '2025-05-30 06:27:13', '2025-05-30 06:27:13'),
(19, 2, 6, '2025-05-30 06:27:14', '2025-05-30 06:27:14'),
(20, 2, 6, '2025-05-30 06:27:14', '2025-05-30 06:27:14'),
(21, 2, 6, '2025-05-30 06:27:15', '2025-05-30 06:27:15'),
(22, 2, 6, '2025-05-30 06:27:15', '2025-05-30 06:27:15'),
(23, 2, 6, '2025-05-30 06:27:16', '2025-05-30 06:27:16'),
(24, 2, 6, '2025-05-30 06:27:16', '2025-05-30 06:27:16'),
(25, 2, 6, '2025-05-30 06:27:16', '2025-05-30 06:27:16'),
(26, 2, 6, '2025-05-30 06:27:17', '2025-05-30 06:27:17'),
(27, 2, 6, '2025-05-30 06:27:17', '2025-05-30 06:27:17'),
(28, 2, 6, '2025-05-30 06:27:17', '2025-05-30 06:27:17'),
(29, 2, 6, '2025-05-30 06:27:18', '2025-05-30 06:27:18'),
(30, 2, 6, '2025-05-30 06:27:18', '2025-05-30 06:27:18'),
(31, 2, 6, '2025-05-30 06:27:18', '2025-05-30 06:27:18'),
(32, 2, 6, '2025-05-30 06:27:19', '2025-05-30 06:27:19'),
(33, 1, 10, '2025-05-30 07:38:28', '2025-05-30 07:38:28'),
(34, 1, 10, '2025-05-30 07:38:31', '2025-05-30 07:38:31'),
(35, 1, 10, '2025-05-30 07:38:31', '2025-05-30 07:38:31'),
(36, 1, 10, '2025-05-30 07:38:32', '2025-05-30 07:38:32'),
(37, 1, 10, '2025-05-30 07:38:32', '2025-05-30 07:38:32'),
(38, 1, 10, '2025-05-30 07:38:32', '2025-05-30 07:38:32'),
(39, 1, 10, '2025-05-30 07:38:33', '2025-05-30 07:38:33'),
(40, 1, 10, '2025-05-30 07:38:33', '2025-05-30 07:38:33'),
(41, 1, 10, '2025-05-30 07:38:33', '2025-05-30 07:38:33'),
(42, 1, 10, '2025-05-30 07:38:34', '2025-05-30 07:38:34'),
(43, 1, 10, '2025-05-30 07:38:34', '2025-05-30 07:38:34'),
(44, 1, 10, '2025-05-30 07:38:34', '2025-05-30 07:38:34'),
(45, 1, 10, '2025-05-30 07:38:35', '2025-05-30 07:38:35'),
(46, 1, 10, '2025-05-30 07:38:35', '2025-05-30 07:38:35'),
(47, 1, 10, '2025-05-30 07:38:35', '2025-05-30 07:38:35'),
(48, 1, 10, '2025-05-30 07:38:36', '2025-05-30 07:38:36'),
(49, 1, 10, '2025-05-30 07:38:36', '2025-05-30 07:38:36'),
(50, 1, 10, '2025-05-30 07:38:36', '2025-05-30 07:38:36'),
(51, 1, 10, '2025-05-30 07:38:37', '2025-05-30 07:38:37'),
(52, 1, 10, '2025-05-30 07:38:37', '2025-05-30 07:38:37'),
(53, 1, 10, '2025-05-30 07:38:37', '2025-05-30 07:38:37'),
(54, 1, 10, '2025-05-30 07:38:37', '2025-05-30 07:38:37'),
(55, 1, 10, '2025-05-30 07:38:38', '2025-05-30 07:38:38'),
(56, 1, 10, '2025-05-30 07:38:38', '2025-05-30 07:38:38'),
(57, 1, 10, '2025-05-30 07:38:38', '2025-05-30 07:38:38'),
(58, 1, 10, '2025-05-30 07:38:39', '2025-05-30 07:38:39'),
(59, 1, 10, '2025-05-30 07:38:39', '2025-05-30 07:38:39'),
(60, 1, 10, '2025-05-30 07:38:39', '2025-05-30 07:38:39'),
(61, 1, 10, '2025-05-30 07:38:40', '2025-05-30 07:38:40'),
(62, 1, 10, '2025-05-30 07:38:40', '2025-05-30 07:38:40'),
(63, 1, 10, '2025-05-30 07:38:40', '2025-05-30 07:38:40'),
(64, 1, 10, '2025-05-30 07:38:41', '2025-05-30 07:38:41'),
(65, 1, 10, '2025-05-30 07:38:41', '2025-05-30 07:38:41'),
(66, 1, 10, '2025-05-30 07:38:41', '2025-05-30 07:38:41'),
(67, 1, 10, '2025-05-30 07:38:41', '2025-05-30 07:38:41'),
(68, 1, 12, '2025-05-30 08:05:08', '2025-05-30 08:05:08'),
(69, 1, 12, '2025-05-30 08:05:09', '2025-05-30 08:05:09'),
(70, 1, 12, '2025-05-30 08:05:09', '2025-05-30 08:05:09'),
(71, 1, 12, '2025-05-30 08:05:09', '2025-05-30 08:05:09'),
(72, 1, 12, '2025-05-30 08:05:10', '2025-05-30 08:05:10'),
(73, 1, 12, '2025-05-30 08:05:10', '2025-05-30 08:05:10'),
(74, 1, 12, '2025-05-30 08:05:10', '2025-05-30 08:05:10'),
(75, 1, 12, '2025-05-30 08:08:57', '2025-05-30 08:08:57'),
(76, 1, 13, '2025-05-30 08:30:57', '2025-05-30 08:30:57'),
(77, 1, 13, '2025-05-30 08:30:57', '2025-05-30 08:30:57'),
(78, 1, 13, '2025-05-30 08:30:58', '2025-05-30 08:30:58'),
(79, 1, 13, '2025-05-30 08:30:58', '2025-05-30 08:30:58'),
(80, 1, 13, '2025-05-30 08:30:58', '2025-05-30 08:30:58'),
(81, 1, 13, '2025-05-30 08:30:59', '2025-05-30 08:30:59'),
(82, 1, 13, '2025-05-30 08:30:59', '2025-05-30 08:30:59'),
(83, 1, 13, '2025-05-30 08:30:59', '2025-05-30 08:30:59'),
(84, 1, 13, '2025-05-30 08:31:00', '2025-05-30 08:31:00'),
(85, 1, 13, '2025-05-30 08:31:02', '2025-05-30 08:31:02'),
(86, 1, 13, '2025-05-30 09:03:26', '2025-05-30 09:03:26'),
(87, 1, 13, '2025-05-30 09:52:06', '2025-05-30 09:52:06'),
(88, 1, 13, '2025-05-30 10:10:43', '2025-05-30 10:10:43'),
(89, 1, 13, '2025-05-30 23:46:48', '2025-05-30 23:46:48'),
(90, 1, 13, '2025-05-31 00:30:04', '2025-05-31 00:30:04'),
(91, 1, 13, '2025-05-31 00:59:24', '2025-05-31 00:59:24'),
(92, 1, 14, '2025-05-31 02:24:19', '2025-05-31 02:24:19'),
(93, 1, 14, '2025-05-31 02:24:21', '2025-05-31 02:24:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '0001_01_01_000000_create_users_table', 1),
(7, '0001_01_01_000001_create_cache_table', 1),
(8, '0001_01_01_000002_create_jobs_table', 1),
(9, '2025_05_30_062431_create_photos_table', 1),
(10, '2025_05_30_062517_create_likes_table', 1),
(11, '2025_05_30_122205_drop_unique_index_from_likes_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `filename`, `name`, `description`, `created_at`, `updated_at`) VALUES
(14, 1, '1748678781_WhatsApp Image 2025-05-30 at 21.10.28.jpeg', 'aurora(?)', 'langit sore hari', '2025-05-31 01:06:21', '2025-05-31 02:23:41'),
(16, 3, '1748683645_WhatsApp Image 2025-05-30 at 21.10.19 (1).jpeg', 'langit', NULL, '2025-05-31 02:27:25', '2025-05-31 02:27:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('UGeZPtIIsOCnHTmqbs4zqnaZGSmcOkMcNZmLUGuH', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidzhyUkozTGcyUHVvWjVXSWJUTEdaa0VYVWJKMnNzejA5ZmZmUlNoUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9waG90b3MvbXkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1748684163);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'zkarizky', 'azkaazka@gmail.com', NULL, '$2y$12$VrUkbeWZFd2Y9iwUrnO3COzTJhXf6NIlf4uHU.3ZSDBDKLYNisiI2', NULL, '2025-05-30 04:02:04', '2025-05-30 04:02:04'),
(2, 'johan', 'johan@gmail.com', NULL, '$2y$12$2HcsOqO2ZraUpeUe2RmH.e0YJSS0pj.aiPmArGZ6IiImhwo/6vbFa', NULL, '2025-05-30 04:56:56', '2025-05-30 04:56:56'),
(3, 'asep slamet', 'asep123@gmail.com', NULL, '$2y$12$p4oi7weKDltjwidWRIFpMuCJbrOAUPyULy4szGWj9WXWHXMdnbA52', NULL, '2025-05-31 02:26:57', '2025-05-31 02:26:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_photo_id_foreign` (`photo_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
