-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Mar 28, 2025 at 06:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_activity`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL DEFAULT 20,
  `activity_type` varchar(255) NOT NULL DEFAULT 'walking' COMMENT 'walking, running',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `points`, `activity_type`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 'running', NULL, '2024-05-27 16:14:00', '2025-03-28 11:16:12'),
(2, 1, 20, 'running', NULL, '2024-11-30 00:23:32', '2025-03-28 11:16:12'),
(3, 1, 20, 'swimming', NULL, '2024-06-02 22:20:01', '2025-03-28 11:16:12'),
(4, 1, 20, 'cycling', NULL, '2024-12-17 14:31:23', '2025-03-28 11:16:12'),
(5, 1, 20, 'swimming', NULL, '2025-02-06 09:10:34', '2025-03-28 11:16:12'),
(6, 1, 20, 'cycling', NULL, '2024-09-23 16:24:00', '2025-03-28 11:16:12'),
(7, 1, 20, 'walking', NULL, '2024-07-31 08:39:58', '2025-03-28 11:16:12'),
(8, 1, 20, 'cycling', NULL, '2024-11-15 21:33:06', '2025-03-28 11:16:12'),
(9, 1, 20, 'cycling', NULL, '2024-05-02 05:01:22', '2025-03-28 11:16:12'),
(10, 1, 20, 'walking', NULL, '2024-10-12 23:06:32', '2025-03-28 11:16:12'),
(11, 1, 20, 'walking', NULL, '2024-09-01 10:31:41', '2025-03-28 11:16:12'),
(12, 1, 20, 'walking', NULL, '2025-03-20 02:24:39', '2025-03-28 11:16:12'),
(13, 1, 20, 'walking', NULL, '2024-11-07 05:54:39', '2025-03-28 11:16:12'),
(14, 1, 20, 'swimming', NULL, '2024-09-16 02:45:57', '2025-03-28 11:16:12'),
(15, 1, 20, 'cycling', NULL, '2024-04-16 16:22:00', '2025-03-28 11:16:12'),
(16, 1, 20, 'swimming', NULL, '2025-03-20 13:32:24', '2025-03-28 11:16:12'),
(17, 2, 20, 'walking', NULL, '2024-10-13 08:45:13', '2025-03-28 11:16:12'),
(18, 2, 20, 'cycling', NULL, '2024-04-29 03:57:32', '2025-03-28 11:16:12'),
(19, 2, 20, 'swimming', NULL, '2024-10-27 01:46:01', '2025-03-28 11:16:12'),
(20, 2, 20, 'walking', NULL, '2024-10-16 19:56:20', '2025-03-28 11:16:12'),
(21, 2, 20, 'running', NULL, '2025-03-12 20:08:19', '2025-03-28 11:16:12'),
(22, 2, 20, 'swimming', NULL, '2024-04-21 09:28:36', '2025-03-28 11:16:12'),
(23, 2, 20, 'walking', NULL, '2024-05-21 03:12:30', '2025-03-28 11:16:12'),
(24, 2, 20, 'running', NULL, '2025-01-30 00:25:31', '2025-03-28 11:16:12'),
(25, 2, 20, 'swimming', NULL, '2024-07-25 21:22:45', '2025-03-28 11:16:12'),
(26, 2, 20, 'cycling', NULL, '2024-10-07 18:41:19', '2025-03-28 11:16:12'),
(27, 2, 20, 'swimming', NULL, '2024-06-13 12:57:06', '2025-03-28 11:16:12'),
(28, 3, 20, 'cycling', NULL, '2024-12-27 04:39:48', '2025-03-28 11:16:12'),
(29, 3, 20, 'walking', NULL, '2025-01-25 09:08:17', '2025-03-28 11:16:12'),
(30, 3, 20, 'walking', NULL, '2024-12-09 11:57:52', '2025-03-28 11:16:12'),
(31, 3, 20, 'swimming', NULL, '2025-02-28 22:37:49', '2025-03-28 11:16:12'),
(32, 3, 20, 'swimming', NULL, '2024-04-27 22:44:49', '2025-03-28 11:16:12'),
(33, 3, 20, 'walking', NULL, '2024-04-11 21:21:39', '2025-03-28 11:16:12'),
(34, 3, 20, 'walking', NULL, '2024-10-11 05:03:19', '2025-03-28 11:16:12'),
(35, 3, 20, 'swimming', NULL, '2024-10-30 20:29:30', '2025-03-28 11:16:12'),
(36, 4, 20, 'swimming', NULL, '2024-04-22 19:50:23', '2025-03-28 11:16:12'),
(37, 4, 20, 'running', NULL, '2024-07-11 20:24:02', '2025-03-28 11:16:12'),
(38, 4, 20, 'cycling', NULL, '2025-02-19 16:00:33', '2025-03-28 11:16:12'),
(39, 4, 20, 'walking', NULL, '2024-05-12 23:04:06', '2025-03-28 11:16:12'),
(40, 4, 20, 'swimming', NULL, '2024-09-02 05:03:03', '2025-03-28 11:16:12'),
(41, 4, 20, 'walking', NULL, '2024-08-03 03:19:33', '2025-03-28 11:16:12'),
(42, 4, 20, 'swimming', NULL, '2024-11-25 07:27:06', '2025-03-28 11:16:12'),
(43, 4, 20, 'walking', NULL, '2024-12-09 07:18:25', '2025-03-28 11:16:12'),
(44, 4, 20, 'running', NULL, '2024-04-16 05:47:14', '2025-03-28 11:16:12'),
(45, 4, 20, 'running', NULL, '2024-06-28 21:07:58', '2025-03-28 11:16:12'),
(46, 4, 20, 'cycling', NULL, '2024-11-19 10:04:20', '2025-03-28 11:16:12'),
(47, 4, 20, 'walking', NULL, '2025-03-16 14:32:46', '2025-03-28 11:16:12'),
(48, 4, 20, 'walking', NULL, '2024-12-26 06:46:12', '2025-03-28 11:16:12'),
(49, 4, 20, 'swimming', NULL, '2024-05-15 01:24:39', '2025-03-28 11:16:12'),
(50, 4, 20, 'running', NULL, '2024-07-17 00:31:16', '2025-03-28 11:16:12'),
(51, 4, 20, 'swimming', NULL, '2024-05-26 00:37:23', '2025-03-28 11:16:12'),
(52, 4, 20, 'running', NULL, '2025-03-14 07:18:38', '2025-03-28 11:16:12'),
(53, 4, 20, 'running', NULL, '2024-10-22 15:42:21', '2025-03-28 11:16:12'),
(54, 5, 20, 'swimming', NULL, '2025-01-23 11:45:33', '2025-03-28 11:16:12'),
(55, 5, 20, 'swimming', NULL, '2024-04-26 10:23:26', '2025-03-28 11:16:12'),
(56, 5, 20, 'running', NULL, '2025-02-10 06:53:47', '2025-03-28 11:16:12'),
(57, 5, 20, 'cycling', NULL, '2024-12-04 07:43:26', '2025-03-28 11:16:12'),
(58, 5, 20, 'swimming', NULL, '2024-08-01 18:36:01', '2025-03-28 11:16:12'),
(59, 5, 20, 'swimming', NULL, '2024-05-01 17:48:17', '2025-03-28 11:16:12'),
(60, 5, 20, 'cycling', NULL, '2025-02-28 11:48:17', '2025-03-28 11:16:12'),
(61, 5, 20, 'swimming', NULL, '2024-10-24 06:05:23', '2025-03-28 11:16:12'),
(62, 5, 20, 'cycling', NULL, '2024-10-16 20:06:52', '2025-03-28 11:16:12'),
(63, 5, 20, 'running', NULL, '2024-08-09 08:18:02', '2025-03-28 11:16:12'),
(64, 5, 20, 'running', NULL, '2024-08-22 21:14:34', '2025-03-28 11:16:12'),
(65, 5, 20, 'running', NULL, '2025-03-16 01:57:56', '2025-03-28 11:16:12'),
(66, 5, 20, 'walking', NULL, '2025-01-18 23:14:12', '2025-03-28 11:16:12'),
(67, 5, 20, 'cycling', NULL, '2024-04-21 17:05:31', '2025-03-28 11:16:12'),
(68, 5, 20, 'swimming', NULL, '2024-05-16 03:51:43', '2025-03-28 11:16:12'),
(69, 5, 20, 'swimming', NULL, '2024-04-09 11:07:11', '2025-03-28 11:16:12'),
(70, 5, 20, 'swimming', NULL, '2025-03-21 08:57:37', '2025-03-28 11:16:12'),
(71, 5, 20, 'running', NULL, '2024-06-24 15:48:10', '2025-03-28 11:16:12'),
(72, 6, 20, 'swimming', NULL, '2024-05-13 13:03:57', '2025-03-28 11:16:12'),
(73, 6, 20, 'swimming', NULL, '2024-06-23 00:49:23', '2025-03-28 11:16:12'),
(74, 6, 20, 'running', NULL, '2025-02-02 01:29:03', '2025-03-28 11:16:12'),
(75, 6, 20, 'cycling', NULL, '2024-08-17 03:32:21', '2025-03-28 11:16:12'),
(76, 6, 20, 'swimming', NULL, '2024-04-02 03:53:57', '2025-03-28 11:16:12'),
(77, 6, 20, 'running', NULL, '2024-07-29 21:04:29', '2025-03-28 11:16:12'),
(78, 6, 20, 'walking', NULL, '2024-04-13 01:29:26', '2025-03-28 11:16:12'),
(79, 6, 20, 'swimming', NULL, '2024-09-17 18:28:50', '2025-03-28 11:16:12'),
(80, 6, 20, 'running', NULL, '2024-09-01 04:14:22', '2025-03-28 11:16:12'),
(81, 7, 20, 'walking', NULL, '2024-08-16 14:36:16', '2025-03-28 11:16:12'),
(82, 7, 20, 'swimming', NULL, '2024-12-03 07:27:58', '2025-03-28 11:16:12'),
(83, 7, 20, 'cycling', NULL, '2025-02-22 13:01:57', '2025-03-28 11:16:12'),
(84, 7, 20, 'cycling', NULL, '2024-08-22 20:19:36', '2025-03-28 11:16:12'),
(85, 7, 20, 'swimming', NULL, '2024-09-20 17:50:47', '2025-03-28 11:16:12'),
(86, 7, 20, 'walking', NULL, '2024-12-01 12:52:54', '2025-03-28 11:16:12'),
(87, 7, 20, 'cycling', NULL, '2024-12-20 08:21:43', '2025-03-28 11:16:12'),
(88, 8, 20, 'swimming', NULL, '2025-01-15 23:48:21', '2025-03-28 11:16:12'),
(89, 8, 20, 'cycling', NULL, '2024-08-18 16:10:51', '2025-03-28 11:16:12'),
(90, 8, 20, 'walking', NULL, '2024-05-27 00:11:33', '2025-03-28 11:16:12'),
(91, 8, 20, 'walking', NULL, '2024-12-01 14:31:34', '2025-03-28 11:16:12'),
(92, 8, 20, 'swimming', NULL, '2024-12-15 02:15:56', '2025-03-28 11:16:12'),
(93, 8, 20, 'cycling', NULL, '2024-12-18 05:54:38', '2025-03-28 11:16:12'),
(94, 8, 20, 'cycling', NULL, '2025-02-19 04:54:29', '2025-03-28 11:16:12'),
(95, 8, 20, 'cycling', NULL, '2024-07-09 01:00:23', '2025-03-28 11:16:12'),
(96, 8, 20, 'cycling', NULL, '2025-01-09 19:59:02', '2025-03-28 11:16:12'),
(97, 8, 20, 'walking', NULL, '2024-04-04 13:47:36', '2025-03-28 11:16:12'),
(98, 8, 20, 'swimming', NULL, '2024-07-28 09:24:53', '2025-03-28 11:16:12'),
(99, 8, 20, 'swimming', NULL, '2024-04-24 16:24:26', '2025-03-28 11:16:12'),
(100, 8, 20, 'running', NULL, '2025-02-15 04:22:31', '2025-03-28 11:16:12'),
(101, 8, 20, 'cycling', NULL, '2024-07-19 06:12:33', '2025-03-28 11:16:12'),
(102, 8, 20, 'cycling', NULL, '2024-12-29 05:57:30', '2025-03-28 11:16:12'),
(103, 9, 20, 'walking', NULL, '2024-09-18 10:23:55', '2025-03-28 11:16:12'),
(104, 9, 20, 'running', NULL, '2024-05-14 01:33:27', '2025-03-28 11:16:12'),
(105, 9, 20, 'swimming', NULL, '2024-06-28 06:02:37', '2025-03-28 11:16:12'),
(106, 9, 20, 'swimming', NULL, '2025-02-25 05:51:27', '2025-03-28 11:16:12'),
(107, 9, 20, 'swimming', NULL, '2024-07-20 16:45:46', '2025-03-28 11:16:12'),
(108, 9, 20, 'walking', NULL, '2024-08-07 10:24:52', '2025-03-28 11:16:12'),
(109, 9, 20, 'cycling', NULL, '2024-12-01 13:52:52', '2025-03-28 11:16:12'),
(110, 9, 20, 'running', NULL, '2024-12-25 20:30:28', '2025-03-28 11:16:12'),
(111, 9, 20, 'cycling', NULL, '2024-12-16 19:31:26', '2025-03-28 11:16:12'),
(112, 9, 20, 'cycling', NULL, '2024-05-25 11:09:39', '2025-03-28 11:16:12'),
(113, 9, 20, 'running', NULL, '2024-12-22 17:34:16', '2025-03-28 11:16:12'),
(114, 9, 20, 'running', NULL, '2025-01-16 10:35:26', '2025-03-28 11:16:12'),
(115, 9, 20, 'running', NULL, '2024-05-10 18:38:26', '2025-03-28 11:16:12'),
(116, 9, 20, 'swimming', NULL, '2025-01-28 21:26:38', '2025-03-28 11:16:12'),
(117, 9, 20, 'swimming', NULL, '2025-01-18 13:40:02', '2025-03-28 11:16:12'),
(118, 10, 20, 'cycling', NULL, '2024-11-03 00:39:26', '2025-03-28 11:16:12'),
(119, 10, 20, 'cycling', NULL, '2024-06-18 12:48:10', '2025-03-28 11:16:12'),
(120, 10, 20, 'swimming', NULL, '2025-02-08 08:30:55', '2025-03-28 11:16:12'),
(121, 10, 20, 'running', NULL, '2024-05-02 22:59:08', '2025-03-28 11:16:12'),
(122, 10, 20, 'swimming', NULL, '2025-03-04 04:43:11', '2025-03-28 11:16:12'),
(123, 10, 20, 'walking', NULL, '2024-08-22 03:13:49', '2025-03-28 11:16:12'),
(124, 10, 20, 'swimming', NULL, '2024-10-20 03:17:49', '2025-03-28 11:16:12'),
(125, 10, 20, 'cycling', NULL, '2025-03-27 22:19:03', '2025-03-28 11:16:12'),
(126, 10, 20, 'running', NULL, '2024-09-04 22:44:04', '2025-03-28 11:16:12'),
(127, 11, 20, 'running', NULL, '2024-12-05 12:34:13', '2025-03-28 11:16:12'),
(128, 11, 20, 'swimming', NULL, '2025-01-17 20:46:05', '2025-03-28 11:16:12'),
(129, 11, 20, 'swimming', NULL, '2025-02-04 04:18:01', '2025-03-28 11:16:12'),
(130, 11, 20, 'cycling', NULL, '2024-04-08 22:26:17', '2025-03-28 11:16:12'),
(131, 11, 20, 'swimming', NULL, '2024-09-30 21:32:14', '2025-03-28 11:16:12'),
(132, 11, 20, 'swimming', NULL, '2024-05-31 08:55:11', '2025-03-28 11:16:12'),
(133, 11, 20, 'cycling', NULL, '2024-07-02 15:20:28', '2025-03-28 11:16:12'),
(134, 11, 20, 'swimming', NULL, '2025-02-19 20:41:10', '2025-03-28 11:16:12'),
(135, 11, 20, 'walking', NULL, '2025-02-10 19:58:41', '2025-03-28 11:16:12'),
(136, 12, 20, 'swimming', NULL, '2024-09-11 00:03:29', '2025-03-28 11:16:12'),
(137, 12, 20, 'running', NULL, '2024-12-25 13:13:31', '2025-03-28 11:16:12'),
(138, 12, 20, 'swimming', NULL, '2024-04-03 11:18:29', '2025-03-28 11:16:12'),
(139, 12, 20, 'walking', NULL, '2024-04-05 17:23:16', '2025-03-28 11:16:12'),
(140, 12, 20, 'running', NULL, '2024-11-03 15:03:11', '2025-03-28 11:16:12'),
(141, 12, 20, 'running', NULL, '2024-05-19 11:18:13', '2025-03-28 11:16:12'),
(142, 12, 20, 'cycling', NULL, '2024-07-09 14:23:51', '2025-03-28 11:16:12'),
(143, 12, 20, 'walking', NULL, '2024-08-09 10:17:13', '2025-03-28 11:16:12'),
(144, 12, 20, 'walking', NULL, '2024-09-23 10:00:41', '2025-03-28 11:16:12'),
(145, 12, 20, 'swimming', NULL, '2024-12-08 08:14:37', '2025-03-28 11:16:12'),
(146, 12, 20, 'cycling', NULL, '2024-09-24 22:50:48', '2025-03-28 11:16:12'),
(147, 12, 20, 'walking', NULL, '2024-08-07 22:40:23', '2025-03-28 11:16:12'),
(148, 12, 20, 'walking', NULL, '2024-03-29 15:34:06', '2025-03-28 11:16:12'),
(149, 12, 20, 'swimming', NULL, '2024-05-14 23:51:52', '2025-03-28 11:16:12'),
(150, 12, 20, 'swimming', NULL, '2025-03-23 09:02:47', '2025-03-28 11:16:12'),
(151, 12, 20, 'cycling', NULL, '2025-02-08 12:11:43', '2025-03-28 11:16:12'),
(152, 12, 20, 'swimming', NULL, '2024-10-23 23:24:20', '2025-03-28 11:16:12'),
(153, 12, 20, 'swimming', NULL, '2024-12-27 11:37:05', '2025-03-28 11:16:12'),
(154, 12, 20, 'cycling', NULL, '2024-12-24 19:35:27', '2025-03-28 11:16:12'),
(155, 12, 20, 'running', NULL, '2024-08-25 19:22:18', '2025-03-28 11:16:12'),
(156, 13, 20, 'cycling', NULL, '2024-04-04 02:54:18', '2025-03-28 11:16:12'),
(157, 13, 20, 'cycling', NULL, '2024-08-07 06:17:36', '2025-03-28 11:16:12'),
(158, 13, 20, 'cycling', NULL, '2024-07-10 15:15:21', '2025-03-28 11:16:12'),
(159, 13, 20, 'walking', NULL, '2024-06-30 09:30:32', '2025-03-28 11:16:12'),
(160, 13, 20, 'walking', NULL, '2024-08-05 01:40:41', '2025-03-28 11:16:12'),
(161, 13, 20, 'swimming', NULL, '2025-02-05 23:18:36', '2025-03-28 11:16:12'),
(162, 13, 20, 'walking', NULL, '2025-01-19 12:58:40', '2025-03-28 11:16:12'),
(163, 13, 20, 'walking', NULL, '2024-07-24 03:53:38', '2025-03-28 11:16:12'),
(164, 13, 20, 'running', NULL, '2024-08-31 05:11:12', '2025-03-28 11:16:12'),
(165, 13, 20, 'cycling', NULL, '2024-09-21 03:38:44', '2025-03-28 11:16:12'),
(166, 13, 20, 'swimming', NULL, '2024-12-22 03:20:41', '2025-03-28 11:16:12'),
(167, 13, 20, 'cycling', NULL, '2025-02-20 14:36:10', '2025-03-28 11:16:12'),
(168, 13, 20, 'swimming', NULL, '2024-11-15 23:05:07', '2025-03-28 11:16:12'),
(169, 13, 20, 'walking', NULL, '2024-11-25 15:14:49', '2025-03-28 11:16:12'),
(170, 13, 20, 'walking', NULL, '2024-07-30 14:37:29', '2025-03-28 11:16:12'),
(171, 13, 20, 'walking', NULL, '2025-01-20 05:02:25', '2025-03-28 11:16:12'),
(172, 13, 20, 'swimming', NULL, '2024-07-29 20:06:44', '2025-03-28 11:16:12'),
(173, 14, 20, 'walking', NULL, '2025-03-14 04:18:39', '2025-03-28 11:16:12'),
(174, 14, 20, 'running', NULL, '2025-01-30 04:35:49', '2025-03-28 11:16:12'),
(175, 14, 20, 'running', NULL, '2024-05-13 23:34:34', '2025-03-28 11:16:12'),
(176, 14, 20, 'cycling', NULL, '2024-11-07 00:36:22', '2025-03-28 11:16:12'),
(177, 14, 20, 'swimming', NULL, '2024-09-30 03:57:53', '2025-03-28 11:16:12'),
(178, 14, 20, 'running', NULL, '2024-04-01 09:46:47', '2025-03-28 11:16:12'),
(179, 14, 20, 'running', NULL, '2024-06-13 18:51:04', '2025-03-28 11:16:12'),
(180, 15, 20, 'swimming', NULL, '2024-10-17 22:45:22', '2025-03-28 11:16:12'),
(181, 15, 20, 'cycling', NULL, '2024-05-05 09:39:15', '2025-03-28 11:16:12'),
(182, 15, 20, 'swimming', NULL, '2025-02-12 21:40:46', '2025-03-28 11:16:12'),
(183, 15, 20, 'swimming', NULL, '2024-06-11 03:48:43', '2025-03-28 11:16:12'),
(184, 15, 20, 'walking', NULL, '2024-08-22 04:12:43', '2025-03-28 11:16:12'),
(185, 15, 20, 'swimming', NULL, '2024-09-25 16:37:09', '2025-03-28 11:16:12'),
(186, 15, 20, 'walking', NULL, '2024-12-22 23:14:50', '2025-03-28 11:16:12'),
(187, 15, 20, 'walking', NULL, '2024-11-14 01:42:04', '2025-03-28 11:16:12'),
(188, 15, 20, 'running', NULL, '2025-03-02 20:57:32', '2025-03-28 11:16:12'),
(189, 15, 20, 'swimming', NULL, '2024-06-10 23:02:19', '2025-03-28 11:16:12'),
(190, 15, 20, 'running', NULL, '2024-06-03 02:21:38', '2025-03-28 11:16:12'),
(191, 15, 20, 'walking', NULL, '2024-08-13 06:12:00', '2025-03-28 11:16:12'),
(192, 15, 20, 'cycling', NULL, '2025-03-28 05:23:07', '2025-03-28 11:16:12'),
(193, 15, 20, 'swimming', NULL, '2024-05-31 13:20:44', '2025-03-28 11:16:12'),
(194, 15, 20, 'swimming', NULL, '2024-10-14 05:24:07', '2025-03-28 11:16:12'),
(195, 15, 20, 'cycling', NULL, '2024-03-31 14:26:31', '2025-03-28 11:16:12'),
(196, 15, 20, 'cycling', NULL, '2024-09-19 02:25:25', '2025-03-28 11:16:12'),
(197, 15, 20, 'swimming', NULL, '2024-09-03 17:22:04', '2025-03-28 11:16:12'),
(198, 15, 20, 'running', NULL, '2025-01-09 22:46:38', '2025-03-28 11:16:12'),
(199, 15, 20, 'swimming', NULL, '2024-07-24 23:18:52', '2025-03-28 11:16:12'),
(200, 16, 20, 'cycling', NULL, '2024-06-07 04:50:05', '2025-03-28 11:16:12'),
(201, 16, 20, 'running', NULL, '2024-06-28 22:49:52', '2025-03-28 11:16:12'),
(202, 16, 20, 'cycling', NULL, '2024-09-03 10:12:15', '2025-03-28 11:16:12'),
(203, 16, 20, 'running', NULL, '2024-07-24 03:22:43', '2025-03-28 11:16:12'),
(204, 16, 20, 'walking', NULL, '2024-04-20 14:56:32', '2025-03-28 11:16:12'),
(205, 16, 20, 'cycling', NULL, '2024-07-06 21:33:52', '2025-03-28 11:16:12'),
(206, 16, 20, 'walking', NULL, '2025-02-07 22:12:31', '2025-03-28 11:16:12'),
(207, 16, 20, 'cycling', NULL, '2024-09-30 05:26:36', '2025-03-28 11:16:12'),
(208, 16, 20, 'cycling', NULL, '2025-03-02 17:42:57', '2025-03-28 11:16:12'),
(209, 16, 20, 'running', NULL, '2024-08-06 05:11:47', '2025-03-28 11:16:12'),
(210, 17, 20, 'swimming', NULL, '2024-11-02 18:22:28', '2025-03-28 11:16:12'),
(211, 17, 20, 'cycling', NULL, '2024-04-25 21:37:53', '2025-03-28 11:16:12'),
(212, 17, 20, 'cycling', NULL, '2024-09-18 14:32:06', '2025-03-28 11:16:12'),
(213, 17, 20, 'swimming', NULL, '2025-01-31 18:44:58', '2025-03-28 11:16:12'),
(214, 17, 20, 'swimming', NULL, '2024-07-20 21:49:08', '2025-03-28 11:16:12'),
(215, 17, 20, 'swimming', NULL, '2024-11-26 07:24:36', '2025-03-28 11:16:12'),
(216, 17, 20, 'swimming', NULL, '2025-02-17 07:58:24', '2025-03-28 11:16:12'),
(217, 17, 20, 'swimming', NULL, '2024-12-07 13:54:20', '2025-03-28 11:16:12'),
(218, 17, 20, 'running', NULL, '2024-10-06 13:33:18', '2025-03-28 11:16:12'),
(219, 17, 20, 'running', NULL, '2025-02-17 09:43:01', '2025-03-28 11:16:12'),
(220, 17, 20, 'swimming', NULL, '2024-07-22 07:24:38', '2025-03-28 11:16:12'),
(221, 17, 20, 'swimming', NULL, '2024-07-02 06:44:31', '2025-03-28 11:16:12'),
(222, 18, 20, 'running', NULL, '2025-01-08 11:29:10', '2025-03-28 11:16:12'),
(223, 18, 20, 'swimming', NULL, '2024-06-15 19:41:34', '2025-03-28 11:16:12'),
(224, 18, 20, 'swimming', NULL, '2024-06-17 11:50:08', '2025-03-28 11:16:12'),
(225, 18, 20, 'swimming', NULL, '2024-05-13 00:25:00', '2025-03-28 11:16:12'),
(226, 18, 20, 'walking', NULL, '2025-03-27 08:20:18', '2025-03-28 11:16:12'),
(227, 18, 20, 'swimming', NULL, '2025-03-04 06:37:01', '2025-03-28 11:16:12'),
(228, 19, 20, 'cycling', NULL, '2024-04-07 02:15:10', '2025-03-28 11:16:12'),
(229, 19, 20, 'running', NULL, '2024-06-01 07:03:17', '2025-03-28 11:16:12'),
(230, 19, 20, 'swimming', NULL, '2024-09-08 04:46:46', '2025-03-28 11:16:12'),
(231, 19, 20, 'cycling', NULL, '2024-10-16 02:57:00', '2025-03-28 11:16:12'),
(232, 19, 20, 'swimming', NULL, '2024-08-16 19:29:13', '2025-03-28 11:16:12'),
(233, 19, 20, 'walking', NULL, '2024-09-02 05:28:36', '2025-03-28 11:16:12'),
(234, 19, 20, 'walking', NULL, '2024-12-26 01:45:15', '2025-03-28 11:16:12'),
(235, 19, 20, 'running', NULL, '2025-03-09 18:17:01', '2025-03-28 11:16:12'),
(236, 19, 20, 'swimming', NULL, '2024-12-25 05:40:18', '2025-03-28 11:16:12'),
(237, 19, 20, 'walking', NULL, '2025-03-25 19:26:04', '2025-03-28 11:16:12'),
(238, 19, 20, 'cycling', NULL, '2024-11-02 06:48:34', '2025-03-28 11:16:12'),
(239, 19, 20, 'running', NULL, '2025-02-02 18:05:56', '2025-03-28 11:16:12'),
(240, 19, 20, 'walking', NULL, '2024-12-23 12:40:36', '2025-03-28 11:16:12'),
(241, 19, 20, 'cycling', NULL, '2024-05-12 11:36:23', '2025-03-28 11:16:12'),
(242, 19, 20, 'swimming', NULL, '2024-05-23 19:53:34', '2025-03-28 11:16:12'),
(243, 19, 20, 'walking', NULL, '2025-01-21 10:19:14', '2025-03-28 11:16:12'),
(244, 19, 20, 'running', NULL, '2024-07-29 09:24:03', '2025-03-28 11:16:12'),
(245, 20, 20, 'swimming', NULL, '2024-12-19 18:05:41', '2025-03-28 11:16:12'),
(246, 20, 20, 'walking', NULL, '2024-06-09 17:42:49', '2025-03-28 11:16:12'),
(247, 20, 20, 'swimming', NULL, '2024-11-04 19:06:09', '2025-03-28 11:16:12'),
(248, 20, 20, 'running', NULL, '2024-06-12 05:48:29', '2025-03-28 11:16:12'),
(249, 20, 20, 'swimming', NULL, '2024-09-08 09:56:27', '2025-03-28 11:16:12'),
(250, 20, 20, 'walking', NULL, '2024-04-29 15:14:04', '2025-03-28 11:16:12'),
(251, 20, 20, 'cycling', NULL, '2024-05-14 23:35:36', '2025-03-28 11:16:12'),
(252, 20, 20, 'running', NULL, '2024-07-14 03:11:19', '2025-03-28 11:16:12'),
(253, 20, 20, 'running', NULL, '2025-01-12 11:14:16', '2025-03-28 11:16:12'),
(254, 20, 20, 'cycling', NULL, '2024-06-24 16:54:16', '2025-03-28 11:16:12'),
(255, 20, 20, 'swimming', NULL, '2025-01-09 18:48:20', '2025-03-28 11:16:12'),
(256, 20, 20, 'walking', NULL, '2024-11-26 07:17:57', '2025-03-28 11:16:12'),
(257, 20, 20, 'running', NULL, '2024-07-12 11:42:07', '2025-03-28 11:16:12'),
(258, 20, 20, 'walking', NULL, '2024-11-20 23:15:09', '2025-03-28 11:16:12'),
(259, 20, 20, 'running', NULL, '2024-05-11 05:30:52', '2025-03-28 11:16:12'),
(260, 21, 20, 'running', NULL, '2024-08-08 08:02:28', '2025-03-28 11:16:12'),
(261, 21, 20, 'cycling', NULL, '2024-09-14 12:38:03', '2025-03-28 11:16:12'),
(262, 21, 20, 'walking', NULL, '2024-07-19 09:02:27', '2025-03-28 11:16:12'),
(263, 21, 20, 'cycling', NULL, '2025-03-03 22:39:46', '2025-03-28 11:16:12'),
(264, 21, 20, 'swimming', NULL, '2025-01-28 11:42:04', '2025-03-28 11:16:12'),
(265, 21, 20, 'walking', NULL, '2024-07-08 07:30:39', '2025-03-28 11:16:12'),
(266, 21, 20, 'walking', NULL, '2024-04-24 11:28:46', '2025-03-28 11:16:12'),
(267, 21, 20, 'cycling', NULL, '2024-11-22 12:08:28', '2025-03-28 11:16:12'),
(268, 21, 20, 'cycling', NULL, '2024-08-15 15:56:28', '2025-03-28 11:16:12'),
(269, 21, 20, 'swimming', NULL, '2024-09-03 22:39:03', '2025-03-28 11:16:12'),
(270, 21, 20, 'walking', NULL, '2024-08-08 18:57:25', '2025-03-28 11:16:12'),
(271, 21, 20, 'swimming', NULL, '2024-05-04 12:58:05', '2025-03-28 11:16:12'),
(272, 21, 20, 'cycling', NULL, '2024-09-29 22:58:55', '2025-03-28 11:16:12'),
(273, 21, 20, 'running', NULL, '2024-09-02 20:34:09', '2025-03-28 11:16:12'),
(274, 21, 20, 'running', NULL, '2025-01-12 17:55:03', '2025-03-28 11:16:12'),
(275, 21, 20, 'cycling', NULL, '2024-09-28 06:42:37', '2025-03-28 11:16:12'),
(276, 21, 20, 'cycling', NULL, '2024-09-11 08:27:10', '2025-03-28 11:16:12'),
(277, 4, 20, 'walking', NULL, '2025-03-28 11:16:41', '2025-03-28 11:16:41'),
(278, 4, 20, 'walking', NULL, '2025-03-28 11:16:47', '2025-03-28 11:16:47'),
(279, 4, 20, 'walking', NULL, '2025-03-28 11:16:53', '2025-03-28 11:16:53'),
(280, 18, 20, 'walking', NULL, '2025-03-28 11:30:36', '2025-03-28 11:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(46, '0001_01_01_000000_create_users_table', 1),
(47, '0001_01_01_000001_create_cache_table', 1),
(48, '0001_01_01_000002_create_jobs_table', 1),
(49, '2025_03_28_151822_create_activities_table', 1),
(50, '2025_03_28_151828_create_user_points_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ol0MZCHNwjwkSCDQnSF9KEjmzijqqwXOR6fhMK82', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRXZQN0ZpMFpJVWw0NE10Q0JEeW9oVmhsOWJoVkI2MUQwUDFWZ0xDayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xlYWRlcmJvYXJkIjt9fQ==', 1743181237);

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
(1, 'Admin User', 'user@gmail.com', NULL, '$2y$12$sxyA7FCSNpj9u5NIy6Zrje7x5qu.usur4GxY8cofShoUxN4TQdzh2', NULL, '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(2, 'Dr. Jayce Padberg', 'swift.edd@example.com', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', '58XSPIojXX', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(3, 'Prof. Brad Dietrich IV', 'smitham.ettie@example.org', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'X4WbbDYrHf', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(4, 'Mrs. Elissa Metz III', 'marcellus59@example.com', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'yAwSOhd2mo', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(5, 'Maximillian Schmeler', 'ybrown@example.com', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'Wl9bPR9yHf', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(6, 'Mrs. Josiane Armstrong', 'bmayert@example.org', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'bTq4OxNylS', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(7, 'Myra Koelpin', 'stokes.camron@example.net', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'iUbeqpI25h', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(8, 'Anika Heller', 'little.brendon@example.org', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'mzZd6CPRIp', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(9, 'Sherwood O\'Kon', 'kstehr@example.com', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'JQ9i9oZwjT', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(10, 'Elizabeth Kuhlman', 'melba61@example.net', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'FoOzkmKGHH', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(11, 'Elliot Lindgren', 'merlin.kiehn@example.com', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'Tzpwpgfh7c', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(12, 'Prof. Danika Zieme II', 'bruce05@example.org', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', '6QKD2kStXq', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(13, 'Webster Sauer III', 'sarai30@example.com', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'AhBb8E7n2R', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(14, 'Miss Isabell Hettinger', 'bradley.powlowski@example.org', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'RDS66imJuW', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(15, 'Waldo Legros', 'hkoch@example.com', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'Mbo59lgQgL', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(16, 'Bernie Rutherford', 'greenfelder.leonardo@example.com', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'xEnObREhIs', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(17, 'Jakayla Casper', 'reichert.lilyan@example.com', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'PldJAskVuv', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(18, 'Alycia Marvin', 'francesco.reichert@example.org', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'SnQLGLRjHJ', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(19, 'Faustino Carter', 'swaniawski.isac@example.net', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'VdQIuuTxQ0', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(20, 'Johathan Rutherford', 'whowell@example.net', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'HbrTUgI5GP', '2025-03-28 11:16:12', '2025-03-28 11:16:12'),
(21, 'Mr. Tremayne McLaughlin', 'reyna66@example.com', '2025-03-28 11:16:12', '$2y$12$LXa2E3po5X7XbMsImUw.6.2Qdtx3eBWgfGGMsZdGyfwpbuXyeVn1e', 'tLwKONqze3', '2025-03-28 11:16:12', '2025-03-28 11:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_points`
--

CREATE TABLE `user_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_points` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_points`
--

INSERT INTO `user_points` (`id`, `user_id`, `total_points`, `rank`, `created_at`, `updated_at`) VALUES
(1, 4, 420, 1, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(2, 12, 400, 2, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(3, 15, 400, 2, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(4, 5, 360, 4, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(5, 19, 340, 5, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(6, 13, 340, 5, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(7, 21, 340, 5, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(8, 1, 320, 8, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(9, 9, 300, 9, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(10, 20, 300, 9, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(11, 8, 300, 9, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(12, 17, 240, 12, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(13, 2, 220, 13, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(14, 16, 200, 14, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(15, 10, 180, 15, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(16, 11, 180, 15, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(17, 6, 180, 15, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(18, 3, 160, 18, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(19, 18, 140, 19, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(20, 14, 140, 19, '2025-03-28 11:30:37', '2025-03-28 11:30:37'),
(21, 7, 140, 19, '2025-03-28 11:30:37', '2025-03-28 11:30:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_points`
--
ALTER TABLE `user_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_points_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_points`
--
ALTER TABLE `user_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_points`
--
ALTER TABLE `user_points`
  ADD CONSTRAINT `user_points_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
