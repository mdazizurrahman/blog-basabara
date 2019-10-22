-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 12:08 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'House', 'house', '2019-07-23 08:59:27', '2019-07-23 08:59:27'),
(2, 'Office', 'office', '2019-07-24 08:01:17', '2019-07-24 08:01:17'),
(3, 'Basa Bara', 'basa-bara', '2019-07-25 05:35:42', '2019-07-25 05:35:42'),
(4, 'Place', 'place', '2019-07-30 07:24:02', '2019-07-30 07:24:02'),
(5, 'Hospital', 'hospital', '2019-07-30 07:24:39', '2019-07-30 07:24:39'),
(6, 'Habib Ali', 'habib-ali', '2019-09-04 05:36:32', '2019-09-04 05:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(7, 9, 1, '2019-07-29 04:38:42', '2019-07-29 04:38:42'),
(8, 10, 1, '2019-07-29 06:33:05', '2019-07-29 06:33:05'),
(9, 10, 2, '2019-07-29 06:33:05', '2019-07-29 06:33:05'),
(10, 11, 1, '2019-07-30 07:36:53', '2019-07-30 07:36:53'),
(11, 12, 4, '2019-07-31 04:46:08', '2019-07-31 04:46:08'),
(12, 13, 5, '2019-07-31 05:52:15', '2019-07-31 05:52:15'),
(13, 14, 1, '2019-08-03 07:33:07', '2019-08-03 07:33:07'),
(14, 15, 2, '2019-08-03 08:37:09', '2019-08-03 08:37:09'),
(15, 15, 1, '2019-08-04 02:58:34', '2019-08-04 02:58:34'),
(16, 16, 2, '2019-08-04 07:40:53', '2019-08-04 07:40:53'),
(17, 18, 2, '2019-08-04 08:32:06', '2019-08-04 08:32:06'),
(18, 19, 3, '2019-08-05 07:19:12', '2019-08-05 07:19:12'),
(19, 20, 1, '2019-08-07 07:19:00', '2019-08-07 07:19:00'),
(20, 21, 2, '2019-08-07 07:21:49', '2019-08-07 07:21:49'),
(21, 23, 1, '2019-08-07 07:24:49', '2019-08-07 07:24:49'),
(22, 24, 1, '2019-08-07 07:26:45', '2019-08-07 07:26:45'),
(23, 25, 1, '2019-08-07 07:33:37', '2019-08-07 07:33:37'),
(24, 27, 2, '2019-08-07 07:40:08', '2019-08-07 07:40:08'),
(25, 29, 2, '2019-08-07 07:41:11', '2019-08-07 07:41:11'),
(26, 30, 1, '2019-08-07 08:07:46', '2019-08-07 08:07:46'),
(27, 32, 1, '2019-08-07 08:08:57', '2019-08-07 08:08:57'),
(28, 33, 1, '2019-08-07 08:12:29', '2019-08-07 08:12:29'),
(29, 34, 2, '2019-08-07 08:15:19', '2019-08-07 08:15:19'),
(30, 35, 2, '2019-08-07 08:18:29', '2019-08-07 08:18:29'),
(31, 37, 1, '2019-08-07 08:21:36', '2019-08-07 08:21:36'),
(32, 38, 1, '2019-08-07 08:22:40', '2019-08-07 08:22:40'),
(33, 39, 1, '2019-08-09 06:06:31', '2019-08-09 06:06:31'),
(34, 40, 2, '2019-08-09 06:21:29', '2019-08-09 06:21:29'),
(35, 41, 2, '2019-08-09 06:23:47', '2019-08-09 06:23:47'),
(36, 42, 1, '2019-08-20 06:34:16', '2019-08-20 06:34:16'),
(37, 43, 2, '2019-08-20 06:35:41', '2019-08-20 06:35:41'),
(38, 44, 1, '2019-08-20 06:39:27', '2019-08-20 06:39:27'),
(39, 45, 1, '2019-08-20 06:40:51', '2019-08-20 06:40:51'),
(40, 46, 2, '2019-08-20 06:42:39', '2019-08-20 06:42:39'),
(41, 48, 2, '2019-08-20 06:45:54', '2019-08-20 06:45:54'),
(42, 49, 1, '2019-08-20 06:48:28', '2019-08-20 06:48:28'),
(43, 50, 1, '2019-08-20 07:24:37', '2019-08-20 07:24:37'),
(44, 51, 1, '2019-08-24 07:50:44', '2019-08-24 07:50:44'),
(45, 52, 1, '2019-09-04 07:13:24', '2019-09-04 07:13:24'),
(46, 52, 2, '2019-09-04 07:13:24', '2019-09-04 07:13:24'),
(47, 52, 3, '2019-09-04 07:13:24', '2019-09-04 07:13:24'),
(48, 52, 4, '2019-09-04 07:13:24', '2019-09-04 07:13:24'),
(49, 53, 2, '2019-09-04 07:54:33', '2019-09-04 07:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:14:\\\"admin@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"ac78135e-009f-41ce-9f0e-d340a7d9b29e\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602806, 1567602806),
(2, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:15:\\\"arman@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"33a4d6de-5b36-416d-a1d2-59373b6458cd\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602806, 1567602806),
(3, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:19:\\\"azizsylbd@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"7613e905-1e1c-4bda-863e-1f765bf88292\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602806, 1567602806),
(4, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:20:\\\"fahadsylbd@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"08cf144d-a901-411a-9c16-1ad2e5d55cbb\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602806, 1567602806),
(5, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"fouzul@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"3a6d2023-7e3a-4a3a-9b7d-d5e721a9164e\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602806, 1567602806),
(6, 'default', '{\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"b663bebf-7425-4d15-8af4-60e714189789\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602834, 1567602834),
(7, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:14:\\\"admin@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"00aeb33d-aa8a-45cc-bb20-3508f616c75c\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602834, 1567602834),
(8, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:15:\\\"arman@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"faa161ae-a617-4504-a2c9-e5b21453eea1\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602834, 1567602834),
(9, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:19:\\\"azizsylbd@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"91f17add-fe22-4a8b-b0ea-c62df39a7ecb\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602835, 1567602835),
(10, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:20:\\\"fahadsylbd@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"352e38cd-b9a3-422c-bea7-7e4680d74c8e\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602835, 1567602835),
(11, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"fouzul@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"cd3d35ad-901a-4112-b915-8d1f6c8da32f\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567602835, 1567602835),
(12, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:14:\\\"admin@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:53;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"6a80bc6a-d1db-4379-a73f-681097c2dfd0\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567605274, 1567605274),
(13, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:15:\\\"arman@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:53;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"01831fed-a12c-4aec-93b3-fe65e1a1859a\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567605274, 1567605274),
(14, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:19:\\\"azizsylbd@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:53;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"630bcaed-1550-498a-b9f7-95f43aae242c\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567605274, 1567605274),
(15, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:20:\\\"fahadsylbd@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:53;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c71a6899-fc00-45d6-ab30-9aee2aeee383\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567605274, 1567605274),
(16, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"fouzul@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:53;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"af28ed74-c03b-4ed3-9d63-03b44ee1de15\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1567605275, 1567605275);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_07_10_105325_create_roles_table', 1),
(12, '2019_07_16_102952_create_tags_table', 1),
(13, '2019_07_22_114431_create_categories_table', 1),
(14, '2019_07_23_120040_create_posts_table', 1),
(15, '2019_07_23_122153_create_category_post_table', 1),
(16, '2019_07_23_122255_create_post_tag_table', 1),
(17, '2019_07_31_133302_create_subscribes_table', 2),
(18, '2019_07_31_141158_create_subscribers_table', 3),
(19, '2019_08_20_130831_create_jobs_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('azizsylbd@gmail.com', '$2y$10$8fGcURo18PloH1Fy1qX0ZufOKAF49VQtpeIwHSxThFxJef0AT2yhu', '2019-08-07 08:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `room` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `amount`, `room`, `status`, `created_at`, `updated_at`) VALUES
(9, 1, 'BEST BURGER', 'best-burger', '-2019-07-29-5d3eccb2b8e1c.jpg', '<p>This is good Product</p>', 10000, 0, 1, '2019-07-29 04:38:42', '2019-07-29 04:38:42'),
(10, 1, 'BEST BURGER1ww', 'best-burger1ww', '-2019-07-29-5d3ee7816d656.jpg', '<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n<div class=\"text\">\r\n<h2>Modern toolkit. Pinch of magic.</h2>\r\n<p>An <a href=\"https://laravel.com/docs/eloquent\">amazing ORM</a>, painless <a href=\"https://laravel.com/docs/routing\">routing</a>, powerful <a href=\"https://laravel.com/docs/queues\">queue library</a>, and <a href=\"https://laravel.com/docs/authentication\">simple authentication</a> give you the tools you need for modern, maintainable PHP. We sweat the small stuff to help you deliver amazing applications.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 10000, 6, 1, '2019-07-29 06:33:05', '2019-07-29 06:33:05'),
(11, 1, 'This good House', 'this-good-house', '-2019-07-30-5d4047f50ad30.jpg', '<p>Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.</p>', 15000, 8, 1, '2019-07-30 07:36:53', '2019-07-30 07:36:53'),
(12, 1, 'Nice Place', 'nice-place', '-2019-07-31-5d41717059b15.jpg', '<p>Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.</p>', 30000000, 7, 1, '2019-07-31 04:46:08', '2019-07-31 04:46:08'),
(13, 1, 'sylhet Women\'s Medical College', 'sylhet-womens-medical-college', '-2019-07-31-5d4180efb9913.jpg', '<p>Stp mes slider n\'affiche pas, j\'ai mis le lien de capture sur l\'&eacute;pisode 34 en commentaire , Stp mes slider n\'affiche pas, j\'ai mis le lien de capture sur l\'&eacute;pisode 34 en commentaire ,&nbsp;Stp mes slider n\'affiche pas, j\'ai mis le lien de capture sur l\'&eacute;pisode 34 en commentaire ,&nbsp;Stp mes slider n\'affiche pas, j\'ai mis le lien de capture sur l\'&eacute;pisode 34 en commentaire ,&nbsp;Stp mes slider n\'affiche pas, j\'ai mis le lien de capture sur l\'&eacute;pisode 34 en commentaire ,&nbsp;Stp mes slider n\'affiche pas, j\'ai mis le lien de capture sur l\'&eacute;pisode 34 en commentaire ,&nbsp;Stp mes slider n\'affiche pas, j\'ai mis le lien de capture sur l\'&eacute;pisode 34 en commentaire ,&nbsp;</p>', 500000, 50, 1, '2019-07-31 05:52:15', '2019-07-31 05:52:15'),
(14, 1, 'VeryuGood Houserrrr', 'veryugood-houserrrr', '-2019-08-03-5d459068e6728.jpg', '<p>&nbsp;</p>\r\n<ul>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#mail-notifications\">Mail Notifications</a>\r\n<ul>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#formatting-mail-messages\">Formatting Mail Messages</a></li>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#customizing-the-sender\">Customizing The Sender</a></li>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#customizing-the-recipient\">Customizing The Recipient</a></li>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#customizing-the-subject\">Customizing The Subject</a></li>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#customizing-the-templates\">Customizing The Templates</a></li>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#previewing-mail-notifications\">Previewing Mail Notifications</a></li>\r\n</ul>\r\n</li>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#markdown-mail-notifications\">Markdown Mail Notifications</a>\r\n<ul>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#generating-the-message\">Generating The Message</a></li>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#writing-the-message\">Writing The Message</a></li>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#customizing-the-components\">Customizing The Components</a></li>\r\n</ul>\r\n</li>\r\n<li><a href=\"https://laravel.com/docs/5.8/notifications#database-notifications\">Database Notifications</a></li>\r\n</ul>\r\n<p>&nbsp;</p>', 15000, 10, 1, '2019-08-03 07:33:07', '2019-08-03 07:47:20'),
(15, 2, 'Where does it come from?', 'where-does-it-come-from', '-2019-08-03-5d459c15a7cdc.jpg', '<p>Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for</p>', 500000, 20, 1, '2019-08-03 08:37:09', '2019-08-04 08:29:25'),
(16, 2, 'BEST BURGER1211', 'best-burger1211', '-2019-08-04-5d46e065ab851.jpg', '<p>Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.Put your professional career in full force with courses on Learn from Fiverr. Gain new skills, earn a badge on your profile, and keep those sales rolling in.</p>', 10000, 20, 1, '2019-08-04 07:40:53', '2019-08-04 08:18:21'),
(18, 2, 'VeryuGood Houserrrrgggg', 'veryugood-houserrrrgggg', '-2019-08-04-5d46ec66404e2.jpg', '<p>Good communication is a key factor for creating successful collaborations. Reply quickly to all your customers&rsquo; inquiries, provide information and proactively update on your progress throughout the entire order process.</p>', 15000, 10, 1, '2019-08-04 08:32:06', '2019-08-05 06:40:11'),
(19, 2, 'VeryuGood Houserrrr22', 'veryugood-houserrrr22', '-2019-08-05-5d482ccfe8d9c.jpg', '<p>Very good house</p>', 15000, 10, 1, '2019-08-05 07:19:11', '2019-08-05 07:19:50'),
(20, 2, 'Shipp Post', 'shipp-post', '-2019-08-07-5d4acfc4811c1.jpg', '<p>ch workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for Tech workers are increasingly emboldened to speak out against their employers. Tune into the IRL podcast to hear what this could mean for</p>', 20000, 15, 0, '2019-08-07 07:19:00', '2019-08-07 07:19:00'),
(21, 2, 'Shipp Post 201', 'shipp-post-201', '-2019-08-07-5d4ad06dd9aee.jpg', '<p>Typically, notifications should be short, informational messages that notify users of something that occurred in your application. For example, if you are writing a billing application, you might send an \"Invoice Paid\" notification to your users via the email and SMS channels.</p>', 15000, 10, 0, '2019-08-07 07:21:49', '2019-08-07 07:21:49'),
(23, 2, 'Shipp Postgg', 'shipp-postgg', '-2019-08-07-5d4ad1210f388.jpg', '<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC46\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">-&gt;</span>greeting(<span class=\"pl-s\"><span class=\"pl-pds\">\'</span>Hello, Admin!<span class=\"pl-pds\">\'</span></span>)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC47\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"> <span class=\"pl-k\">-&gt;</span>subject(<span class=\"pl-s\"><span class=\"pl-pds\">\'</span>New Post Approval Needed<span class=\"pl-pds\">\'</span></span>)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC48\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"> <span class=\"pl-k\">-&gt;</span>line(<span class=\"pl-s\"><span class=\"pl-pds\">\'</span>New Post by <span class=\"pl-pds\">\'</span></span><span class=\"pl-k\">.</span><span class=\"pl-smi\">$this</span><span class=\"pl-k\">-&gt;</span><span class=\"pl-smi\">post</span><span class=\"pl-k\">-&gt;</span><span class=\"pl-smi\">user</span><span class=\"pl-k\">-&gt;</span><span class=\"pl-smi\">name</span> <span class=\"pl-k\">.</span> <span class=\"pl-s\"><span class=\"pl-pds\">\'</span> need to approve.<span class=\"pl-pds\">\'</span></span>)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC49\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"> <span class=\"pl-k\">-&gt;</span>line(<span class=\"pl-s\"><span class=\"pl-pds\">\'</span>To approve the post click view button.<span class=\"pl-pds\">\'</span></span>)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC50\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"> <span class=\"pl-k\">-&gt;</span>line(<span class=\"pl-s\"><span class=\"pl-pds\">\'</span>Post Title : <span class=\"pl-pds\">\'</span></span><span class=\"pl-k\">.</span> <span class=\"pl-smi\">$this</span><span class=\"pl-k\">-&gt;</span><span class=\"pl-smi\">post</span><span class=\"pl-k\">-&gt;</span><span class=\"pl-smi\">title</span>)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC51\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"> <span class=\"pl-k\">-&gt;</span>action(<span class=\"pl-s\"><span class=\"pl-pds\">\'</span>View<span class=\"pl-pds\">\'</span></span>, url(route(<span class=\"pl-s\"><span class=\"pl-pds\">\'</span>admin.post.show<span class=\"pl-pds\">\'</span></span>,<span class=\"pl-smi\">$this</span><span class=\"pl-k\">-&gt;</span><span class=\"pl-smi\">post</span><span class=\"pl-k\">-&gt;</span><span class=\"pl-smi\">id</span>)))</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span class=\"pl-s1\"> <span class=\"pl-k\">-&gt;</span>line(<span class=\"pl-s\"><span class=\"pl-pds\">\'</span>Thank you for using our application!<span class=\"pl-pds\">\'</span></span>);</span></p>', 15000, 10, 0, '2019-08-07 07:24:49', '2019-08-07 07:24:49'),
(24, 2, 'VeryuGood Houserrrrgg', 'veryugood-houserrrrgg', '-2019-08-07-5d4ad195225ec.jpg', '<p>test</p>', 20000, 10, 0, '2019-08-07 07:26:45', '2019-08-07 07:26:45'),
(25, 2, 'text', 'text', '-2019-08-07-5d4ad3316197c.jpg', '<p>Typically, notifications should be short, informational messages that notify users of something</p>', 15000, 10, 0, '2019-08-07 07:33:37', '2019-08-07 07:33:37'),
(27, 2, 'VeryuGood Ho', 'veryugood-ho', '-2019-08-07-5d4ad4b867a88.jpg', '<p>Sometimes you may need to send a notification to someone who is not stored as a \"user\" of Sometimes you may need to send a notification to someone who is not stored as a \"user\" of&nbsp;Sometimes you may need to send a notification to someone who is not stored as a \"user\" of&nbsp;</p>', 15000, 15, 0, '2019-08-07 07:40:08', '2019-08-07 07:40:08'),
(29, 2, 'VeryuGood Househy', 'veryugood-househy', '-2019-08-07-5d4ad4f76b9cf.jpg', '<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC5\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">App\\Category</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC6\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">App\\Notifications\\NewAuthorPost</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC7\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">App\\Tag</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC8\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">App\\Post</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC9\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">App\\User</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC10\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">Brian2694\\Toastr\\Facades\\Toastr</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC11\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">Carbon\\Carbon</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC12\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">Illuminate\\Http\\Request</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC13\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">App\\Http\\Controllers\\Controller</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC14\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">Illuminate\\Support\\Facades\\Auth</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC15\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">Illuminate\\Support\\Facades\\Notification</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"highlight tab-size js-file-line-container\" data-tab-size=\"8\">\r\n<tbody>\r\n<tr>\r\n<td id=\"LC16\" class=\"blob-code blob-code-inner js-file-line\"><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">Illuminate\\Support\\Facades\\Storage</span>;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">Intervention\\Image\\Facades\\Image</span>;</span></p>', 15000, 10, 1, '2019-08-07 07:41:11', '2019-08-24 07:58:32'),
(30, 2, 'VeryuGood Houserr', 'veryugood-houserr', '-2019-08-07-5d4adb32d9aaf.jpg', '<p><span class=\"inbox_password cell\">51957b249c1b0e</span><span class=\"inbox_password cell\">51957b249c1b0e</span><span class=\"inbox_password cell\">51957b249c1b0e</span><span class=\"inbox_password cell\">51957b249c1b0e</span><span class=\"inbox_password cell\">51957b249c1b0e</span><span class=\"inbox_password cell\">51957b249c1b0e</span><span class=\"inbox_password cell\">51957b249c1b0e</span></p>', 15000, 10, 1, '2019-08-07 08:07:46', '2019-08-24 07:53:35'),
(32, 2, 'VeryuGood Houserrrrvnh', 'veryugood-houserrrrvnh', '-2019-08-07-5d4adb793ca08.jpg', '<p>dbvg gb</p>', 15000, 10, 1, '2019-08-07 08:08:57', '2019-08-20 06:59:36'),
(33, 2, 'VeryuGood Hgouserrrr', 'veryugood-hgouserrrr', '-2019-08-07-5d4adc4d0fa9d.jpg', '<p>xvxdvgb</p>', 15000, 10, 1, '2019-08-07 08:12:29', '2019-08-20 06:58:29'),
(34, 2, 'Shipp Postaa', 'shipp-postaa', '-2019-08-07-5d4adcf76895a.jpg', '<p>dgdfsgfdg</p>', 15000, 15, 1, '2019-08-07 08:15:19', '2019-08-20 06:56:17'),
(35, 2, 'VeryuGood Houserrrrfff', 'veryugood-houserrrrfff', '-2019-08-07-5d4addb55660c.jpg', '<p>tefrtdgv cvgbdv</p>', 15000, 10, 1, '2019-08-07 08:18:29', '2019-08-20 06:10:10'),
(37, 2, 'VeryuGood Houserrrr\'\'jjjj', 'veryugood-houserrrrjjjj', '-2019-08-07-5d4ade6fe38e4.jpg', '<p>ffffff</p>', 15000, 10, 1, '2019-08-07 08:21:35', '2019-08-20 06:08:57'),
(38, 2, 'VeryuGood Houserrrradsff', 'veryugood-houserrrradsff', '-2019-08-07-5d4adeb04bc90.jpg', '<p>cccccccccc</p>', 15000, 10, 1, '2019-08-07 08:22:40', '2019-08-09 06:18:31'),
(39, 1, 'fgrfgfd', 'fgrfgfd', '-2019-08-09-5d4d61c687394.jpg', '<p>soft-buy is a fully responsive multiple Product Template built with Bootstrap. that will support every shop/ecommerce web/app.soft-buy is a fully responsive multiple Product Template built with Bootstrap. that will support every shop/ecommerce web/app.soft-buy is a fully responsive multiple Product Template built with Bootstrap. that will support every shop/ecommerce web/app.soft-buy is a fully responsive multiple Product Template built with Bootstrap. that will support every shop/ecommerce web/app.soft-buy is a fully responsive multiple Product Template built with Bootstrap. that will support every shop/ecommerce web/app.</p>', 500000, 451, 1, '2019-08-09 06:06:30', '2019-08-09 06:06:30'),
(40, 2, 'Tanvir', 'tanvir', '-2019-08-09-5d4d6548a0c33.jpg', '<h1>Class aptent taciti sociosqu ad litora torquent per conubia nostra</h1>\r\n<h1>Class aptent taciti sociosqu ad litora torquent per conubia nostra</h1>\r\n<h1>Class aptent taciti sociosqu ad litora torquent per conubia nostra</h1>\r\n<h1>Class aptent taciti sociosqu ad litora torquent per conubia nostra</h1>\r\n<h1>Class aptent taciti sociosqu ad litora torquent per conubia nostra</h1>', 15000, 10, 1, '2019-08-09 06:21:28', '2019-08-20 06:04:46'),
(41, 2, 'Shipp Postvvvv', 'shipp-postvvvv', '-2019-08-09-5d4d65d3aa4d4.jpg', '<h1>Class aptent taciti sociosqu ad litora torquent per conubia nostra</h1>', 15000, 10, 1, '2019-08-09 06:23:47', '2019-08-20 06:02:52'),
(42, 1, 'BEST BURGER1211gffg', 'best-burger1211gffg', '-2019-08-20-5d5be8c81efce.jpg', '<p>AND CO helps you with everything from invoicing, payment to time and task tracking. Use code AND CO helps you with everything from invoicing, payment to time and task tracking. Use code&nbsp;AND CO helps you with everything from invoicing, payment to time and task tracking. Use code&nbsp;AND CO helps you with everything from invoicing, payment to time and task tracking. Use code&nbsp;AND CO helps you with everything from invoicing, payment to time and task tracking. Use code&nbsp;AND CO helps you with everything from invoicing, payment to time and task tracking. Use code&nbsp;AND CO helps you with everything from invoicing, payment to time and task tracking. Use code&nbsp;AND CO helps you with everything from invoicing, payment to time and task tracking. Use code&nbsp;AND CO helps you with everything from invoicing, payment to time and task tracking. Use code&nbsp;AND CO helps you with everything from invoicing, payment to time and task tracking. Use code&nbsp;AND CO helps you with everything from invoicing, payment to time and task tracking. Use code&nbsp;</p>', 10000, 7, 1, '2019-08-20 06:34:16', '2019-08-20 06:34:16'),
(43, 1, 'BEST BURGER1wwjjj', 'best-burger1wwjjj', '-2019-08-20-5d5be91d6ab35.jpg', '<p>use App\\Notifications\\AuthorPostApproved;use App\\Notifications\\AuthorPostApproved;use App\\Notifications\\AuthorPostApproved;use App\\Notifications\\AuthorPostApproved;use App\\Notifications\\AuthorPostApproved;<br /><br /><br /><br /><br /></p>', 500000, 20, 1, '2019-08-20 06:35:41', '2019-08-20 06:35:41'),
(44, 1, 'BEST BURGE', 'best-burge', '-2019-08-20-5d5be9ffb8ea3.jpg', '<p>Hello, I am working as a WordPress designer with an it firm. There was also a php developer. But now he was busy and we have about 6/7 projects. And if you want you can work with us for a long time or monthly basis. We need someone urgently. If you have an interest then we can discuss about the works. Dont worry we can order in Fiverr.Thank you.</p>', 6000, 3, 1, '2019-08-20 06:39:27', '2019-08-20 06:39:27'),
(45, 1, 'BEST BURGE77777', 'best-burge77777', '-2019-08-20-5d5bea534e803.jpg', '<p>Hello, I am working as a WordPress designer with an it firm. There was also a php developer. But now he was busy and we have about 6/7 projects. And if you want you can work with us for a long time or monthly basis. We need someone urgently. If you have an interest then we can discuss about the works. Dont worry we can order in Fiverr.Thank you.</p>', 6000, 3, 1, '2019-08-20 06:40:51', '2019-08-20 06:40:51'),
(46, 1, 'BEST BURGERzx', 'best-burgerzx', '-2019-08-20-5d5beabfa0d07.jpg', '<p><span class=\"pl-s1\"><span class=\"pl-k\">use</span> <span class=\"pl-c1\">Illuminate\\Support\\Facades\\Notification</span>;</span></p>', 10001, 5, 1, '2019-08-20 06:42:39', '2019-08-20 06:42:39'),
(48, 1, 'BEST BURGER1wwffff', 'best-burger1wwffff', '-2019-08-20-5d5beb82b2f2c.jpg', '<p>Hello, I am working as a WordPress designer with an it firm. There was also a php developer. But now he was busy and we have about 6/7 projects. And if you want you can work with us for a long time or monthly basis. We need someone urgently. If you have an interest then we can discuss about the works. Dont worry we can order in Fiverr.Thank you.</p>', 10000, 20, 1, '2019-08-20 06:45:54', '2019-08-20 06:45:54'),
(49, 1, 'BEST BURGER1211lll', 'best-burger1211lll', '-2019-08-20-5d5bec1c857eb.jpg', '<p>Hello, I am working as a WordPress designer with an it firm. There was also a php developer. But now he was busy and we have about 6/7 projects. And if you want you can work with us for a long time or monthly basis. We need someone urgently. If you have an interest then we can discuss about the works. Dont worry we can order in Fiverr.Thank you.Hello, I am working as a WordPress designer with an it firm. There was also a php developer. But now he was busy and we have about 6/7 projects. And if you want you can work with us for a long time or monthly basis. We need someone urgently. If you have an interest then we can discuss about the works. Dont worry we can order in Fiverr.Thank you.</p>', 10000, 20, 1, '2019-08-20 06:48:28', '2019-08-20 06:48:28'),
(50, 1, 'test', 'test', '-2019-08-20-5d5bf49519fb2.jpg', '<p>Hello, I am working as a WordPress designer with an it firm. There was also a php developer. But now he was busy and we have about 6/7 projects. And if you want you can work with us for a long time or monthly basis. We need someone urgently. If you have an interest then we can discuss about the works. Dont worry we can order in Fiverr.Thank you.Hello, I am working as a WordPress designer with an it firm. There was also a php developer. But now he was busy and we have about 6/7 projects. And if you want you can work with us for a long time or monthly basis. We need someone urgently. If you have an interest then we can discuss about the works. Dont worry we can order in Fiverr.Thank you.</p>', 500000, 20, 1, '2019-08-20 07:24:37', '2019-08-20 07:24:37'),
(51, 1, 'BEST BURGER1211fffffff', 'best-burger1211fffffff', '-2019-08-24-5d6140b480b1a.jpg', '<p>dgfsdghsdfghdsfhgsfyteryherygwe</p>', 500000, 20, 1, '2019-08-24 07:50:44', '2019-08-24 07:50:44'),
(52, 1, 'My New Latest Post', 'my-new-latest-post', '-2019-09-04-5d6fb874b10ec.png', '<p>This is New post here</p>', 20000, 10, 1, '2019-09-04 07:13:24', '2019-09-04 07:13:54'),
(53, 1, 'This is second Psot', 'this-is-second-psot', '-2019-09-04-5d6fc219dae52.png', '<p>This is second Second Test Post</p>', 25000, 10, 1, '2019-09-04 07:54:33', '2019-09-04 07:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(7, 9, 2, '2019-07-29 04:38:42', '2019-07-29 04:38:42'),
(8, 10, 1, '2019-07-29 06:33:05', '2019-07-29 06:33:05'),
(9, 10, 2, '2019-07-29 06:33:05', '2019-07-29 06:33:05'),
(10, 10, 3, '2019-07-29 06:33:05', '2019-07-29 06:33:05'),
(11, 11, 1, '2019-07-30 07:36:53', '2019-07-30 07:36:53'),
(12, 12, 1, '2019-07-31 04:46:08', '2019-07-31 04:46:08'),
(13, 13, 2, '2019-07-31 05:52:15', '2019-07-31 05:52:15'),
(14, 14, 1, '2019-08-03 07:33:07', '2019-08-03 07:33:07'),
(15, 15, 2, '2019-08-03 08:37:09', '2019-08-03 08:37:09'),
(16, 15, 1, '2019-08-04 02:58:34', '2019-08-04 02:58:34'),
(17, 16, 2, '2019-08-04 07:40:54', '2019-08-04 07:40:54'),
(18, 18, 2, '2019-08-04 08:32:06', '2019-08-04 08:32:06'),
(19, 19, 2, '2019-08-05 07:19:12', '2019-08-05 07:19:12'),
(20, 20, 2, '2019-08-07 07:19:01', '2019-08-07 07:19:01'),
(21, 21, 2, '2019-08-07 07:21:50', '2019-08-07 07:21:50'),
(22, 23, 1, '2019-08-07 07:24:49', '2019-08-07 07:24:49'),
(23, 24, 2, '2019-08-07 07:26:45', '2019-08-07 07:26:45'),
(24, 25, 2, '2019-08-07 07:33:37', '2019-08-07 07:33:37'),
(25, 27, 3, '2019-08-07 07:40:08', '2019-08-07 07:40:08'),
(26, 29, 2, '2019-08-07 07:41:11', '2019-08-07 07:41:11'),
(27, 30, 1, '2019-08-07 08:07:47', '2019-08-07 08:07:47'),
(28, 32, 1, '2019-08-07 08:08:57', '2019-08-07 08:08:57'),
(29, 33, 1, '2019-08-07 08:12:29', '2019-08-07 08:12:29'),
(30, 34, 1, '2019-08-07 08:15:19', '2019-08-07 08:15:19'),
(31, 35, 2, '2019-08-07 08:18:29', '2019-08-07 08:18:29'),
(32, 37, 2, '2019-08-07 08:21:36', '2019-08-07 08:21:36'),
(33, 38, 1, '2019-08-07 08:22:40', '2019-08-07 08:22:40'),
(34, 39, 2, '2019-08-09 06:06:31', '2019-08-09 06:06:31'),
(35, 40, 2, '2019-08-09 06:21:29', '2019-08-09 06:21:29'),
(36, 41, 2, '2019-08-09 06:23:47', '2019-08-09 06:23:47'),
(37, 42, 2, '2019-08-20 06:34:16', '2019-08-20 06:34:16'),
(38, 43, 3, '2019-08-20 06:35:41', '2019-08-20 06:35:41'),
(39, 44, 2, '2019-08-20 06:39:27', '2019-08-20 06:39:27'),
(40, 45, 2, '2019-08-20 06:40:51', '2019-08-20 06:40:51'),
(41, 46, 2, '2019-08-20 06:42:39', '2019-08-20 06:42:39'),
(42, 48, 3, '2019-08-20 06:45:54', '2019-08-20 06:45:54'),
(43, 49, 1, '2019-08-20 06:48:28', '2019-08-20 06:48:28'),
(44, 50, 2, '2019-08-20 07:24:37', '2019-08-20 07:24:37'),
(45, 51, 2, '2019-08-24 07:50:44', '2019-08-24 07:50:44'),
(46, 52, 1, '2019-09-04 07:13:24', '2019-09-04 07:13:24'),
(47, 53, 3, '2019-09-04 07:54:34', '2019-09-04 07:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 51, 2, '2019-09-02 07:17:39', '2019-09-02 07:17:39'),
(9, 51, 1, '2019-09-04 07:02:14', '2019-09-04 07:02:14'),
(11, 53, 1, '2019-09-05 05:59:32', '2019-09-05 05:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(3, 'admin@blog.com', '2019-08-01 06:32:44', '2019-08-01 06:32:44'),
(4, 'arman@gmail.com', '2019-08-03 06:23:31', '2019-08-03 06:23:31'),
(7, 'azizsylbd@gmail.com', '2019-08-20 07:01:05', '2019-08-20 07:01:05'),
(8, 'fahadsylbd@gmail.com', '2019-08-24 07:37:45', '2019-08-24 07:37:45'),
(9, 'fouzul@gmail.com', '2019-08-24 07:49:27', '2019-08-24 07:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'sylhet', 'sylhet', '2019-07-23 08:59:10', '2019-09-04 07:11:53'),
(2, 'Dhaka', 'dhaka', '2019-07-27 05:37:24', '2019-07-27 05:37:24'),
(3, 'Khulna', 'khulna', '2019-07-27 05:37:55', '2019-07-27 05:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'MD.Admin', 'admin', 'azizsylbd@gmail.com', '$2y$10$E5ZyJmWrNxIutEjP2.LE7u/.K1WqdXYDFFb892992rsP3vngfT/Ui', 'mdadmin-2019-08-22-5d5e95534eec4.jpg', 'fdhsfdhgsdfghggg', 'iWoaNUT57ssXwovmLx6KoFf78Dfr9IzgNW0LPWk4axftjl7acCOd5lw0yjWU', '2019-08-12 18:00:00', '2019-08-25 06:09:39'),
(2, 2, 'MD.Author Rahman', 'author', 'author@blog.com', '$2y$10$Nw7PW8l42TodTXbQd9b1huJibfod150RYg1oK5nE6HM9zVE4vguAK', 'mdauthor-rahman-2019-08-28-5d666bf680490.jpg', 'test bbb Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', NULL, '2019-08-12 18:00:00', '2019-09-02 07:20:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
