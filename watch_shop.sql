-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2018 at 11:46 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.1.20-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ict_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `small_text`, `title`, `button_text`, `brand_id`, `product_id`, `order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'banners/July2018/367EzhQD759peVCQLkJU.jpg', 'Ponuda traje dok traju zalihe', 'Novi satovi', 'Shop', 1, NULL, 1, 1, '2018-07-05 07:52:03', '2018-07-05 07:52:03'),
(2, 'banners/July2018/RgwiCXEOW7SiSR7mMGJv.jpg', 'Ponuda traje dok traju zalihe', 'Novi rolehi :D', 'Shop Now', 9, NULL, 2, 1, '2018-07-05 08:14:07', '2018-07-05 08:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Festina', 'festina', '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(2, 'Fossil', 'fossil', '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(3, 'G-Shock', 'g-shock', '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(4, 'Boss', 'boss', '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(5, 'Diesel', 'diesel', '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(6, 'Guess', 'guess', '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(7, 'Emporio', 'emporio', '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(8, 'Armani', 'armani', '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(9, 'Rolex', 'rolex', '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(10, 'Seiko', 'seiko', '2018-07-05 08:25:17', '2018-07-05 08:25:17'),
(11, 'Cassio', 'cassio', '2018-07-05 10:57:16', '2018-07-05 10:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `commentable_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commented_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commented_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `rate` double(15,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `commentable_id`, `commentable_type`, `commented_id`, `commented_type`, `comment`, `approved`, `rate`, `created_at`, `updated_at`) VALUES
(1, '21', 'App\\Product', '4', 'App\\User', 'Test komentar', 1, 4.00000000, '2018-07-05 11:53:45', '2018-07-05 11:53:45'),
(2, '21', 'App\\Product', '4', 'App\\User', 'Jos jedan test komentar', 1, 3.00000000, '2018-07-05 11:54:18', '2018-07-05 11:54:18'),
(3, '21', 'App\\Product', '5', 'App\\User', 'Test komentar 1, 2, 3', 0, 4.00000000, '2018-07-06 08:49:23', '2018-07-06 08:49:23'),
(4, '21', 'App\\Product', '5', 'App\\User', 'Proba jedan dva', 1, 3.00000000, '2018-07-06 09:41:17', '2018-07-06 09:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tuvalu', '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(2, 'Gibraltar', '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(3, 'Martinique', '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(4, 'Solomon Islands', '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(5, 'Thailand', '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(6, 'Belarus', '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(7, 'Algeria', '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(8, 'Bhutan', '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(9, 'San Marino', '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(10, 'El Salvador', '2018-07-03 11:50:48', '2018-07-03 11:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'ABC123', 'fixed', 30, NULL, '2018-07-03 11:50:49', '2018-07-03 11:50:49'),
(2, 'DEF456', 'percent', NULL, 20, '2018-07-03 11:50:49', '2018-07-06 08:12:12'),
(3, 'STUDENTARIJA', 'percent', NULL, 30, '2018-07-06 08:12:34', '2018-07-06 08:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":"0"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(24, 4, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(25, 4, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 3),
(26, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 4),
(27, 4, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 5),
(28, 5, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(29, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(30, 5, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 4),
(31, 5, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, NULL, 6),
(32, 5, 'details', 'rich_text_box', 'Details', 0, 1, 1, 1, 1, 1, NULL, 7),
(33, 5, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, NULL, 8),
(34, 5, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 9),
(35, 5, 'brand_id', 'number', 'Brand Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(36, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{"on":"Yes","off":"No"}', 10),
(37, 5, 'stock', 'checkbox', 'Stock', 1, 1, 1, 1, 1, 1, '{"on":"Yes","off":"No"}', 11),
(38, 5, 'publish_at', 'timestamp', 'Publish At', 0, 1, 1, 1, 1, 1, NULL, 12),
(39, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 13),
(40, 5, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 14),
(41, 5, 'product_belongsto_brand_relationship', 'relationship', 'brands', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Brand","table":"brands","type":"belongsTo","column":"brand_id","key":"id","label":"name","pivot_table":"brands","pivot":"0","taggable":"0"}', 5),
(42, 6, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(43, 6, 'user_id', 'number', 'User Id', 0, 1, 1, 0, 0, 0, NULL, 4),
(44, 6, 'email', 'text', 'Email', 0, 1, 1, 0, 0, 0, NULL, 6),
(45, 6, 'first_name', 'text', 'First Name', 0, 1, 1, 0, 0, 0, NULL, 7),
(46, 6, 'last_name', 'text', 'Last Name', 0, 1, 1, 0, 0, 0, NULL, 8),
(47, 6, 'address1', 'text', 'Address1', 0, 1, 1, 0, 0, 0, NULL, 9),
(48, 6, 'address2', 'text', 'Address2', 0, 1, 1, 0, 0, 0, NULL, 10),
(49, 6, 'company', 'text', 'Company', 0, 1, 1, 0, 0, 0, NULL, 11),
(50, 6, 'city', 'text', 'City', 0, 1, 1, 0, 0, 0, NULL, 12),
(51, 6, 'country_id', 'number', 'Country Id', 0, 1, 1, 0, 0, 0, NULL, 5),
(52, 6, 'post_code', 'number', 'Post Code', 0, 1, 1, 0, 0, 0, NULL, 13),
(53, 6, 'phone', 'text', 'Phone', 0, 1, 1, 0, 0, 0, NULL, 14),
(54, 6, 'card_name', 'text', 'Card Name', 0, 1, 1, 0, 0, 0, NULL, 15),
(55, 6, 'discount', 'number', 'Discount', 0, 1, 1, 0, 0, 0, NULL, 16),
(56, 6, 'discount_code', 'text', 'Discount Code', 0, 1, 1, 0, 0, 0, NULL, 17),
(57, 6, 'subtotal', 'number', 'Subtotal', 0, 1, 1, 0, 0, 0, NULL, 18),
(58, 6, 'tax', 'number', 'Tax', 0, 1, 1, 0, 0, 0, NULL, 19),
(59, 6, 'total', 'number', 'Total', 0, 1, 1, 0, 0, 0, NULL, 20),
(60, 6, 'payment_gateway', 'text', 'Payment Gateway', 0, 1, 1, 0, 0, 0, NULL, 21),
(61, 6, 'error', 'text', 'Error', 0, 1, 1, 0, 0, 0, NULL, 22),
(62, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 23),
(63, 6, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 24),
(64, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(65, 7, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, NULL, 2),
(66, 7, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{"default":"fixed","options":{"fixed":"Fixed Value","percent":"Percent Off"}}', 3),
(67, 7, 'value', 'text', 'Value', 0, 1, 1, 1, 1, 1, NULL, 4),
(68, 7, 'percent_off', 'text', 'Percent Off', 0, 1, 1, 1, 1, 1, NULL, 5),
(69, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(70, 7, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 7),
(71, 6, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 0, 0, 0, '{"model":"App\\\\User","table":"users","type":"belongsTo","column":"user_id","key":"id","label":"name","pivot_table":"brands","pivot":"0","taggable":"0"}', 2),
(72, 8, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(73, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(74, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 3),
(75, 8, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 4),
(76, 6, 'order_belongsto_country_relationship', 'relationship', 'countries', 0, 1, 1, 0, 0, 0, '{"model":"App\\\\Country","table":"countries","type":"belongsTo","column":"country_id","key":"id","label":"name","pivot_table":"brands","pivot":"0","taggable":"0"}', 3),
(87, 12, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(88, 12, 'commentable_id', 'number', 'Commentable Id', 0, 1, 1, 0, 0, 0, NULL, 3),
(89, 12, 'commentable_type', 'hidden', 'Commentable Type', 0, 0, 0, 0, 0, 0, NULL, 5),
(90, 12, 'commented_id', 'number', 'Commented Id', 0, 1, 1, 0, 0, 0, NULL, 6),
(91, 12, 'commented_type', 'hidden', 'Commented Type', 0, 0, 0, 0, 0, 0, NULL, 7),
(92, 12, 'comment', 'text', 'Comment', 1, 1, 1, 1, 1, 1, NULL, 8),
(93, 12, 'approved', 'checkbox', 'Approved', 1, 1, 1, 1, 0, 1, '{"on":"Yes","off":"No"}', 9),
(94, 12, 'rate', 'number', 'Rate', 0, 1, 1, 0, 0, 0, NULL, 10),
(95, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 11),
(96, 12, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 12),
(99, 13, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(100, 13, 'product_id', 'number', 'Product Id', 0, 1, 1, 0, 0, 0, NULL, 3),
(101, 13, 'percent_off', 'number', 'Percent Off', 0, 1, 1, 1, 1, 1, NULL, 4),
(102, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 5),
(103, 13, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 6),
(104, 13, 'discount_belongsto_product_relationship', 'relationship', 'Product', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Product","table":"products","type":"belongsTo","column":"product_id","key":"id","label":"name","pivot_table":"brands","pivot":"0","taggable":"0"}', 2),
(115, 15, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(116, 15, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, NULL, 6),
(117, 15, 'small_text', 'text', 'Small Text', 1, 1, 1, 1, 1, 1, NULL, 7),
(118, 15, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 8),
(119, 15, 'button_text', 'text', 'Button Text', 1, 1, 1, 1, 1, 1, NULL, 9),
(120, 15, 'brand_id', 'number', 'brand_id', 0, 1, 1, 1, 1, 1, NULL, 3),
(121, 15, 'product_id', 'number', 'Product Id', 0, 1, 1, 1, 1, 1, NULL, 5),
(122, 15, 'order', 'number', 'Order', 1, 1, 1, 1, 1, 1, NULL, 10),
(123, 15, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{"on":"Yes","off":"No"}', 11),
(124, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(125, 15, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 13),
(126, 15, 'banner_belongsto_brand_relationship', 'relationship', 'Link Brand', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Brand","table":"brands","type":"belongsTo","column":"brand_id","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 2),
(127, 15, 'banner_belongsto_product_relationship', 'relationship', 'Link Product', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Product","table":"products","type":"belongsTo","column":"product_id","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 4),
(128, 5, 'gallery', 'multiple_images', 'Gallery', 0, 1, 1, 1, 1, 1, NULL, 9),
(129, 16, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(130, 16, 'type_name', 'text', 'Type Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(131, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 3),
(132, 16, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 4),
(133, 17, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(134, 17, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(135, 17, 'service_id', 'number', 'Service Id', 0, 1, 1, 1, 1, 1, NULL, 5),
(136, 17, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, NULL, 6),
(137, 17, 'start_from', 'timestamp', 'Start From', 0, 1, 1, 0, 0, 0, NULL, 7),
(138, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 8),
(139, 17, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, NULL, 9),
(140, 17, 'reservation_belongsto_service_relationship', 'relationship', 'Service', 0, 1, 1, 0, 0, 0, '{"model":"App\\\\Service","table":"services","type":"belongsTo","column":"service_id","key":"id","label":"type_name","pivot_table":"banners","pivot":"0","taggable":"0"}', 4),
(141, 17, 'reservation_belongsto_user_relationship', 'relationship', 'User', 0, 1, 1, 0, 0, 0, '{"model":"App\\\\User","table":"users","type":"belongsTo","column":"user_id","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 2),
(142, 12, 'comment_belongsto_user_relationship', 'relationship', 'User', 0, 1, 1, 0, 0, 0, '{"model":"App\\\\User","table":"users","type":"belongsTo","column":"commented_id","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 4),
(143, 12, 'comment_belongsto_product_relationship', 'relationship', 'Product', 0, 1, 1, 0, 0, 0, '{"model":"App\\\\Product","table":"products","type":"belongsTo","column":"commentable_id","key":"id","label":"name","pivot_table":"banners","pivot":"0","taggable":"0"}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-07-04 10:51:43', '2018-07-04 10:51:43'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-07-04 10:51:43', '2018-07-04 10:51:43'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-07-04 10:51:43', '2018-07-04 10:51:43'),
(4, 'brands', 'brands', 'Brand', 'Brands', 'voyager-company', 'App\\Brand', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-07-04 10:59:35', '2018-07-04 10:59:35'),
(5, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 1, '{"order_column":null,"order_display_column":null}', '2018-07-04 11:03:00', '2018-07-04 11:06:37'),
(6, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 1, '{"order_column":null,"order_display_column":null}', '2018-07-04 11:09:16', '2018-07-04 11:09:16'),
(7, 'coupons', 'coupons', 'Coupon', 'Coupons', NULL, 'App\\Coupon', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-07-04 11:09:43', '2018-07-04 11:09:43'),
(8, 'countries', 'countries', 'Country', 'Countries', NULL, 'App\\Country', NULL, NULL, NULL, 1, 1, '{"order_column":null,"order_display_column":null}', '2018-07-04 11:13:47', '2018-07-04 11:13:47'),
(12, 'comments', 'comments', 'Comment', 'Comments', NULL, 'Actuallymab\\LaravelComment\\Models\\Comment', NULL, NULL, NULL, 1, 1, '{"order_column":null,"order_display_column":null}', '2018-07-04 11:23:09', '2018-07-04 11:24:50'),
(13, 'discounts', 'discounts', 'Discount', 'Discounts', NULL, 'App\\Discount', NULL, NULL, NULL, 1, 1, '{"order_column":null,"order_display_column":null}', '2018-07-04 11:27:40', '2018-07-04 11:27:40'),
(15, 'banners', 'banners', 'Banner', 'Banners', NULL, 'App\\Banner', NULL, NULL, NULL, 1, 1, '{"order_column":null,"order_display_column":null}', '2018-07-05 07:45:51', '2018-07-05 07:45:51'),
(16, 'services', 'services', 'Service', 'Services', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-07-06 07:09:34', '2018-07-06 07:09:34'),
(17, 'reservations', 'reservations', 'Reservation', 'Reservations', NULL, 'App\\Reservation', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-07-06 07:15:51', '2018-07-06 07:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-07-04 10:51:44', '2018-07-04 10:51:44'),
(2, 'nav_main', '2018-07-04 18:11:16', '2018-07-04 20:59:53'),
(3, 'footer_col_1', '2018-07-04 18:14:46', '2018-07-04 18:17:14'),
(4, 'footer_col_2', '2018-07-04 18:17:29', '2018-07-04 18:17:29'),
(5, 'footer_social', '2018-07-04 18:19:02', '2018-07-04 18:32:57'),
(6, 'header_social', '2018-07-04 18:38:47', '2018-07-04 18:38:47'),
(7, 'portfolio_menu', '2018-07-06 08:23:20', '2018-07-06 08:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-07-04 10:51:44', '2018-07-04 10:51:44', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 13, '2018-07-04 10:51:44', '2018-07-06 08:21:57', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 10, '2018-07-04 10:51:44', '2018-07-06 08:21:57', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 11, '2018-07-04 10:51:44', '2018-07-06 08:21:57', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 15, '2018-07-04 10:51:44', '2018-07-06 08:21:57', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-07-04 10:51:44', '2018-07-04 17:54:46', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-07-04 10:51:44', '2018-07-04 17:54:46', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-07-04 10:51:44', '2018-07-04 17:54:46', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-07-04 10:51:44', '2018-07-04 17:54:46', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 16, '2018-07-04 10:51:44', '2018-07-06 08:21:57', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-07-04 10:51:47', '2018-07-04 17:54:46', 'voyager.hooks', NULL),
(12, 1, 'Brands', '', '_self', 'voyager-company', NULL, NULL, 8, '2018-07-04 10:59:35', '2018-07-06 08:22:04', 'voyager.brands.index', NULL),
(13, 1, 'Products', '', '_self', 'voyager-bag', '#000000', NULL, 3, '2018-07-04 11:03:00', '2018-07-04 17:58:30', 'voyager.products.index', 'null'),
(14, 1, 'Orders', '', '_self', 'voyager-warning', '#000000', NULL, 2, '2018-07-04 11:09:16', '2018-07-04 18:00:20', 'voyager.orders.index', 'null'),
(15, 1, 'Coupons', '', '_self', 'voyager-ticket', '#000000', NULL, 7, '2018-07-04 11:09:43', '2018-07-06 08:22:04', 'voyager.coupons.index', 'null'),
(16, 1, 'Countries', '', '_self', 'voyager-star', '#000000', NULL, 14, '2018-07-04 11:13:47', '2018-07-06 08:21:57', 'voyager.countries.index', 'null'),
(17, 1, 'Comments', '', '_self', 'voyager-list', '#000000', NULL, 4, '2018-07-04 11:19:05', '2018-07-04 18:00:39', 'voyager.comments.index', 'null'),
(18, 1, 'Discounts', '', '_self', 'voyager-check', '#000000', NULL, 6, '2018-07-04 11:27:40', '2018-07-06 08:22:04', 'voyager.discounts.index', 'null'),
(19, 2, 'Home', '', '_self', NULL, '#000000', NULL, 1, '2018-07-04 18:12:08', '2018-07-04 21:01:35', '/', NULL),
(20, 2, 'Shop', '', '_self', NULL, '#000000', NULL, 2, '2018-07-04 18:12:49', '2018-07-04 21:35:43', 'shop.index', 'null'),
(21, 3, 'About', '#', '_self', NULL, '#000000', NULL, 16, '2018-07-04 18:15:13', '2018-07-04 18:15:13', NULL, ''),
(22, 3, 'Shop', '', '_self', NULL, '#000000', NULL, 17, '2018-07-04 18:16:25', '2018-07-04 18:16:25', 'shop.index', NULL),
(23, 3, 'Faq', '#', '_self', NULL, '#000000', NULL, 18, '2018-07-04 18:16:36', '2018-07-04 18:16:36', NULL, ''),
(24, 3, 'Returns', '#', '_self', NULL, '#000000', NULL, 19, '2018-07-04 18:16:45', '2018-07-04 18:16:45', NULL, ''),
(25, 3, 'Contact', '#', '_self', NULL, '#000000', NULL, 20, '2018-07-04 18:16:56', '2018-07-04 18:16:56', NULL, ''),
(26, 4, 'My Account', '#', '_self', NULL, '#000000', NULL, 21, '2018-07-04 18:17:42', '2018-07-04 18:17:42', NULL, ''),
(27, 4, 'Shipping', '#', '_self', NULL, '#000000', NULL, 22, '2018-07-04 18:17:50', '2018-07-04 18:17:50', NULL, ''),
(28, 4, 'Our Policies', '#', '_self', NULL, '#000000', NULL, 23, '2018-07-04 18:18:02', '2018-07-04 18:18:02', NULL, ''),
(29, 4, 'Afiliates', '#', '_self', NULL, '#000000', NULL, 24, '2018-07-04 18:18:17', '2018-07-04 18:18:17', NULL, ''),
(30, 5, 'fa fa-pinterest', 'https://www.pinterest.com/', '_self', NULL, '#000000', NULL, 1, '2018-07-04 18:21:27', '2018-07-04 18:39:00', NULL, ''),
(31, 5, 'fa fa-facebook', 'https://www.facebook.com/', '_self', NULL, '#000000', NULL, 2, '2018-07-04 18:22:12', '2018-07-04 18:39:00', NULL, ''),
(32, 5, 'fa fa-twitter', 'https://www.tweeter.com/', '_self', NULL, '#000000', NULL, 3, '2018-07-04 18:22:45', '2018-07-04 18:39:00', NULL, ''),
(33, 5, 'fa fa-linkedin', 'https://www.linkedin.com/', '_self', NULL, '#000000', NULL, 4, '2018-07-04 18:23:35', '2018-07-04 18:39:00', NULL, ''),
(34, 6, 'fa fa-pinterest', 'https://www.pinterest.com/', '_self', NULL, '#000000', NULL, 25, '2018-07-04 18:39:18', '2018-07-04 18:39:18', NULL, ''),
(35, 6, 'fa fa-facebook', 'https://www.facebook.com/', '_self', NULL, '#000000', NULL, 26, '2018-07-04 18:39:33', '2018-07-04 18:39:33', NULL, ''),
(36, 6, 'fa fa-twitter', 'https://www.tweeter.com/', '_self', NULL, '#000000', NULL, 27, '2018-07-04 18:39:48', '2018-07-04 18:39:48', NULL, ''),
(37, 6, 'fa fa-linkedin', 'https://www.linkedin.com/', '_self', NULL, '#000000', NULL, 28, '2018-07-04 18:40:02', '2018-07-04 18:40:02', NULL, ''),
(38, 2, 'Service Reservations', '', '_self', NULL, '#000000', NULL, 3, '2018-07-04 21:01:31', '2018-07-06 05:02:10', 'reservation.form', 'null'),
(40, 1, 'Banners', '', '_self', 'voyager-images', '#000000', NULL, 9, '2018-07-05 07:39:56', '2018-07-06 08:22:04', 'voyager.banners.index', 'null'),
(41, 1, 'Services', '', '_self', 'voyager-list', '#000000', NULL, 12, '2018-07-06 07:09:34', '2018-07-06 08:21:57', 'voyager.services.index', 'null'),
(42, 1, 'Reservations', '', '_self', 'voyager-check', '#000000', NULL, 5, '2018-07-06 07:15:51', '2018-07-06 08:22:04', 'voyager.reservations.index', 'null'),
(43, 7, '*', '*', '_self', NULL, '#000000', NULL, 29, '2018-07-06 08:23:59', '2018-07-06 08:28:23', NULL, ''),
(44, 7, 'festina', '', '_self', NULL, '#000000', NULL, 30, '2018-07-06 08:24:18', '2018-07-06 08:28:33', NULL, ''),
(45, 7, 'fossil', '', '_self', NULL, '#000000', NULL, 31, '2018-07-06 08:24:30', '2018-07-06 08:28:40', NULL, ''),
(46, 7, 'g-shock', '', '_self', NULL, '#000000', NULL, 32, '2018-07-06 08:24:41', '2018-07-06 08:28:48', NULL, ''),
(47, 7, 'diesel', '', '_self', NULL, '#000000', NULL, 33, '2018-07-06 08:24:50', '2018-07-06 08:28:56', NULL, ''),
(48, 7, 'emperio', '', '_self', NULL, '#000000', NULL, 34, '2018-07-06 08:25:01', '2018-07-06 08:29:04', NULL, '');

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
(91, '0000_00_00_000000_create_comments_table', 1),
(92, '2014_10_12_000000_create_users_table', 1),
(93, '2014_10_12_100000_create_password_resets_table', 1),
(94, '2018_07_02_103737_create_brands_table', 1),
(95, '2018_07_02_104209_create_products_table', 1),
(96, '2018_07_02_111037_create_countries_table', 1),
(97, '2018_07_02_111115_create_orders_table', 1),
(98, '2018_07_02_213516_create_coupons_table', 1),
(99, '2018_07_02_221159_create_discounts_table', 1),
(100, '2018_07_03_084141_create_shoppingcart_table', 1),
(101, '2018_07_03_125923_create_order_product_table', 1),
(102, '2016_01_01_000000_add_voyager_user_fields', 2),
(103, '2016_01_01_000000_create_data_types_table', 2),
(104, '2016_05_19_173453_create_menu_table', 2),
(105, '2016_10_21_190000_create_roles_table', 2),
(106, '2016_10_21_190000_create_settings_table', 2),
(107, '2016_11_30_135954_create_permission_table', 2),
(108, '2016_11_30_141208_create_permission_role_table', 2),
(109, '2016_12_26_201236_data_types__add__server_side', 2),
(110, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(111, '2017_01_14_005015_create_translations_table', 2),
(112, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(113, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(114, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(115, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(116, '2017_08_05_000000_add_group_to_settings_table', 2),
(117, '2017_11_26_013050_add_user_role_relationship', 2),
(118, '2017_11_26_015000_create_user_roles_table', 2),
(119, '2018_03_11_000000_add_user_settings', 2),
(120, '2018_03_14_000000_add_details_to_data_types_table', 2),
(121, '2018_03_16_000000_make_settings_value_nullable', 2),
(124, '2018_07_05_093325_create_banners_table', 3),
(126, '2018_07_05_102129_add_gallery_to_products_table', 4),
(132, '2018_07_05_221857_create_services_table', 5),
(133, '2018_07_05_221922_create_reservations_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `post_code` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `card_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discount_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `email`, `first_name`, `last_name`, `address1`, `address2`, `company`, `city`, `country_id`, `post_code`, `phone`, `card_name`, `discount`, `discount_code`, `subtotal`, `tax`, `total`, `payment_gateway`, `error`, `created_at`, `updated_at`) VALUES
(1, 2, 'jsteuber@example.com', 'sadasd', 'adasdasdas', 'sdsadas', NULL, NULL, 'adasdas', 6, NULL, NULL, NULL, 0, NULL, 468, 98, 566, NULL, NULL, '2018-07-03 11:53:40', '2018-07-03 11:53:40'),
(2, 2, 'jsteuber@example.com', 'dsadas', 'adasdasdas', 'sdsadas', NULL, NULL, 'adasdas', 6, NULL, NULL, NULL, 0, NULL, 468, 98, 566, NULL, NULL, '2018-07-03 12:05:32', '2018-07-03 12:05:32'),
(3, NULL, 'test@gmail.com', 'dsadas', 'adasdasdas', 'sdsadas', NULL, NULL, 'adasdas', 6, NULL, NULL, NULL, 30, 'ABC123', 214, 45, 259, NULL, NULL, '2018-07-03 19:09:38', '2018-07-03 19:09:38'),
(4, NULL, 'test@gmail.com', 'dsadas', 'adasdasdas', 'sdsadas', NULL, NULL, 'adasdas', 6, NULL, NULL, NULL, 0, NULL, 498, 105, 603, NULL, NULL, '2018-07-03 19:11:29', '2018-07-03 19:11:29'),
(5, NULL, 'test@gmail.com', 'dsadas', 'adasdasdas', 'sdsadas', NULL, NULL, 'adasdas', 6, NULL, NULL, NULL, 0, NULL, 732, 154, 886, NULL, NULL, '2018-07-03 20:24:31', '2018-07-03 20:24:31'),
(6, NULL, 'test@gmail.com', 'dsadas', 'adasdasdas', 'sdsadas', NULL, NULL, 'adasdas', 6, NULL, NULL, NULL, 0, NULL, 488, 102, 590, NULL, NULL, '2018-07-03 20:29:32', '2018-07-03 20:29:32'),
(7, 4, 'admin@gmail.com', 'dsadas', 'adasdasdas', 'sdsadas', NULL, NULL, 'adasdas', 6, NULL, NULL, NULL, 0, NULL, 1869, 392, 2261, NULL, NULL, '2018-07-04 12:02:23', '2018-07-04 12:02:23'),
(8, 4, 'admin@gmail.com', 'dsadas', 'adasdasdas', 'sdsadas', NULL, NULL, 'adasdas', 8, NULL, NULL, NULL, 0, NULL, 1568, 329, 1897, NULL, NULL, '2018-07-05 11:02:17', '2018-07-05 11:02:17'),
(9, 5, 'moderator@gmail.com', 'dsadas', 'adasdasdas', 'sdsadas', NULL, NULL, 'adasdas', 6, NULL, NULL, NULL, 0, NULL, 1700, 357, 2057, NULL, NULL, '2018-07-06 11:04:13', '2018-07-06 11:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `quantity`, `price`, `percent_off`) VALUES
(2, 2, 1, 238, NULL),
(2, 1, 1, 230, NULL),
(3, 1, 1, 244, NULL),
(4, 1, 1, 244, NULL),
(4, 16, 1, 254, NULL),
(5, 1, 3, 244, NULL),
(6, 1, 2, 244, NULL),
(7, 2, 5, 286, NULL),
(7, 20, 1, 234, NULL),
(7, 15, 1, 205, NULL),
(8, 20, 2, 234, NULL),
(8, 24, 1, 1100, NULL),
(9, 29, 1, 1700, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$JaTfZJa1eejqy6654.vWB.MkVkiDmGf5Z5ZIErGgyoMTfZL0NMxxa', '2018-07-03 20:16:06');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-07-04 10:51:44', '2018-07-04 10:51:44'),
(2, 'browse_bread', NULL, '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(3, 'browse_database', NULL, '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(4, 'browse_media', NULL, '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(5, 'browse_compass', NULL, '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(6, 'browse_menus', 'menus', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(7, 'read_menus', 'menus', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(8, 'edit_menus', 'menus', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(9, 'add_menus', 'menus', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(10, 'delete_menus', 'menus', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(11, 'browse_roles', 'roles', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(12, 'read_roles', 'roles', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(13, 'edit_roles', 'roles', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(14, 'add_roles', 'roles', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(15, 'delete_roles', 'roles', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(16, 'browse_users', 'users', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(17, 'read_users', 'users', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(18, 'edit_users', 'users', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(19, 'add_users', 'users', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(20, 'delete_users', 'users', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(21, 'browse_settings', 'settings', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(22, 'read_settings', 'settings', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(23, 'edit_settings', 'settings', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(24, 'add_settings', 'settings', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(25, 'delete_settings', 'settings', '2018-07-04 10:51:45', '2018-07-04 10:51:45'),
(26, 'browse_hooks', NULL, '2018-07-04 10:51:47', '2018-07-04 10:51:47'),
(27, 'browse_brands', 'brands', '2018-07-04 10:59:35', '2018-07-04 10:59:35'),
(28, 'read_brands', 'brands', '2018-07-04 10:59:35', '2018-07-04 10:59:35'),
(29, 'edit_brands', 'brands', '2018-07-04 10:59:35', '2018-07-04 10:59:35'),
(30, 'add_brands', 'brands', '2018-07-04 10:59:35', '2018-07-04 10:59:35'),
(31, 'delete_brands', 'brands', '2018-07-04 10:59:35', '2018-07-04 10:59:35'),
(32, 'browse_products', 'products', '2018-07-04 11:03:00', '2018-07-04 11:03:00'),
(33, 'read_products', 'products', '2018-07-04 11:03:00', '2018-07-04 11:03:00'),
(34, 'edit_products', 'products', '2018-07-04 11:03:00', '2018-07-04 11:03:00'),
(35, 'add_products', 'products', '2018-07-04 11:03:00', '2018-07-04 11:03:00'),
(36, 'delete_products', 'products', '2018-07-04 11:03:00', '2018-07-04 11:03:00'),
(37, 'browse_orders', 'orders', '2018-07-04 11:09:16', '2018-07-04 11:09:16'),
(38, 'read_orders', 'orders', '2018-07-04 11:09:16', '2018-07-04 11:09:16'),
(39, 'edit_orders', 'orders', '2018-07-04 11:09:16', '2018-07-04 11:09:16'),
(40, 'add_orders', 'orders', '2018-07-04 11:09:16', '2018-07-04 11:09:16'),
(41, 'delete_orders', 'orders', '2018-07-04 11:09:16', '2018-07-04 11:09:16'),
(42, 'browse_coupons', 'coupons', '2018-07-04 11:09:43', '2018-07-04 11:09:43'),
(43, 'read_coupons', 'coupons', '2018-07-04 11:09:43', '2018-07-04 11:09:43'),
(44, 'edit_coupons', 'coupons', '2018-07-04 11:09:43', '2018-07-04 11:09:43'),
(45, 'add_coupons', 'coupons', '2018-07-04 11:09:43', '2018-07-04 11:09:43'),
(46, 'delete_coupons', 'coupons', '2018-07-04 11:09:43', '2018-07-04 11:09:43'),
(47, 'browse_countries', 'countries', '2018-07-04 11:13:47', '2018-07-04 11:13:47'),
(48, 'read_countries', 'countries', '2018-07-04 11:13:47', '2018-07-04 11:13:47'),
(49, 'edit_countries', 'countries', '2018-07-04 11:13:47', '2018-07-04 11:13:47'),
(50, 'add_countries', 'countries', '2018-07-04 11:13:47', '2018-07-04 11:13:47'),
(51, 'delete_countries', 'countries', '2018-07-04 11:13:47', '2018-07-04 11:13:47'),
(57, 'browse_comments', 'comments', '2018-07-04 11:23:09', '2018-07-04 11:23:09'),
(58, 'read_comments', 'comments', '2018-07-04 11:23:09', '2018-07-04 11:23:09'),
(59, 'edit_comments', 'comments', '2018-07-04 11:23:09', '2018-07-04 11:23:09'),
(60, 'add_comments', 'comments', '2018-07-04 11:23:09', '2018-07-04 11:23:09'),
(61, 'delete_comments', 'comments', '2018-07-04 11:23:09', '2018-07-04 11:23:09'),
(62, 'browse_discounts', 'discounts', '2018-07-04 11:27:40', '2018-07-04 11:27:40'),
(63, 'read_discounts', 'discounts', '2018-07-04 11:27:40', '2018-07-04 11:27:40'),
(64, 'edit_discounts', 'discounts', '2018-07-04 11:27:40', '2018-07-04 11:27:40'),
(65, 'add_discounts', 'discounts', '2018-07-04 11:27:40', '2018-07-04 11:27:40'),
(66, 'delete_discounts', 'discounts', '2018-07-04 11:27:40', '2018-07-04 11:27:40'),
(72, 'browse_banners', 'banners', '2018-07-05 07:45:52', '2018-07-05 07:45:52'),
(73, 'read_banners', 'banners', '2018-07-05 07:45:52', '2018-07-05 07:45:52'),
(74, 'edit_banners', 'banners', '2018-07-05 07:45:52', '2018-07-05 07:45:52'),
(75, 'add_banners', 'banners', '2018-07-05 07:45:52', '2018-07-05 07:45:52'),
(76, 'delete_banners', 'banners', '2018-07-05 07:45:52', '2018-07-05 07:45:52'),
(77, 'browse_services', 'services', '2018-07-06 07:09:34', '2018-07-06 07:09:34'),
(78, 'read_services', 'services', '2018-07-06 07:09:34', '2018-07-06 07:09:34'),
(79, 'edit_services', 'services', '2018-07-06 07:09:34', '2018-07-06 07:09:34'),
(80, 'add_services', 'services', '2018-07-06 07:09:34', '2018-07-06 07:09:34'),
(81, 'delete_services', 'services', '2018-07-06 07:09:34', '2018-07-06 07:09:34'),
(82, 'browse_reservations', 'reservations', '2018-07-06 07:15:51', '2018-07-06 07:15:51'),
(83, 'read_reservations', 'reservations', '2018-07-06 07:15:51', '2018-07-06 07:15:51'),
(84, 'edit_reservations', 'reservations', '2018-07-06 07:15:51', '2018-07-06 07:15:51'),
(85, 'add_reservations', 'reservations', '2018-07-06 07:15:51', '2018-07-06 07:15:51'),
(86, 'delete_reservations', 'reservations', '2018-07-06 07:15:51', '2018-07-06 07:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(85, 1),
(86, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `price` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `stock` tinyint(4) NOT NULL DEFAULT '1',
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `details`, `price`, `image`, `gallery`, `brand_id`, `featured`, `stock`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 'SPB061J1 SEIKO Presage Multi-Hand Automatic muški ručni sat', 'spb061j1-seiko-presage-multi-hand-automatic-muski-rucni-sat', 'Elegantan muški sat iz prestižne linije mehaničke kolekcije  Presage. Urađen je po uzoru na prvi Seikov ručni sat "Laurel" iz 1913.godine. Preglednog je elegantnog crnog brojčanika fine teksture sa upečatljivim brojevima, kazaljkama i podbrojčanicima u srebrnoj boji. Poseduje kvalitetan,ručno sklapan mehanizam sa automatskim i mogućnošću ručnog navijanja,calibra 6R27 od 204 dela,sa autonomijom rada do 45 sati kada je potpuno navijen. Smešten je u čeličnom kućištu,koje zaštićuje dvostruko zakrivljeno safir kristal staklo sa antirefleksnim premazom.  Podržava ga visokokvalitetna čelična narukvica sa sigurnosnom kopčom.  Sat je namenjen muškarcima koji znaju da prepoznaju prave vrednosti koje traju generacijama.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">13 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Dodatne funkcije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Datum</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Indikator rezerve snage</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Okruglo</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">41 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Analogni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Automatik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip stakla:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Safirno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">100 metara</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vrsta kopče:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Preklopna</li>\r\n</ul>\r\n</li>\r\n</ul>', 1200, '/img/sat.jpg', '["products\\/July2018\\/XnTaGaXXeq2Uq1IWVlZL.jpg"]', 10, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-05 18:45:09'),
(2, 'GST-W110D-1A9ER CASIO G-Shock muški ručni sat', 'gst-w110d-1a9er-casio-g-shock-muski-rucni-sat', 'Modeli iz G-Shock kolekcije su izuzetno jaki i otporni kako na udarce tako i na vibracije i vodu. Zbog svoje čvrste konstrukcije i mnogobrojnih funkcija odgovaraju širokom rasponu sportskih stilova. Ovaj model pripada kolekciji G-Steel i koristi solarnu tehnologiju, koja je sve zastupljenija među ljubiteljima satova. Karakterišu ga visoko kvalitetna čelična narukvica i crni displej sa detaljima u boji zlata. Idealan je za svakodnevne sportske aktivnosti.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">LCD</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">16 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Dodatne funkcije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">12/24 prikaz vremena</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">5 alarma</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kalendar</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">LED svetlo</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Otporan na udarce</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Radio kontrol</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Svetsko vreme</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">&Scaron;toperica</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Tajmer</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Okruglo</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">52 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kombinovani</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Solarni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip stakla:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Mineralno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">200 metara</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vrsta kopče:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Preklopna</li>\r\n</ul>\r\n</li>\r\n</ul>', 560, 'products/July2018/gcW7w8b8vvgkSFNVycoY.jpg', NULL, 3, 1, 1, NULL, '2018-07-03 11:50:48', '2018-07-05 18:47:25'),
(3, 'doloribus', 'doloribus', 'Nam et et quod.', 'Totam amet quae maxime est quod. Aut eos assumenda molestias ullam ducimus aut accusamus. Sit hic nulla vel explicabo accusamus voluptatibus harum.', 265, '/img/sat.jpg', NULL, 5, 1, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(4, 'temporibus', 'temporibus', 'Et blanditiis aut quo a pariatur assumenda nemo.', 'Tempora sed quis in rerum. Ut enim voluptatibus et maiores modi repellat sunt voluptatibus. Molestiae nisi et sunt cupiditate autem. Ut vel est amet molestiae cum nobis incidunt.', 235, '/img/sat.jpg', NULL, 3, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(5, 'dignissimos', 'dignissimos', 'Consectetur ea pariatur molestiae cum molestiae qui alias vel.', 'Adipisci ex est voluptatem sequi quod. Aspernatur perferendis repellendus voluptatem magni. Rerum quae ratione non aut.', 205, '/img/sat.jpg', NULL, 2, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(6, 'id', 'id', 'Quasi expedita eos occaecati nam dolorem.', 'Expedita libero ipsam voluptatibus velit. Voluptatem ratione voluptas eos odit illo. Omnis optio cupiditate rerum occaecati. Suscipit similique nihil doloribus corporis. Nostrum saepe sed et sint.', 228, '/img/sat.jpg', NULL, 1, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(7, 'a', 'a', 'Quia non autem labore voluptatum officia autem sit.', 'Voluptates eveniet rem molestias et enim aut praesentium. Voluptate est voluptate voluptatem et. Rerum voluptatum nam modi odio vel.', 244, '/img/sat.jpg', NULL, 2, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(8, 'est', 'est', 'Aperiam eos occaecati eaque dolores.', 'Cum sint laudantium veniam labore. Vero autem et assumenda et veniam alias.', 290, '/img/sat.jpg', NULL, 1, 1, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(9, 'modi', 'modi', 'Voluptatem ut doloribus voluptatem dolorem dolorem.', 'Id aperiam esse hic. Est id ab minima illo quis est. Molestiae alias incidunt culpa libero sit. Pariatur consequatur quidem consequatur dolorem sunt omnis. Molestiae excepturi dolor nisi veniam.', 219, '/img/sat.jpg', NULL, 3, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(10, 'dolor', 'dolor', 'Nam et quibusdam eligendi dolores enim qui est.', 'Tempore deleniti repudiandae eius corrupti illum sunt eius. Et cum est dolor. Odio odit quibusdam exercitationem ea porro distinctio. Atque ratione est sit officia praesentium iusto consequatur.', 261, '/img/sat.jpg', NULL, 1, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(11, 'accusamus', 'accusamus', 'Et aut delectus accusamus.', 'Ut iste facere sit quia. Beatae dolorem atque accusamus quae pariatur dolore ullam. Et esse reiciendis ipsum officia aliquid voluptas eum. Rerum ea ullam et saepe quia sed.', 253, '/img/sat.jpg', NULL, 7, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(12, 'consequatur', 'consequatur', 'Illo dignissimos beatae et fuga doloribus libero aut.', 'Alias ullam sit commodi. Voluptatem error cum unde. Nemo aut molestiae quaerat et necessitatibus. Eveniet et omnis qui voluptas delectus.', 203, '/img/sat.jpg', NULL, 5, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(13, 'quas', 'quas', 'Aut voluptatem est occaecati laudantium.', 'Repellat similique qui nemo magni est. Omnis distinctio praesentium quod. Eum accusantium qui deleniti quidem ducimus. Dolorum architecto ipsa ea impedit fuga dolore.', 244, '/img/sat.jpg', NULL, 1, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(14, 'facere', 'facere', 'Aut ipsum expedita qui eos et minima.', 'Praesentium blanditiis sit quis sequi magni ipsam voluptate vero. Cumque sit deserunt veritatis sequi cumque voluptas. Aut quam labore culpa architecto dolorum quam.', 220, '/img/sat.jpg', NULL, 5, 0, 1, NULL, '2018-07-03 11:50:48', '2018-07-03 11:50:48'),
(15, 'LIN-173D-1AVEF CASIO muški ručni sat', 'lin-173d-1avef-casio-muski-rucni-sat', 'Muški sat brenda Casio sportsko elegantnog dizajna. Karakteriše ga čelična narukvica srebrne boje i  crni brojčanik na kome se ističu crveni detalji. Model je pogodan za svakodnevno nošenje, a zbog radio control funkcije može biti i savršen pratilac svih ljubitelja putovanja.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">13 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Dodatne funkcije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">12/24 prikaz vremena</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Alarm</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Datum</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Hronograf</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">LED svetlo</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Radio kontrol</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Svetsko vreme</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Okruglo</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">45 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kombinovani</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip stakla:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Mineralno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">100 metara</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vrsta kopče:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Preklopna</li>\r\n</ul>\r\n</li>\r\n</ul>', 230, 'products/July2018/2dU5BHg0kAYLTCtPLANp.jpg', NULL, 11, 1, 1, NULL, '2018-07-03 11:50:49', '2018-07-05 18:36:26'),
(16, 'WVA-106HE-7BVER CASIO muški ručni sat', 'wva-106he-7bver-casio-muski-rucni-sat', 'Muški sat brenda Casio namenjen za aktivne ljude sportskog duha. Karakteriše ga crno-srebrno kućište i crna silikonska narukvica koja ovom satu daje udobnost i izdržljivost. Na srebrnom brojčaniku smešteni su arapski brojevi kao i deo digitalnog prikaza.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Bela</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">12 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Dodatne funkcije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Alarm</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Hronograf</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Svetsko vreme</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Tajmer</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Okruglo</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">48 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kombinovani</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Silikon</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip stakla:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Mineralno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">50 metara</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vrsta kopče:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>', 254, 'products/July2018/C2BIvAVtXPmiEfd0zZrD.jpg', NULL, 11, 0, 1, NULL, '2018-07-03 11:50:49', '2018-07-05 18:37:58'),
(17, 'BEM-105D-7AVEF CASIO muški ručni sat', 'bem-105d-7avef-casio-muski-rucni-sat', 'Klasičan muški sat brenda Casio na čeličnoj srebrnoj narukvici ovalnog oblika. Na srebrnom brojčaniku smešteni su arapski brojevi i polukrug u funkciji druge vremenske zove, dok se na poziciji 12 nalazi datum. Model je pogodan za svakodnevno nošenje, ali i za elegantnije prilike.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">8 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Dodatne funkcije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Datum</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Svetsko vreme</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ovalno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">38 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Analogni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip stakla:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Mineralno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">50 metara</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vrsta kopče:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>', 243, 'products/July2018/qjD9OBnzhGHQIsae8SdE.jpg', NULL, 11, 0, 1, NULL, '2018-07-03 11:50:49', '2018-07-05 18:38:52');
INSERT INTO `products` (`id`, `name`, `slug`, `description`, `details`, `price`, `image`, `gallery`, `brand_id`, `featured`, `stock`, `publish_at`, `created_at`, `updated_at`) VALUES
(18, 'MTP-E133L-5EEF CASIO muški ručni sat', 'mtp-e133l-5eef-casio-muski-rucni-sat', 'Muški sat brenda Casio sa kožnom narukvicom u retro stilu i klasičnim belim brojčanikom idealna je kombinacija za sve one koji uživaju u  modernom načinu života. Jednostavnost i svedenost odlike su ovog modela.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Bela</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Bi kolor</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">7 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na baterije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">1 godina</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Okruglo</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">38 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Analogni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Koža</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip stakla:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Mineralno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">30 metara</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vrsta kopče:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>', 264, 'products/July2018/Kmz95Np0QThNDnIadpgL.jpg', NULL, 11, 0, 1, NULL, '2018-07-03 11:50:49', '2018-07-05 18:39:53'),
(19, 'SSE147J1 SEIKO Astron GPS Solar Dual-Time Big Date muški ručni sat', 'sse147j1-seiko-astron-gps-solar-dual-time-big-date-muski-rucni-sat', 'Seiko Astron predstavlja prvi GPS Solarni kvarcni sat na svetu. Jednim klikom na dugme, Astron se povezuje sa GPS mrežom i precizno određuje vreme bilo gde da se nalazite. Uvek u koraku sa vremenom, moderan i neponovljiv dizajn, uklopiće se uz svaki stil. Pokreće ga Seiko calibar 8X42 visoke preciznosti. Sat se napaja prirodnom i veštačkom svetlošću, i tako dobija energiju. Zbog toga bateriju nije potrebno menjati. Rezervna snaga traje do 6 meseci kada je potpuno napunjen. Kućište je od hiruškog čelika, i uokvireno sa linetom od crne keramike. Na plavom brojčaniku su jasno izraženi  pokazatelji vremena sa odličnom luminescencijom kazaljki i indeksa, što omogućava dobru čitljivost i u mraku. Sat podržava visoko kvalitetna narukvica od hiruškog čelika. Karakteriše ga visok nivo tehnologije, pouzdanost, funkcionalnost.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Plava</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">13 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Dodatne funkcije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">39 vremenskih zona</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Dual time</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">GPS</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Indikator rezerve snage</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Luminiscentne kazaljke i indexi</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Otporan na magnetno polje</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Perpetual kalendar</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Okruglo</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">46 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Analogni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Solarni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip stakla:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Safirno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">100 metara</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vrsta kopče:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Leptir</li>\r\n</ul>\r\n</li>\r\n</ul>', 203, 'products/July2018/WN1keYQPcRpDcy1aTcIy.jpg', '["products\\/July2018\\/z6VyzzgZpT4qxZmCuFUa.jpg","products\\/July2018\\/32PvVw6nKWS95EbcIDMF.jpg","products\\/July2018\\/JsFpfnNufc8pmeZlayQO.jpg","products\\/July2018\\/ABPpUAnYhH4aZx5e1GEn.jpg","products\\/July2018\\/EJxCGLnMqZrjCwjUDvxd.jpg"]', 10, 1, 1, NULL, '2018-07-03 11:50:49', '2018-07-05 18:42:30'),
(20, 'SRX013P1 SEIKO Premier Kinetic Direct Drive muški ručni sat', 'srx013p1-seiko-premier-kinetic-direct-drive-muski-rucni-sat', 'Elegantan Seiko Premier Kinetic Direct Drive muški sat zapanjujući je primer Seikovih satova. Seiko-ov ekskluzivni kinetični večni kalibar 5D88 sa Direct Drive tehnologijom, sa sobom donosi jednu veliku prednost. Pored toga što se električna energija stvara nošenjem sata, ona se može stvoriti i navijanjem krunice. Ovakav mehanizam poseduje indikator rezervne snage koja traje 1 mesec kada je potpuno napunjen, i sa indikatorom mesečevih mena. Ova revolucionarna funkcionalnost je uparena sa izvrsnim izgledom, kućištem od nerđajućeg čelika i dekorativnim crnim brojčanikom, sa srebrnim rimskim brojevima i indeksima, na narukvici od visokokvalitetnog hiruškog čelika.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">13 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Dodatne funkcije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">12/24 prikaz vremena</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Dani u nedelji</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Datum</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Indikator mesečevih mena</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Indikator rezerve snage</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Okruglo</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">42 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Analogni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kinetik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip stakla:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Safirno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">100 metara</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vrsta kopče:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Preklopna</li>\r\n</ul>\r\n</li>\r\n</ul>', 1400, 'products/July2018/yqBvKSyCrIm1lvuL789H.jpg', '["products\\/July2018\\/bY6Z023rvvK0kDim9s8E.jpg","products\\/July2018\\/B9yxBhZB4X6lSv5k8P95.jpg","products\\/July2018\\/t92SsdCsbv6GS5GMKIdi.jpg","products\\/July2018\\/gXoKhVTsAEFU9ocQrlRt.jpg","products\\/July2018\\/IZUkPjT4tJqgjzqDAWAk.jpeg"]', 10, 1, 1, NULL, '2018-07-03 11:50:49', '2018-07-05 18:44:01'),
(21, 'SSE143J1 SEIKO Astron GPS Solar Dual-Time Big Date Novak Djokovic Limited Edition muški ručni sat', 'sse143j1-seiko-astron-gps-solar-dual-time-big-date-novak-djokovic-limited-edition-muski-rucni-sat', 'Seiko Astron predstavlja prvi GPS Solarni kvarcni sat na svetu. Koristeći samo snagu svetlosti, jednim klikom na dugme, Astron se povezuje sa GPS mrežom i precizno određuje vreme bilo gde da se nalazite. Limitirani model sa potpisom Novaka Đokovića, elegantnog i sofisticiranog dizajna,  ima sportski osećaj koji odražava Novakovu strast za tenisom. Izabrani gradovi žutom bojom diskretno upućuju na Grand Slam-ove koje je osvojio, linije na brojčaniku na sveže pokošene teniske terene, a dual-time podbrojčanik uokviren osvojenim poenima u gemu ukazuje na njegovu ljubav prema belom sportu sa natpisom "Love". Pokreće ga Seiko calibar 8X42 visoke preciznosti. Sat se napaja prirodnom i veštačkom svetlošću, i tako dobija energiju. Zbog toga bateriju nije potrebno menjati. Rezervna snaga traje do 6 meseci kada je potpuno napunjen. Kućište je od hiruškog čelika sa crnim super-hard slojem, i uokvireno sa linetom od crne keramike. Na crnom brojčaniku su jasno izraženi pokazatelji vremena sa odličnom luminiscencijom na kazaljkama i indeksima, što omogućava dobru čitljivost i u mraku. Sat podržava visoko kvalitetna crna silikonska narukvica. Karakteriše ga visok nivo tehnologije, pouzdanost, funkcionalnost.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">13 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Dodatne funkcije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">39 vremenskih zona</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Dual time</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">GPS</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Indikator rezerve snage</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Luminiscentne kazaljke i indexi</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Otporan na magnetno polje</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Perpetual kalendar</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Čelik</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Okruglo</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">46 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Analogni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Solarni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Silikon</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip stakla:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Safirno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">100 metara</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vrsta kopče:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Preklopna</li>\r\n</ul>\r\n</li>\r\n</ul>', 2696, 'products/July2018/kmnQVAOT2Eudk2AI60tO.jpg', '["products\\/July2018\\/bb72TQeGBAvZ4XA76dEs.jpg","products\\/July2018\\/yayHwuOwgAIKJNSDLWlU.jpg","products\\/July2018\\/YLFuhWyIodQyAQbZzs4M.jpeg"]', 10, 1, 1, NULL, '2018-07-05 08:31:17', '2018-07-05 08:31:17'),
(22, 'SSE041J1 SEIKO Astron GPS Solar Dual-Time muški ručni sat', 'sse041j1-seiko-astron-gps-solar-dual-time-muski-rucni-sat', 'Seiko Astron predstavlja prvi GPS Solarni kvarcni sat na svetu. Jednim klikom na dugme, Astron se povezuje sa GPS mrežom i precizno određuje vreme bilo gde da se nalazite. Uvek u koraku sa vremenom, moderan i neponovljiv dizajn, uklopiće se uz svaki stil. Pokreće ga Seiko calibar 8X53 visoke preciznosti. Sat se napaja prirodnom i veštačkom svetlošću, i tako dobija energiju. Zbog toga bateriju nije potrebno menjati. Rezervna snaga traje do 6 meseci kada je potpuno napunjen. Kućište je od titanijuma koje je 50% lakše od čelika, i uokvireno sa linetom od crne keramike. Na crnom brojčaniku su jasno izraženi  pokazatelji vremena sa odličnom luminescencijom kazaljki i indeksa, što omogućava dobru čitljivost i u mraku. Sat podržava visoko kvalitetna narukvica u kombinaciji crne keramike i titanijuma. Karakteriše ga visok nivo tehnologije, pouzdanost, funkcionalnost.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Srebrna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Bi kolor</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">14 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Dodatne funkcije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">39 vremenskih zona</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Dani u nedelji</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Dual time</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">GPS</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Hronograf</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Indikator rezerve snage</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Luminiscentne kazaljke i indexi</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Otporan na magnetno polje</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Perpetual kalendar</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Titanijum</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Okruglo</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">45 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Analogni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Solarni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Titanijum-Keramika</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip stakla:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Safirno</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">100 metara</li>\r\n<li></li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"></li>\r\n</ul>', 3248, 'products/July2018/Qw96VVGClXYSasVafLa1.jpg', '["products\\/July2018\\/hnDaNf1B8bW26tk0thJW.jpg","products\\/July2018\\/A1sAM5rO9unRabB5gykT.jpg","products\\/July2018\\/0Xlqhy283NZkJOiSQd9I.jpg"]', 10, 1, 1, NULL, '2018-07-05 08:41:29', '2018-07-05 08:41:29');
INSERT INTO `products` (`id`, `name`, `slug`, `description`, `details`, `price`, `image`, `gallery`, `brand_id`, `featured`, `stock`, `publish_at`, `created_at`, `updated_at`) VALUES
(23, 'GW-A1100-1A3ER CASIO G-Shock Gravitymaster muški ručni sat', 'gw-a1100-1a3er-casio-g-shock-gravitymaster-muski-rucni-sat', 'Modeli iz G-Shock kolekcije su izuzetno jaki i otporni kako na udarce tako i na vibracije i vodu. Zbog svoje čvrste konstrukcije i mnogobrojnih funkcija odgovaraju širokom rasponu sportskih aktivnosti. Modeli iz "Gravitymaster-Aviation" serije su dodatno otporni na uticaj gravitacionog polja i centrifugalnih sila, a Twin senzori obezbedjuju brz pristup kompasu i drugim funkcijama i na velikim visinama. Displej je opremljen velikim arapskim brojevima sa superiluminovom za bolju čitljivost .Crno kućište u kombinaciji sa crnom narukvicom čini ovaj model savršenim pratiocem pravih avanturista.', '<ul style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; column-count: 2; column-gap: 50px; color: #4b4949; font-family: SourceSansPro-Regular;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja brojčanika:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Boja narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Crna</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Debljina kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">17 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Dodatne funkcije:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">12/24 prikaz vremena</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Alarm</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Dani u nedelji</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Datum</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kalendar</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Kompas</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Otporan na magnetno polje</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Otporan na udarce</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">&Scaron;toperica</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Tajmer</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Garancija na mehanizam:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">2 godine</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Materijal kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Resin</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Oblik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Okruglo</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prečnik kući&scaron;ta:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">53 mm</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Prikaz:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Analogni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip mehanizma:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Solarni</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip narukvice:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Resin</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Tip sata:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vodootpornost:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">200 metara</li>\r\n</ul>\r\n</li>\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal;"><span style="box-sizing: border-box; float: left;">Vrsta kopče:</span>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 5px; list-style: none; float: left;">\r\n<li style="box-sizing: border-box; margin-bottom: 4px; overflow: hidden; line-height: normal; color: #848484;">Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>', 800, 'products/July2018/i4sxGAmGGCWeD7uCW4CQ.png', '["products\\/July2018\\/Ishwa1x3puYqyDIwye9q.png"]', 3, 0, 1, NULL, '2018-07-05 08:44:46', '2018-07-05 08:44:46'),
(24, 'GWG-1000-1AER CASIO G-Shock Mudmaster muški ručni sat', 'gwg-1000-1aer-casio-g-shock-mudmaster-muski-rucni-sat', 'Modeli iz G-Shock kolekcije su izuzetno jaki i otporni kako na udarce tako i na vibracije i vodu. Zbog svoje čvrste konstrukcije i mnogobrojnih funkcija odgovaraju širokom rasponu sportskih aktivnosti. Modeli iz "MUDMASTER" serije su dodatno otporni na blato, a Twin senzori obezbedjuju brz pristup merenju temperature i drugim funkcijama i u ekstremnim uslovima. Kućište i pušeri su dodatno zadihtovani što onemogućava prodor prašine i blata u mehanizam. Displej je opremljen velikim arapskim brojevima sa superiluminovom za bolju čitljivost, duplim led osvetljenjem i safir kristalom sa antirefleksnim premazom. Crno kućište u kombinaciji sa crnom narukvicom čini ovaj model savršenim pratiocem pravih avanturista. Karakteriše ga odvažnost i spremnost na izazove.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>LCD</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>18 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>12/24 prikaz vremena</li>\r\n<li>5 alarma</li>\r\n<li>Altimetar</li>\r\n<li>Barometar</li>\r\n<li>Indikator napunjenosti baterije</li>\r\n<li>Kalendar</li>\r\n<li>Kompas</li>\r\n<li>LED svetlo</li>\r\n<li>Otporan na blato</li>\r\n<li>Otporan na udarce</li>\r\n<li>Radio kontrol</li>\r\n<li>Svetsko vreme</li>\r\n<li>&Scaron;toperica</li>\r\n<li>Tajmer</li>\r\n<li>Termometar</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Resin</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>56 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Kombinovani</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Solarni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Resin</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Safirno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>200 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>', 1100, 'products/July2018/6crXBAkJ8Fv62UxPBkag.png', NULL, 3, 1, 1, NULL, '2018-07-05 09:56:58', '2018-07-05 09:56:58'),
(25, 'GA-100CM-5AER CASIO G-Shock muški ručni sat', 'ga-100cm-5aer-casio-g-shock-muski-rucni-sat', 'Modeli iz G-Shock kolekcije su izuzetno jaki i otporni kako na udarce tako i na vibracije i vodu. Zbog svoje čvrste konstrukcije i mnogobrojnih funkcija odgovaraju širokom rasponu sportskih stilova. Ovaj model pripada Camouflage kolekciji. Karakterističan je po zelenoj boji i maskirnim tonovima koji ga čine drugačijim i jedinstvenim.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>LCD</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Zelena</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Zelena</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>17 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>12/24 prikaz vremena</li>\r\n<li>5 alarma</li>\r\n<li>Kalendar</li>\r\n<li>LED svetlo</li>\r\n<li>Otporan na magnetno polje</li>\r\n<li>Otporan na udarce</li>\r\n<li>Snooze režim</li>\r\n<li>Svetsko vreme</li>\r\n<li>&Scaron;toperica</li>\r\n<li>Tajmer</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Resin</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>51 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Kombinovani</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Resin</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>200 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 1500, 'products/July2018/mjQFgC2xqsp8RvVDHsiu.png', NULL, 3, 0, 1, NULL, '2018-07-05 09:59:33', '2018-07-05 09:59:33'),
(26, 'GW-9300DC-1AER CASIO G-Shock Mudman muški ručni sat', 'gw-9300dc-1aer-casio-g-shock-mudman-muski-rucni-sat', 'Modeli iz G-Shock kolekcije su izuzetno jaki i otporni kako na udarce tako i na vibracije i vodu. Zbog svoje čvrste konstrukcije i mnogobrojnih funkcija odgovaraju širokom rasponu sportskih aktivnosti. Modeli iz "MUDMAN" serije su dodatno otporni na blato a Twin senzori obezbedjuju brz pristup merenju temperature,kompasu i drugim funkcijama i u ekstremnim uslovima. Koristi solarnu tehnologiju koja je sve zastupljenija medju ljubiteljima satova. Pregledan displej sa digitalnim prikazom za bolju čitljivost . Crno kućište od karbon fibera u kombinaciji sa krem narukvicom čini ovaj model savršenim pratiocem pravih avanturista.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>LCD</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Krem</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>18 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>12/24 prikaz vremena</li>\r\n<li>5 alarma</li>\r\n<li>Indikator mesečevih mena</li>\r\n<li>Kalendar</li>\r\n<li>Kompas</li>\r\n<li>LED svetlo</li>\r\n<li>Otporan na blato</li>\r\n<li>Otporan na udarce</li>\r\n<li>Svetsko vreme</li>\r\n<li>&Scaron;toperica</li>\r\n<li>Tajmer</li>\r\n<li>Termometar</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>53 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Digitalni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Solarni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Resin</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>200 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 4000, 'products/July2018/0nKbSAP2gYQrwET4rzPo.jpg', NULL, 3, 1, 1, NULL, '2018-07-05 10:01:30', '2018-07-05 18:49:12'),
(27, 'SSE143J1 SEIKO Astron GPS Solar Dual-Time Big Date Novak Djokovic Limited Edition muški ručni sat', 'sse143j1-seiko-astron-gps-solar-dual-time-big-date-novak-djokovic-limited-edition-muski-rucni-sat', 'Seiko Astron predstavlja prvi GPS Solarni kvarcni sat na svetu. Koristeći samo snagu svetlosti, jednim klikom na dugme, Astron se povezuje sa GPS mrežom i precizno određuje vreme bilo gde da se nalazite. Limitirani model sa potpisom Novaka Đokovića, elegantnog i sofisticiranog dizajna,  ima sportski osećaj koji odražava Novakovu strast za tenisom. Izabrani gradovi žutom bojom diskretno upućuju na Grand Slam-ove koje je osvojio, linije na brojčaniku na sveže pokošene teniske terene, a dual-time podbrojčanik uokviren osvojenim poenima u gemu ukazuje na njegovu ljubav prema belom sportu sa natpisom "Love". Pokreće ga Seiko calibar 8X42 visoke preciznosti. Sat se napaja prirodnom i veštačkom svetlošću, i tako dobija energiju. Zbog toga bateriju nije potrebno menjati. Rezervna snaga traje do 6 meseci kada je potpuno napunjen. Kućište je od hiruškog čelika sa crnim super-hard slojem, i uokvireno sa linetom od crne keramike. Na crnom brojčaniku su jasno izraženi pokazatelji vremena sa odličnom luminiscencijom na kazaljkama i indeksima, što omogućava dobru čitljivost i u mraku. Sat podržava visoko kvalitetna crna silikonska narukvica. Karakteriše ga visok nivo tehnologije, pouzdanost, funkcionalnost.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>13 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>39 vremenskih zona</li>\r\n<li>Dual time</li>\r\n<li>GPS</li>\r\n<li>Indikator rezerve snage</li>\r\n<li>Luminiscentne kazaljke i indexi</li>\r\n<li>Otporan na magnetno polje</li>\r\n<li>Perpetual kalendar</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>46 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Solarni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Silikon</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Safirno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>100 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Preklopna</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 20000, 'products/July2018/XtWx2riVB66IZoc7F2A6.png', NULL, 10, 1, 1, NULL, '2018-07-05 10:48:01', '2018-07-05 10:48:01'),
(28, 'SSE149J1 SEIKO Astron GPS Solar Dual-Time Big Date muški ručni sat', 'sse149j1-seiko-astron-gps-solar-dual-time-big-date-muski-rucni-sat', 'Seiko Astron predstavlja prvi GPS Solarni kvarcni sat na svetu. Jednim klikom na dugme, Astron se povezuje sa GPS mrežom i precizno određuje vreme bilo gde da se nalazite. Uvek u koraku sa vremenom, moderan i neponovljiv dizajn, uklopiće se uz svaki stil. Pokreće ga Seiko calibar 8X42 visoke preciznosti. Sat se napaja prirodnom i veštačkom svetlošću, i tako dobija energiju. Zbog toga bateriju nije potrebno menjati. Rezervna snaga traje do 6 meseci kada je potpuno napunjen. Kućište je od hiruškog čelika, i uokvireno sa linetom od crne keramike. Na crnom brojčaniku su jasno izraženi  pokazatelji vremena sa odličnom luminescencijom kazaljki i indeksa, što omogućava dobru čitljivost i u mraku. Sat podržava visoko kvalitetna narukvica od hiruškog čelika. Karakteriše ga visok nivo tehnologije, pouzdanost, funkcionalnost.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Srebrna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Srebrna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>13 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>39 vremenskih zona</li>\r\n<li>Dual time</li>\r\n<li>GPS</li>\r\n<li>Indikator rezerve snage</li>\r\n<li>Luminiscentne kazaljke i indexi</li>\r\n<li>Otporan na magnetno polje</li>\r\n<li>Perpetual kalendar</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>46 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Solarni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Safirno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>100 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Leptir</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 18000, 'products/July2018/jJgmF3wN5c5q0tFhye6f.png', '["products\\/July2018\\/ZbxIiX2rJbzu8VKZZpTY.png","products\\/July2018\\/mxt6ZdofH2HQs8gctpWo.png"]', 10, 0, 1, NULL, '2018-07-05 10:54:53', '2018-07-05 10:54:53'),
(29, 'WVQ-550DE-1AVER CASIO muški ručni sat', 'wvq-550de-1aver-casio-muski-rucni-sat', 'Muški sat brenda Casio sportsko elegantnog dizajna. Karakteriše ga čelična narukvica srebrne boje i  crni brojčanik na kome se ističu crveni detalji. Model je pogodan za svakodnevno nošenje, a zbog radio control funkcije može biti i savršen pratilac svih ljubitelja putovanja.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Srebrna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Srebrna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>13 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>12/24 prikaz vremena</li>\r\n<li>Alarm</li>\r\n<li>Datum</li>\r\n<li>Hronograf</li>\r\n<li>LED svetlo</li>\r\n<li>Radio kontrol</li>\r\n<li>Svetsko vreme</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>45 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Kombinovani</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>100 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Preklopna</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 1700, 'products/July2018/ucCUnRbTvWr3TJAJO4b3.png', NULL, 11, 0, 1, NULL, '2018-07-05 11:00:14', '2018-07-05 11:00:14'),
(30, 'MTF-E001-7AVEF CA2093 CASIO muški ručni sat', 'mtf-e001-7avef-ca2093-casio-muski-rucni-sat', 'Muški sat iz kolekcije Casio sportskog dizajna. Na belom brojčaniku smešteni su kontrastni crni indeksi koji obezbeđuju bolju preglednost. Crna narukvica od resina koja daje udobnost i izdržljivost deo je ovog sportskog sata.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Bela</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Srebrna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>13 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>Datum</li>\r\n<li>Kompas</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>45 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Resin</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>100 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 1200, 'products/July2018/iaFZlPt6aCYTFadA2xDM.png', NULL, 11, 1, 1, NULL, '2018-07-05 11:03:29', '2018-07-05 11:03:29'),
(31, 'MCW-200H-2AVEF CASIO muški ručni sat', 'mcw-200h-2avef-casio-muski-rucni-sat', 'Muški sportski sat iz kolekcije Casio. Karakteriše ga crna, fleksibilna silikonska narukvica i crno kućište, dok je displej osvežen detaljima u plavoj boji. Ovaj model namenjen je svim uzrastima, a posebno osobama sportskog stila. Veoma je uklopiv i može se nositi svakodnevno.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Plava</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>14 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>Datum</li>\r\n<li>&Scaron;toperica</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Resin</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>53 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Resin</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Akrilno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>100 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 1600, 'products/July2018/6heKslfwpjiMh4gLFJKl.png', NULL, 11, 0, 1, NULL, '2018-07-05 11:06:38', '2018-07-05 11:06:38'),
(32, 'FS4931 FOSSIL MACHINE CHRONOGRAPH RUČNI SAT', 'fs4931-fossil-machine-chronograph-rucni-sat', 'Moderan muški sat na narukvici od nerđajućeg čelika sive boje sa hronografom', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Siva</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Siva</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>13 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>Datum</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na baterije:\r\n<ul>\r\n<li>1 godina</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>45 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>50 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Preklopna</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 1800, 'products/July2018/oBO4WIlHNza9cFgTprYV.png', NULL, 2, 1, 1, NULL, '2018-07-05 11:09:29', '2018-07-05 11:09:29'),
(33, 'FS5164 FOSSIL MASHINE RUČNI SAT', 'fs5164-fossil-mashine-rucni-sat', 'Moderan muški sat sportskog dizajna sa hronografom', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na baterije:\r\n<ul>\r\n<li>1 godina</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>50 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Preklopna</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>12 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>45 mm</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 1700, 'products/July2018/mZHhJmnGk1ymcCJx32nx.png', NULL, 2, 0, 1, NULL, '2018-07-05 11:11:56', '2018-07-05 11:11:56'),
(34, 'FS5251 FOSSIL MACHINE CHRONOGRAPH SET RUCNI SAT', 'fs5251-fossil-machine-chronograph-set-rucni-sat', 'Moderan muški sat na kožnoj narukvici braon boje u setu sa kožnom narukvicom.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Braon</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Braon</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>13 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>Datum</li>\r\n<li>Hronograf</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na baterije:\r\n<ul>\r\n<li>1 godina</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>45 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Koža</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Poklon set</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>50 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 1750, 'products/July2018/rkK5cff513aQI4CG2DK6.png', '["products\\/July2018\\/gk0pYn8eBOUMiLMGlOOT.png"]', 2, 1, 1, NULL, '2018-07-05 11:13:51', '2018-07-05 11:13:51'),
(35, 'AR6097 ARMANI muški ručni sat', 'ar6097-armani-muski-rucni-sat', 'Muški sat brenda Armani, modernog je dizajna. Čelično kućište crne boje i detalji na brojčaniku bele boje daju mu sportsku notu, što čini ovaj model zanimljivim dodatkom uz svaki stil.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>13 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>12/24 prikaz vremena</li>\r\n<li>Datum</li>\r\n<li>Hronograf</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na baterije:\r\n<ul>\r\n<li>1 godina</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>44 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Koža</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>50 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 36000, 'products/July2018/YyfmPa3161NxyYwAbot9.png', NULL, 8, 0, 1, NULL, '2018-07-05 11:17:40', '2018-07-05 11:17:40'),
(36, 'AR2473 ARMANI ručni sat', 'ar2473-armani-rucni-sat', 'Klasičan Armani muški sat u teget plavoj boji sa funkcijom hronografa.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Plava</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Srebrna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Plava</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>11 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>12/24 prikaz vremena</li>\r\n<li>Datum</li>\r\n<li>Hronograf</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na baterije:\r\n<ul>\r\n<li>1 godina</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>43 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Koža</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>50 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 28000, 'products/July2018/oj2yW8ItPjaFYQYgMgTq.jpg', NULL, 8, 1, 1, NULL, '2018-07-05 11:19:22', '2018-07-05 11:19:22'),
(37, 'AR1971 ARMANI muški ručni sat', 'ar1971-armani-muski-rucni-sat', 'Muški ručni sat brenda Emporio Armani na crvenoj kožnoj narukvici pogodan za svakodnevne aktivnosti. Tamno sivo kućište sa crnim ciferom i crvenim kazaljkama kreira kontrast koji ovaj sat čine atraktivnim.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Crvena</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>12 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>12/24 prikaz vremena</li>\r\n<li>Datum</li>\r\n<li>&Scaron;toperica</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na baterije:\r\n<ul>\r\n<li>1 godina</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>46 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Koža</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>50 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 24000, 'products/July2018/TsZIvkyIoLX1F7BVaPx2.png', NULL, 8, 1, 1, NULL, '2018-07-05 11:21:11', '2018-07-05 11:21:11'),
(38, '1513550 HUGO BOSS Grand Prix muški ručni sat', '1513550-hugo-boss-grand-prix-muski-rucni-sat', 'Stil i jednostavnost su zaštitni znak prefinjenih pokazivača vremena iz Hugo Boss kolekcije. Dizajn ovih modela je inspirisan klasičnim trkačkim automobilima. Kvalitetna kožna narukvica savršeno se uklapa sa svim odevnim kombinacijama.Polirano kućište od nerdjajućeg čelika crne boje sa crnim brojčanikom na kom se ističu indeksi u kazaljke u boji roze zlata predstavlja kombinaciju funkcionalnosti i preciznosti.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>11 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>Datum</li>\r\n<li>Hronograf</li>\r\n<li>Tahimetar</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>44 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Koža</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>30 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 40000, 'products/July2018/Bgb8btBgySFVTZ76CSBn.png', NULL, 4, 1, 1, NULL, '2018-07-05 11:25:51', '2018-07-05 11:25:51'),
(39, '1513441 HUGO BOSS Jet Steel muški ručni sat', '1513441-hugo-boss-jet-steel-muski-rucni-sat', 'Moderan Hugo Boss muški sat iz kolekcije Jet Steel. Kućište i elegantna meš narukvica su od visoko kvalitetnog nerđajućeg čelika presvučenog PVD prevlakom koja satu daje atraktivan izgled. Na plavom brojčaniiku se ističu srebrni indeksi i podbrojčanici koji pružaju mogućnost svakodnevnog nošenja. Ovaj model namenjen je muškarcima koji prate trendove.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Plava</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Srebrna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Srebrna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>10 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>Datum</li>\r\n<li>Hronograf</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>40 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>50 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Preklopna</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>', 4500, 'products/July2018/39F66oHDsei91GVOFemC.png', NULL, 4, 0, 1, NULL, '2018-07-05 11:30:12', '2018-07-05 11:30:12'),
(40, '1512919 HUGO BOSS Aeroliner muški ručni sat', '1512919-hugo-boss-aeroliner-muski-rucni-sat', 'Originalan dizajn Hugo boss Aeroliner  kolekcije kombinuje funkcionalnost i preciznost sa klasičnim dizajnom. Kućište od nerđajućeg čelika i pregledan crni brojčanik  u kombinaciji sa crnom narukvicom od kvalitetne kožei tekstila  koja obezbeđuje savršenu udobnost. Beli arapski brojevi i dva podbrojčanika upotpunjuju vintage look ovog modela. Modeli iz ove kolekcije lako se uklapaju sa različitim odevnim kombinacijama, namenjeni su muškarcima sa stilom.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Srebrna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>12 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>Datum</li>\r\n<li>Hronograf</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>44 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Koža</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>50 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 2800, 'products/July2018/MBQHLiJamauvZ9unYp7R.png', NULL, 4, 1, 1, NULL, '2018-07-05 11:32:23', '2018-07-05 11:32:23'),
(41, 'W0674G5 GUESS, Forse muški ručni sat', NULL, 'Moderan muški ručni sat brenda Guess, iz kolekcije Forse. Karakteriše ga metalik plava boja kućišta koja u kombinaciji sa braon kroko kožnom narukvicom daje ovom modelu atraktivan dizajn i čini ga pogodnim za svakodnevno nošenje.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Braon</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Plava</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Braon</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>13 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>12/24 prikaz vremena</li>\r\n<li>Dani u nedelji</li>\r\n<li>Datum</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na baterije:\r\n<ul>\r\n<li>1 godina</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>45 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Koža</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>100 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 1900, 'products/July2018/Gg67wAzcln4jmzZWdkKx.png', NULL, 6, 0, 1, NULL, '2018-07-05 11:35:58', '2018-07-05 11:35:58'),
(42, 'W1048G2 GUESS, Legacy muški ručni sat', NULL, 'Moderan muški ručni sat brenda Guess, iz kolekcije Legacy. Karakteriše ga upečatljiv dizajn koji dodatno ističe kućište sata. Intenzivno crna silikonska narukvica u kombinaciji sa izraženim podbrojčanicima na ciferu daje ovom modelu atraktivan izgled i čini sat pogodnim za svakodnevno nošenje.', '<div class="product-describe__body product-describe__body--gray-background">\r\n<ul>\r\n<li>Boja brojčanika:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja kući&scaron;ta:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Boja narukvice:\r\n<ul>\r\n<li>Crna</li>\r\n</ul>\r\n</li>\r\n<li>Debljina kući&scaron;ta:\r\n<ul>\r\n<li>12 mm</li>\r\n</ul>\r\n</li>\r\n<li>Dodatne funkcije:\r\n<ul>\r\n<li>12/24 prikaz vremena</li>\r\n<li>Dani u nedelji</li>\r\n<li>Datum</li>\r\n</ul>\r\n</li>\r\n<li>Garancija na mehanizam:\r\n<ul>\r\n<li>2 godine</li>\r\n</ul>\r\n</li>\r\n<li>Materijal kući&scaron;ta:\r\n<ul>\r\n<li>Čelik</li>\r\n</ul>\r\n</li>\r\n<li>Oblik kući&scaron;ta:\r\n<ul>\r\n<li>Okruglo</li>\r\n</ul>\r\n</li>\r\n<li>Prečnik kući&scaron;ta:\r\n<ul>\r\n<li>45 mm</li>\r\n</ul>\r\n</li>\r\n<li>Prikaz:\r\n<ul>\r\n<li>Analogni</li>\r\n</ul>\r\n</li>\r\n<li>Tip mehanizma:\r\n<ul>\r\n<li>Kvarcni</li>\r\n</ul>\r\n</li>\r\n<li>Tip narukvice:\r\n<ul>\r\n<li>Silikon</li>\r\n</ul>\r\n</li>\r\n<li>Tip sata:\r\n<ul>\r\n<li>Ručni sat</li>\r\n</ul>\r\n</li>\r\n<li>Tip stakla:\r\n<ul>\r\n<li>Mineralno</li>\r\n</ul>\r\n</li>\r\n<li>Vodootpornost:\r\n<ul>\r\n<li>100 metara</li>\r\n</ul>\r\n</li>\r\n<li>Vrsta kopče:\r\n<ul>\r\n<li>Klasična</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>', 1800, 'products/July2018/0IeCAPH5qKEDnaZeFwVY.png', NULL, 6, 1, 1, NULL, '2018-07-05 11:38:16', '2018-07-05 11:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_from` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `service_id`, `description`, `start_from`, `created_at`, `updated_at`) VALUES
(1, 4, 5, 'Test komentar', '2018-07-07 07:00:00', '2018-07-06 07:17:48', '2018-07-06 07:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-07-04 10:51:44', '2018-07-04 10:51:44'),
(2, 'user', 'Normal User', '2018-07-04 10:51:44', '2018-07-04 10:51:44'),
(3, 'moderator', 'Moderator', '2018-07-06 08:35:43', '2018-07-06 08:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Zamena baterija', '2018-07-06 07:15:01', '2018-07-06 07:15:01'),
(2, 'Zamena kaiseva i metalnih narukvica', '2018-07-06 07:15:01', '2018-07-06 07:15:01'),
(3, 'Zamena i poliranje stakla', '2018-07-06 07:15:01', '2018-07-06 07:15:01'),
(4, 'Popravka mehanizma', '2018-07-06 07:15:01', '2018-07-06 07:15:01'),
(5, 'Popravke na kucistu', '2018-07-06 07:15:01', '2018-07-06 07:15:01'),
(6, 'Popravke brojcanika i kazaljki', '2018-07-06 07:15:02', '2018-07-06 07:15:02'),
(7, 'Dihtovanje sata', '2018-07-06 07:15:02', '2018-07-06 07:15:02'),
(8, 'Poliranje sata', '2018-07-06 07:15:02', '2018-07-06 07:15:02'),
(9, 'Hromiranje satova', '2018-07-06 07:15:02', '2018-07-06 07:15:02'),
(10, 'Izrada koznih narukvica', '2018-07-06 07:15:02', '2018-07-06 07:15:02'),
(11, 'Pozlata satova', '2018-07-06 07:15:02', '2018-07-06 07:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/July2018/700rKAENFhhNkCSAuQyH.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(13, 'site.header_image', 'Header Image', 'settings/July2018/5CoEBMiCEFUUMgFbEv2O.jpg', NULL, 'image', 6, 'Site'),
(14, 'site.help_line', 'Help Line', '+34 657 3556 778', NULL, 'text', 7, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Myrl Schiller PhD', 'barton.jonatan@example.net', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tKEIeVl6AZ', NULL, '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(2, NULL, 'Mr. Marshall Renner MD', 'jsteuber@example.com', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xJXNsa2jBxBmEusQ2IonF5AH5IahUJPpMXf2EubIG1o0Js5kQdKOHLhjHCMp', NULL, '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(3, NULL, 'Darron Nicolas Sr.', 'nfisher@example.org', 'users/default.png', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WYMutyI8Ry', NULL, '2018-07-03 11:50:47', '2018-07-03 11:50:47'),
(4, 1, 'admin', 'admin@gmail.com', 'users/July2018/X4pXXmntTrWLxCAJlLvZ.jpg', '$2y$10$bezyrze7eOpSFLfYwbU9aeoRJVpTYw9gpETTR8rPeR/0Ltp7.3WkC', 'OcfAuDHbUdavVdVoxo3GZZSzBHsvIJa0k80S93qrHErfPWNefFzXvLkLFeVb', '{"locale":"en"}', '2018-07-03 20:11:12', '2018-07-04 18:04:51'),
(5, 3, 'Moderator', 'moderator@gmail.com', 'users/July2018/tRQxnXm0lGa6s0aEoqgv.jpg', '$2y$10$yJuFf4yv/72lOeaEIHUsF.35y1sH7EGdS7ljeK7qiUl5LonRhh5Oe', 'zaHbA2Jd3ne9HfJIr1g4UMRJ70UhK4RwSf7hGvMuuX381f77VDooerBhF9uf', '{"locale":"en"}', '2018-07-06 08:37:30', '2018-07-06 08:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('4', 'wishlist', 'O:29:"Illuminate\\Support\\Collection":1:{s:8:"\0*\0items";a:0:{}}', NULL, NULL),
('5', 'wishlist', 'O:29:"Illuminate\\Support\\Collection":1:{s:8:"\0*\0items";a:0:{}}', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_brand_id_foreign` (`brand_id`),
  ADD KEY `banners_product_id_foreign` (`product_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_id_commentable_type_index` (`commentable_id`,`commentable_type`),
  ADD KEY `comments_commented_id_commented_type_index` (`commented_id`,`commented_type`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discounts_product_id_foreign` (`product_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_country_id_foreign` (`country_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD KEY `order_product_order_id_index` (`order_id`),
  ADD KEY `order_product_product_id_index` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`),
  ADD KEY `reservations_service_id_foreign` (`service_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_type_name_unique` (`type_name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `banners_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
