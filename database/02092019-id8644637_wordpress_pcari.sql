-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 09, 2019 at 01:19 AM
-- Server version: 10.3.12-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id8644637_wordpress_pcari`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-02-04 12:17:29', '2019-02-04 12:17:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://pcari.000webhostapp.com', 'yes'),
(2, 'home', 'https://pcari.000webhostapp.com', 'yes'),
(3, 'blogname', 'Philippine-California Advanced Research Institutes (PCARI)', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jameskarl.quino@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:121:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"cycloneslider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"cycloneslider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"cycloneslider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"cycloneslider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"cycloneslider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"cycloneslider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"cycloneslider/([^/]+)/embed/?$\";s:46:\"index.php?cycloneslider=$matches[1]&embed=true\";s:34:\"cycloneslider/([^/]+)/trackback/?$\";s:40:\"index.php?cycloneslider=$matches[1]&tb=1\";s:42:\"cycloneslider/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?cycloneslider=$matches[1]&paged=$matches[2]\";s:49:\"cycloneslider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?cycloneslider=$matches[1]&cpage=$matches[2]\";s:38:\"cycloneslider/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?cycloneslider=$matches[1]&page=$matches[2]\";s:30:\"cycloneslider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"cycloneslider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"cycloneslider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cycloneslider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cycloneslider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"cycloneslider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"members/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"members/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"members/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"members/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"members/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"members/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"members/([^/]+)/embed/?$\";s:46:\"index.php?pcari_members=$matches[1]&embed=true\";s:28:\"members/([^/]+)/trackback/?$\";s:40:\"index.php?pcari_members=$matches[1]&tb=1\";s:36:\"members/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?pcari_members=$matches[1]&paged=$matches[2]\";s:43:\"members/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?pcari_members=$matches[1]&cpage=$matches[2]\";s:32:\"members/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?pcari_members=$matches[1]&page=$matches[2]\";s:24:\"members/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"members/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"members/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"members/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"members/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"members/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:33:\"cyclone-slider/cyclone-slider.php\";i:3;s:37:\"post-types-order/post-types-order.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'pcari-theme', 'yes'),
(41, 'stylesheet', 'pcari-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', 'aside', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '48', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1549599454;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1549628254;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1549628255;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1549629258;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1549629485;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549283853;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1549598564;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1549598565;s:7:\"checked\";a:1:{s:11:\"pcari-theme\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_timeout_browser_a466c80cdde006d2c8864644db827aeb', '1549888458', 'no'),
(122, '_site_transient_browser_a466c80cdde006d2c8864644db827aeb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, 'can_compress_scripts', '0', 'no'),
(137, 'current_theme', 'PCARI Theme', 'yes'),
(138, 'theme_mods_pcari-theme', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";s:0:\"\";s:12:\"header_image\";s:103:\"https://pcari.000webhostapp.com/wp-content/uploads/2019/02/cropped-8995fb1ec59550a3dbe4cabaf51744ea.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:79;s:3:\"url\";s:103:\"https://pcari.000webhostapp.com/wp-content/uploads/2019/02/cropped-8995fb1ec59550a3dbe4cabaf51744ea.jpg\";s:13:\"thumbnail_url\";s:103:\"https://pcari.000webhostapp.com/wp-content/uploads/2019/02/cropped-8995fb1ec59550a3dbe4cabaf51744ea.jpg\";s:6:\"height\";i:250;s:5:\"width\";i:1000;}}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1549284071;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(153, 'widget_cyclone-slider-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(158, 'classic-editor-replace', 'classic', 'yes'),
(159, 'classic-editor-allow-users', 'disallow', 'yes'),
(165, 'category_children', 'a:0:{}', 'yes'),
(166, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(183, '_site_transient_timeout_browser_0b7b0b55fdad6f060cb1a7eb4a93bd74', '1549957293', 'no'),
(184, '_site_transient_browser_0b7b0b55fdad6f060cb1a7eb4a93bd74', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(206, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:5:{s:4:\"post\";s:4:\"show\";s:10:\"attachment\";s:4:\"show\";s:8:\"wp_block\";s:4:\"show\";s:13:\"cycloneslider\";s:4:\"show\";s:13:\"pcari_members\";s:4:\"show\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";s:0:\"\";s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:14:\"manage_options\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(207, 'CPT_configured', 'TRUE', 'yes'),
(208, '_site_transient_timeout_browser_05a35df476881e356975dc07ce8a30ab', '1549961430', 'no'),
(209, '_site_transient_browser_05a35df476881e356975dc07ce8a30ab', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(253, '_site_transient_timeout_browser_0ac1f9240df96b3586c220faef490724', '1550022956', 'no'),
(254, '_site_transient_browser_0ac1f9240df96b3586c220faef490724', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(257, '_site_transient_timeout_browser_e0b7751b8040fb7c8de50ddf95d10645', '1550022966', 'no'),
(258, '_site_transient_browser_e0b7751b8040fb7c8de50ddf95d10645', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"64.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(259, '_site_transient_timeout_browser_d62a1a3bb908ffa3361920bc8dc2be5a', '1550022971', 'no'),
(260, '_site_transient_browser_d62a1a3bb908ffa3361920bc8dc2be5a', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"62.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(261, '_site_transient_timeout_browser_1320f5a9996c0c37077f5ffc1260d2ad', '1550022989', 'no'),
(262, '_site_transient_browser_1320f5a9996c0c37077f5ffc1260d2ad', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"65.0\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(263, '_site_transient_timeout_browser_a333464b3fda47959b75f332e76e6530', '1550023030', 'no'),
(264, '_site_transient_browser_a333464b3fda47959b75f332e76e6530', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"12.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(265, '_site_transient_timeout_browser_9e6dd57593edf67f066d8c211dedffb4', '1550023282', 'no'),
(266, '_site_transient_browser_9e6dd57593edf67f066d8c211dedffb4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"72.0.3626.81\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(269, '_site_transient_timeout_browser_48923ac9fbddbac6568e9cf088c8100b', '1550023504', 'no'),
(270, '_site_transient_browser_48923ac9fbddbac6568e9cf088c8100b', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"47.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:1;s:8:\"insecure\";b:1;s:6:\"mobile\";b:0;}', 'no'),
(275, '_site_transient_timeout_browser_382dbf18501ca0825d1fb5a0879ddec1', '1550024073', 'no'),
(276, '_site_transient_browser_382dbf18501ca0825d1fb5a0879ddec1', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"70.0.3538.80\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(277, '_site_transient_timeout_browser_dc05dcf9513bd8a740582d0bc63f607c', '1550024078', 'no'),
(278, '_site_transient_browser_dc05dcf9513bd8a740582d0bc63f607c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.99\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(281, '_site_transient_timeout_browser_591a43aafb2c3e203f6b925e7cd15e92', '1550026856', 'no'),
(282, '_site_transient_browser_591a43aafb2c3e203f6b925e7cd15e92', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"65.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(309, '_site_transient_timeout_theme_roots', '1549600365', 'no'),
(310, '_site_transient_theme_roots', 'a:1:{s:11:\"pcari-theme\";s:7:\"/themes\";}', 'no'),
(311, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1549598566;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.4\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:33:\"cyclone-slider/cyclone-slider.php\";s:5:\"3.2.0\";s:9:\"hello.php\";s:5:\"1.7.1\";s:37:\"post-types-order/post-types-order.php\";s:7:\"1.9.3.9\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"cyclone-slider/cyclone-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/cyclone-slider\";s:4:\"slug\";s:14:\"cyclone-slider\";s:6:\"plugin\";s:33:\"cyclone-slider/cyclone-slider.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/cyclone-slider/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/cyclone-slider.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/cyclone-slider/assets/icon-256x256.png?rev=1635519\";s:2:\"1x\";s:67:\"https://ps.w.org/cyclone-slider/assets/icon-128x128.png?rev=1635519\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/cyclone-slider/assets/banner-772x250.jpg?rev=1635519\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:7:\"1.9.3.9\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/post-types-order.1.9.3.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1549283760:1'),
(4, 6, '_form', '<div class=\"git-field\">\n    <label for=\"your-name\" class=\"hidden\">Name</label>\n    [text* your-name id:your-name placeholder \"Name\"]\n</div>\n<div class=\"git-field\">\n    <label for=\"your-email\" class=\"hidden\">Email</label>\n    [email* your-email id:your-email placeholder \"Email\"]\n</div>\n<div class=\"git-field lg\">\n    <label for=\"your-message\" class=\"hidden\">Message</label>\n    [textarea your-message id:your-message placeholder \"Message\"]\n</div>\n<div class=\"git-field submit\">\n    [submit \"Submit\"]\n</div>'),
(5, 6, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:75:\"Philippine-California Advanced Research Institutes (PCARI) \"[your-subject]\"\";s:6:\"sender\";s:94:\"Philippine-California Advanced Research Institutes (PCARI) <wordpress@pcari.000webhostapp.com>\";s:9:\"recipient\";s:25:\"jameskarl.quino@gmail.com\";s:4:\"body\";s:228:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Philippine-California Advanced Research Institutes (PCARI) (https://pcari.000webhostapp.com)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 6, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:75:\"Philippine-California Advanced Research Institutes (PCARI) \"[your-subject]\"\";s:6:\"sender\";s:94:\"Philippine-California Advanced Research Institutes (PCARI) <wordpress@pcari.000webhostapp.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:170:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Philippine-California Advanced Research Institutes (PCARI) (https://pcari.000webhostapp.com)\";s:18:\"additional_headers\";s:35:\"Reply-To: jameskarl.quino@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(7, 6, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(8, 6, '_additional_settings', ''),
(9, 6, '_locale', 'en_US'),
(10, 7, '_edit_last', '1'),
(11, 7, '_edit_lock', '1549284222:1'),
(12, 9, '_edit_last', '1'),
(13, 9, '_edit_lock', '1549284259:1'),
(14, 11, '_edit_last', '1'),
(15, 11, '_edit_lock', '1549284296:1'),
(16, 13, '_edit_last', '1'),
(17, 13, '_edit_lock', '1549284310:1'),
(18, 15, '_edit_last', '1'),
(19, 15, '_edit_lock', '1549284330:1'),
(20, 17, '_edit_last', '1'),
(21, 17, '_edit_lock', '1549284358:1'),
(22, 19, '_edit_last', '1'),
(23, 19, '_edit_lock', '1549284459:1'),
(24, 22, '_edit_last', '1'),
(25, 22, '_edit_lock', '1549284480:1'),
(26, 25, '_edit_last', '1'),
(27, 25, '_edit_lock', '1549414159:1'),
(28, 27, '_edit_last', '1'),
(29, 27, '_edit_lock', '1549284532:1'),
(30, 30, '_wp_attached_file', '2019/02/slideshow-1.jpg'),
(31, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2019/02/slideshow-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"slideshow-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"slideshow-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"slideshow-1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"slideshow-1-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:23:\"slideshow-1-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(32, 31, '_wp_attached_file', '2019/02/slideshow-2.jpg'),
(33, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2019/02/slideshow-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"slideshow-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"slideshow-2-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"slideshow-2-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"slideshow-2-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:23:\"slideshow-2-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(34, 32, '_wp_attached_file', '2019/02/slideshow-3.jpg'),
(35, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2019/02/slideshow-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"slideshow-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"slideshow-3-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"slideshow-3-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"slideshow-3-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:23:\"slideshow-3-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(36, 29, '_edit_last', '1'),
(37, 29, '_cycloneslider_metas', 'a:3:{i:0;a:28:{s:2:\"id\";i:30;s:4:\"type\";s:5:\"image\";s:6:\"hidden\";i:0;s:4:\"link\";s:0:\"\";s:5:\"title\";s:64:\"The Phil-ECAR-I contingent of <br>researchers visits UC Berkeley\";s:11:\"description\";s:0:\"\";s:11:\"link_target\";s:5:\"_self\";s:7:\"img_alt\";s:0:\"\";s:9:\"img_title\";s:0:\"\";s:20:\"enable_slide_effects\";i:0;s:2:\"fx\";s:7:\"default\";s:5:\"speed\";s:0:\"\";s:7:\"timeout\";s:0:\"\";s:10:\"tile_count\";s:0:\"\";s:10:\"tile_delay\";s:3:\"100\";s:13:\"tile_vertical\";s:4:\"true\";s:11:\"video_thumb\";s:0:\"\";s:9:\"video_url\";s:0:\"\";s:5:\"video\";s:0:\"\";s:6:\"custom\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:15:\"youtube_related\";s:5:\"false\";s:9:\"vimeo_url\";s:0:\"\";s:11:\"testimonial\";s:0:\"\";s:18:\"testimonial_author\";s:0:\"\";s:16:\"testimonial_link\";s:0:\"\";s:23:\"testimonial_link_target\";s:5:\"_self\";s:15:\"testimonial_img\";i:30;}i:1;a:28:{s:2:\"id\";i:31;s:4:\"type\";s:5:\"image\";s:6:\"hidden\";i:0;s:4:\"link\";s:0:\"\";s:5:\"title\";s:64:\"The Phil-ECAR-I contingent of <br>researchers visits UC Berkeley\";s:11:\"description\";s:0:\"\";s:11:\"link_target\";s:5:\"_self\";s:7:\"img_alt\";s:0:\"\";s:9:\"img_title\";s:0:\"\";s:20:\"enable_slide_effects\";i:0;s:2:\"fx\";s:7:\"default\";s:5:\"speed\";s:0:\"\";s:7:\"timeout\";s:0:\"\";s:10:\"tile_count\";s:0:\"\";s:10:\"tile_delay\";s:3:\"100\";s:13:\"tile_vertical\";s:4:\"true\";s:11:\"video_thumb\";s:0:\"\";s:9:\"video_url\";s:0:\"\";s:5:\"video\";s:0:\"\";s:6:\"custom\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:15:\"youtube_related\";s:5:\"false\";s:9:\"vimeo_url\";s:0:\"\";s:11:\"testimonial\";s:0:\"\";s:18:\"testimonial_author\";s:0:\"\";s:16:\"testimonial_link\";s:0:\"\";s:23:\"testimonial_link_target\";s:5:\"_self\";s:15:\"testimonial_img\";i:31;}i:2;a:28:{s:2:\"id\";i:32;s:4:\"type\";s:5:\"image\";s:6:\"hidden\";i:0;s:4:\"link\";s:0:\"\";s:5:\"title\";s:64:\"The Phil-ECAR-I contingent of <br>researchers visits UC Berkeley\";s:11:\"description\";s:0:\"\";s:11:\"link_target\";s:5:\"_self\";s:7:\"img_alt\";s:0:\"\";s:9:\"img_title\";s:0:\"\";s:20:\"enable_slide_effects\";i:0;s:2:\"fx\";s:7:\"default\";s:5:\"speed\";s:0:\"\";s:7:\"timeout\";s:0:\"\";s:10:\"tile_count\";s:0:\"\";s:10:\"tile_delay\";s:3:\"100\";s:13:\"tile_vertical\";s:4:\"true\";s:11:\"video_thumb\";s:0:\"\";s:9:\"video_url\";s:0:\"\";s:5:\"video\";s:0:\"\";s:6:\"custom\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:15:\"youtube_related\";s:5:\"false\";s:9:\"vimeo_url\";s:0:\"\";s:11:\"testimonial\";s:0:\"\";s:18:\"testimonial_author\";s:0:\"\";s:16:\"testimonial_link\";s:0:\"\";s:23:\"testimonial_link_target\";s:5:\"_self\";s:15:\"testimonial_img\";i:32;}}'),
(38, 29, '_cycloneslider_settings', 'a:15:{s:8:\"template\";s:7:\"default\";s:2:\"fx\";s:4:\"fade\";s:7:\"timeout\";i:4000;s:5:\"speed\";i:1000;s:5:\"width\";i:960;s:6:\"height\";i:600;s:11:\"hover_pause\";s:4:\"true\";s:14:\"show_prev_next\";i:1;s:8:\"show_nav\";i:1;s:10:\"tile_count\";i:7;s:10:\"tile_delay\";i:100;s:13:\"tile_vertical\";s:4:\"true\";s:6:\"random\";i:0;s:6:\"resize\";i:1;s:16:\"width_management\";s:10:\"responsive\";}'),
(39, 29, '_edit_lock', '1549284754:1'),
(40, 33, '_menu_item_type', 'post_type'),
(41, 33, '_menu_item_menu_item_parent', '0'),
(42, 33, '_menu_item_object_id', '7'),
(43, 33, '_menu_item_object', 'page'),
(44, 33, '_menu_item_target', ''),
(45, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 33, '_menu_item_xfn', ''),
(47, 33, '_menu_item_url', ''),
(49, 34, '_menu_item_type', 'post_type'),
(50, 34, '_menu_item_menu_item_parent', '33'),
(51, 34, '_menu_item_object_id', '9'),
(52, 34, '_menu_item_object', 'page'),
(53, 34, '_menu_item_target', ''),
(54, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 34, '_menu_item_xfn', ''),
(56, 34, '_menu_item_url', ''),
(58, 35, '_menu_item_type', 'post_type'),
(59, 35, '_menu_item_menu_item_parent', '33'),
(60, 35, '_menu_item_object_id', '11'),
(61, 35, '_menu_item_object', 'page'),
(62, 35, '_menu_item_target', ''),
(63, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 35, '_menu_item_xfn', ''),
(65, 35, '_menu_item_url', ''),
(67, 36, '_menu_item_type', 'taxonomy'),
(68, 36, '_menu_item_menu_item_parent', '0'),
(69, 36, '_menu_item_object_id', '2'),
(70, 36, '_menu_item_object', 'category'),
(71, 36, '_menu_item_target', ''),
(72, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 36, '_menu_item_xfn', ''),
(74, 36, '_menu_item_url', ''),
(76, 37, '_menu_item_type', 'taxonomy'),
(77, 37, '_menu_item_menu_item_parent', '36'),
(78, 37, '_menu_item_object_id', '4'),
(79, 37, '_menu_item_object', 'category'),
(80, 37, '_menu_item_target', ''),
(81, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 37, '_menu_item_xfn', ''),
(83, 37, '_menu_item_url', ''),
(85, 38, '_menu_item_type', 'taxonomy'),
(86, 38, '_menu_item_menu_item_parent', '36'),
(87, 38, '_menu_item_object_id', '3'),
(88, 38, '_menu_item_object', 'category'),
(89, 38, '_menu_item_target', ''),
(90, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 38, '_menu_item_xfn', ''),
(92, 38, '_menu_item_url', ''),
(94, 39, '_menu_item_type', 'post_type'),
(95, 39, '_menu_item_menu_item_parent', '36'),
(96, 39, '_menu_item_object_id', '13'),
(97, 39, '_menu_item_object', 'page'),
(98, 39, '_menu_item_target', ''),
(99, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 39, '_menu_item_xfn', ''),
(101, 39, '_menu_item_url', ''),
(103, 40, '_menu_item_type', 'post_type'),
(104, 40, '_menu_item_menu_item_parent', '0'),
(105, 40, '_menu_item_object_id', '15'),
(106, 40, '_menu_item_object', 'page'),
(107, 40, '_menu_item_target', ''),
(108, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 40, '_menu_item_xfn', ''),
(110, 40, '_menu_item_url', ''),
(112, 41, '_menu_item_type', 'post_type'),
(113, 41, '_menu_item_menu_item_parent', '40'),
(114, 41, '_menu_item_object_id', '22'),
(115, 41, '_menu_item_object', 'page'),
(116, 41, '_menu_item_target', ''),
(117, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 41, '_menu_item_xfn', ''),
(119, 41, '_menu_item_url', ''),
(121, 42, '_menu_item_type', 'post_type'),
(122, 42, '_menu_item_menu_item_parent', '40'),
(123, 42, '_menu_item_object_id', '19'),
(124, 42, '_menu_item_object', 'page'),
(125, 42, '_menu_item_target', ''),
(126, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 42, '_menu_item_xfn', ''),
(128, 42, '_menu_item_url', ''),
(130, 43, '_menu_item_type', 'post_type'),
(131, 43, '_menu_item_menu_item_parent', '40'),
(132, 43, '_menu_item_object_id', '17'),
(133, 43, '_menu_item_object', 'page'),
(134, 43, '_menu_item_target', ''),
(135, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 43, '_menu_item_xfn', ''),
(137, 43, '_menu_item_url', ''),
(139, 44, '_menu_item_type', 'post_type'),
(140, 44, '_menu_item_menu_item_parent', '0'),
(141, 44, '_menu_item_object_id', '25'),
(142, 44, '_menu_item_object', 'page'),
(143, 44, '_menu_item_target', ''),
(144, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 44, '_menu_item_xfn', ''),
(146, 44, '_menu_item_url', ''),
(148, 45, '_menu_item_type', 'post_type'),
(149, 45, '_menu_item_menu_item_parent', '0'),
(150, 45, '_menu_item_object_id', '27'),
(151, 45, '_menu_item_object', 'page'),
(152, 45, '_menu_item_target', ''),
(153, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 45, '_menu_item_xfn', ''),
(155, 45, '_menu_item_url', ''),
(157, 46, '_menu_item_type', 'custom'),
(158, 46, '_menu_item_menu_item_parent', '0'),
(159, 46, '_menu_item_object_id', '46'),
(160, 46, '_menu_item_object', 'custom'),
(161, 46, '_menu_item_target', ''),
(162, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 46, '_menu_item_xfn', ''),
(164, 46, '_menu_item_url', 'https://pcari.000webhostapp.com/'),
(166, 29, '_wp_trash_meta_status', 'publish'),
(167, 29, '_wp_trash_meta_time', '1549286107'),
(168, 29, '_wp_desired_post_slug', 'homepage-news-slideshow'),
(169, 47, '_edit_last', '1'),
(172, 47, '_edit_lock', '1549413584:1'),
(179, 48, '_wp_attached_file', '2019/02/favicon.png'),
(180, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:141;s:6:\"height\";i:138;s:4:\"file\";s:19:\"2019/02/favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 49, '_wp_trash_meta_status', 'publish'),
(182, 49, '_wp_trash_meta_time', '1549286499'),
(183, 50, '_wp_trash_meta_status', 'publish'),
(184, 50, '_wp_trash_meta_time', '1549286513'),
(185, 51, '_wp_trash_meta_status', 'publish'),
(186, 51, '_wp_trash_meta_time', '1549286520'),
(187, 52, '_edit_last', '1'),
(188, 52, '_edit_lock', '1549413716:1'),
(190, 54, '_edit_last', '1'),
(191, 54, '_edit_lock', '1549383007:1'),
(193, 56, '_edit_last', '1'),
(194, 56, '_edit_lock', '1549373885:1'),
(198, 1, '_wp_trash_meta_status', 'publish'),
(199, 1, '_wp_trash_meta_time', '1549286754'),
(200, 1, '_wp_desired_post_slug', 'hello-world'),
(201, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(204, 60, '_wp_attached_file', '2019/02/8995fb1ec59550a3dbe4cabaf51744ea.jpg'),
(205, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1620;s:4:\"file\";s:44:\"2019/02/8995fb1ec59550a3dbe4cabaf51744ea.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"8995fb1ec59550a3dbe4cabaf51744ea-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"8995fb1ec59550a3dbe4cabaf51744ea-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"8995fb1ec59550a3dbe4cabaf51744ea-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"8995fb1ec59550a3dbe4cabaf51744ea-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:44:\"8995fb1ec59550a3dbe4cabaf51744ea-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 63, '_edit_last', '1'),
(218, 63, '_edit_lock', '1549353695:1'),
(219, 63, '_wp_trash_meta_status', 'draft'),
(220, 63, '_wp_trash_meta_time', '1549353835'),
(221, 63, '_wp_desired_post_slug', ''),
(265, 79, '_wp_attached_file', '2019/02/cropped-8995fb1ec59550a3dbe4cabaf51744ea.jpg'),
(266, 79, '_wp_attachment_context', 'custom-header'),
(267, 79, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:250;s:4:\"file\";s:52:\"2019/02/cropped-8995fb1ec59550a3dbe4cabaf51744ea.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"cropped-8995fb1ec59550a3dbe4cabaf51744ea-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"cropped-8995fb1ec59550a3dbe4cabaf51744ea-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"cropped-8995fb1ec59550a3dbe4cabaf51744ea-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:52:\"cropped-8995fb1ec59550a3dbe4cabaf51744ea-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:60;}'),
(270, 80, '_wp_trash_meta_status', 'publish'),
(271, 80, '_wp_trash_meta_time', '1549360397'),
(272, 81, '_edit_lock', '1549360496:1'),
(273, 81, '_customize_restore_dismissed', '1'),
(274, 47, '_wp_old_date', '2019-02-04'),
(277, 47, '_cycloneslider_metas', 'a:3:{i:0;a:28:{s:2:\"id\";i:30;s:4:\"type\";s:5:\"image\";s:6:\"hidden\";i:0;s:4:\"link\";s:0:\"\";s:5:\"title\";s:64:\"The Phil-ECAR-I contingent of <br>researchers visits UC Berkeley\";s:11:\"description\";s:0:\"\";s:11:\"link_target\";s:5:\"_self\";s:7:\"img_alt\";s:0:\"\";s:9:\"img_title\";s:0:\"\";s:20:\"enable_slide_effects\";i:0;s:2:\"fx\";s:7:\"default\";s:5:\"speed\";s:0:\"\";s:7:\"timeout\";s:0:\"\";s:10:\"tile_count\";s:0:\"\";s:10:\"tile_delay\";s:3:\"100\";s:13:\"tile_vertical\";s:4:\"true\";s:11:\"video_thumb\";s:0:\"\";s:9:\"video_url\";s:0:\"\";s:5:\"video\";s:0:\"\";s:6:\"custom\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:15:\"youtube_related\";s:4:\"true\";s:9:\"vimeo_url\";s:0:\"\";s:11:\"testimonial\";s:0:\"\";s:18:\"testimonial_author\";s:0:\"\";s:16:\"testimonial_link\";s:0:\"\";s:23:\"testimonial_link_target\";s:5:\"_self\";s:15:\"testimonial_img\";i:30;}i:1;a:28:{s:2:\"id\";i:31;s:4:\"type\";s:5:\"image\";s:6:\"hidden\";i:0;s:4:\"link\";s:0:\"\";s:5:\"title\";s:64:\"The Phil-ECAR-I contingent of <br>researchers visits UC Berkeley\";s:11:\"description\";s:0:\"\";s:11:\"link_target\";s:5:\"_self\";s:7:\"img_alt\";s:0:\"\";s:9:\"img_title\";s:0:\"\";s:20:\"enable_slide_effects\";i:0;s:2:\"fx\";s:7:\"default\";s:5:\"speed\";s:0:\"\";s:7:\"timeout\";s:0:\"\";s:10:\"tile_count\";s:0:\"\";s:10:\"tile_delay\";s:3:\"100\";s:13:\"tile_vertical\";s:4:\"true\";s:11:\"video_thumb\";s:0:\"\";s:9:\"video_url\";s:0:\"\";s:5:\"video\";s:0:\"\";s:6:\"custom\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:15:\"youtube_related\";s:4:\"true\";s:9:\"vimeo_url\";s:0:\"\";s:11:\"testimonial\";s:0:\"\";s:18:\"testimonial_author\";s:0:\"\";s:16:\"testimonial_link\";s:0:\"\";s:23:\"testimonial_link_target\";s:5:\"_self\";s:15:\"testimonial_img\";i:31;}i:2;a:28:{s:2:\"id\";i:32;s:4:\"type\";s:5:\"image\";s:6:\"hidden\";i:0;s:4:\"link\";s:0:\"\";s:5:\"title\";s:64:\"The Phil-ECAR-I contingent of <br>researchers visits UC Berkeley\";s:11:\"description\";s:0:\"\";s:11:\"link_target\";s:5:\"_self\";s:7:\"img_alt\";s:0:\"\";s:9:\"img_title\";s:0:\"\";s:20:\"enable_slide_effects\";i:0;s:2:\"fx\";s:7:\"default\";s:5:\"speed\";s:0:\"\";s:7:\"timeout\";s:0:\"\";s:10:\"tile_count\";s:0:\"\";s:10:\"tile_delay\";s:3:\"100\";s:13:\"tile_vertical\";s:4:\"true\";s:11:\"video_thumb\";s:0:\"\";s:9:\"video_url\";s:0:\"\";s:5:\"video\";s:0:\"\";s:6:\"custom\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:15:\"youtube_related\";s:4:\"true\";s:9:\"vimeo_url\";s:0:\"\";s:11:\"testimonial\";s:0:\"\";s:18:\"testimonial_author\";s:0:\"\";s:16:\"testimonial_link\";s:0:\"\";s:23:\"testimonial_link_target\";s:5:\"_self\";s:15:\"testimonial_img\";i:32;}}'),
(278, 47, '_cycloneslider_settings', 'a:15:{s:8:\"template\";s:7:\"default\";s:2:\"fx\";s:4:\"fade\";s:7:\"timeout\";i:0;s:5:\"speed\";i:1000;s:5:\"width\";i:950;s:6:\"height\";i:500;s:11:\"hover_pause\";s:5:\"false\";s:14:\"show_prev_next\";i:0;s:8:\"show_nav\";i:1;s:10:\"tile_count\";i:7;s:10:\"tile_delay\";i:100;s:13:\"tile_vertical\";s:4:\"true\";s:6:\"random\";i:0;s:6:\"resize\";i:0;s:16:\"width_management\";s:4:\"full\";}'),
(279, 83, '_wp_attached_file', '2019/02/Marie-Chela-B.-Cenia-Research-Fellow.jpg'),
(280, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:155;s:6:\"height\";i:155;s:4:\"file\";s:48:\"2019/02/Marie-Chela-B.-Cenia-Research-Fellow.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Marie-Chela-B.-Cenia-Research-Fellow-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(281, 82, '_edit_last', '1'),
(282, 82, '_edit_lock', '1549419022:1'),
(283, 82, 'member_name', 'Ms. Marie Chela B. Cenia'),
(284, 82, 'member_heading', 'Research Fellow'),
(285, 82, 'member_position', 'Design and Construction Supervisor'),
(286, 82, 'member_educational_field', 'Civil Engineering'),
(287, 82, 'member_expertise', 'Research '),
(288, 82, 'member_research_interest', ' ElectroChemical Arsenic Remediation'),
(289, 82, 'member_information', 's:390:\"a:7:{s:10:\"post_title\";s:24:\"Ms. Marie Chela B. Cenia\";s:11:\"member_name\";s:24:\"Ms. Marie Chela B. Cenia\";s:14:\"member_heading\";s:15:\"Research Fellow\";s:15:\"member_position\";s:34:\"Design and Construction Supervisor\";s:24:\"member_educational_field\";s:17:\"Civil Engineering\";s:16:\"member_expertise\";s:9:\"Research \";s:24:\"member_research_interest\";s:36:\" ElectroChemical Arsenic Remediation\";}\";'),
(290, 82, '_thumbnail_id', '83'),
(291, 89, '_wp_attached_file', '2019/02/Janina-Kristiana-DC.-Argete-Research-Fellow.jpg'),
(292, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:155;s:6:\"height\";i:155;s:4:\"file\";s:55:\"2019/02/Janina-Kristiana-DC.-Argete-Research-Fellow.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Janina-Kristiana-DC.-Argete-Research-Fellow-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(293, 88, '_edit_last', '1'),
(294, 88, '_edit_lock', '1549371703:1'),
(295, 88, '_thumbnail_id', '89'),
(296, 88, 'member_name', 'Janina Kristiana DC. Argete'),
(297, 88, 'member_heading', ''),
(298, 88, 'member_position', ''),
(299, 88, 'member_educational_field', ''),
(300, 88, 'member_expertise', ''),
(301, 88, 'member_research_interest', ''),
(302, 88, 'member_information', 's:281:\"a:7:{s:10:\"post_title\";s:27:\"Janina Kristiana DC. Argete\";s:11:\"member_name\";s:27:\"Janina Kristiana DC. Argete\";s:14:\"member_heading\";s:0:\"\";s:15:\"member_position\";s:0:\"\";s:24:\"member_educational_field\";s:0:\"\";s:16:\"member_expertise\";s:0:\"\";s:24:\"member_research_interest\";s:0:\"\";}\";'),
(303, 88, '_wp_trash_meta_status', 'publish'),
(304, 88, '_wp_trash_meta_time', '1549371998'),
(305, 88, '_wp_desired_post_slug', 'janina-kristiana-dc-argete'),
(312, 56, '_wp_trash_meta_status', 'publish'),
(313, 56, '_wp_trash_meta_time', '1549374345'),
(314, 56, '_wp_desired_post_slug', 'phil-ecar-i-researchers-visits-uc-berkeley-2'),
(315, 52, '_wp_trash_meta_status', 'publish'),
(316, 52, '_wp_trash_meta_time', '1549413865'),
(317, 52, '_wp_desired_post_slug', 'phil-ecar-i-researchers-visits-uc-berkeley'),
(318, 98, '_edit_last', '1'),
(319, 98, '_edit_lock', '1549413861:1'),
(320, 99, '_wp_attached_file', '2019/02/lorem-ipsum.jpg'),
(321, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2019/02/lorem-ipsum.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"lorem-ipsum-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"lorem-ipsum-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:23:\"lorem-ipsum-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"9\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:11:\"NIKON D800E\";s:7:\"caption\";s:173:\"lorem ipsum Latin phrase made from metallic letterpress blocks on black perforated surface, it is commonly used as filler text to demonstrate the graphic design presentation\";s:17:\"created_timestamp\";s:10:\"1481569046\";s:9:\"copyright\";s:5:\"yuriz\";s:12:\"focal_length\";s:3:\"100\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:14:\"lorem ipsum bm\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:23:{i:0;s:11:\"Letterpress\";i:1;s:8:\"Metallic\";i:2;s:12:\"Presentation\";i:3;s:12:\"Short Phrase\";i:4;s:10:\"Typescript\";i:5;s:12:\"Latin Script\";i:6;s:5:\"Label\";i:7;s:16:\"Computer Graphic\";i:8;s:4:\"Text\";i:9;s:8:\"Teaching\";i:10;s:7:\"History\";i:11;s:8:\"The Past\";i:12;s:8:\"Concepts\";i:13;s:4:\"Dark\";i:14;s:11:\"Black Color\";i:15;s:7:\"Ancient\";i:16;s:7:\"Pattern\";i:17;s:5:\"Ideas\";i:18;s:13:\"Surface Level\";i:19;s:6:\"Design\";i:20;s:5:\"ipsum\";i:21;s:5:\"lorem\";i:22;s:14:\"Sample Product\";}}}'),
(322, 98, '_thumbnail_id', '99'),
(324, 98, '_wp_trash_meta_status', 'publish'),
(325, 98, '_wp_trash_meta_time', '1549414169'),
(326, 98, '_wp_desired_post_slug', 'phil-ecar-i-researchers-visits-uc-berkeley'),
(327, 102, '_edit_last', '1'),
(328, 102, '_edit_lock', '1549418727:1'),
(329, 104, '_edit_last', '1'),
(330, 104, '_edit_lock', '1549418727:1'),
(331, 106, '_edit_last', '1'),
(332, 106, '_edit_lock', '1549418937:1'),
(333, 103, '_edit_last', '1'),
(334, 103, '_edit_lock', '1549418723:1'),
(335, 107, '_edit_last', '1'),
(336, 107, '_edit_lock', '1549418722:1'),
(337, 102, '_thumbnail_id', '99'),
(339, 104, '_thumbnail_id', '48'),
(342, 113, '_edit_last', '1'),
(343, 113, '_edit_lock', '1549419092:1'),
(345, 120, '_edit_last', '1'),
(346, 120, '_edit_lock', '1549421943:1'),
(347, 118, '_edit_last', '1'),
(348, 118, '_edit_lock', '1549422155:1'),
(349, 106, '_wp_trash_meta_status', 'draft'),
(350, 106, '_wp_trash_meta_time', '1549419181'),
(351, 122, '_edit_last', '1'),
(352, 106, '_wp_desired_post_slug', ''),
(353, 122, '_edit_lock', '1549419181:1'),
(354, 125, '_wp_attached_file', '2019/02/pic.png'),
(355, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:15:\"2019/02/pic.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"pic-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"pic-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:15:\"pic-200x160.png\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(356, 124, '_edit_last', '1'),
(357, 124, '_edit_lock', '1549422301:1'),
(358, 124, 'member_name', 'Chrislyn Joanna P. Faulmino'),
(359, 124, 'member_heading', 'Research Fellow'),
(360, 124, 'member_position', 'Policy and Governance Researcher'),
(361, 124, 'member_educational_field', 'Development Management and Governance | Human Ecology'),
(362, 124, 'member_expertise', ''),
(363, 124, 'member_research_interest', 'Policy analysis and institutions'),
(364, 124, 'member_information', 's:417:\"a:7:{s:10:\"post_title\";s:27:\"Chrislyn Joanna P. Faulmino\";s:11:\"member_name\";s:27:\"Chrislyn Joanna P. Faulmino\";s:14:\"member_heading\";s:15:\"Research Fellow\";s:15:\"member_position\";s:32:\"Policy and Governance Researcher\";s:24:\"member_educational_field\";s:53:\"Development Management and Governance | Human Ecology\";s:16:\"member_expertise\";s:0:\"\";s:24:\"member_research_interest\";s:32:\"Policy analysis and institutions\";}\";'),
(365, 121, '_edit_last', '1'),
(366, 121, '_edit_lock', '1549419301:1'),
(367, 131, '_wp_attached_file', '2019/02/IMG_20170716_114845.jpg'),
(368, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5120;s:6:\"height\";i:3840;s:4:\"file\";s:31:\"2019/02/IMG_20170716_114845.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_20170716_114845-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG_20170716_114845-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG_20170716_114845-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG_20170716_114845-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:31:\"IMG_20170716_114845-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"vivo 1611\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1500205727\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"3.87\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0041067761806982\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(369, 128, '_edit_last', '1'),
(370, 128, '_edit_lock', '1549419394:1'),
(371, 128, 'member_name', 'Donamae B. Isidro'),
(372, 128, 'member_heading', 'Research Fellow'),
(373, 128, 'member_position', ''),
(374, 128, 'member_educational_field', ''),
(375, 128, 'member_expertise', ''),
(376, 128, 'member_research_interest', ''),
(377, 128, 'member_information', 's:277:\"a:7:{s:10:\"post_title\";s:17:\"Donamae B. Isidro\";s:11:\"member_name\";s:17:\"Donamae B. Isidro\";s:14:\"member_heading\";s:15:\"Research Fellow\";s:15:\"member_position\";s:0:\"\";s:24:\"member_educational_field\";s:0:\"\";s:16:\"member_expertise\";s:0:\"\";s:24:\"member_research_interest\";s:0:\"\";}\";'),
(378, 136, '_wp_attached_file', '2019/02/14359065_1190563071013645_1486860184993707359_n.jpg'),
(379, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:766;s:6:\"height\";i:960;s:4:\"file\";s:59:\"2019/02/14359065_1190563071013645_1486860184993707359_n.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"14359065_1190563071013645_1486860184993707359_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"14359065_1190563071013645_1486860184993707359_n-239x300.jpg\";s:5:\"width\";i:239;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:59:\"14359065_1190563071013645_1486860184993707359_n-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(380, 138, '_wp_attached_file', '2019/02/VMDRG.jpg'),
(381, 120, '_thumbnail_id', '125'),
(382, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:594;s:6:\"height\";i:591;s:4:\"file\";s:17:\"2019/02/VMDRG.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"VMDRG-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"VMDRG-300x298.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:17:\"VMDRG-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D750\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1496397885\";s:9:\"copyright\";s:27:\"OLIVE\'S DIGITAL PHOTOGRAPHY\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(383, 120, 'member_name', 'Mr. Meliton R. Chiong III'),
(384, 120, 'member_heading', 'Research Fellow'),
(385, 120, 'member_position', 'Process Research Analyst'),
(386, 120, 'member_educational_field', 'Materials Science and Engineering'),
(387, 120, 'member_expertise', 'Computational Chemistry, Surface Science'),
(388, 120, 'member_research_interest', 'Density functional theory, Terahertz spectroscopy'),
(389, 120, 'member_information', 's:443:\"a:7:{s:10:\"post_title\";s:25:\"Mr. Meliton R. Chiong III\";s:11:\"member_name\";s:25:\"Mr. Meliton R. Chiong III\";s:14:\"member_heading\";s:15:\"Research Fellow\";s:15:\"member_position\";s:24:\"Process Research Analyst\";s:24:\"member_educational_field\";s:33:\"Materials Science and Engineering\";s:16:\"member_expertise\";s:40:\"Computational Chemistry, Surface Science\";s:24:\"member_research_interest\";s:49:\"Density functional theory, Terahertz spectroscopy\";}\";'),
(390, 124, '_thumbnail_id', '144'),
(391, 141, '_wp_attached_file', '2019/02/429153_2795166683044_830432954_n.jpg'),
(392, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:808;s:6:\"height\";i:608;s:4:\"file\";s:44:\"2019/02/429153_2795166683044_830432954_n.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"429153_2795166683044_830432954_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"429153_2795166683044_830432954_n-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"429153_2795166683044_830432954_n-768x578.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:44:\"429153_2795166683044_830432954_n-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(393, 142, '_wp_attached_file', '2019/02/14359065_1190563071013645_1486860184993707359_n-1.jpg'),
(394, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:766;s:6:\"height\";i:794;s:4:\"file\";s:61:\"2019/02/14359065_1190563071013645_1486860184993707359_n-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"14359065_1190563071013645_1486860184993707359_n-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"14359065_1190563071013645_1486860184993707359_n-1-289x300.jpg\";s:5:\"width\";i:289;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:61:\"14359065_1190563071013645_1486860184993707359_n-1-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(395, 144, '_wp_attached_file', '2019/02/14359065_1190563071013645_1486860184993707359_n-2.jpg'),
(396, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:766;s:6:\"height\";i:696;s:4:\"file\";s:61:\"2019/02/14359065_1190563071013645_1486860184993707359_n-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"14359065_1190563071013645_1486860184993707359_n-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"14359065_1190563071013645_1486860184993707359_n-2-300x273.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"members-image\";a:4:{s:4:\"file\";s:61:\"14359065_1190563071013645_1486860184993707359_n-2-200x160.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(397, 118, '_thumbnail_id', '141'),
(398, 118, 'member_name', 'Kurt Louis B. Solis, RCh'),
(399, 118, 'member_heading', 'Research Fellow'),
(400, 118, 'member_position', 'Field Specialist'),
(401, 118, 'member_educational_field', 'MS Environmental Engineering, BS Chemistry'),
(402, 118, 'member_expertise', 'Heavy Metals Remediation, Aquatic Chemistry'),
(403, 118, 'member_research_interest', 'Pollutant remediation, Adsorption, Heavy Metals'),
(404, 118, 'member_information', 's:443:\"a:7:{s:10:\"post_title\";s:24:\"Kurt Louis B. Solis, RCh\";s:11:\"member_name\";s:24:\"Kurt Louis B. Solis, RCh\";s:14:\"member_heading\";s:15:\"Research Fellow\";s:15:\"member_position\";s:16:\"Field Specialist\";s:24:\"member_educational_field\";s:42:\"MS Environmental Engineering, BS Chemistry\";s:16:\"member_expertise\";s:43:\"Heavy Metals Remediation, Aquatic Chemistry\";s:24:\"member_research_interest\";s:47:\"Pollutant remediation, Adsorption, Heavy Metals\";}\";');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-04 12:17:29', '2019-02-04 12:17:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-02-04 13:25:54', '2019-02-04 13:25:54', '', 0, 'https://pcari.000webhostapp.com/?p=1', 0, 'post', '', 1),
(2, 1, '2019-02-04 12:17:29', '2019-02-04 12:17:29', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://pcari.000webhostapp.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-02-04 12:17:29', '2019-02-04 12:17:29', '', 0, 'https://pcari.000webhostapp.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-04 12:17:29', '2019-02-04 12:17:29', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://pcari.000webhostapp.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-02-04 12:17:29', '2019-02-04 12:17:29', '', 0, 'https://pcari.000webhostapp.com/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-02-04 12:34:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-04 12:34:19', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?p=4', 0, 'post', '', 0),
(5, 1, '2019-02-04 12:38:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-04 12:38:05', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-02-04 12:41:11', '2019-02-04 12:41:11', '<div class=\"git-field\">\r\n    <label for=\"your-name\" class=\"hidden\">Name</label>\r\n    [text* your-name id:your-name placeholder \"Name\"]\r\n</div>\r\n<div class=\"git-field\">\r\n    <label for=\"your-email\" class=\"hidden\">Email</label>\r\n    [email* your-email id:your-email placeholder \"Email\"]\r\n</div>\r\n<div class=\"git-field lg\">\r\n    <label for=\"your-message\" class=\"hidden\">Message</label>\r\n    [textarea your-message id:your-message placeholder \"Message\"]\r\n</div>\r\n<div class=\"git-field submit\">\r\n    [submit \"Submit\"]\r\n</div>\n1\nPhilippine-California Advanced Research Institutes (PCARI) \"[your-subject]\"\nPhilippine-California Advanced Research Institutes (PCARI) <wordpress@pcari.000webhostapp.com>\njameskarl.quino@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Philippine-California Advanced Research Institutes (PCARI) (https://pcari.000webhostapp.com)\nReply-To: [your-email]\n\n\n\n\nPhilippine-California Advanced Research Institutes (PCARI) \"[your-subject]\"\nPhilippine-California Advanced Research Institutes (PCARI) <wordpress@pcari.000webhostapp.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Philippine-California Advanced Research Institutes (PCARI) (https://pcari.000webhostapp.com)\nReply-To: jameskarl.quino@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Get In Touch (Footer)', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-02-04 12:55:19', '2019-02-04 12:55:19', '', 0, 'https://pcari.000webhostapp.com/?post_type=wpcf7_contact_form&#038;p=6', 0, 'wpcf7_contact_form', '', 0),
(7, 1, '2019-02-04 12:45:58', '2019-02-04 12:45:58', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-02-04 12:45:58', '2019-02-04 12:45:58', '', 0, 'https://pcari.000webhostapp.com/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-02-04 12:45:58', '2019-02-04 12:45:58', '', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-02-04 12:45:58', '2019-02-04 12:45:58', '', 7, 'https://pcari.000webhostapp.com/2019/02/04/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-02-04 12:46:34', '2019-02-04 12:46:34', '', 'Research Partners', '', 'publish', 'closed', 'closed', '', 'research-partners', '', '', '2019-02-04 12:46:34', '2019-02-04 12:46:34', '', 7, 'https://pcari.000webhostapp.com/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-02-04 12:46:34', '2019-02-04 12:46:34', '', 'Research Partners', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 12:46:34', '2019-02-04 12:46:34', '', 9, 'https://pcari.000webhostapp.com/2019/02/04/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-02-04 12:46:50', '2019-02-04 12:46:50', '', 'Mission', '', 'publish', 'closed', 'closed', '', 'mission', '', '', '2019-02-04 12:46:50', '2019-02-04 12:46:50', '', 7, 'https://pcari.000webhostapp.com/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-02-04 12:46:50', '2019-02-04 12:46:50', '', 'Mission', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-02-04 12:46:50', '2019-02-04 12:46:50', '', 11, 'https://pcari.000webhostapp.com/2019/02/04/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-02-04 12:47:26', '2019-02-04 12:47:26', '', 'Calendar', '', 'publish', 'closed', 'closed', '', 'calendar', '', '', '2019-02-04 12:47:26', '2019-02-04 12:47:26', '', 0, 'https://pcari.000webhostapp.com/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-02-04 12:47:26', '2019-02-04 12:47:26', '', 'Calendar', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-02-04 12:47:26', '2019-02-04 12:47:26', '', 13, 'https://pcari.000webhostapp.com/2019/02/04/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-02-04 12:47:46', '2019-02-04 12:47:46', '', 'Research', '', 'publish', 'closed', 'closed', '', 'research', '', '', '2019-02-04 12:47:46', '2019-02-04 12:47:46', '', 0, 'https://pcari.000webhostapp.com/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-02-04 12:47:46', '2019-02-04 12:47:46', '', 'Research', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-02-04 12:47:46', '2019-02-04 12:47:46', '', 15, 'https://pcari.000webhostapp.com/2019/02/04/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-02-04 12:48:07', '2019-02-04 12:48:07', '', 'Research Interest', '', 'publish', 'closed', 'closed', '', 'research-interest', '', '', '2019-02-04 12:48:07', '2019-02-04 12:48:07', '', 15, 'https://pcari.000webhostapp.com/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-02-04 12:48:07', '2019-02-04 12:48:07', '', 'Research Interest', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-04 12:48:07', '2019-02-04 12:48:07', '', 17, 'https://pcari.000webhostapp.com/2019/02/04/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-02-04 12:48:35', '2019-02-04 12:48:35', '', 'Publications', '', 'publish', 'closed', 'closed', '', 'publications', '', '', '2019-02-04 12:49:50', '2019-02-04 12:49:50', '', 15, 'https://pcari.000webhostapp.com/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-02-04 12:48:35', '2019-02-04 12:48:35', 'Publications Conferences', 'Publications', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-02-04 12:48:35', '2019-02-04 12:48:35', '', 19, 'https://pcari.000webhostapp.com/2019/02/04/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-02-04 12:49:50', '2019-02-04 12:49:50', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-02-04 12:49:50', '2019-02-04 12:49:50', '', 19, 'https://pcari.000webhostapp.com/2019/02/04/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-02-04 12:50:17', '2019-02-04 12:50:17', '', 'Conferences', '', 'publish', 'closed', 'closed', '', 'conferences', '', '', '2019-02-04 12:50:17', '2019-02-04 12:50:17', '', 15, 'https://pcari.000webhostapp.com/?page_id=22', 0, 'page', '', 0),
(23, 1, '2019-02-04 12:50:17', '2019-02-04 12:50:17', '', 'Conferences', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-02-04 12:50:17', '2019-02-04 12:50:17', '', 22, 'https://pcari.000webhostapp.com/2019/02/04/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-02-04 12:50:22', '2019-02-04 12:50:22', '', 'Conferences', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2019-02-04 12:50:22', '2019-02-04 12:50:22', '', 22, 'https://pcari.000webhostapp.com/2019/02/04/22-autosave-v1/', 0, 'revision', '', 0),
(25, 1, '2019-02-04 12:50:43', '2019-02-04 12:50:43', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2019-02-04 12:50:43', '2019-02-04 12:50:43', '', 0, 'https://pcari.000webhostapp.com/?page_id=25', 0, 'page', '', 0),
(26, 1, '2019-02-04 12:50:43', '2019-02-04 12:50:43', '', 'Members', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-02-04 12:50:43', '2019-02-04 12:50:43', '', 25, 'https://pcari.000webhostapp.com/2019/02/04/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-02-04 12:51:02', '2019-02-04 12:51:02', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-02-04 12:51:02', '2019-02-04 12:51:02', '', 0, 'https://pcari.000webhostapp.com/?page_id=27', 0, 'page', '', 0),
(28, 1, '2019-02-04 12:51:02', '2019-02-04 12:51:02', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-02-04 12:51:02', '2019-02-04 12:51:02', '', 27, 'https://pcari.000webhostapp.com/2019/02/04/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-02-04 12:54:43', '2019-02-04 12:54:43', '', 'Homepage News Slideshow', '', 'trash', 'closed', 'closed', '', 'homepage-news-slideshow__trashed', '', '', '2019-02-04 13:15:08', '2019-02-04 13:15:08', '', 0, 'https://pcari.000webhostapp.com/?post_type=cycloneslider&#038;p=29', 0, 'cycloneslider', '', 0),
(30, 1, '2019-02-04 12:53:03', '2019-02-04 12:53:03', '', 'slideshow-1', '', 'inherit', 'open', 'closed', '', 'slideshow-1', '', '', '2019-02-04 12:53:03', '2019-02-04 12:53:03', '', 0, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/slideshow-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-02-04 12:53:09', '2019-02-04 12:53:09', '', 'slideshow-2', '', 'inherit', 'open', 'closed', '', 'slideshow-2', '', '', '2019-02-04 12:53:09', '2019-02-04 12:53:09', '', 0, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/slideshow-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-02-04 12:53:15', '2019-02-04 12:53:15', '', 'slideshow-3', '', 'inherit', 'open', 'closed', '', 'slideshow-3', '', '', '2019-02-04 12:53:15', '2019-02-04 12:53:15', '', 0, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/slideshow-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-02-04 13:01:06', '2019-02-04 13:01:06', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-02-05 08:13:55', '2019-02-05 08:13:55', '', 0, 'https://pcari.000webhostapp.com/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2019-02-04 13:01:07', '2019-02-04 13:01:07', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-02-05 08:13:56', '2019-02-05 08:13:56', '', 7, 'https://pcari.000webhostapp.com/?p=34', 3, 'nav_menu_item', '', 0),
(35, 1, '2019-02-04 13:01:09', '2019-02-04 13:01:09', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-02-05 08:13:56', '2019-02-05 08:13:56', '', 7, 'https://pcari.000webhostapp.com/?p=35', 4, 'nav_menu_item', '', 0),
(36, 1, '2019-02-04 13:01:10', '2019-02-04 13:01:10', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-02-05 08:13:57', '2019-02-05 08:13:57', '', 0, 'https://pcari.000webhostapp.com/?p=36', 5, 'nav_menu_item', '', 0),
(37, 1, '2019-02-04 13:01:14', '2019-02-04 13:01:14', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2019-02-05 08:13:57', '2019-02-05 08:13:57', '', 0, 'https://pcari.000webhostapp.com/?p=37', 7, 'nav_menu_item', '', 0),
(38, 1, '2019-02-04 13:01:12', '2019-02-04 13:01:12', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2019-02-05 08:13:57', '2019-02-05 08:13:57', '', 0, 'https://pcari.000webhostapp.com/?p=38', 6, 'nav_menu_item', '', 0),
(39, 1, '2019-02-04 13:01:16', '2019-02-04 13:01:16', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2019-02-05 08:13:57', '2019-02-05 08:13:57', '', 0, 'https://pcari.000webhostapp.com/?p=39', 8, 'nav_menu_item', '', 0),
(40, 1, '2019-02-04 13:01:17', '2019-02-04 13:01:17', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2019-02-05 08:13:57', '2019-02-05 08:13:57', '', 0, 'https://pcari.000webhostapp.com/?p=40', 9, 'nav_menu_item', '', 0),
(41, 1, '2019-02-04 13:01:22', '2019-02-04 13:01:22', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2019-02-05 08:13:58', '2019-02-05 08:13:58', '', 15, 'https://pcari.000webhostapp.com/?p=41', 12, 'nav_menu_item', '', 0),
(42, 1, '2019-02-04 13:01:20', '2019-02-04 13:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2019-02-05 08:13:58', '2019-02-05 08:13:58', '', 15, 'https://pcari.000webhostapp.com/?p=42', 11, 'nav_menu_item', '', 0),
(43, 1, '2019-02-04 13:01:19', '2019-02-04 13:01:19', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2019-02-05 08:13:58', '2019-02-05 08:13:58', '', 15, 'https://pcari.000webhostapp.com/?p=43', 10, 'nav_menu_item', '', 0),
(44, 1, '2019-02-04 13:01:24', '2019-02-04 13:01:24', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2019-02-05 08:13:58', '2019-02-05 08:13:58', '', 0, 'https://pcari.000webhostapp.com/?p=44', 13, 'nav_menu_item', '', 0),
(45, 1, '2019-02-04 13:01:26', '2019-02-04 13:01:26', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2019-02-05 08:13:59', '2019-02-05 08:13:59', '', 0, 'https://pcari.000webhostapp.com/?p=45', 15, 'nav_menu_item', '', 0),
(46, 1, '2019-02-04 13:09:49', '2019-02-04 13:09:49', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-02-05 08:13:55', '2019-02-05 08:13:55', '', 0, 'https://pcari.000webhostapp.com/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2019-02-05 10:09:57', '2019-02-05 10:09:57', '', 'Hero Slideshow', '', 'publish', 'closed', 'closed', '', 'hero-slideshow', '', '', '2019-02-05 10:09:57', '2019-02-05 10:09:57', '', 0, 'https://pcari.000webhostapp.com/?post_type=cycloneslider&#038;p=47', 0, 'cycloneslider', '', 0),
(48, 1, '2019-02-04 13:21:25', '2019-02-04 13:21:25', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2019-02-04 13:21:25', '2019-02-04 13:21:25', '', 0, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/favicon.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2019-02-04 13:21:39', '2019-02-04 13:21:39', '{\n    \"pcari-theme::custom_logo\": {\n        \"value\": 48,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-04 13:21:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'df22cfbc-d5ce-463a-a2cf-2b6c4f737e83', '', '', '2019-02-04 13:21:39', '2019-02-04 13:21:39', '', 0, 'https://pcari.000webhostapp.com/df22cfbc-d5ce-463a-a2cf-2b6c4f737e83/', 0, 'customize_changeset', '', 0),
(50, 1, '2019-02-04 13:21:53', '2019-02-04 13:21:53', '{\n    \"site_icon\": {\n        \"value\": 48,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-04 13:21:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cecb3c92-c52c-425f-b2dc-aa2712d3edc7', '', '', '2019-02-04 13:21:53', '2019-02-04 13:21:53', '', 0, 'https://pcari.000webhostapp.com/cecb3c92-c52c-425f-b2dc-aa2712d3edc7/', 0, 'customize_changeset', '', 0),
(51, 1, '2019-02-04 13:22:00', '2019-02-04 13:22:00', '{\n    \"pcari-theme::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-04 13:22:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c627619e-e3dd-49f7-971c-e7413b1139df', '', '', '2019-02-04 13:22:00', '2019-02-04 13:22:00', '', 0, 'https://pcari.000webhostapp.com/c627619e-e3dd-49f7-971c-e7413b1139df/', 0, 'customize_changeset', '', 0),
(52, 1, '2019-02-04 13:23:01', '2019-02-04 13:23:01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!', 'Phil-ECAR-I Researchers visits UC Berkeley', '', 'trash', 'open', 'open', '', 'phil-ecar-i-researchers-visits-uc-berkeley__trashed', '', '', '2019-02-06 00:44:25', '2019-02-06 00:44:25', '', 0, 'https://pcari.000webhostapp.com/?p=52', 2, 'post', '', 0),
(53, 1, '2019-02-04 13:23:01', '2019-02-04 13:23:01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!', 'Phil-ECAR-I Researchers visits UC Berkeley', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-02-04 13:23:01', '2019-02-04 13:23:01', '', 52, 'https://pcari.000webhostapp.com/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-02-04 13:23:23', '2019-02-04 13:23:23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!', 'Jadavpur University ECAR Plant Tour', '', 'publish', 'open', 'open', '', 'jadavpur-university-ecar-plant-tour', '', '', '2019-02-04 13:23:23', '2019-02-04 13:23:23', '', 0, 'https://pcari.000webhostapp.com/?p=54', 1, 'post', '', 0),
(55, 1, '2019-02-04 13:23:23', '2019-02-04 13:23:23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!', 'Jadavpur University ECAR Plant Tour', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-02-04 13:23:23', '2019-02-04 13:23:23', '', 54, 'https://pcari.000webhostapp.com/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-02-04 13:24:06', '2019-02-04 13:24:06', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!', 'Phil-ECAR-I Researchers visits UC Berkeley', '', 'trash', 'open', 'open', '', 'phil-ecar-i-researchers-visits-uc-berkeley-2__trashed', '', '', '2019-02-05 13:45:45', '2019-02-05 13:45:45', '', 0, 'https://pcari.000webhostapp.com/?p=56', 0, 'post', '', 0),
(57, 1, '2019-02-04 13:24:06', '2019-02-04 13:24:06', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!', 'Phil-ECAR-I Researchers visits UC Berkeley', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-02-04 13:24:06', '2019-02-04 13:24:06', '', 56, 'https://pcari.000webhostapp.com/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-02-04 13:25:54', '2019-02-04 13:25:54', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-02-04 13:25:54', '2019-02-04 13:25:54', '', 1, 'https://pcari.000webhostapp.com/1-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-02-05 07:43:39', '2019-02-05 07:43:39', '', '8995fb1ec59550a3dbe4cabaf51744ea', '', 'inherit', 'open', 'closed', '', '8995fb1ec59550a3dbe4cabaf51744ea', '', '', '2019-02-05 13:33:44', '2019-02-05 13:33:44', '', 56, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/8995fb1ec59550a3dbe4cabaf51744ea.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-02-05 07:45:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-05 07:45:40', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=62', 0, 'pcari_members', '', 0),
(63, 1, '2019-02-05 08:03:56', '2019-02-05 08:03:56', 'Test', 'Test', '', 'trash', 'open', 'open', 'Test', '__trashed', '', '', '2019-02-05 08:03:56', '2019-02-05 08:03:56', '', 0, 'https://pcari.000webhostapp.com/?p=63', 0, 'post', '', 0),
(64, 1, '2019-02-05 08:03:15', '2019-02-05 08:03:15', 'Test', 'Test', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-02-05 08:03:15', '2019-02-05 08:03:15', '', 63, 'https://pcari.000webhostapp.com/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-02-05 08:04:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-05 08:04:02', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?p=65', 0, 'post', '', 0),
(66, 1, '2019-02-05 08:07:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-05 08:07:13', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?p=66', 0, 'post', '', 0),
(73, 1, '2019-02-05 08:14:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-05 08:14:23', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=73', 0, 'pcari_members', '', 0),
(78, 1, '2019-02-05 08:19:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-05 08:19:47', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=78', 0, 'pcari_members', '', 0),
(79, 1, '2019-02-05 09:52:48', '2019-02-05 09:52:48', '', 'cropped-8995fb1ec59550a3dbe4cabaf51744ea.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-8995fb1ec59550a3dbe4cabaf51744ea-jpg', '', '', '2019-02-05 09:52:48', '2019-02-05 09:52:48', '', 0, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/cropped-8995fb1ec59550a3dbe4cabaf51744ea.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-02-05 09:53:17', '2019-02-05 09:53:17', '{\n    \"pcari-theme::header_image\": {\n        \"value\": \"https://pcari.000webhostapp.com/wp-content/uploads/2019/02/cropped-8995fb1ec59550a3dbe4cabaf51744ea.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-05 09:53:17\"\n    },\n    \"pcari-theme::header_image_data\": {\n        \"value\": {\n            \"url\": \"https://pcari.000webhostapp.com/wp-content/uploads/2019/02/cropped-8995fb1ec59550a3dbe4cabaf51744ea.jpg\",\n            \"thumbnail_url\": \"https://pcari.000webhostapp.com/wp-content/uploads/2019/02/cropped-8995fb1ec59550a3dbe4cabaf51744ea.jpg\",\n            \"timestamp\": 1549360367825,\n            \"attachment_id\": 79,\n            \"width\": 1000,\n            \"height\": 250\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-05 09:53:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd2ad400a-d642-4b5e-b903-d5f6933c9216', '', '', '2019-02-05 09:53:17', '2019-02-05 09:53:17', '', 0, 'https://pcari.000webhostapp.com/d2ad400a-d642-4b5e-b903-d5f6933c9216/', 0, 'customize_changeset', '', 0),
(81, 1, '2019-02-05 09:54:37', '0000-00-00 00:00:00', '{\n    \"pcari-theme::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-05 09:54:37\"\n    },\n    \"pcari-theme::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-05 09:54:37\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '729a9eb3-a398-4a57-b543-49a7bf5609e2', '', '', '2019-02-05 09:54:37', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2019-02-05 12:39:41', '2019-02-05 12:39:41', '', 'Ms. Marie Chela B. Cenia', '', 'publish', 'closed', 'closed', '', '82', '', '', '2019-02-06 02:12:10', '2019-02-06 02:12:10', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&#038;p=82', 1, 'pcari_members', '', 0),
(83, 1, '2019-02-05 12:35:17', '2019-02-05 12:35:17', '', 'Marie Chela B. Cenia-Research Fellow', '', 'inherit', 'open', 'closed', '', 'marie-chela-b-cenia-research-fellow', '', '', '2019-02-05 12:35:17', '2019-02-05 12:35:17', '', 82, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/Marie-Chela-B.-Cenia-Research-Fellow.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2019-02-05 12:39:41', '2019-02-05 12:39:41', '<img class=\"alignnone size-full wp-image-83\" src=\"https://pcari.000webhostapp.com/wp-content/uploads/2019/02/Marie-Chela-B.-Cenia-Research-Fellow.jpg\" alt=\"\" width=\"155\" height=\"155\" data-id=\"83\" />', '', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-02-05 12:39:41', '2019-02-05 12:39:41', '', 82, 'https://pcari.000webhostapp.com/82-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-02-05 12:42:06', '2019-02-05 12:42:06', '', '', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-02-05 12:42:06', '2019-02-05 12:42:06', '', 82, 'https://pcari.000webhostapp.com/82-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-02-05 12:57:00', '2019-02-05 12:57:00', '', 'Ms. Marie Chela B. Cenia', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-02-05 12:57:00', '2019-02-05 12:57:00', '', 82, 'https://pcari.000webhostapp.com/82-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-02-05 13:00:20', '2019-02-05 13:00:20', ',a;lkcjaklnlm . uigiu cjabuibiv', 'Ms. Marie Chela B. Cenia', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-02-05 13:00:20', '2019-02-05 13:00:20', '', 82, 'https://pcari.000webhostapp.com/82-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2019-02-05 13:03:49', '2019-02-05 13:03:49', '', 'Janina Kristiana DC. Argete', '', 'trash', 'closed', 'closed', '', 'janina-kristiana-dc-argete__trashed', '', '', '2019-02-05 13:06:38', '2019-02-05 13:06:38', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&#038;p=88', 0, 'pcari_members', '', 0),
(89, 1, '2019-02-05 13:02:57', '2019-02-05 13:02:57', '', 'Janina Kristiana DC. Argete-Research Fellow', '', 'inherit', 'open', 'closed', '', 'janina-kristiana-dc-argete-research-fellow', '', '', '2019-02-05 13:02:57', '2019-02-05 13:02:57', '', 88, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/Janina-Kristiana-DC.-Argete-Research-Fellow.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-02-05 13:03:49', '2019-02-05 13:03:49', '', 'Janina Kristiana DC. Argete', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2019-02-05 13:03:49', '2019-02-05 13:03:49', '', 88, 'https://pcari.000webhostapp.com/88-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-02-05 13:08:17', '2019-02-05 13:08:17', '', 'Ms. Marie Chela B. Cenia', '', 'inherit', 'closed', 'closed', '', '82-autosave-v1', '', '', '2019-02-05 13:08:17', '2019-02-05 13:08:17', '', 82, 'https://pcari.000webhostapp.com/82-autosave-v1/', 0, 'revision', '', 0),
(92, 1, '2019-02-05 13:16:12', '2019-02-05 13:16:12', '', 'Ms. Marie Chela B. Cenia', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-02-05 13:16:12', '2019-02-05 13:16:12', '', 82, 'https://pcari.000webhostapp.com/82-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-02-05 13:34:16', '2019-02-05 13:34:16', '<img class=\"alignnone size-medium wp-image-60\" src=\"https://pcari.000webhostapp.com/wp-content/uploads/2019/02/8995fb1ec59550a3dbe4cabaf51744ea-200x300.jpg\" alt=\"\" width=\"200\" height=\"300\" data-id=\"60\" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!', 'Phil-ECAR-I Researchers visits UC Berkeley', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-02-05 13:34:16', '2019-02-05 13:34:16', '', 56, 'https://pcari.000webhostapp.com/56-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-02-05 13:36:14', '2019-02-05 13:36:14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!', 'Phil-ECAR-I Researchers visits UC Berkeley', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-02-05 13:36:14', '2019-02-05 13:36:14', '', 56, 'https://pcari.000webhostapp.com/56-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-02-05 15:28:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-05 15:28:13', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=95', 0, 'pcari_members', '', 0),
(96, 1, '2019-02-06 00:42:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-06 00:42:13', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?p=96', 0, 'post', '', 0),
(97, 1, '2019-02-06 00:43:32', '2019-02-06 00:43:32', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!\n\n', 'Phil-ECAR-I Researchers visits UC Berkeley', '', 'inherit', 'closed', 'closed', '', '52-autosave-v1', '', '', '2019-02-06 00:43:32', '2019-02-06 00:43:32', '', 52, 'https://pcari.000webhostapp.com/52-autosave-v1/', 0, 'revision', '', 0),
(98, 1, '2019-02-06 00:46:36', '2019-02-06 00:46:36', '<p class=\"p1\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!</p>', 'Phil-ECAR-I Researchers visits UC Berkeley', '', 'trash', 'open', 'open', '', 'phil-ecar-i-researchers-visits-uc-berkeley__trashed-2', '', '', '2019-02-06 00:49:29', '2019-02-06 00:49:29', '', 0, 'https://pcari.000webhostapp.com/?p=98', 0, 'post', '', 0),
(99, 1, '2019-02-06 00:45:52', '2019-02-06 00:45:52', '', 'lorem ipsum bm', 'lorem ipsum Latin phrase made from metallic letterpress blocks on black perforated surface, it is commonly used as filler text to demonstrate the graphic design presentation', 'inherit', 'open', 'closed', '', 'lorem-ipsum-bm', '', '', '2019-02-06 00:45:52', '2019-02-06 00:45:52', '', 98, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/lorem-ipsum.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2019-02-06 00:46:36', '2019-02-06 00:46:36', '<p class=\"p1\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste fuga cumque vitae optio voluptatibus maiores minima dolorum facilis ea neque voluptate dolorem at delectus nesciunt necessitatibus, ex, repellendus explicabo consequatur!</p>', 'Phil-ECAR-I Researchers visits UC Berkeley', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2019-02-06 00:46:36', '2019-02-06 00:46:36', '', 98, 'https://pcari.000webhostapp.com/98-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-02-06 00:49:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-06 00:49:50', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=101', 0, 'pcari_members', '', 0),
(102, 1, '2019-02-06 02:07:30', '2019-02-06 02:07:30', 'This is my Blog', 'Test', '', 'publish', 'open', 'open', '', 'test', '', '', '2019-02-06 02:07:30', '2019-02-06 02:07:30', '', 0, 'https://pcari.000webhostapp.com/?p=102', 0, 'post', '', 0),
(103, 1, '2019-02-06 02:07:36', '2019-02-06 02:07:36', 'The quick brown fox jumped over the lazy white dog', '', '', 'publish', 'open', 'open', '', '103-2', '', '', '2019-02-06 02:07:36', '2019-02-06 02:07:36', '', 0, 'https://pcari.000webhostapp.com/?p=103', 0, 'post', '', 0),
(104, 1, '2019-02-06 02:07:33', '2019-02-06 02:07:33', 'This is a sample post. PCARI ECAR the best!', 'Trial Post', '', 'publish', 'open', 'open', '', 'trial-post', '', '', '2019-02-06 02:07:33', '2019-02-06 02:07:33', '', 0, 'https://pcari.000webhostapp.com/?p=104', 0, 'post', '', 0),
(105, 1, '2019-02-06 02:04:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-06 02:04:12', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?p=105', 0, 'post', '', 0),
(106, 1, '2019-02-06 02:13:01', '2019-02-06 02:13:01', 'This is the line1', 'Test1', '', 'trash', 'open', 'open', '', '__trashed-2', '', '', '2019-02-06 02:13:01', '2019-02-06 02:13:01', '', 0, 'https://pcari.000webhostapp.com/?p=106', 0, 'post', '', 0),
(107, 1, '2019-02-06 02:05:22', '0000-00-00 00:00:00', '', 'Test', '', 'draft', 'open', 'open', '', '', '', '', '2019-02-06 02:05:22', '2019-02-06 02:05:22', '', 0, 'https://pcari.000webhostapp.com/?p=107', 0, 'post', '', 0),
(108, 1, '2019-02-06 02:06:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-06 02:06:21', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?p=108', 0, 'post', '', 0),
(109, 1, '2019-02-06 02:07:30', '2019-02-06 02:07:30', 'This is my Blog', 'Test', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2019-02-06 02:07:30', '2019-02-06 02:07:30', '', 102, 'https://pcari.000webhostapp.com/102-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-02-06 02:07:33', '2019-02-06 02:07:33', 'This is a sample post. PCARI ECAR the best!', 'Trial Post', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-02-06 02:07:33', '2019-02-06 02:07:33', '', 104, 'https://pcari.000webhostapp.com/104-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-02-06 02:07:36', '2019-02-06 02:07:36', 'The quick brown fox jumped over the lazy white dog', '', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-02-06 02:07:36', '2019-02-06 02:07:36', '', 103, 'https://pcari.000webhostapp.com/103-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-02-06 02:07:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-06 02:07:42', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?p=112', 0, 'post', '', 0),
(113, 1, '2019-02-06 02:10:49', '2019-02-06 02:10:49', 'Testing 123 ', 'Test', '', 'publish', 'open', 'open', '', 'test-2', '', '', '2019-02-06 02:10:49', '2019-02-06 02:10:49', '', 0, 'https://pcari.000webhostapp.com/?p=113', 0, 'post', '', 0),
(114, 1, '2019-02-06 02:10:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-06 02:10:11', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=114', 0, 'pcari_members', '', 0),
(115, 1, '2019-02-06 02:10:49', '2019-02-06 02:10:49', 'Testing 123 ', 'Test', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2019-02-06 02:10:49', '2019-02-06 02:10:49', '', 113, 'https://pcari.000webhostapp.com/113-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-02-06 02:11:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-06 02:11:21', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?p=116', 0, 'post', '', 0),
(117, 1, '2019-02-06 02:11:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-06 02:11:30', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?p=117', 0, 'post', '', 0),
(118, 1, '2019-02-06 03:04:37', '2019-02-06 03:04:37', '', 'Kurt Louis B. Solis, RCh', '', 'publish', 'closed', 'closed', '', 'kurt-louis-b-solis-rch', '', '', '2019-02-06 03:04:37', '2019-02-06 03:04:37', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&#038;p=118', 4, 'pcari_members', '', 0),
(119, 1, '2019-02-06 02:12:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-06 02:12:29', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=119', 0, 'pcari_members', '', 0),
(120, 1, '2019-02-06 02:16:46', '2019-02-06 02:16:46', 'Ang pogi-chinito ng Zamboanga City', 'Mr. Meliton R. Chiong III', '', 'publish', 'closed', 'closed', '', 'mr-meliton-r-chiong-iii', '', '', '2019-02-06 03:00:41', '2019-02-06 03:00:41', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&#038;p=120', 3, 'pcari_members', '', 0),
(121, 1, '2019-02-06 02:15:00', '0000-00-00 00:00:00', '', 'Ms. Vivien Minette DR. Gedalanga', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-06 02:15:00', '2019-02-06 02:15:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&#038;p=121', 6, 'pcari_members', '', 0),
(122, 1, '2019-02-06 02:13:01', '0000-00-00 00:00:00', '', 'Asst. Prof. Reygie Q. Macasieb', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-06 02:13:01', '2019-02-06 02:13:01', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&#038;p=122', 0, 'pcari_members', '', 0),
(123, 1, '2019-02-06 02:13:01', '2019-02-06 02:13:01', 'This is the line1', 'Test1', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-02-06 02:13:01', '2019-02-06 02:13:01', '', 106, 'https://pcari.000webhostapp.com/106-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-02-06 02:14:23', '2019-02-06 02:14:23', '', 'Chrislyn Joanna P. Faulmino', '', 'publish', 'closed', 'closed', '', 'chrislyn-joanna-p-faulmino', '', '', '2019-02-06 03:06:28', '2019-02-06 03:06:28', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&#038;p=124', 5, 'pcari_members', '', 0),
(125, 1, '2019-02-06 02:13:58', '2019-02-06 02:13:58', '', 'pic', '', 'inherit', 'open', 'closed', '', 'pic', '', '', '2019-02-06 02:13:58', '2019-02-06 02:13:58', '', 120, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/pic.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2019-02-06 02:14:23', '2019-02-06 02:14:23', '', 'Chrislyn Joanna P. Faulmino', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2019-02-06 02:14:23', '2019-02-06 02:14:23', '', 124, 'https://pcari.000webhostapp.com/124-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2019-02-06 02:14:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-06 02:14:45', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=127', 0, 'pcari_members', '', 0),
(128, 1, '2019-02-06 02:15:49', '2019-02-06 02:15:49', '', 'Donamae B. Isidro', '', 'publish', 'closed', 'closed', '', 'donamae-isidro', '', '', '2019-02-06 02:16:30', '2019-02-06 02:16:30', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&#038;p=128', 2, 'pcari_members', '', 0),
(129, 1, '2019-02-06 02:15:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-06 02:15:17', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=129', 0, 'pcari_members', '', 0),
(130, 1, '2019-02-06 02:15:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-06 02:15:31', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=130', 0, 'pcari_members', '', 0),
(131, 1, '2019-02-06 02:15:33', '2019-02-06 02:15:33', '', 'IMG_20170716_114845', '', 'inherit', 'open', 'closed', '', 'img_20170716_114845', '', '', '2019-02-06 02:15:33', '2019-02-06 02:15:33', '', 122, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/IMG_20170716_114845.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2019-02-06 02:15:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-06 02:15:42', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=132', 0, 'pcari_members', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(133, 1, '2019-02-06 02:15:49', '2019-02-06 02:15:49', '', 'Donamae Isidro', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2019-02-06 02:15:49', '2019-02-06 02:15:49', '', 128, 'https://pcari.000webhostapp.com/128-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2019-02-06 02:16:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-06 02:16:05', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=134', 0, 'pcari_members', '', 0),
(135, 1, '2019-02-06 02:16:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-06 02:16:07', '0000-00-00 00:00:00', '', 0, 'https://pcari.000webhostapp.com/?post_type=pcari_members&p=135', 0, 'pcari_members', '', 0),
(136, 1, '2019-02-06 02:16:26', '2019-02-06 02:16:26', '', '14359065_1190563071013645_1486860184993707359_n', '', 'inherit', 'open', 'closed', '', '14359065_1190563071013645_1486860184993707359_n', '', '', '2019-02-06 02:16:26', '2019-02-06 02:16:26', '', 124, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/14359065_1190563071013645_1486860184993707359_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2019-02-06 02:16:30', '2019-02-06 02:16:30', '', 'Donamae B. Isidro', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2019-02-06 02:16:30', '2019-02-06 02:16:30', '', 128, 'https://pcari.000webhostapp.com/128-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2019-02-06 02:16:46', '2019-02-06 02:16:46', '', 'VMDRG', '', 'inherit', 'open', 'closed', '', 'vmdrg', '', '', '2019-02-06 02:16:46', '2019-02-06 02:16:46', '', 121, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/VMDRG.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2019-02-06 02:16:46', '2019-02-06 02:16:46', '', 'Mr. Meliton R. Chiong III', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2019-02-06 02:16:46', '2019-02-06 02:16:46', '', 120, 'https://pcari.000webhostapp.com/120-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2019-02-06 02:17:04', '2019-02-06 02:17:04', '', '429153_2795166683044_830432954_n', '', 'inherit', 'open', 'closed', '', '429153_2795166683044_830432954_n', '', '', '2019-02-06 02:17:04', '2019-02-06 02:17:04', '', 118, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/429153_2795166683044_830432954_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2019-02-06 03:00:32', '2019-02-06 03:00:32', '', '14359065_1190563071013645_1486860184993707359_n', '', 'inherit', 'open', 'closed', '', '14359065_1190563071013645_1486860184993707359_n-2', '', '', '2019-02-06 03:00:32', '2019-02-06 03:00:32', '', 124, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/14359065_1190563071013645_1486860184993707359_n-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2019-02-06 03:00:41', '2019-02-06 03:00:41', 'Ang pogi-chinito ng Zamboanga City', 'Mr. Meliton R. Chiong III', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2019-02-06 03:00:41', '2019-02-06 03:00:41', '', 120, 'https://pcari.000webhostapp.com/120-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2019-02-06 03:01:50', '2019-02-06 03:01:50', '', '14359065_1190563071013645_1486860184993707359_n', '', 'inherit', 'open', 'closed', '', '14359065_1190563071013645_1486860184993707359_n-3', '', '', '2019-02-06 03:01:50', '2019-02-06 03:01:50', '', 124, 'https://pcari.000webhostapp.com/wp-content/uploads/2019/02/14359065_1190563071013645_1486860184993707359_n-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2019-02-06 03:04:37', '2019-02-06 03:04:37', '', 'Kurt Louis B. Solis, RCh', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-02-06 03:04:37', '2019-02-06 03:04:37', '', 118, 'https://pcari.000webhostapp.com/118-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'News', 'news', 0),
(3, 'Events', 'events', 0),
(4, 'Announcements', 'announcements', 0),
(5, 'Primary Menu', 'primary-menu', 0),
(6, 'post-format-aside', 'post-format-aside', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(33, 5, 0),
(34, 5, 0),
(35, 5, 0),
(36, 5, 0),
(37, 5, 0),
(38, 5, 0),
(39, 5, 0),
(40, 5, 0),
(41, 5, 0),
(42, 5, 0),
(43, 5, 0),
(44, 5, 0),
(45, 5, 0),
(46, 5, 0),
(52, 2, 0),
(52, 6, 0),
(54, 2, 0),
(54, 6, 0),
(56, 2, 0),
(56, 6, 0),
(63, 1, 0),
(63, 6, 0),
(65, 6, 0),
(66, 6, 0),
(96, 6, 0),
(98, 2, 0),
(98, 6, 0),
(102, 2, 0),
(102, 6, 0),
(103, 2, 0),
(103, 6, 0),
(104, 2, 0),
(104, 6, 0),
(105, 6, 0),
(106, 2, 0),
(106, 6, 0),
(107, 1, 0),
(107, 6, 0),
(108, 6, 0),
(112, 6, 0),
(113, 2, 0),
(113, 6, 0),
(116, 6, 0),
(117, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 5),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 14),
(6, 6, 'post_format', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:19:{s:64:\"b6eea830723ef82d7cd1605eb8d8773fb48c71394e11137914f6539899667796\";a:4:{s:10:\"expiration\";i:1549525286;s:2:\"ip\";s:13:\"121.54.54.137\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549352486;}s:64:\"f6e9b924080857cea61d2919e8203d09240c402775284d1f1b668de67b393be8\";a:4:{s:10:\"expiration\";i:1549526008;s:2:\"ip\";s:14:\"203.87.156.110\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549353208;}s:64:\"aad45912a14759d1e16bfa171cc804d97e733b462a30c851f4fa1712e22e1452\";a:4:{s:10:\"expiration\";i:1549545922;s:2:\"ip\";s:13:\"110.54.217.73\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549373122;}s:64:\"bbd271e85b63324cdc69e77cdf3db876e749fd35741066b2fd999b2e56b988d9\";a:4:{s:10:\"expiration\";i:1549553266;s:2:\"ip\";s:14:\"203.87.133.138\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549380466;}s:64:\"eb6de032cb2d47a91f825664270d62167be39d2b4b42ef969eddffda317a38d0\";a:4:{s:10:\"expiration\";i:1549590955;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549418155;}s:64:\"9b28c41dee527205b5789995b3270090c0fea6bc64e92f2cb37e1d382ae27638\";a:4:{s:10:\"expiration\";i:1549590962;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549418162;}s:64:\"e393f99adc02b374bff6adf20f16dee52457b777ce5ad5d7591186b388460763\";a:4:{s:10:\"expiration\";i:1549590964;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1549418164;}s:64:\"51fdb52a0beaac0994bc7a0aa479a0834fa1a96c4a0afc6b4d2a3dbbfc759c2f\";a:4:{s:10:\"expiration\";i:1549590964;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549418164;}s:64:\"bbc880fa03e5d7c1a28220c1cc95e0f4249fab5241b42fe25bd344755f018695\";a:4:{s:10:\"expiration\";i:1549590970;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1549418170;}s:64:\"875637b799dc14bd607d33fe71f711c0f91a802ccf87ea2bbfdcb2676f9d9141\";a:4:{s:10:\"expiration\";i:1549590973;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1549418173;}s:64:\"271b272af7ed817610c28f763b76b3a551fd83b3ffaa447e662cd71b95595ef8\";a:4:{s:10:\"expiration\";i:1550627823;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Safari/605.1.15\";s:5:\"login\";i:1549418223;}s:64:\"0ffe3aad40d03a52e8cb4b4bff3c258a277c508e8f435074fe820cfda5b0aec3\";a:4:{s:10:\"expiration\";i:1549591280;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36\";s:5:\"login\";i:1549418480;}s:64:\"2a460c70e57bdcc77687603f5e3b31a76adb001800726288a9f4e30b28be19f8\";a:4:{s:10:\"expiration\";i:1549591501;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:47.0) Gecko/20100101 Firefox/47.0\";s:5:\"login\";i:1549418701;}s:64:\"ef7dbf45b5465f3ebb1a8f63f2fd6269b877c5879d58f053ed9c37eb6f64b967\";a:4:{s:10:\"expiration\";i:1549591795;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549418995;}s:64:\"a6da4a6b6a55248268eb2e37040294d2096bb2c8e8ce505e8ed364d859a0b3b5\";a:4:{s:10:\"expiration\";i:1549592071;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:127:\"Mozilla/5.0 (Linux; Android 8.1.0; ASUS_X00TDB) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.80 Mobile Safari/537.36\";s:5:\"login\";i:1549419271;}s:64:\"796420042f5d337fde211803802427699a803d42b31d120c25fd2a7c8af5f23b\";a:4:{s:10:\"expiration\";i:1549592077;s:2:\"ip\";s:14:\"202.92.130.197\";s:2:\"ua\";s:127:\"Mozilla/5.0 (Linux; Android 8.1.0; ASUS_X01BDA) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36\";s:5:\"login\";i:1549419277;}s:64:\"c88a1be5577537ed371d4156edcb8c04a11a058a63e3bb1b3530628451be1c59\";a:4:{s:10:\"expiration\";i:1549594804;s:2:\"ip\";s:14:\"202.92.130.196\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1549422004;}s:64:\"20507ab9c7db7c063852fded0b07f4e0a2b687559597ac081da5b3adb4a8854f\";a:4:{s:10:\"expiration\";i:1549594806;s:2:\"ip\";s:14:\"202.92.130.196\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1549422006;}s:64:\"12484063894eb0c93732c53b3181153980b7e2a422b492cad1475fa9b5455d2d\";a:4:{s:10:\"expiration\";i:1549594855;s:2:\"ip\";s:14:\"202.92.130.196\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0\";s:5:\"login\";i:1549422055;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"120.29.75.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:27:\"add-post-type-pcari_members\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1549418850'),
(23, 1, 'nav_menu_recently_edited', '5'),
(24, 1, 'closedpostboxes_post', 'a:2:{i:0;s:9:\"formatdiv\";i:1;s:16:\"tagsdiv-post_tag\";}'),
(25, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$Bk/fW4t6sJaTq5BLgiE5DC7qEYhPev.', 'admin', 'jameskarl.quino@gmail.com', '', '2019-02-04 12:17:26', '', 0, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
