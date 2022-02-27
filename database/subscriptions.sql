-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 04:26 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fixed_naughty`
--

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `subscription_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancelled` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `rebill_wallet` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_status`, `stripe_plan`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`, `last_payment`, `free`, `subscription_id`, `cancelled`, `rebill_wallet`) VALUES
(39, 25, '', '', '', 'user_24', NULL, NULL, '2021-12-16 03:33:10', '2021-11-16 03:33:10', '2021-11-16 03:33:10', NULL, 'no', '0121320202000000011', 'no', 'off'),
(40, 79, '', '', '', 'user_78', NULL, NULL, '2021-12-16 10:05:01', '2021-11-16 10:05:01', '2021-11-16 10:05:01', NULL, 'no', '0121320202000000068', 'no', 'off'),
(41, 25, '', '', '', 'user_78', NULL, NULL, '2021-12-16 10:24:37', '2021-11-16 10:24:37', '2021-11-16 10:24:37', NULL, 'no', '0121320202000000074', 'no', 'off'),
(42, 1, '', '', '', 'user_24', NULL, NULL, '2021-12-16 11:31:57', '2021-11-16 11:31:57', '2021-11-16 11:31:57', NULL, 'no', '0121320202000000090', 'no', 'off'),
(43, 83, '', '', '', 'user_1', NULL, NULL, '2021-12-16 12:41:48', '2021-11-16 12:41:48', '2021-11-16 12:41:48', NULL, 'no', '', 'no', 'on'),
(44, 66, '', '', '', 'user_1', NULL, NULL, '2021-12-16 13:08:59', '2021-11-16 13:08:59', '2021-11-16 13:08:59', NULL, 'no', '0121320202000000098', 'no', 'off'),
(45, 84, '', '', '', 'user_78', NULL, NULL, '2021-12-16 08:53:36', '2021-11-16 08:53:36', '2021-11-16 08:53:36', NULL, 'no', '', 'no', 'on'),
(46, 85, '', '', '', 'user_78', NULL, NULL, '2021-12-18 03:47:09', '2021-11-18 03:47:09', '2021-11-18 03:47:09', NULL, 'no', '', 'no', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`(191)),
  ADD KEY `last_payment` (`last_payment`(191));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
