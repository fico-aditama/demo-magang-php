-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2023 at 12:03 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_01_160909_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 3, 'Voluptatem ipsum reprehenderit modi dolores ex.', 'Corrupti reiciendis sed architecto reiciendis tenetur excepturi. Eos at numquam sint eligendi. Nihil minus sed tenetur voluptatum qui deleniti fugiat. Non hic aut officia enim dolores.', NULL, NULL),
(2, 2, 'Sunt magnam consectetur nemo voluptas tempore magni.', 'Qui sequi vitae consectetur neque nihil. Et et pariatur fugiat et labore est. Et et provident nemo harum saepe at dolores. Reprehenderit placeat est occaecati iure qui.', NULL, NULL),
(3, 4, 'Totam sint perspiciatis ut rerum quae.', 'Adipisci voluptatem laudantium quis quidem vel cumque mollitia. Quo animi dolorem provident. Minus placeat aperiam ut consequatur omnis veniam quibusdam quis.', NULL, NULL),
(4, 9, 'Voluptas dolorem consequuntur voluptatibus eos non incidunt et.', 'Nihil eos quis rem ut ab alias. Repellat ut necessitatibus ut molestiae dolorum nulla. Qui maxime autem et fuga magni. Sint voluptates non aliquam eligendi mollitia ut.', NULL, NULL),
(5, 2, 'Et enim quia repellat quis totam quia expedita aut.', 'Enim temporibus a quaerat voluptate eum quaerat iusto. Tempore iusto quod neque quas. Possimus et expedita numquam laudantium velit. Perspiciatis voluptatem totam rerum non autem dicta et enim.', NULL, NULL),
(6, 1, 'Sunt libero sequi sint dignissimos aut sed non.', 'Qui esse omnis molestiae ipsa necessitatibus sit unde. Eveniet quia iste iste in aliquid saepe et. Nisi est dolorem consectetur distinctio ea totam.', NULL, NULL),
(7, 4, 'Perspiciatis molestias est voluptatem voluptas nesciunt consequatur et.', 'Deleniti enim ab voluptatem explicabo ut. Sed eum dicta aliquam iste alias. Voluptates iste soluta eius ab error cupiditate. Et qui et non omnis laboriosam consequuntur exercitationem quidem.', NULL, NULL),
(8, 7, 'Quia minima aperiam tempore eveniet molestias numquam et.', 'Error pariatur dolor atque commodi libero et aspernatur. Quaerat voluptatem hic aut ducimus. Excepturi quia eum possimus nesciunt aut totam tenetur. Quae modi saepe aut debitis omnis ipsam.', NULL, NULL),
(9, 6, 'In debitis ad temporibus quia nesciunt corporis ut recusandae.', 'Sapiente aut alias qui. Et debitis exercitationem aperiam aspernatur quia non. Sit dolorum laboriosam et rem nihil libero voluptas.', NULL, NULL),
(10, 6, 'Iusto dicta aut perspiciatis.', 'Assumenda autem consequatur porro ea quae assumenda. Cum officia qui fugit quam aut animi. Voluptatem est qui esse.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alva Wuckert', 'yromaguera@example.org', NULL, '$2y$10$.xpPq3d7go7CH.c6Xkfe0eYdZwUGG1pQXRcoVGSV7FCCenhU0kuSC', NULL, NULL, NULL),
(2, 'Sandra Koepp', 'kenyon24@example.com', NULL, '$2y$10$U3fm6QpZfJj/1pJRHKRFO.oEI3Cpyzof5gmTBjQvnYzPzJRG2g1WW', NULL, NULL, NULL),
(3, 'Miss Yessenia Kovacek MD', 'leila.lebsack@example.com', NULL, '$2y$10$z7Xt95MI1r8ZJqJpwqyzx.5SAsUztBRoYlkhsaPfiR87ulv3v4eH6', NULL, NULL, NULL),
(4, 'Rylee Kertzmann', 'rhalvorson@example.com', NULL, '$2y$10$oKhKxMzncS3fCFblRUrln.vjx1FXU9L0ANUK4i.Kr5i2OeIIgg4IG', NULL, NULL, NULL),
(5, 'Rita Hills III', 'estrella.rutherford@example.org', NULL, '$2y$10$geAKNWuGwkK3W1.8p8Ufo.abah.sqEIRZD.QqtBydZLNok0vzjMSC', NULL, NULL, NULL),
(6, 'Alta Hintz', 'jovanny.gulgowski@example.org', NULL, '$2y$10$AO2oNQ8FMyCOTFwvdotxwOscFxi4FUIH8BjI39xvQpIzYLEX9B6fW', NULL, NULL, NULL),
(7, 'Carolyne Jast V', 'yhegmann@example.org', NULL, '$2y$10$GJ7hIpMQQMO8Qo4al1AS3.FZdGjqA4as.nNIqfbmVEhoDLqLLhb6i', NULL, NULL, NULL),
(8, 'Jennings Keebler', 'rashawn94@example.org', NULL, '$2y$10$U.nEv7SfYrdSedIekWLKi.z9xzJETlRd05NvNCeONe4zOou/hOZLi', NULL, NULL, NULL),
(9, 'Anissa Ondricka Jr.', 'wsipes@example.net', NULL, '$2y$10$HVptRjo5Zt/wsP490QXitudhVddPw6/gjHTIvsRjr3iagrWY2rosq', NULL, NULL, NULL),
(10, 'Antone Skiles', 'sid21@example.com', NULL, '$2y$10$sYJIZP7WeOTkIod0P5YuI.45ha0EpH8NFFjIOThmzRuyOjjve0EhW', NULL, NULL, NULL),
(11, 'Miss Lavonne Kiehn', 'delores.spinka@example.net', NULL, '$2y$10$fytWC6zPh7GxrK/FfNTknu0M54cZXgkRAkHpFEkOb0mIuEIiDfRSy', NULL, NULL, NULL),
(12, 'Lessie Rice I', 'alysha04@example.com', NULL, '$2y$10$HMOi/StcGJdiXRSi.xGwyeRRe/JC2d7YTpxUNRQ4IKUFZmZOk.jAu', NULL, NULL, NULL),
(13, 'Ollie Mayert I', 'hudson.tia@example.net', NULL, '$2y$10$zfJW0gd9WqUAGqoH7.t6XOwoRR6F8zDYuH6KUB7d194.haL.to7dO', NULL, NULL, NULL),
(14, 'Prof. Alfonzo Paucek DVM', 'lind.porter@example.org', NULL, '$2y$10$wkkRJKby8JPLJTS9hnS/5O6c3IqRzdQ5X5B2CM7M52mBGZ6ZO4.jq', NULL, NULL, NULL),
(15, 'Brooke Marquardt', 'missouri68@example.net', NULL, '$2y$10$2MsPp.NLVqliT9jnRUuzcOdtkay.xYvV/SZBY0/xboVUUzRhl5seq', NULL, NULL, NULL),
(16, 'Dr. Devante Kertzmann', 'rachael50@example.com', NULL, '$2y$10$ZeohmDaj3ZhMwjmd6oZVGOxPgEWPU5LpRxpQxqf7U/FLJlsmxjGtK', NULL, NULL, NULL),
(17, 'Verna Turner', 'langworth.fredy@example.com', NULL, '$2y$10$irLq4ucTEUXeEsdADEJUAeYcmLVyR02qCb0PZoHbPAYOo/sOnEI6S', NULL, NULL, NULL),
(18, 'Alysha Kreiger', 'shanon24@example.org', NULL, '$2y$10$VXRiQp7n69a1mFtomstOmOlGSU/Q.ZJ5stfPsTBLrONDL0NN1fd0i', NULL, NULL, NULL),
(19, 'Mr. Moriah Wolf MD', 'abby.walker@example.net', NULL, '$2y$10$Ndh3.OyBF8tn7hGYKqbmgOEILurojCRkromh1OmesEXWv/6pl8/ty', NULL, NULL, NULL),
(20, 'Tressie Bayer', 'daniella11@example.org', NULL, '$2y$10$nNblD98K8pkwIwM.WBOjtu75HOWh0txoOISajQxzFMZ5L0zHWb58K', NULL, NULL, NULL);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
