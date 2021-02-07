-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for usercrud
DROP DATABASE IF EXISTS `usercrud`;
CREATE DATABASE IF NOT EXISTS `usercrud` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `usercrud`;

-- Dumping structure for table usercrud.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table usercrud.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table usercrud.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table usercrud.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table usercrud.tbl_products
DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `f_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_product_name` varchar(50) DEFAULT NULL,
  `f_price` double DEFAULT 0,
  PRIMARY KEY (`f_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table usercrud.tbl_products: ~5 rows (approximately)
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` (`f_product_id`, `f_product_name`, `f_price`) VALUES
	(1, 'Horlicks', 235),
	(2, 'Bournvita', 185),
	(3, 'Boost', 560),
	(4, 'Complan', 450),
	(5, 'BRU', 76);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;

-- Dumping structure for table usercrud.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint(4) DEFAULT 0,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` smallint(6) unsigned DEFAULT 0,
  `gender` smallint(6) DEFAULT 0,
  `hobbies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table usercrud.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `user_name`, `name`, `email`, `password`, `mobile`, `user_type`, `city`, `state`, `gender`, `hobbies`, `language`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'palpandi', 'palpandic', 'palpandi.c@test.com', '$2y$10$JwxDp.8COwhgALHpubsLQeLQ58E7xgh9r0EUDi7KDKG54Mzfz2Qh6', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 'mSGYAipNMiOriv8dQHExGHTWx4rnlMHwsx8UY1qLclTU1JFtIdBvj17pIZyl', '2021-01-29 18:18:26', '2021-02-03 08:26:58'),
	(2, 'admin', 'admin', 'admin@test.com', '$2y$10$oHlnp5u2QOfStRt5dLhjxOOQXtFWhmVEQJ5yVKhTEROeGY67628Xi', NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, 'vKCelZXUevjeOTXRuyClbJ4HejfGV8zltxJluyulSCRY89BusWYu9HBBjApG', '2021-01-30 05:52:06', '2021-01-30 05:52:06'),
	(4, 'honey', 'honey', 'honey@test.com', '$2y$10$5dfKxlxmvrnnkAowSZvHAeUQAeIG2YcSWECdm1fev1frfE4EiUu0S', '8098737303', 2, 'chennai', 1, 1, '["1","2"]', '["1","2","3"]', '125256627.jpeg', 0, NULL, '2021-01-30 11:37:31', '2021-01-30 11:37:31'),
	(5, NULL, 'raja', 'raja@test.com', NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, '2021-02-03 08:45:08', '2021-02-03 08:45:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
