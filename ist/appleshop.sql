-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2024 at 08:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appleshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `BrandName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BrandImg` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `BrandName`, `BrandImg`, `created_at`, `updated_at`) VALUES
(1, 'Gucci', 'https://www.thefactshop.com/wp-content/uploads/2017/12/gucci-facts.webp', '2024-10-16 19:22:06', '2024-11-25 19:06:19'),
(2, 'Samsung', 'https://images.samsung.com/is/image/samsung/assets/global/about-us/brand/logo/300_186_2.png?$568_N_PNG$', '2024-10-16 19:22:06', '2024-11-25 19:12:04'),
(3, 'HP', 'https://cdn.shopify.com/s/files/1/0558/6413/1764/files/Rewrite_HP_Logo_Design_History_Evolution_0_1024x1024.jpg?v=1695273421', '2024-10-16 19:22:06', '2024-11-25 19:09:53'),
(4, 'apple', 'https://images.squarespace-cdn.com/content/v1/5ba250f03c3a53c7878a4afa/389ee86a-e914-4e2d-99a0-ad8c5436f387/Apple+logo.jpg', '2024-10-16 19:22:06', '2024-11-25 19:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryImg` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryImg`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'https://www.apple.com/newsroom/images/product/imac/standard/Apple_imac-magickeyboardnum-magicmouse2-macos-wallpaper_08042020_big.jpg.large.jpg', '2024-10-16 19:23:45', '2024-11-24 19:31:23'),
(2, 'Laptop', 'https://www.apple.com/newsroom/images/product/imac/standard/Apple_imac-magickeyboardnum-magicmouse2-macos-wallpaper_08042020_big.jpg.large.jpg', '2024-10-16 19:23:45', '2024-11-24 19:31:20'),
(3, 'Mac Book 3', 'https://www.apple.com/v/mac/home/cb/images/overview/select/product_tile_mba_13_15__fx2g3qlubdym_large.png', '2024-10-16 19:23:45', '2024-10-22 16:48:50'),
(4, 'Mac Book 4', 'https://www.apple.com/v/mac/home/cb/images/overview/select/product_tile_mba_13_15__fx2g3qlubdym_large.png', '2024-10-16 19:23:45', '2024-10-22 16:48:50'),
(5, 'Mac 5', 'https://www.apple.com/v/mac/home/cb/images/overview/select/product_tile_mba_13_15__fx2g3qlubdym_large.png', '2024-10-16 19:23:45', '2024-10-22 16:48:50'),
(6, 'Mac 6', 'https://www.apple.com/newsroom/images/product/imac/standard/Apple_imac-magickeyboardnum-magicmouse2-macos-wallpaper_08042020_big.jpg.large.jpg', '2024-10-16 19:23:45', '2024-11-24 19:31:27'),
(7, 'iMac7', 'https://www.apple.com/newsroom/images/product/imac/standard/Apple_imac-magickeyboardnum-magicmouse2-macos-wallpaper_08042020_big.jpg.large.jpg', '2024-10-16 19:23:45', '2024-10-22 16:48:50'),
(8, 'Mac Book 9', 'https://www.apple.com/v/mac/home/cb/images/overview/select/product_tile_mba_13_15__fx2g3qlubdym_large.png', '2024-10-16 19:23:45', '2024-10-22 16:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `customer_profiles`
--

CREATE TABLE `customer_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cus_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_add` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_postcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_fax` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_add` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_postcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_profiles`
--

INSERT INTO `customer_profiles` (`id`, `cus_name`, `cus_add`, `cus_city`, `cus_state`, `cus_postcode`, `cus_country`, `cus_phone`, `cus_fax`, `ship_name`, `ship_add`, `ship_city`, `ship_state`, `ship_postcode`, `ship_country`, `ship_phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Shoaib islam', '100 chairman goli', 'Dhanmondi,Dhaka', 'Dhaka', '1205', 'Bangladesh', '01762823375', '01734894257', 'Mesta', 'Chiarigram, Joypurhat', 'Rajshahi', 'Joypurhat', '5942', 'Bangladesh', '01762823375', 2, '2024-11-07 15:15:18', '2024-11-07 15:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_details` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_details` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tran_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `delivery_status` enum('pending','processing','delivered','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `total`, `vat`, `payable`, `cus_details`, `ship_details`, `tran_id`, `val_date`, `delivery_status`, `payment_status`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673a520a4f493', '0', 'pending', 'Pending', 2, '2024-11-17 14:28:58', '2024-11-17 14:28:58'),
(3, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673a5262150a5', '0', 'pending', 'Pending', 2, '2024-11-17 14:30:26', '2024-11-17 14:30:26'),
(4, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673e1a7e4f2c9', '0', 'pending', 'Pending', 2, '2024-11-20 11:21:02', '2024-11-20 11:21:02'),
(5, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673e4420bc5b7', '0', 'pending', 'Pending', 2, '2024-11-20 14:18:40', '2024-11-20 14:18:40'),
(7, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673e45ddda691', '0', 'pending', 'Pending', 2, '2024-11-20 14:26:05', '2024-11-20 14:26:05'),
(8, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673e45e3b3422', '0', 'pending', 'Pending', 2, '2024-11-20 14:26:11', '2024-11-20 14:26:11'),
(10, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673e46b4f0cac', '0', 'pending', 'Pending', 2, '2024-11-20 14:29:41', '2024-11-20 14:29:41'),
(11, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673e4c8ec064b', '0', 'pending', 'Pending', 2, '2024-11-20 14:54:38', '2024-11-20 14:54:38'),
(12, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673e4eee882d4', '0', 'pending', 'Pending', 2, '2024-11-20 15:04:46', '2024-11-20 15:04:46'),
(13, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673e4f2067c7a', '0', 'pending', 'Pending', 2, '2024-11-20 15:05:36', '2024-11-20 15:05:36'),
(14, '1500000', '45000', '1545000', 'Name:Shoaib islam,Address:100 chairman goli,City:Dhanmondi,Dhaka,Phone: 01762823375', 'Name:Mesta,Address:Chiarigram, Joypurhat ,City:Rajshahi ,Phone: 01762823375', '673f2f10e6448', '0', 'pending', 'Pending', 2, '2024-11-21 07:01:04', '2024-11-21 07:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `user_id`, `qty`, `sale_price`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 2, '6', '1500000', '2024-11-17 14:28:58', '2024-11-17 14:28:58'),
(3, 3, 1, 2, '6', '1500000', '2024-11-17 14:30:26', '2024-11-17 14:30:26'),
(4, 4, 1, 2, '6', '1500000', '2024-11-20 11:21:02', '2024-11-20 11:21:02'),
(5, 5, 1, 2, '6', '1500000', '2024-11-20 14:18:40', '2024-11-20 14:18:40'),
(7, 7, 1, 2, '6', '1500000', '2024-11-20 14:26:05', '2024-11-20 14:26:05'),
(8, 8, 1, 2, '6', '1500000', '2024-11-20 14:26:11', '2024-11-20 14:26:11'),
(10, 10, 1, 2, '6', '1500000', '2024-11-20 14:29:41', '2024-11-20 14:29:41'),
(11, 11, 1, 2, '6', '1500000', '2024-11-20 14:54:38', '2024-11-20 14:54:38'),
(12, 12, 1, 2, '6', '1500000', '2024-11-20 15:04:46', '2024-11-20 15:04:46'),
(13, 13, 1, 2, '6', '1500000', '2024-11-20 15:05:36', '2024-11-20 15:05:36'),
(14, 14, 1, 2, '6', '1500000', '2024-11-21 07:01:04', '2024-11-21 07:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2024_10_16_153733_create_customer_profiles_table', 1),
(21, '2024_10_16_154447_create_categories_table', 1),
(22, '2024_10_16_154631_create_brands_table', 1),
(23, '2024_10_16_154802_create_products_table', 1),
(24, '2024_10_16_162704_create_product_reviews_table', 1),
(25, '2024_10_16_163405_create_product_details_table', 1),
(26, '2024_10_16_163842_create_product_sliders_table', 1),
(27, '2024_10_16_164326_create_product_wishes_table', 1),
(28, '2024_10_16_171717_create_product_carts_table', 1),
(29, '2024_10_16_172242_create_sslcommerz_accounts_table', 1),
(30, '2024_10_16_172810_create_invoices_table', 1),
(31, '2024_10_16_173649_create_invoice_products_table', 1),
(32, '2024_10_16_174100_create_policies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('about','refund','terms','how to buy','contact','complain') COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `type`, `des`) VALUES
(1, 'about', '<p><strong>About</strong>\nThe product must be unused, unworn, unwashed and without any flaws. For fashion products, products may be tried on to see if the item fits. This will still be considered as unworn.\nThe product must include the original tags, user manuals, warranty cards, freebies, invoice and accessories.\nThe product must be returned in the original and undamaged manufacturer\'s packaging/box. If the product was delivered in Daraz packaging/box, \nthe same packaging/box should be returned. Do not put tape or stickers directly on the manufacturer\'s packaging / box.\n</p> '),
(2, 'refund', '<p><strong>Refund Policy</strong>\nThe product must be unused, unworn, unwashed and without any flaws. For fashion products, products may be tried on to see if the item fits. This will still be considered as unworn.\nThe product must include the original tags, user manuals, warranty cards, freebies, invoice and accessories.\nThe product must be returned in the original and undamaged manufacturer\'s packaging/box. If the product was delivered in Daraz packaging/box, \nthe same packaging/box should be returned. Do not put tape or stickers directly on the manufacturer\'s packaging / box.\n</p> '),
(3, 'terms', '<p><strong>Terms</strong>\nThe product must be unused, unworn, unwashed and without any flaws. For fashion products, products may be tried on to see if the item fits. This will still be considered as unworn.\nThe product must include the original tags, user manuals, warranty cards, freebies, invoice and accessories.\nThe product must be returned in the original and undamaged manufacturer\'s packaging/box. If the product was delivered in Daraz packaging/box, \nthe same packaging/box should be returned. Do not put tape or stickers directly on the manufacturer\'s packaging / box.\n</p> '),
(4, 'how to buy', '<p><strong>How to Buy</strong>\nThe product must be unused, unworn, unwashed and without any flaws. For fashion products, products may be tried on to see if the item fits. This will still be considered as unworn.\nThe product must include the original tags, user manuals, warranty cards, freebies, invoice and accessories.\nThe product must be returned in the original and undamaged manufacturer\'s packaging/box. If the product was delivered in Daraz packaging/box, \nthe same packaging/box should be returned. Do not put tape or stickers directly on the manufacturer\'s packaging / box.\n</p> '),
(5, 'contact', '<p><strong>Contact</strong>\nThe product must be unused, unworn, unwashed and without any flaws. For fashion products, products may be tried on to see if the item fits. This will still be considered as unworn.\nThe product must include the original tags, user manuals, warranty cards, freebies, invoice and accessories.\nThe product must be returned in the original and undamaged manufacturer\'s packaging/box. If the product was delivered in Daraz packaging/box, \nthe same packaging/box should be returned. Do not put tape or stickers directly on the manufacturer\'s packaging / box.\n</p> '),
(6, 'complain', '<p><strong>Complain</strong>\nThe product must be unused, unworn, unwashed and without any flaws. For fashion products, products may be tried on to see if the item fits. This will still be considered as unworn.\nThe product must include the original tags, user manuals, warranty cards, freebies, invoice and accessories.\nThe product must be returned in the original and undamaged manufacturer\'s packaging/box. If the product was delivered in Daraz packaging/box, \nthe same packaging/box should be returned. Do not put tape or stickers directly on the manufacturer\'s packaging / box.\n</p> ');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` tinyint(1) NOT NULL,
  `star` double(8,2) NOT NULL,
  `remark` enum('popular','new','top','special','trending','regular') COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_des`, `price`, `discount`, `discount_price`, `image`, `stock`, `star`, `remark`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Macbook Pro M3 16/512 13-inch Space Gray', 'Macbook Pro M3 16/512 13-inch Space Gray', '250000', 0, '0', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 1, 0.00, 'new', 2, 3, '2024-10-23 15:24:20', '2024-11-07 23:18:47'),
(2, 'Macbook Pro M3 16/512 13-inch Space Gray', 'Macbook Pro M3 16/512 13-inch Space Gray', '250000', 0, '0', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 1, 0.00, 'new', 6, 4, '2024-10-23 15:24:20', '2024-11-07 23:18:47'),
(3, 'Macbook Pro M3 16/512 13-inch Space Gray', 'Macbook Pro M3 16/512 13-inch Space Gray', '250000', 0, '0', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 1, 0.00, 'new', 3, 4, '2024-10-23 15:24:20', '2024-11-07 23:18:47'),
(4, 'Macbook Pro M3 16/512 13-inch Space Gray', 'Macbook Pro M3 16/512 13-inch Space Gray', '250000', 0, '0', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 1, 0.00, 'new', 3, 4, '2024-10-23 15:24:20', '2024-11-07 23:18:47'),
(5, 'Macbook Pro M3 16/512 13-inch Space Gray', 'Macbook Pro M3 16/512 13-inch Space Gray', '250000', 0, '0', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 1, 0.00, 'popular', 3, 4, '2024-10-23 15:24:20', '2024-11-07 23:18:47'),
(6, 'Macbook Pro M3 16/512 13-inch Space Gray', 'Macbook Pro M3 16/512 13-inch Space Gray', '250000', 0, '0', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 1, 0.00, 'top', 3, 4, '2024-10-23 15:24:20', '2024-11-07 23:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `user_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 'Red', 'XXL', '6', '1500000', '2024-11-16 12:52:52', '2024-11-16 12:52:52'),
(4, 1, 1, 'Red', 'XXL', '6', '1500000', '2024-11-20 15:15:48', '2024-11-20 15:15:48'),
(5, 3, 1, 'Green', 'X', '1', '250000', '2024-11-27 14:24:41', '2024-12-04 13:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img4` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `img1`, `img2`, `img3`, `img4`, `des`, `color`, `size`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://www.apple.com/v/mac/home/cb/images/overview/select/product_tile_mba_13_15__fx2g3qlubdym_large.png', 'The MacBook family was initially housed in designs similar to the iBook and PowerBook lines which preceded them, which changed to a unibody aluminum construction similar to the one first introduced with the MacBook Air. The unibody construction also has a black plastic keyboard that was first used on the MacBook Air, which itself was inspired by the sunken keyboard of the original polycarbonate MacBooks. The now standardized keyboard brings congruity to the MacBook line, with black keys on a metallic aluminum body.', 'Red,Green,White', 'X,2X,3X', 1, '2024-11-27 20:18:33', '2024-11-27 20:22:42'),
(2, 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'The MacBook family was initially housed in designs similar to the iBook and PowerBook lines which preceded them, which changed to a unibody aluminum construction similar to the one first introduced with the MacBook Air. The unibody construction also has a black plastic keyboard that was first used on the MacBook Air, which itself was inspired by the sunken keyboard of the original polycarbonate MacBooks. The now standardized keyboard brings congruity to the MacBook line, with black keys on a metallic aluminum body.', 'Red,Green,White', 'X,2X,3X', 2, '2024-11-27 20:18:33', '2024-11-27 20:18:33'),
(4, 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'The MacBook family was initially housed in designs similar to the iBook and PowerBook lines which preceded them, which changed to a unibody aluminum construction similar to the one first introduced with the MacBook Air. The unibody construction also has a black plastic keyboard that was first used on the MacBook Air, which itself was inspired by the sunken keyboard of the original polycarbonate MacBooks. The now standardized keyboard brings congruity to the MacBook line, with black keys on a metallic aluminum body.', 'Red,Green,White', 'X,2X,3X', 3, '2024-11-27 20:18:33', '2024-11-27 20:18:33'),
(5, 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://www.apple.com/v/mac/home/cb/images/overview/select/product_tile_mba_13_15__fx2g3qlubdym_large.png', 'The MacBook family was initially housed in designs similar to the iBook and PowerBook lines which preceded them, which changed to a unibody aluminum construction similar to the one first introduced with the MacBook Air. The unibody construction also has a black plastic keyboard that was first used on the MacBook Air, which itself was inspired by the sunken keyboard of the original polycarbonate MacBooks. The now standardized keyboard brings congruity to the MacBook line, with black keys on a metallic aluminum body.', 'Red,Green,White', 'X,2X,3X', 4, '2024-11-27 20:18:33', '2024-11-27 20:22:42'),
(6, 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://www.apple.com/v/mac/home/cb/images/overview/select/product_tile_mba_13_15__fx2g3qlubdym_large.png', 'The MacBook family was initially housed in designs similar to the iBook and PowerBook lines which preceded them, which changed to a unibody aluminum construction similar to the one first introduced with the MacBook Air. The unibody construction also has a black plastic keyboard that was first used on the MacBook Air, which itself was inspired by the sunken keyboard of the original polycarbonate MacBooks. The now standardized keyboard brings congruity to the MacBook line, with black keys on a metallic aluminum body.', 'Red,Green,White', 'X,2X,3X', 5, '2024-11-27 20:18:33', '2024-11-27 20:22:42'),
(7, 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=500&auto=format', 'https://www.apple.com/v/mac/home/cb/images/overview/select/product_tile_mba_13_15__fx2g3qlubdym_large.png', 'The MacBook family was initially housed in designs similar to the iBook and PowerBook lines which preceded them, which changed to a unibody aluminum construction similar to the one first introduced with the MacBook Air. The unibody construction also has a black plastic keyboard that was first used on the MacBook Air, which itself was inspired by the sunken keyboard of the original polycarbonate MacBooks. The now standardized keyboard brings congruity to the MacBook line, with black keys on a metallic aluminum body.', 'Red,Green,White', 'X,2X,3X', 6, '2024-11-27 20:18:33', '2024-11-27 20:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `description`, `rating`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'It\'s not a good product price is too hight', '5', 1, 1, '2024-11-07 17:36:19', '2024-11-07 17:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_sliders`
--

CREATE TABLE `product_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sliders`
--

INSERT INTO `product_sliders` (`id`, `title`, `short_des`, `price`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'MacBook Air M1 New Addition', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '900', 'https://i.ibb.co.com/mtFzMpM/banner2.jpg', 1, '2024-11-27 09:35:49', '2024-11-27 09:42:21'),
(2, 'MacBook Air M1 New Addition', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '1000', 'https://i.ibb.co.com/mtFzMpM/banner2.jpg', 3, '2024-11-27 09:35:49', '2024-11-27 09:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_wishes`
--

CREATE TABLE `product_wishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_wishes`
--

INSERT INTO `product_wishes` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '2024-11-16 07:41:30', '2024-11-16 07:41:30'),
(3, 1, 1, '2024-11-20 15:15:39', '2024-11-20 15:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `sslcommerz_accounts`
--

CREATE TABLE `sslcommerz_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_passwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fail_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipn_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `init_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'example@example.com', '818417', '2024-10-31 16:00:29', '2024-10-31 16:19:43'),
(2, 'mestabd60@gmail.com', '0', '2024-10-31 16:00:43', '2024-11-26 15:36:51'),
(3, 'mdshoaiburislam@gmail.com', '0', '2024-11-27 14:23:11', '2024-12-04 13:35:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_profiles_user_id_unique` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_products_product_id_foreign` (`product_id`),
  ADD KEY `invoice_products_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_carts_product_id_foreign` (`product_id`),
  ADD KEY `product_carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_details_product_id_unique` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_customer_id_foreign` (`customer_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sliders_product_id_unique` (`product_id`);

--
-- Indexes for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_wishes_product_id_foreign` (`product_id`),
  ADD KEY `product_wishes_user_id_foreign` (`user_id`);

--
-- Indexes for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_sliders`
--
ALTER TABLE `product_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_wishes`
--
ALTER TABLE `product_wishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  ADD CONSTRAINT `customer_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD CONSTRAINT `product_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_profiles` (`id`),
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD CONSTRAINT `product_sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD CONSTRAINT `product_wishes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_wishes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
