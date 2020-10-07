-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 10:17 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `bottles`
--

CREATE TABLE `bottles` (
  `id` int(11) NOT NULL,
  `num_of_bottle` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bottles`
--

INSERT INTO `bottles` (`id`, `num_of_bottle`, `c_id`, `u_id`, `price`, `create_at`) VALUES
(1, 2, 1, 1, 100, '2020-10-07 07:06:44'),
(2, 2, 2, 2, 166, '2020-10-07 07:06:44'),
(3, 5, 2, 2, 222, '2020-10-07 07:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `num_of_bottle` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_bottle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `address`, `phone`, `num_of_bottle`, `u_id`, `created_at`, `updated_at`, `price_bottle`) VALUES
(1, 'abdul', 'n54', '2', 0, 0, '2020-10-07 06:28:29', '0000-00-00 00:00:00', 0),
(2, 'bbbb', 'bbbb', '1111', 0, 0, '2020-10-07 06:28:29', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0427295649a1368abff766348867d954bd5b0b8c872bdc35d15c7bfd148df557a9c525d8a0f9152a', 15, 1, 'MyApp', '[]', 0, '2020-10-04 19:05:42', '2020-10-04 19:05:42', '2021-10-04 12:05:42'),
('07b7255774f9eb8d8c57b30d0a61fac0130055f9a3c6b2d88baa8d8a1c6392e2d7fe8077d8f88e0c', 12, 1, 'MyApp', '[]', 0, '2020-10-04 14:00:45', '2020-10-04 14:00:45', '2021-10-04 07:00:45'),
('1bbade1d23e38dd7aaea6fdd2baeefb7aed0c3f2840560eb0fd0b17ddd5de8abda6a3ec8ab56c28a', 15, 1, 'MyApp', '[]', 0, '2020-10-04 14:16:22', '2020-10-04 14:16:22', '2021-10-04 07:16:22'),
('1f273d2785b0f8d8354c253efbed415ebe971bba2975fe8b6334be0ce19e71576a945387283dd520', 15, 1, 'MyApp', '[]', 0, '2020-10-04 19:02:41', '2020-10-04 19:02:41', '2021-10-04 12:02:41'),
('2270001f0ea92508a86474988bcc8073f92fb713f54f422dce7a5a585170bd96cbda232ff986c26e', 8, 1, 'authToken', '[]', 0, '2020-10-04 13:53:50', '2020-10-04 13:53:50', '2021-10-04 06:53:50'),
('290726c065dcb14d4f8c02ba8ffd88e46770e89e2de96c9c5c9355a83867906fabb84c53fc81c524', 3, 1, 'authToken', '[]', 0, '2020-10-04 13:46:09', '2020-10-04 13:46:09', '2021-10-04 06:46:09'),
('43b92e7ee275e4390873bc0eda83499ecefbed0a15a9a522f49e5eb1aad0b27a6d0fcabc5d1d1d5b', 13, 1, 'MyApp', '[]', 0, '2020-10-04 14:15:37', '2020-10-04 14:15:37', '2021-10-04 07:15:37'),
('667f6f73b1f2acd30cb9687e409109028af0237a44ff349166aa1cd85c36865486a3da35654dbde9', 15, 1, 'MyApp', '[]', 0, '2020-10-06 17:13:58', '2020-10-06 17:13:58', '2021-10-06 10:13:58'),
('74a124b37015bf61f38468cbe760e310f9f8086e340dbedb7c868a4cd55966edbb1181eb8eec2a98', 15, 1, 'MyApp', '[]', 0, '2020-10-06 17:13:26', '2020-10-06 17:13:26', '2021-10-06 10:13:26'),
('9a37b726fdf218a188f551280af1948ae412c6f197329039d775f86c70da7c7caafeab4b9d59129d', 11, 1, 'MyApp', '[]', 0, '2020-10-04 13:56:06', '2020-10-04 13:56:06', '2021-10-04 06:56:06'),
('9e1f4566820f847b0e927a3aa55791174599e258793d2c168ef32d6bce2f50a9698090f056129f44', 15, 1, 'MyApp', '[]', 0, '2020-10-04 19:05:55', '2020-10-04 19:05:55', '2021-10-04 12:05:55'),
('b489edd27c74642cccd6bb9213e761f5d0eec70f2a8749f1e819e85f3529327cbb34abc458fcb6fc', 15, 1, 'MyApp', '[]', 0, '2020-10-06 17:12:58', '2020-10-06 17:12:58', '2021-10-06 10:12:58'),
('ec8f0ce4f5f87c55233b994b9d9b13db22834a188bf0c216946ad2f5b00bd394cca1ec87133274cf', 1, 1, 'authToken', '[]', 0, '2020-10-04 13:44:42', '2020-10-04 13:44:42', '2021-10-04 06:44:42'),
('f66a7428fba776a0ce8283719702922c9a087e47183b6cf4cde3b0e4368fcfbf05f40abbcf5eb22e', 6, 1, 'authToken', '[]', 0, '2020-10-04 13:53:08', '2020-10-04 13:53:08', '2021-10-04 06:53:08'),
('f7ebf8f1e05fade432f7b7945a4f800f575508b55fbea6312c05b181ce68061a54176e2e27d4897e', 5, 1, 'authToken', '[]', 0, '2020-10-04 13:52:43', '2020-10-04 13:52:43', '2021-10-04 06:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '7zsVsGBy5Ct0bsPwtfRRe9sglfioam5lZixZzLdL', NULL, 'http://localhost', 1, 0, 0, '2020-10-04 13:18:25', '2020-10-04 13:18:25'),
(2, NULL, 'Laravel Password Grant Client', 'Ego5EAUkv3v6FabqX83lJ2rl5cbS3kof2nRCS5lt', 'users', 'http://localhost', 0, 1, 0, '2020-10-04 13:18:26', '2020-10-04 13:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-04 13:18:26', '2020-10-04 13:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abdul', 'arehmasns@live.comsss', NULL, '$2y$10$8QXxW6b1lTi44EPVyBFKeOccgj1q6M5khsKnF.Tao616DM6FqKR9K', NULL, '2020-10-04 14:15:37', '2020-10-04 14:15:37'),
(15, 'abdul', 'arehmans@live.com', NULL, '$2y$10$Tmoj.uUKHqPcWFNXAciC5OR.bWhnC7.8wVmTbvxM45m3OS/k.q.Oy', NULL, '2020-10-04 14:16:22', '2020-10-04 14:16:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bottles`
--
ALTER TABLE `bottles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bottles`
--
ALTER TABLE `bottles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
