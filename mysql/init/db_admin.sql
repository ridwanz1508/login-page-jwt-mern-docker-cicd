-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_admin
CREATE DATABASE IF NOT EXISTS `db_admin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db_admin`;

-- Dumping structure for table db_admin.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_admin.sessions: ~78 rows (approximately)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
	('0lzPXZY9lWx01Xne_ovOJMCYRo-iNM5o', '2025-02-22 06:23:00', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:23:00', '2025-02-21 06:23:00'),
	('0s3uGK6lgE_InOoqleZoi3GMSg1aBDzv', '2025-02-22 03:37:55', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:37:55', '2025-02-21 03:37:55'),
	('1KtRccW-QLzr2024Z4qWhfq5vfYay1Ya', '2025-02-22 04:22:13', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:22:13', '2025-02-21 04:22:13'),
	('43s0XF6inBzjqV6qG2Q0t2XzlXq6-ruB', '2025-02-22 06:22:33', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:22:34', '2025-02-21 06:22:34'),
	('4kUgNwAXTmLqh5rb0qU61Kzo7fVE4fwJ', '2025-02-22 04:24:24', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:24:24', '2025-02-21 04:24:24'),
	('4Opa6vGs1aTZZSMlMbSiMdVZxocvovEg', '2025-02-22 03:13:39', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:13:39', '2025-02-21 03:13:39'),
	('4OvkGD-0W5sJj8afiRIcfrmn0V8StH5q', '2025-02-22 04:08:40', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:08:40', '2025-02-21 04:08:40'),
	('625eIvrsvYb6YDViE7Ay-xc7lgMdmBv3', '2025-02-22 06:11:27', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:11:27', '2025-02-21 06:11:27'),
	('6qpgfgUk14X2KxWAr6pIuJSHjii1qheN', '2025-04-13 14:22:58', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-04-12 14:22:58', '2025-04-12 14:22:58'),
	('6WEA50NWmxtgkqahLyzpTuS6TdaOFQH_', '2025-02-22 03:27:18', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:27:18', '2025-02-21 03:27:18'),
	('7upXMaEceEP8xO9jRA2-DPutXZ5W9vIb', '2025-02-22 06:25:02', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:25:02', '2025-02-21 06:25:02'),
	('9EhtY1hal2HF8puSgp7XvHOgQt6jl-LE', '2025-02-22 03:14:11', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:14:11', '2025-02-21 03:14:11'),
	('A9yoJK-4NIXKf5gkL0hBtr-wUY_Nn4jL', '2025-02-22 08:36:17', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 08:36:17', '2025-02-21 08:36:17'),
	('b1DwO78fk-JmRsvqYXN7VW1XgORynA2R', '2025-02-22 03:29:37', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:29:37', '2025-02-21 03:29:37'),
	('b2qlt0T4O7pqZzM3AygsRsYhAiD4IcDC', '2025-02-22 03:26:25', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:26:25', '2025-02-21 03:26:25'),
	('B9KvZge_BNNdCMFfrIgBvWv8OVDtopGX', '2025-02-22 03:29:14', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:29:14', '2025-02-21 03:29:14'),
	('bibIxE2_ens4PioGo2YBI090DwPvlVQt', '2025-02-22 03:57:24', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:57:24', '2025-02-21 03:57:24'),
	('bVCmE87L8NyLUMtILXRQ7PVsmL-02LVV', '2025-02-22 04:28:41', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:28:41', '2025-02-21 04:28:41'),
	('CBozWkRxCfjt6XzqdsDvJwPw2_boh6qJ', '2025-02-22 06:11:34', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:11:34', '2025-02-21 06:11:34'),
	('cCTwE83DQNjHx0SHb4SRthH87KN6zDpJ', '2025-02-22 06:24:48', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:24:48', '2025-02-21 06:24:48'),
	('CxepnTLjwFHfj9pTDcxRp4OWP5uuyNAE', '2025-02-22 04:07:05', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:07:05', '2025-02-21 04:07:05'),
	('CyI65ViiBWsSlTVKYNyh39rPyK4fmgG7', '2025-02-22 04:01:35', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:01:35', '2025-02-21 04:01:35'),
	('d9oH3rSYPvv2PLV96LaaKLfwHPJMdP6C', '2025-04-13 14:21:54', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-04-12 14:21:54', '2025-04-12 14:21:54'),
	('dLduBYzANFXNrH9FMi3HTxD5nX3irRXF', '2025-02-22 06:22:07', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:22:07', '2025-02-21 06:22:07'),
	('DLOLPv-GHiQOvj7SgiDY68JqaVge5Xmu', '2025-02-22 03:55:35', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:55:35', '2025-02-21 03:55:35'),
	('eHAWpGm9MHkqBUsaloNgJ8rW--rsWR7u', '2025-02-22 04:08:31', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:08:31', '2025-02-21 04:08:31'),
	('EHJognL74rUYjXk-k-WEWbLTggA2nFU2', '2025-02-22 03:37:00', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:37:00', '2025-02-21 03:37:00'),
	('eJEyqUUy49b-fMr31PedDEyAghqlP9M8', '2025-02-22 03:39:34', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:39:34', '2025-02-21 03:39:34'),
	('eMS_6cO7Rhv0bfOm_2Nftn7JvgpvSrFi', '2025-02-22 08:36:24', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"},"userId":"0f677a5a-6a74-4e4a-a345-99c30d291424"}', '2025-02-21 06:25:02', '2025-02-21 08:36:24'),
	('emZk5vJPfbE-4EOHHhTAPtcshzErHodK', '2025-02-22 03:40:16', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:40:16', '2025-02-21 03:40:16'),
	('equ2cEXQJW95hZVwLeSFIIkBIfTNO4uO', '2025-02-22 06:21:44', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:21:44', '2025-02-21 06:21:44'),
	('fZKoL5YgXkCP-g5ZIivizNn6gzd80-yD', '2025-02-22 04:36:04', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:36:04', '2025-02-21 04:36:04'),
	('G6kpxbre7kBjRfOPNvC2TagpJMgtFa-l', '2025-02-22 06:23:30', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:23:30', '2025-02-21 06:23:30'),
	('gPXTml-YDRhXVi1pTMEAOPwjmje0K0Km', '2025-02-22 03:44:09', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:44:09', '2025-02-21 03:44:09'),
	('H9y5EuerQKnBq3IICDsnpK9uC7OiER7m', '2025-02-22 04:28:47', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:28:47', '2025-02-21 04:28:47'),
	('hNHvIJNn0kEn5Q4vPdpOsISj90aAsdn-', '2025-02-22 04:23:57', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:23:57', '2025-02-21 04:23:57'),
	('HnLBifN2Wpjvo1IT3-hPNe76qNC-vckF', '2025-02-22 06:22:23', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:22:23', '2025-02-21 06:22:23'),
	('hv4DZgijnDuQGHvt7hfIBwSWyGZNw2op', '2025-02-22 06:21:38', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:21:38', '2025-02-21 06:21:38'),
	('HYa7Mu9PSp0QjNUEuFAEKQuhhA0Cwi3g', '2025-02-22 03:44:03', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:44:03', '2025-02-21 03:44:03'),
	('iyWkAAe9TzNumHb4h55xFihKOeq3j9tj', '2025-02-22 06:12:27', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:12:27', '2025-02-21 06:12:27'),
	('j7HmDSIWlEz6aODLnflbwcTyiIBiFGfM', '2025-02-22 03:26:18', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:26:18', '2025-02-21 03:26:18'),
	('JcpRnR9zekOzb1M26BiSdUAXaiSI5ASs', '2025-02-22 03:38:01', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:38:01', '2025-02-21 03:38:01'),
	('jmtyUp8V1cmXjvNWZy9zFWTazXf_kDUD', '2025-02-22 04:35:34', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:35:34', '2025-02-21 04:35:34'),
	('jN7GUqza17oVnuB05DqLKQ-HdH_Y3Avl', '2025-02-22 04:27:37', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:27:37', '2025-02-21 04:27:37'),
	('Ki5Oh2O5Ubciqm_Grlx0oOzKfNDMB-Gv', '2025-02-22 03:35:37', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:35:37', '2025-02-21 03:35:37'),
	('KMK49Y6zuHCq4AwSlz7VeoE10wRvAbcW', '2025-02-22 03:44:27', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:44:27', '2025-02-21 03:44:27'),
	('KoJ2cQezKDf-nHMUT3GNp09sxTR65AaZ', '2025-04-13 14:21:57', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-04-12 14:21:57', '2025-04-12 14:21:57'),
	('kyTv45lSRqtGd2WpIBhbyzTuXorG4ABI', '2025-02-22 03:14:26', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:14:26', '2025-02-21 03:14:26'),
	('Llnpr2hpAJ4TtYlTeXxSMznDmTTEu-iZ', '2025-02-22 03:37:52', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:37:52', '2025-02-21 03:37:52'),
	('LPgGtlasjUCxJEmf92BNpeRKze9Bo4EZ', '2025-02-22 04:36:13', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:36:13', '2025-02-21 04:36:13'),
	('mdzMLb9GTljthafa_mZGiotSu2eZY5l5', '2025-02-22 06:23:43', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:23:43', '2025-02-21 06:23:43'),
	('MI4U5FHiQiWdjJWLOPaLrLqYTkLWqYGT', '2025-02-22 04:06:51', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:06:51', '2025-02-21 04:06:51'),
	('nU1o68Wh-uidn8aH_Cv65r17_lt2JPrH', '2025-02-22 03:44:43', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:44:43', '2025-02-21 03:44:43'),
	('Oq9i4gLSnl-6HlTiSVPa1cUN8xLJ2hGv', '2025-02-22 06:21:54', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:21:54', '2025-02-21 06:21:54'),
	('or5S2tU7BlatnSgKHlQr4f3cSfQcj2-L', '2025-02-22 03:13:02', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:13:02', '2025-02-21 03:13:02'),
	('OSr6brogvhC2t2rgWbt1BM_fOnJq0Rqh', '2025-02-22 04:29:25', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:29:25', '2025-02-21 04:29:25'),
	('OtWWSQfnPuiHP-mWWhinxpiRFJE0PyQy', '2025-02-22 06:22:36', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:22:36', '2025-02-21 06:22:36'),
	('OwpShK4GKWLCNaLSfSw6umVFEsF2ZNsV', '2025-02-22 04:27:50', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:27:50', '2025-02-21 04:27:50'),
	('PChvUUpQNSzwXoNRR3OAjKHK6Kjt9wp1', '2025-02-22 03:36:27', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:36:27', '2025-02-21 03:36:27'),
	('QjM47z8gfWsAWEjRFqJwhBQcvEmZsEe-', '2025-02-22 03:36:49', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:36:49', '2025-02-21 03:36:49'),
	('RBBpQfixhzi9sgguWv5pBPFcAcRe1Gbb', '2025-02-22 04:35:51', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:35:51', '2025-02-21 04:35:51'),
	('RNOcFGS8SGdvX85wvi4iZKmkfvxBJe-W', '2025-02-22 03:13:28', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:13:28', '2025-02-21 03:13:28'),
	('Ry9lpuZQukPOCUqUWDZyR-lPd9m4qeb7', '2025-02-22 04:33:36', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:33:36', '2025-02-21 04:33:36'),
	('Ta74mYCed9KdsXITm6kkyaXe6wf38lYJ', '2025-02-22 04:22:33', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:22:33', '2025-02-21 04:22:33'),
	('U6ht8rUUGypZwsjGrhJCtLvHL0DF5FVz', '2025-02-22 03:46:03', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:46:03', '2025-02-21 03:46:03'),
	('usaYfdl2zROAXNeh4C1sYad7Us2xIqdX', '2025-02-22 04:33:29', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:33:29', '2025-02-21 04:33:29'),
	('UV4yYZ-59BtU5tadQZ5o8ghopHAz5r9s', '2025-02-22 03:44:23', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:44:23', '2025-02-21 03:44:23'),
	('V5V0wXVIHoBJsADV0_DvBedq63KvQVL8', '2025-02-22 04:08:14', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:08:14', '2025-02-21 04:08:14'),
	('VxyFjKZA-gtdoQQEkfDuEdAQ4mPrdjkh', '2025-04-13 14:22:23', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-04-12 14:22:23', '2025-04-12 14:22:23'),
	('W9IWHELrmaxi2sgUPmz9w1_pQ6qfs1vp', '2025-02-22 03:37:23', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:37:23', '2025-02-21 03:37:23'),
	('WLT4e7XL0WryJ7kpJZy7pzXnc1_jzG23', '2025-02-22 03:55:15', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:55:15', '2025-02-21 03:55:15'),
	('yb0CCJxtKV0JGzXtORLYan1vmgEkoP1O', '2025-02-22 04:27:44', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:27:44', '2025-02-21 04:27:44'),
	('YDxi0PQfbU7mc745fl_g-iDBW54_tKuN', '2025-02-22 03:29:27', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:29:27', '2025-02-21 03:29:27'),
	('zBzIxCicZ4yzDEbjWoMcnLuwCB1Zu9pQ', '2025-02-22 04:29:13', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 04:29:13', '2025-02-21 04:29:13'),
	('ZfSQAt7EupZTJ1xNVHHlWBq-k1e2YCh-', '2025-02-22 06:21:28', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:21:28', '2025-02-21 06:21:28'),
	('ZIVwi8CD1E3iEa0Ly8y1KK9Kz_J9kmE9', '2025-02-22 03:44:20', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:44:20', '2025-02-21 03:44:20'),
	('zN186_6o0INxHDbtJ868bAIx5qr6v7tG', '2025-02-22 06:12:04', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 06:12:04', '2025-02-21 06:12:04'),
	('_Qr9XNuQfgqJCbybvfqljBt4HxT0cjmA', '2025-02-22 03:39:40', '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}', '2025-02-21 03:39:40', '2025-02-21 03:39:40');

-- Dumping structure for table db_admin.tb_product_add
CREATE TABLE IF NOT EXISTS `tb_product_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `promo` float DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_admin.tb_product_add: ~4 rows (approximately)
DELETE FROM `tb_product_add`;
INSERT INTO `tb_product_add` (`id`, `name`, `image`, `url`, `title`, `price`, `promo`, `category`, `createdAt`, `updatedAt`) VALUES
	(1, 'image1', '77469308de5649b6c205ba1bf522ef57.jpg', 'http://localhost:5000/images/snacks/77469308de5649b6c205ba1bf522ef57.jpg', 'Kentang Goreng', 15000, 0, 'snack', '2025-05-27 07:31:43', '2025-05-27 07:31:43'),
	(2, 'image2', '01ac8d0eecec42d523105335830f32a9.jpg', 'http://localhost:5000/images/snacks/01ac8d0eecec42d523105335830f32a9.jpg', 'Risoles', 10000, 0, 'snack', '2025-05-27 07:33:24', '2025-05-27 07:33:24'),
	(3, 'image3', '54e5bb3e846fa690df92f172aa611c12.jpg', 'http://localhost:5000/images/snacks/54e5bb3e846fa690df92f172aa611c12.jpg', 'Pisang Coklat', 12000, 0, 'snack', '2025-05-27 07:33:46', '2025-05-27 07:33:46'),
	(4, 'image4', 'ba3c490601e470a6843301d7de4ffc70.jpg', 'http://localhost:5000/images/snacks/ba3c490601e470a6843301d7de4ffc70.jpg', 'Tahu Crispy', 8000, 0, 'snack', '2025-05-27 07:34:08', '2025-05-27 07:34:08');

-- Dumping structure for table db_admin.tb_product_menu
CREATE TABLE IF NOT EXISTS `tb_product_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `promo` float DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_admin.tb_product_menu: ~9 rows (approximately)
DELETE FROM `tb_product_menu`;
INSERT INTO `tb_product_menu` (`id`, `name`, `image`, `url`, `category`, `price`, `promo`, `title`, `desc`, `createdAt`, `updatedAt`) VALUES
	(1, 'image1', '297ec88a387570b1bc6ce1edf16af84b.jpg', 'http://localhost:5000/images/coffee/297ec88a387570b1bc6ce1edf16af84b.jpg', 'Coffee', 29000, 0, 'Triple Peach Americano', 'Peach coffee perpaduan rasa kopi, tiga jenis buah peach dan aroma elderflower yang menciptakan sensasi kopi yang segar dan harmonis', '2025-05-24 04:08:27', '2025-05-24 04:08:27'),
	(2, 'image2', 'd42ab76b0aba8a1e7cb40bf7a6d42d3c.jpg', 'http://localhost:5000/images/coffee/d42ab76b0aba8a1e7cb40bf7a6d42d3c.jpg', 'Coffee', 29000, 0, 'Berry Manuka Americano', 'Perpaduan rasa Stroberi dan Manuka dengan Classic Blend Fore yang menyegarkan.', '2025-05-24 04:09:26', '2025-05-24 04:09:26'),
	(3, 'image3', 'ed3968f5c74c415b8f6deb79ccc02e23.jpg', 'http://localhost:5000/images/coffee/ed3968f5c74c415b8f6deb79ccc02e23.jpg', 'Coffee', 29000, 0, 'Iced Manuka Americano', 'Americano dengan madu Manuka yang pas untuk jadi energy booster.', '2025-05-24 04:10:46', '2025-05-24 04:10:46'),
	(4, 'image4', 'a1898ef565fb5db439fa113162c19765.jpg', 'http://localhost:5000/images/coffee/a1898ef565fb5db439fa113162c19765.jpg', 'Coffee', 29000, 0, 'Hot Manuka Americano', 'Americano dengan madu Manuka yang pas untuk jadi energy booster.', '2025-05-24 04:11:26', '2025-05-24 04:11:26'),
	(5, 'image5', 'ed3968f5c74c415b8f6deb79ccc02e23.jpg', 'http://localhost:5000/images/coffee/ed3968f5c74c415b8f6deb79ccc02e23.jpg', 'Coffee', 21000, 0, 'Iced Americano', 'Espresso shot dalam segelas air dengan menjaga ketebalan rasa kopinya.', '2025-05-24 04:12:09', '2025-05-24 04:12:09'),
	(6, 'image6', 'a1898ef565fb5db439fa113162c19765.jpg', 'http://localhost:5000/images/coffee/a1898ef565fb5db439fa113162c19765.jpg', 'Coffee', 21000, 0, 'Hot Americano', 'Espresso shot dalam segelas air dengan menjaga ketebalan rasa kopinya.', '2025-05-24 04:56:33', '2025-05-24 04:56:33'),
	(7, 'image7', '4d3f751492b7c5d8b13ab241cd4bd8f1.jpg', 'http://localhost:5000/images/coffee/4d3f751492b7c5d8b13ab241cd4bd8f1.jpg', 'Coffee', 21000, 0, 'Hot Americano', 'Espresso shot dalam segelas air dengan menjaga ketebalan rasa kopinya.', '2025-05-27 04:33:18', '2025-05-27 04:33:18'),
	(8, 'image8', '4095cee46f0739276ac259e656105ba3.jpg', 'http://localhost:5000/images/coffee/4095cee46f0739276ac259e656105ba3.jpg', 'Coffee', 24000, 0, 'Iced Classic Latte', 'Perpaduan rasa espresso premium dengan saus krim spesial Fore.', '2025-05-27 04:35:08', '2025-05-27 07:52:00'),
	(9, 'image9', '8af115dc8cbbb4d7783365136f1e7494.jpg', 'http://localhost:5000/images/coffee/8af115dc8cbbb4d7783365136f1e7494.jpg', 'Coffee', 33000, 0, 'Iced Salted Caramel Mocha', 'Perpaduan coklat, latte dari house blend Fore, dan gurihnya caramel.', '2025-05-27 04:35:53', '2025-05-27 04:35:53');

-- Dumping structure for table db_admin.tb_product_mrl
CREATE TABLE IF NOT EXISTS `tb_product_mrl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuuid` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `fprice` int(11) NOT NULL,
  `fuser_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tbUserMrlId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fuser_id` (`fuser_id`),
  KEY `tbUserMrlId` (`tbUserMrlId`),
  CONSTRAINT `tb_product_mrl_ibfk_1` FOREIGN KEY (`fuser_id`) REFERENCES `tb_user_mrl` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `tb_product_mrl_ibfk_2` FOREIGN KEY (`tbUserMrlId`) REFERENCES `tb_user_mrl` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_admin.tb_product_mrl: ~10 rows (approximately)
DELETE FROM `tb_product_mrl`;
INSERT INTO `tb_product_mrl` (`id`, `fuuid`, `fname`, `fprice`, `fuser_id`, `createdAt`, `updatedAt`, `tbUserMrlId`) VALUES
	(1, 'ad00dd5a-86b1-4ac4-82b4-4dc9820d57fe', 'product 1', 25000, 4, '2024-05-23 14:55:49', '2024-05-23 14:55:49', NULL),
	(2, '580b0ad4-d932-4e08-9440-b670bf995a35', 'product 2', 26000, 4, '2024-05-23 14:57:38', '2024-05-23 14:57:38', NULL),
	(4, 'cc740889-36e7-4268-82d2-72ca82572f2c', 'product 4', 28000, 3, '2024-05-23 14:58:38', '2024-05-23 14:58:38', NULL),
	(8, '088a386f-ae73-4248-a60a-bee85aa6b87e', 'product 6', 30000, 3, '2024-05-30 14:22:32', '2024-05-30 14:22:32', NULL),
	(9, '449588a1-799d-42aa-9591-00f1bb15e64b', 'product 4', 28000, 4, '2024-05-30 14:24:19', '2024-05-30 14:24:19', NULL),
	(27, '8372813b-5462-4755-bc1b-6eb1b98c1bc2', 'Product 1', 20000, 5, '2024-11-11 04:46:55', '2025-02-21 03:44:20', NULL),
	(28, 'dde89388-c15b-4801-8acb-b89da76ee518', 'Product 2', 21000, 5, '2024-11-11 04:47:09', '2024-11-11 04:47:09', NULL),
	(29, '27dbc23e-9dd7-4749-963e-d6b66bca14dd', 'Product 3', 23100, 5, '2024-11-11 04:47:21', '2025-02-21 03:44:23', NULL),
	(35, '5720a78a-80dd-4b50-8879-c2dcab652c81', 'Product 4', 27500, 5, '2025-02-21 04:22:33', '2025-02-21 04:29:25', NULL),
	(36, 'c7a7dd0f-8815-4912-8c87-e1fbbade07cf', 'Product 1', 23500, 20, '2025-02-21 06:23:30', '2025-02-21 06:23:30', NULL);

-- Dumping structure for table db_admin.tb_product_new
CREATE TABLE IF NOT EXISTS `tb_product_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `fprice` int(11) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_admin.tb_product_new: ~2 rows (approximately)
DELETE FROM `tb_product_new`;
INSERT INTO `tb_product_new` (`id`, `fname`, `fprice`, `fdesc`) VALUES
	(7, 'Parfum 1', 1000, 'Product1 parfum terbaru dan wangi'),
	(8, 'Parfum 2', 2000, 'Product2 parfum terbaru dan wangi');

-- Dumping structure for table db_admin.tb_user_jwt
CREATE TABLE IF NOT EXISTS `tb_user_jwt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fusername` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `frefresh_token` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_admin.tb_user_jwt: ~3 rows (approximately)
DELETE FROM `tb_user_jwt`;
INSERT INTO `tb_user_jwt` (`id`, `fname`, `femail`, `fusername`, `fpassword`, `frefresh_token`, `createdAt`, `updatedAt`) VALUES
	(14, 'abla1', 'abla1@gmail.com', '', '$2b$10$.PlYEHRWuv1zC9146BaLIOho1awffVfLu9i6/DBFhVnyzP/df92V2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiYWJsYTEiLCJlbWFpbCI6ImFibGExQGdtYWlsLmNvbSIsImlhdCI6MTc1MDQwNjgxMywiZXhwIjoxNzUwNDkzMjEzfQ.Rg2VU3eiExrQS9zhZ4htQXYLuST4FXwe7ilIlafYsP4', '2024-06-26 09:17:04', '2025-06-20 08:06:53'),
	(15, 'abla2', 'abla2@gmail.com', '', '$2b$10$etBsFnYfPA2OP1D2vgZDY.jcUQE24GTieZdziraPI4CELlz5caIVW', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1LCJuYW1lIjoiYWJsYTIiLCJlbWFpbCI6ImFibGEyQGdtYWlsLmNvbSIsImlhdCI6MTc0ODMzMjEzMiwiZXhwIjoxNzQ4NDE4NTMyfQ.05kQ4Px6J2dS8Jb8vP2L_sWOyZN9XLTMUY8htHE4zM8', '2024-08-03 04:52:39', '2025-05-27 07:48:52'),
	(16, 'abla3', 'abla3@gmail.com', '', '$2a$10$HZSouEYlQbddqU4X8XrujOhqVGtxUnmAZ5FRn4Ltrk83aBHM31g1u', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2LCJuYW1lIjoiYWJsYTMiLCJlbWFpbCI6ImFibGEzQGdtYWlsLmNvbSIsImlhdCI6MTc0ODA2MTkxMiwiZXhwIjoxNzQ4MTQ4MzEyfQ.v-4Jimcszxwyvpe_FtuslEC7Q1lOvcJ3imMzSEwA5B8', '2025-05-23 06:49:58', '2025-05-24 04:45:12');

-- Dumping structure for table db_admin.tb_user_mrl
CREATE TABLE IF NOT EXISTS `tb_user_mrl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuuid` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `frole_user` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_admin.tb_user_mrl: ~6 rows (approximately)
DELETE FROM `tb_user_mrl`;
INSERT INTO `tb_user_mrl` (`id`, `fuuid`, `fname`, `femail`, `fpassword`, `frole_user`, `createdAt`, `updatedAt`) VALUES
	(2, '0f677a5a-6a74-4e4a-a345-99c30d291424', 'user_admin1', 'user_admin1@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$sjBYJ0DKsFTTD8VQBbLLfA$bSiOOyHWHxUua0pqJSpIfWEFhPlyG/pFWUxD8egifW8', 'admin', '2024-05-22 14:24:59', '2024-05-22 14:24:59'),
	(3, '033889cd-d3bf-45a4-8145-a282bc2467da', 'user_admin2', 'user_admin2@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$9sVXvBwVa1Lx2rlL4Ib36Q$gdAdmpk37htTmKb3wibdtNVDg3KJ0he9s81QIP4Yx50', 'admin', '2024-05-22 14:52:25', '2024-05-22 14:52:25'),
	(4, '139cd1d2-ae8e-4c65-a708-39884245a91e', 'member1', 'member1@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$iCrSsQAjn0KckbmBpi+M2g$jCo5q9EB5DI8uN1XjDo0o7VtETvkatlW7Ngum+8o1lo', 'user', '2024-05-22 14:54:11', '2024-06-22 04:20:57'),
	(5, 'af72be49-353b-4876-9621-964be0a60ac2', 'member2', 'member2@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$fL3mxyf3eNIBBduI5R7r0g$mspR6Dos0cvUzsOsYhwkVw8H2m0RqvGd+wcudLW2Krs', 'user', '2024-05-23 03:20:18', '2024-05-23 03:20:18'),
	(6, 'b080ee42-ba67-4754-8770-44ff8aa0ab2f', 'member3', 'member3@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$SeSHGm3krprBRXjwqKAoxw$gsPGF+bTkj96NeU7NbIhws3PYrhJU4Dh45WKcf8OkBY', 'user', '2024-05-23 04:42:34', '2024-05-23 04:42:34'),
	(20, '70d5701a-5f80-4991-ac97-a1ee76b455cd', 'Member4', 'member4@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$fZROeeAEqZx6YI9mOxGLWw$azDkdfOZZ3J1X2BX6xUkzidQsDVZ6e3KXBWG3Yrk24I', 'user', '2025-02-21 06:21:28', '2025-02-21 06:22:34');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
