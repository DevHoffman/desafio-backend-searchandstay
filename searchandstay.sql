-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14-Maio-2024 às 17:17
-- Versão do servidor: 5.7.40
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `searchandstay`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `books`
--

INSERT INTO `books` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'Book 1', '2024-05-14 14:44:52', '2024-05-14 14:44:52'),
(2, 'Book 2', '2024-05-14 14:53:20', '2024-05-14 14:53:20'),
(5, 'Book 3', '2024-05-14 16:16:24', '2024-05-14 15:18:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_14_002803_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'Laravel Password Grant Client', '57f3d88fbeaee3b39d13bf2a7dea2201f317f997162d3083535ae596fcca970b', '[\"*\"]', NULL, NULL, '2024-05-14 05:37:46', '2024-05-14 05:37:46'),
(2, 'App\\Models\\User', 2, 'Laravel Password Grant Client', '061676df9ea30c3cde9d578e52256c8325d393deef74034ed3af1d9e0d723c95', '[\"*\"]', NULL, NULL, '2024-05-14 05:38:26', '2024-05-14 05:38:26'),
(3, 'App\\Models\\User', 2, 'Laravel Password Grant Client', '512ac9330cc5d34cb7665d354ebf7e3362523743127fd1420b9765facb049812', '[\"*\"]', NULL, NULL, '2024-05-14 05:38:35', '2024-05-14 05:38:35'),
(4, 'App\\Models\\User', 2, 'Laravel Password Grant Client', '0ebf5a13f06f21a09f01738d2a184671a060b45e87385e8ab6e4ef1a8572baf4', '[\"*\"]', NULL, NULL, '2024-05-14 05:39:45', '2024-05-14 05:39:45'),
(5, 'App\\Models\\User', 2, 'SearchAndStayToken', 'd35d47cdba56c8933f363a60af94e3a68cfc9c4a2a3393df2d9871e8975fd7f9', '[\"*\"]', NULL, NULL, '2024-05-14 05:42:46', '2024-05-14 05:42:46'),
(6, 'App\\Models\\User', 2, 'SearchAndStayToken', '870ea661f32ac70b5cdd8f42e47bb74ed3cffcd0c6f6f09dda404eb94009134c', '[\"*\"]', NULL, NULL, '2024-05-14 05:46:40', '2024-05-14 05:46:40'),
(7, 'App\\Models\\User', 2, 'SearchAndStayToken', 'a6cdd3afad4f32c3c498d7095fa067a356d13bcfb783ac7e9989d122570334c4', '[\"*\"]', NULL, NULL, '2024-05-14 05:50:04', '2024-05-14 05:50:04'),
(8, 'App\\Models\\User', 2, 'SearchAndStayToken', '182da41ee7855cae0340ee7d7120296fa752db8068daa6a904a876fd1eb12f73', '[\"*\"]', NULL, NULL, '2024-05-14 05:50:42', '2024-05-14 05:50:42'),
(9, 'App\\Models\\User', 2, 'SearchAndStayToken', '7bfd71eb5b62211835113af414bf95c6e30598ebecafaf50df75254a990da9cc', '[\"*\"]', NULL, NULL, '2024-05-14 17:01:39', '2024-05-14 17:01:39'),
(10, 'App\\Models\\User', 2, 'SearchAndStayToken', 'f1107a273ba2c44498ecc4a9f4b9679ba80d5f52d26185a5b4f76dbda05049a8', '[\"*\"]', NULL, NULL, '2024-05-14 17:02:00', '2024-05-14 17:02:00'),
(11, 'App\\Models\\User', 2, 'SearchAndStayToken', 'b91002083ec22e75e14526aa2ea9aa923df03995ae0d63dcf771673812453b2e', '[\"*\"]', NULL, NULL, '2024-05-14 17:02:15', '2024-05-14 17:02:15'),
(12, 'App\\Models\\User', 2, 'SearchAndStayToken', '6a4d77312e671643c8bbf3ffd009fb9709ccca7dd55250b59e2bfa21827ebdd5', '[\"*\"]', NULL, NULL, '2024-05-14 17:03:04', '2024-05-14 17:03:04'),
(13, 'App\\Models\\User', 2, 'SearchAndStayToken', 'fe90fc5fa1aa0a7031d17ec4699e01712adb1f7aa625e8d45f736baa53034331', '[\"*\"]', NULL, NULL, '2024-05-14 17:03:19', '2024-05-14 17:03:19'),
(14, 'App\\Models\\User', 2, 'SearchAndStayToken', 'bf7eedeb1e4caeda5d3215c878b12b03dad026f1655e0a8e821e90506f7d533a', '[\"*\"]', NULL, NULL, '2024-05-14 17:03:47', '2024-05-14 17:03:47'),
(15, 'App\\Models\\User', 2, 'SearchAndStayToken', '8c98d45fe17a84e6d97520908564dc8e4b3b22c0a574a0628fa610d6ca1d6664', '[\"*\"]', NULL, NULL, '2024-05-14 17:09:36', '2024-05-14 17:09:36'),
(16, 'App\\Models\\User', 2, 'SearchAndStayToken', '5b33a734061d7d80c9b4159f9fab39fdebe80f098f3a51e9c94b69c453e396c7', '[\"*\"]', NULL, NULL, '2024-05-14 18:42:29', '2024-05-14 18:42:29'),
(17, 'App\\Models\\User', 2, 'SearchAndStayToken', '3b666eabe4dacc47cba453df07589ce147bfe0b51e50280d62bbaed3d24a710e', '[\"*\"]', NULL, NULL, '2024-05-14 19:19:39', '2024-05-14 19:19:39'),
(18, 'App\\Models\\User', 2, 'SearchAndStayToken', 'ad245bad133d3666da1534e9e34fd2d9675d1b72ac431de9006434323711a16a', '[\"*\"]', NULL, NULL, '2024-05-14 19:32:51', '2024-05-14 19:32:51'),
(19, 'App\\Models\\User', 2, 'SearchAndStayToken', '63f8d8a5461a07350da597e321a9520bf22f27e62c26d679649fd0848555e780', '[\"*\"]', NULL, NULL, '2024-05-14 19:35:13', '2024-05-14 19:35:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4AE7foOgjyZnRhyNqv9zEX3l2Kmnq3Xv28bE1ekA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWxtUHJZTmdNYnhuRWptSGFIdWpDZzZyQ1hJRjhUQjdlUzZTcnBXNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715649981),
('c7JI8sY8N0ikHnknTttXPZwnu33O7YxhgR0lMmzA', NULL, '127.0.0.1', 'PostmanRuntime/7.38.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHRFMFFZOVlRV1FwZkNhMkxyeVVxdENjS0FkSUtTTHB4ak5OSm9BayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715704770),
('NxdjwxFeGbH8Nlt2hRZFrD1AgI62s6H6z1WdJe2K', NULL, '127.0.0.1', 'PostmanRuntime/7.38.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVFDQ2V5ekFMeGVCdGh6aVF4aWU5OXVCU3dCM0lyUEVORnR0WEp0NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715651628),
('s1ImvHaxAMeh0Wqp0hxKCQRBBuQjRPsBxhVXh1CO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREw1Qm1xWFlmaWtZMDR5c3pTdlJDYWxhSUwyR211R1F6dEZrcFVZSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715706286),
('vdI6P7jziqwaUc5TR7XWMk1V6NVSqb3z21W1cbvm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVdOVzBMTkU3NURXVWthNk1QbFN2cmVDMml1QXNvTEZJMDZiU3dIRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715645266);

-- --------------------------------------------------------

--
-- Estrutura da tabela `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `stores`
--

INSERT INTO `stores` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'Store 1', '2024-05-14 16:36:58', '2024-05-14 16:36:58'),
(2, 'Store 2', '2024-05-14 16:38:49', '2024-05-14 16:38:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Thyago Hoffman', 'demo@demo.com', NULL, '$2y$12$WdPe9qEBUlV10xHU6mm15.s90kmH4nAroWGFID.S1V3gvUwmBEZVm', NULL, '2024-05-14 05:02:30', '2024-05-14 05:02:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
