-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 03:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `revision`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'Eligendi vel voluptatem minus non.', 'laravel,api,backend', 'Zulauf-Nader', 'Port Alfonsomouth', 'diego.fritsch@harber.com', 'http://www.steuber.com/', 'Esse enim autem eum possimus minima sunt consequuntur. Quisquam ut quis modi placeat consequatur. Et laboriosam aliquam sequi amet quaerat aliquam cupiditate exercitationem. Consequatur quia non harum. Voluptas quibusdam ut officiis eum voluptas ad animi. Soluta reprehenderit labore qui voluptatem. Dolorem ratione iure adipisci. Nesciunt vero corporis optio sit voluptas.', '2023-04-01 12:19:14', '2023-04-01 12:19:14'),
(2, 2, 'Doloremque et perferendis molestiae rerum.', 'laravel,api,backend', 'Parisian, Cummings and Kertzmann', 'West Howard', 'nsatterfield@schmeler.org', 'http://www.hartmann.com/quasi-sint-amet-hic-delectus-sint', 'Eos aut sint voluptas vel doloremque. Nobis possimus et quos beatae. Accusantium quis qui voluptate voluptatem porro modi. Eligendi quos consequatur fuga ut a sint officia. Suscipit aut est ex consequatur voluptatem qui. Enim maiores rerum est voluptatem.', '2023-04-01 12:19:14', '2023-04-01 12:19:14'),
(3, 1, 'Deleniti vel laborum reiciendis dolores non harum numquam.', 'laravel,api,backend', 'Brown LLC', 'Lake Mayaborough', 'ronaldo.kozey@konopelski.com', 'http://hartmann.org/nostrum-laborum-ea-vero-ea-sed-molestiae', 'Quidem dicta est est neque necessitatibus. Eveniet perferendis iure delectus explicabo consequatur. Inventore voluptatibus dolorem sequi. Autem atque ex dolorem suscipit id id provident. Id magnam error dolore doloremque. Adipisci repellat alias aut omnis.', '2023-04-01 12:19:14', '2023-04-01 12:19:14'),
(4, 1, 'Quo non rem voluptas ipsam in accusantium.', 'laravel,api,backend', 'Leannon PLC', 'Lake Terrell', 'weber.shyann@okuneva.info', 'http://windler.com/dolorem-aut-perferendis-voluptas-necessitatibus-dolores-ut', 'Consequatur velit praesentium dolorem eum rerum maiores quis enim. Velit impedit voluptas voluptas neque facere qui occaecati. Eius debitis modi ad velit et voluptatum reprehenderit animi. Neque eos qui sed accusamus ut.', '2023-04-01 12:19:14', '2023-04-01 12:19:14'),
(5, 1, 'Facere consequatur harum quis quas dolores.', 'laravel,api,backend', 'Schinner, Kozey and Goldner', 'Katherynbury', 'bauch.jolie@altenwerth.com', 'http://www.mckenzie.com/dicta-suscipit-recusandae-voluptatibus-voluptatem.html', 'Dolores sit non occaecati ab debitis quod totam. Distinctio et porro incidunt dicta inventore. Esse maxime et ut alias ab. Autem qui ex molestias culpa. Quod consequuntur debitis et et ipsam esse. Blanditiis at laborum voluptatem expedita. Eos nihil occaecati itaque sit quae et omnis.', '2023-04-01 12:19:14', '2023-04-01 12:19:14'),
(6, 1, 'Dolorum ut repellat earum.', 'laravel,api,backend', 'Schuster, Sipes and Kautzer', 'Tylerland', 'murray.marc@schiller.net', 'http://block.biz/', 'Eligendi expedita sit eaque occaecati numquam ad eius quas. Officiis ut dolores praesentium reiciendis. Ut quis fuga deserunt quis dolores sint. Repellendus est fuga aut et. Tempore facilis numquam numquam sed ut quas.', '2023-04-01 12:19:14', '2023-04-01 12:19:14'),
(9, 2, 'test', 'java,php,python', 'test', 'test', 'test@test.com', 'test.com', 'test', '2023-04-02 13:22:25', '2023-04-02 13:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(62, '2014_10_12_000000_create_users_table', 1),
(63, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(64, '2019_08_19_000000_create_failed_jobs_table', 1),
(65, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(66, '2023_03_26_111357_create_listings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@gmail.com', '2023-04-01 12:19:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R59M5DuSUk', '2023-04-01 12:19:14', '2023-04-01 12:19:14'),
(2, 'Amirul', 'mamnonymous@gmail.com', NULL, '$2y$10$XyS7CPIBbXWiU99Fmpqr4ewsDau/XnQAlSAWAbgLFA6VbqFpHUJHS', NULL, '2023-04-01 12:31:09', '2023-04-01 12:31:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
