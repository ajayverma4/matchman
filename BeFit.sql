-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 10:16 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jeremy`
--

-- --------------------------------------------------------

--
-- Table structure for table `aso_commentmeta`
--

CREATE TABLE `aso_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aso_comments`
--

CREATE TABLE `aso_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aso_links`
--

CREATE TABLE `aso_links` (
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
-- Table structure for table `aso_options`
--

CREATE TABLE `aso_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aso_options`
--

INSERT INTO `aso_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/jeremy', 'yes'),
(2, 'home', 'http://localhost/jeremy', 'yes'),
(3, 'blogname', 'Jeremy Roberts', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'james@j12designs.com', 'yes'),
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
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:57:\"D:\\xampp\\htdocs\\evelyn/wp-content/themes/evelyn/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'jeremy', 'yes'),
(41, 'stylesheet', 'jeremy', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '49752', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '425', 'yes'),
(59, 'thumbnail_size_h', '425', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '768', 'yes'),
(62, 'medium_size_h', '768', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
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
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:16:\"sample text area\";s:4:\"text\";s:47:\"sample text 1\r\n\r\nsample text 2\r\n\r\nsample text 3\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '965', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'aso_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:3:{i:2;a:3:{s:5:\"title\";s:6:\"Recent\";s:6:\"number\";i:12;s:9:\"show_date\";b:0;}i:4;a:3:{s:5:\"title\";s:6:\"Recent\";s:6:\"number\";i:12;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"pages-3\";i:1;s:10:\"calendar-2\";i:2;s:6:\"text-2\";i:3;s:14:\"recent-posts-4\";i:4;s:10:\"nav_menu-2\";}s:13:\"widget-area-1\";a:2:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";}s:13:\"widget-area-2\";a:0:{}s:13:\"widget-area-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:2:{i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:49;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:10:{i:1674639498;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1674654847;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674659334;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674665514;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1674666344;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1674671905;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1674679098;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1674722298;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674722316;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'nonce_key', 'hGyh ]4eY]A#i*iO,/f5Oo^.kXjKSTRU3y*P]_<O_yG[5YMbEp:|^qBgU;2|INf`', 'no'),
(110, 'nonce_salt', 'E:8/}]g7v`HgdV~J]NY3v]]-Wm,.!P(>h;b0PcjS#`1a8@|ctv68L5[&~HhAd=I^', 'no'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1607324111;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"pages-3\";i:1;s:10:\"calendar-2\";i:2;s:6:\"text-2\";i:3;s:14:\"recent-posts-4\";i:4;s:10:\"nav_menu-2\";}s:9:\"sidebar-1\";a:2:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, 'auth_key', '7;Rf*.54PpYe*ivi+C*IG#+uYEP%4><1 ElkiCKk5Hy=z|=2Ar_5kN2!a)_,SeJ*', 'no'),
(124, 'auth_salt', 'JL/{8GrSOJtGH,.U%P@Ms7sp.^KxvjD=2<B29hEf=(,1!bRq}/J-x7fesExbl#zN', 'no'),
(125, 'logged_in_key', '2hD[3t7No=&uLiGnw=j)~ B}ixF_Cq!c1PU`Or[t>(~bw0o]#UL`3uw#;BoU0{OR', 'no'),
(126, 'logged_in_salt', 'kht;-,yprs#KeYd-9,_+{[,Ri*iz@bCIZ~JZE~v!?#3dXZ&]J:*itZAePhT@u^g<', 'no'),
(142, 'current_theme', 'SEA Custom', 'yes'),
(143, 'theme_mods_Assocham', 'a:4:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1554612717;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"widget-area-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget-area-2\";a:0:{}}}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(148, 'acf_version', '6.0.7', 'yes'),
(156, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(158, 'options_logo_image', '1000', 'no'),
(159, '_options_logo_image', 'field_5a0db9ea9381f', 'no'),
(160, 'options_favicon_ico', '75', 'no'),
(161, '_options_favicon_ico', 'field_5e32c632c0861', 'no'),
(162, 'options_favicon_png', '559', 'no'),
(163, '_options_favicon_png', 'field_5e68d19c5970d', 'no'),
(164, 'options_header_default_image', '11', 'no'),
(165, '_options_header_default_image', 'field_5dde24a0deb30', 'no'),
(166, 'options_custom_stylesheet', '', 'no'),
(167, '_options_custom_stylesheet', 'field_5a0dba2f93824', 'no'),
(168, 'options_footer_about_us_text', '', 'no'),
(169, '_options_footer_about_us_text', 'field_5a0dba6a93826', 'no'),
(170, 'options_footer_address_box', '1250, Lorem ipsum Street,\r\nsit amet consect etural adipisicing elit', 'no'),
(171, '_options_footer_address_box', 'field_5a0dba8a93827', 'no'),
(172, 'options_footer_tel_number', '+123 456 78910', 'no'),
(173, '_options_footer_tel_number', 'field_5a0dbb3793828', 'no'),
(174, 'options_copyright_text', '© 2017 ASSOCHAM <a href=\"#\" target=\"_blank\" rel=\"noopener\">India-Nigeria Business Promotion</a> All rights reserved', 'no'),
(175, '_options_copyright_text', 'field_5a0dbb4893829', 'no'),
(176, 'options_facebook_link', '#facebook', 'no'),
(177, '_options_facebook_link', 'field_5dc919a646eb1', 'no'),
(178, 'options_twitter_link', '#twitter', 'no'),
(179, '_options_twitter_link', 'field_5dc919ae46eb2', 'no'),
(180, 'options_google_plus_link', '', 'no'),
(181, '_options_google_plus_link', 'field_5a0dce363bbc2', 'no'),
(182, 'options_instagram_link', '#instagram', 'no'),
(183, '_options_instagram_link', 'field_5dc919b546eb3', 'no'),
(184, 'options_linkedin_link', '#linkedIn', 'no'),
(185, '_options_linkedin_link', 'field_5a0dcdf13bbc0', 'no'),
(186, 'options_youtube_link', '#youtube', 'no'),
(187, '_options_youtube_link', 'field_5a0dce053bbc1', 'no'),
(188, 'options_call_number', '', 'no'),
(189, '_options_call_number', 'field_5a0ddee85e11f', 'no'),
(215, 'options_footer_mail_address', '', 'no'),
(216, '_options_footer_mail_address', 'field_5a0f2b6c763fd', 'no'),
(253, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1511033724;s:7:\"version\";s:5:\"4.9.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(269, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"james@j12designs.com\";s:7:\"version\";s:6:\"4.8.15\";s:9:\"timestamp\";i:1605623151;}', 'no'),
(284, 'theme_mods_hcb', 'a:4:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555221896;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"widget-area-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget-area-2\";a:0:{}}}}', 'yes'),
(288, 'WPLANG', '', 'yes'),
(297, 'options_yelp_link', '', 'no'),
(298, '_options_yelp_link', 'field_5dc919c146eb4', 'no'),
(299, 'options_footer_subscribe_text', '', 'no'),
(300, '_options_footer_subscribe_text', 'field_5a0dbb3793828', 'no'),
(301, 'options_footer_subscribe_link', '#', 'no'),
(302, '_options_footer_subscribe_link', 'field_5ca9c23012dc3', 'no'),
(303, 'options_footer_bottom_content_left', '<a class=\"white\" href=\"/sitemap\"></a>', 'no'),
(304, '_options_footer_bottom_content_left', 'field_5ca9c24112dc4', 'no'),
(305, 'options_footer_bottom_content_right', '', 'no'),
(306, '_options_footer_bottom_content_right', 'field_5ca9c26912dc5', 'no'),
(307, 'options_copyright_text_left', '', 'no'),
(308, '_options_copyright_text_left', 'field_5a0dbb4893829', 'no'),
(309, 'options_copyright_text_right', '', 'no'),
(310, '_options_copyright_text_right', 'field_5ca9c2ac12dc6', 'no'),
(332, 'options_blog_detail_title', 'HILL COUNTRY BRITISH BLOG', 'no'),
(333, '_options_blog_detail_title', 'field_5cab17817bdb9', 'no'),
(334, 'options_testimonial_title', 'WHY CHOOSE HILL COUNTRY BRITISH?', 'no'),
(335, '_options_testimonial_title', 'field_5cab17a37bdba', 'no'),
(336, 'options_testimonial_details', 'Because we believe Customer Experience comes first. Rather than have us give you a dozen reasons\r\nwhy you should choose Hill Country British, we will let our customer reviews speak for themselves.', 'no'),
(337, '_options_testimonial_details', 'field_5cab17b17bdbb', 'no'),
(432, 'theme_mods_skin', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567558473;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"widget-area-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget-area-2\";a:0:{}}}}', 'yes'),
(453, 'options_top_image_list_0_image', '530', 'no'),
(454, '_options_top_image_list_0_image', 'field_5cb496f5c2897', 'no'),
(455, 'options_top_image_list_0_target_link', '#', 'no'),
(456, '_options_top_image_list_0_target_link', 'field_5cb49702c2898', 'no'),
(457, 'options_top_image_list_1_image', '508', 'no'),
(458, '_options_top_image_list_1_image', 'field_5cb496f5c2897', 'no'),
(459, 'options_top_image_list_1_target_link', '#', 'no'),
(460, '_options_top_image_list_1_target_link', 'field_5cb49702c2898', 'no'),
(461, 'options_top_image_list_2_image', '512', 'no'),
(462, '_options_top_image_list_2_image', 'field_5cb496f5c2897', 'no'),
(463, 'options_top_image_list_2_target_link', '#', 'no'),
(464, '_options_top_image_list_2_target_link', 'field_5cb49702c2898', 'no'),
(465, 'options_top_image_list', '3', 'no'),
(466, '_options_top_image_list', 'field_5cb496e6c2896', 'no'),
(467, 'options_brand_list_0_image', '518', 'no'),
(468, '_options_brand_list_0_image', 'field_5cb49735c289c', 'no'),
(469, 'options_brand_list_0_target_link', '#', 'no'),
(470, '_options_brand_list_0_target_link', 'field_5cb49735c289d', 'no'),
(471, 'options_brand_list_1_image', '519', 'no'),
(472, '_options_brand_list_1_image', 'field_5cb49735c289c', 'no'),
(473, 'options_brand_list_1_target_link', '#', 'no'),
(474, '_options_brand_list_1_target_link', 'field_5cb49735c289d', 'no'),
(475, 'options_brand_list_2_image', '520', 'no'),
(476, '_options_brand_list_2_image', 'field_5cb49735c289c', 'no'),
(477, 'options_brand_list_2_target_link', '#', 'no'),
(478, '_options_brand_list_2_target_link', 'field_5cb49735c289d', 'no'),
(479, 'options_brand_list_3_image', '521', 'no'),
(480, '_options_brand_list_3_image', 'field_5cb49735c289c', 'no'),
(481, 'options_brand_list_3_target_link', '#', 'no'),
(482, '_options_brand_list_3_target_link', 'field_5cb49735c289d', 'no'),
(483, 'options_brand_list_4_image', '522', 'no'),
(484, '_options_brand_list_4_image', 'field_5cb49735c289c', 'no'),
(485, 'options_brand_list_4_target_link', '#', 'no'),
(486, '_options_brand_list_4_target_link', 'field_5cb49735c289d', 'no'),
(487, 'options_brand_list_5_image', '523', 'no'),
(488, '_options_brand_list_5_image', 'field_5cb49735c289c', 'no'),
(489, 'options_brand_list_5_target_link', '#', 'no'),
(490, '_options_brand_list_5_target_link', 'field_5cb49735c289d', 'no'),
(491, 'options_brand_list_6_image', '524', 'no'),
(492, '_options_brand_list_6_image', 'field_5cb49735c289c', 'no'),
(493, 'options_brand_list_6_target_link', '#', 'no'),
(494, '_options_brand_list_6_target_link', 'field_5cb49735c289d', 'no'),
(495, 'options_brand_list_7_image', '525', 'no'),
(496, '_options_brand_list_7_image', 'field_5cb49735c289c', 'no'),
(497, 'options_brand_list_7_target_link', '#', 'no'),
(498, '_options_brand_list_7_target_link', 'field_5cb49735c289d', 'no'),
(499, 'options_brand_list_8_image', '526', 'no'),
(500, '_options_brand_list_8_image', 'field_5cb49735c289c', 'no'),
(501, 'options_brand_list_8_target_link', '#', 'no'),
(502, '_options_brand_list_8_target_link', 'field_5cb49735c289d', 'no'),
(503, 'options_brand_list', '9', 'no'),
(504, '_options_brand_list', 'field_5cb49735c289b', 'no'),
(506, 'options_footer_col_1', '', 'no'),
(507, '_options_footer_col_1', 'field_5a0dba6a93826', 'no'),
(508, 'options_footer_col_2', '', 'no'),
(509, '_options_footer_col_2', 'field_5d8d2baa3d56a', 'no'),
(510, 'options_footer_col_3', '', 'no'),
(511, '_options_footer_col_3', 'field_5cb4985a0dc21', 'no'),
(597, 'theme_mods_evelyn', 'a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:17;s:12:\"sidebar-menu\";i:0;}}', 'yes'),
(779, 'options_first-line', '', 'no'),
(780, '_options_first-line', 'field_5da02e2cbe4da', 'no'),
(781, 'options_', '616', 'no'),
(782, '_options_', 'field_5da02e51be4db', 'no'),
(783, 'options_second_line', '616', 'no'),
(784, '_options_second_line', 'field_5da02e51be4db', 'no'),
(1031, 'theme_mods_sabc', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(1067, 'options_footer_button', 'javo', 'no'),
(1068, '_options_footer_button', 'field_5dc690d3b6dc9', 'no'),
(1069, 'options_footer_button_link', '#', 'no'),
(1070, '_options_footer_button_link', 'field_5dc691a0b6dcb', 'no'),
(1071, 'options_email_address', 'javotheam@gmail.com', 'no'),
(1072, '_options_email_address', 'field_5dc691b4b6dcc', 'no'),
(1073, 'options_opening_&_closing_time', 'AM 09:00 ~PM 07:00', 'no'),
(1074, '_options_opening_&_closing_time', 'field_5dc691cfb6dcd', 'no'),
(1075, 'options_discription_footer_left_part', 'lorem ipsum dolor sit amet, consecteture adipscing elit', 'no'),
(1076, '_options_discription_footer_left_part', 'field_5dc6920cb6dce', 'no'),
(1077, 'options_footer_column_0_column_title', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', 'no'),
(1078, '_options_footer_column_0_column_title', 'field_5dc69283b6dd0', 'no'),
(1079, 'options_footer_column_0_column_lines_0_title', 'singing karbaki', 'no'),
(1080, '_options_footer_column_0_column_lines_0_title', 'field_5dc692d8b6dd2', 'no'),
(1081, 'options_footer_column_0_column_lines_1_title', 'hot night club', 'no'),
(1082, '_options_footer_column_0_column_lines_1_title', 'field_5dc692d8b6dd2', 'no'),
(1083, 'options_footer_column_0_column_lines', '2', 'no'),
(1084, '_options_footer_column_0_column_lines', 'field_5dc6929fb6dd1', 'no'),
(1085, 'options_footer_column', '3', 'no'),
(1086, '_options_footer_column', 'field_5dc69231b6dcf', 'no'),
(1087, 'options_copyiright', '© theam by copiright (c) JAVA theam all right resverved', 'no'),
(1088, '_options_copyiright', 'field_5dc6a5390c69b', 'no'),
(1089, 'options_symbols_0_symnbls', '<i class=\"fab fa-facebook-f\"></i>', 'no'),
(1090, '_options_symbols_0_symnbls', 'field_5dc69fc5bd330', 'no'),
(1091, 'options_symbols_0_symbol_link', '#', 'no'),
(1092, '_options_symbols_0_symbol_link', 'field_5dc6a03b911d0', 'no'),
(1093, 'options_symbols_1_symnbls', '<i class=\"fab fa-twitter\"></i>', 'no'),
(1094, '_options_symbols_1_symnbls', 'field_5dc69fc5bd330', 'no'),
(1095, 'options_symbols_1_symbol_link', '#', 'no'),
(1096, '_options_symbols_1_symbol_link', 'field_5dc6a03b911d0', 'no'),
(1097, 'options_symbols_2_symnbls', '<i class=\"fab fa-instagram\"></i>', 'no'),
(1098, '_options_symbols_2_symnbls', 'field_5dc69fc5bd330', 'no'),
(1099, 'options_symbols_2_symbol_link', '#', 'no'),
(1100, '_options_symbols_2_symbol_link', 'field_5dc6a03b911d0', 'no'),
(1101, 'options_symbols', '3', 'no'),
(1102, '_options_symbols', 'field_5dc69f8fbd32f', 'no'),
(1103, 'options_footer_column_1_column_title', 'How do you do a copyright symbol on keyboard?', 'no'),
(1104, '_options_footer_column_1_column_title', 'field_5dc69283b6dd0', 'no'),
(1105, 'options_footer_column_1_column_lines', '', 'no'),
(1106, '_options_footer_column_1_column_lines', 'field_5dc6929fb6dd1', 'no'),
(1107, 'options_footer_column_2_column_title', 'Is the copyright symbol copyrighted?', 'no'),
(1108, '_options_footer_column_2_column_title', 'field_5dc69283b6dd0', 'no'),
(1109, 'options_footer_column_2_column_lines', '', 'no'),
(1110, '_options_footer_column_2_column_lines', 'field_5dc6929fb6dd1', 'no'),
(1111, 'options_column_lines', '', 'no'),
(1112, '_options_column_lines', 'field_5dc69f68bd32e', 'no'),
(1113, 'options_auhtor_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'no'),
(1114, '_options_auhtor_description', 'field_5dc6aa797b56f', 'no'),
(1126, 'options_footer_lines_heading_1', 'Section 1.10.32 of \"de Finibus Bonorum et ', 'no'),
(1127, '_options_footer_lines_heading_1', 'field_5dc8f9644d1da', 'no'),
(1128, 'options_footer_lines_heading_2', 'How do you do a copyright symbol on keyboard?', 'no'),
(1129, '_options_footer_lines_heading_2', 'field_5dc8f9edac757', 'no'),
(1130, 'options_footer_lines_heading_3', 'Is the copyright symbol copyrighted?', 'no'),
(1131, '_options_footer_lines_heading_3', 'field_5dc8fa04ac758', 'no'),
(1144, 'options_author_page_banner', '1038', 'no'),
(1145, '_options_author_page_banner', 'field_5dc904a8d346d', 'no'),
(1181, 'options_header_logo', '1', 'no'),
(1182, '_options_header_logo', 'field_5dd7ba2fdac0e', 'no'),
(1183, 'options_footer_logo', '355', 'no'),
(1184, '_options_footer_logo', 'field_5e2aa7a207e30', 'no'),
(1185, 'options_column_1_title', 'Section 1.10.32 of \"de Finibus Bonorum et', 'no'),
(1186, '_options_column_1_title', 'field_5dce95e166c57', 'no'),
(1187, 'options_column_3_title', 'Is the copyright symbol copyrighted?', 'no'),
(1188, '_options_column_3_title', 'field_5dc9198c46eaf', 'no'),
(1189, 'options_banner', '1097', 'no'),
(1190, '_options_banner', 'field_5dca5b5edfae9', 'no'),
(1212, 'options_banner_front_page', '1124', 'no'),
(1213, '_options_banner_front_page', 'field_5dcd1690e2107', 'no'),
(1214, 'options_banner_front', '1123', 'no'),
(1215, '_options_banner_front', 'field_5dcd16b1e2108', 'no'),
(1245, 'options_column_2_title', 'How do you do a copyright symbol on keyboard?', 'no'),
(1246, '_options_column_2_title', 'field_5dce946cb65c7', 'no'),
(1247, 'options_square_button', 'javo', 'no'),
(1248, '_options_square_button', 'field_5dc9198546eae', 'no'),
(1249, 'options_square_button_link', '#', 'no'),
(1250, '_options_square_button_link', 'field_5dce96210d7c4', 'no'),
(1251, 'options_square_button_link_copy', 'javotheam@gmail.com\r\n\r\nAM 09:00 ~PM 07:00\r\n\r\nlorem ipsum dolor sit amet, consecteture adipscing elit', 'no'),
(1252, '_options_square_button_link_copy', 'field_5dce96c0322ad', 'no'),
(1253, 'options_details', 'javotheam@gmail.com\r\n\r\nAM 09:00 ~PM 07:00\r\n\r\nlorem ipsum dolor sit amet, consecteture adipscing elit', 'no'),
(1254, '_options_details', 'field_5dce96c0322ad', 'no'),
(1359, 'theme_mods_insa', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579256966;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"widget-area-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget-area-2\";a:0:{}}}}', 'yes'),
(1366, 'options_address', '<strong>Contact</strong>\r\nSan Antonio Visitor Alliance\r\n110 Broadway\r\nSuite 360\r\nSan Antonio, TX 78205\r\n\r\n<a href=\"tel:210-886-9991\"><strong>Phone: 210-886-9991</strong></a>\r\n<a href=\"mailto:info@savisitoralliance.com\"><strong> Email: info@savisitoralliance.com</strong></a>\r\n\r\nInterested in advertising your business on this\r\nsite? Call us at 210-886-9991 or email us at\r\ninfo@sanantoniotourism.com', 'no'),
(1367, '_options_address', 'field_5dd8c764f7cdb', 'no'),
(1368, 'options_detail', 'Through a united voice, we build value for our members, the industry and the community.\r\nThe San Antonio Visitor Alliance is a private sector organization comprised of hotels, attractions, museums, car rentals agencies, airlines, restaurants, transportation companies, tour operators, meeting planners, vendors and suppliers to the industry and other enterprises that rely on tourists directly or\r\nindirectly for all or part of their business.', 'no'),
(1369, '_options_detail', 'field_5dd8c793f7cdc', 'no'),
(1470, 'theme_mods_life_changer', 'a:4:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580305357;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"widget-area-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget-area-2\";a:0:{}}}}', 'yes'),
(1473, 'options_header_logo_image', '365', 'no'),
(1474, '_options_header_logo_image', 'field_5e21959d4a48a', 'no'),
(1479, 'options_footer_text_area_upper', '<strong>Bryan L. Thomas</strong>\r\nLead Pastor', 'no'),
(1480, '_options_footer_text_area_upper', 'field_5e22af771c994', 'no'),
(1481, 'options_footer_text_area_bottom', 'Service Times:\r\nSaturday 5:30pm\r\nSunday 1:00pm', 'no'),
(1482, '_options_footer_text_area_bottom', 'field_5e22aff11c995', 'no'),
(1483, 'options_footer_text_area_upper_l', '<strong>Bryan L. Thomas</strong>\r\nLead Pastor', 'no'),
(1484, '_options_footer_text_area_upper_l', 'field_5e22af771c994', 'no'),
(1485, 'options_footer_text_area_bottom_l', 'Service Times:\r\nSaturday 5:30pm\r\nSunday 1:00pm', 'no'),
(1486, '_options_footer_text_area_bottom_l', 'field_5e22aff11c995', 'no'),
(1487, 'options_footer_text_area_upper_r_', '<strong>Life Change Church</strong>\r\n901 E Drexel\r\nSan Antonio, TX 78210', 'no'),
(1488, '_options_footer_text_area_upper_r_', 'field_5e22b1c81c6bf', 'no'),
(1489, 'options_footer_text_area_bottom_r', '(210) 534-1764\r\ninfo@lifechangechurch.org', 'no'),
(1490, '_options_footer_text_area_bottom_r', 'field_5e22b1ed1c6c0', 'no'),
(1491, 'options_footer_button_1', 'VOLUNTEER', 'no'),
(1492, '_options_footer_button_1', 'field_5e22b3c89c5ba', 'no'),
(1493, 'options_footer_button_1_link', '#', 'no'),
(1494, '_options_footer_button_1_link', 'field_5e22b42192972', 'no'),
(1495, 'options_footer_button_2', 'GIVE NOW', 'no'),
(1496, '_options_footer_button_2', 'field_5e22b4443e657', 'no'),
(1497, 'options_footer_button_2_link', '#', 'no'),
(1498, '_options_footer_button_2_link', 'field_5e22b44e3e658', 'no'),
(1499, 'options_social_icons_0_social_site_icons', '<i class=\"fab fa-instagram\"></i>', 'no'),
(1500, '_options_social_icons_0_social_site_icons', 'field_5e22b6d343e72', 'no'),
(1501, 'options_social_icons_0_social_site_icons_links', '#', 'no'),
(1502, '_options_social_icons_0_social_site_icons_links', 'field_5e22b6f143e73', 'no'),
(1503, 'options_social_icons_1_social_site_icons', '<i class=\"fab fa-twitter\"></i>', 'no'),
(1504, '_options_social_icons_1_social_site_icons', 'field_5e22b6d343e72', 'no'),
(1505, 'options_social_icons_1_social_site_icons_links', '#', 'no'),
(1506, '_options_social_icons_1_social_site_icons_links', 'field_5e22b6f143e73', 'no'),
(1507, 'options_social_icons_2_social_site_icons', '<i class=\"fab fa-facebook-square\"></i>', 'no'),
(1508, '_options_social_icons_2_social_site_icons', 'field_5e22b6d343e72', 'no'),
(1509, 'options_social_icons_2_social_site_icons_links', '#', 'no'),
(1510, '_options_social_icons_2_social_site_icons_links', 'field_5e22b6f143e73', 'no'),
(1511, 'options_social_icons', '3', 'no'),
(1512, '_options_social_icons', 'field_5e22b6bf43e71', 'no'),
(1513, 'options_underline_text_left', 'Copyright © 2019 Life Change Church. All rights reserved.', 'no'),
(1514, '_options_underline_text_left', 'field_5e22c9294ec93', 'no'),
(1515, 'options_underline_text_right', 'San Antonio Web Design by: J 12 Designs', 'no'),
(1516, '_options_underline_text_right', 'field_5e22c9464ec94', 'no'),
(1600, 'options_home_page_link', '', 'no'),
(1601, '_options_home_page_link', 'field_5e294e0520b30', 'no'),
(1643, 'options_iso_text', 'ISO:27001 CERTIFIED', 'no'),
(1644, '_options_iso_text', 'field_5e2a9d4f97912', 'no'),
(1645, 'options_home_background_image', '356', 'no'),
(1646, '_options_home_background_image', 'field_5e2aa0420a312', 'no'),
(1647, 'options_header_background_image', '439', 'no'),
(1648, '_options_header_background_image', 'field_5e2aa0630a313', 'no'),
(1649, 'options_footer_form', '[contact-form-7 id=\"409\" title=\"verity footer form\"]', 'no'),
(1650, '_options_footer_form', 'field_5e2aa7bd07e31', 'no'),
(1651, 'options_footer_address_list_1', '<div style=\"font-weight: 600;\">Verity Global Solutions LLC.</div>\r\n15926 University Oak,\r\nSan Antonio, TX 78249\r\n\r\n<a class=\"call-logo\" href=\"tel:210 314-2570\">(210) 314-2570</a>\r\n\r\n<a class=\"mail-logo\" href=\"mailto:sales@verityglobalsolutions.com\">sales@verityglobalsolutions.com</a>', 'no'),
(1652, '_options_footer_address_list_1', 'field_5e2aaa6b8d60b', 'no'),
(1653, 'options_footer_address_list_2', '<div style=\"font-weight: 600;\">Verity Careers</div>\r\n402, 4th Floor Synergy Business Park,\r\nGoregaon East, Mumbai, 400063, India\r\n\r\n<a class=\"call-logo\" href=\"tel:+91-84-339 89278\">+91-84-339 89278</a>\r\n<a class=\"call-logo\" href=\"tel:+91-22-682 40000\">+91-22-682 40000</a>\r\n\r\n<a class=\"mail-logo\" href=\"mailto:jobs@verityglobalsolutions.com\">jobs@verityglobalsolutions.com</a>', 'no'),
(1654, '_options_footer_address_list_2', 'field_5e2aaa828d60c', 'no'),
(1655, 'options_footer_list_4', '<div style=\"font-weight: 600;\">Services</div>\r\nLoan Origination Support\r\nQuality Control Services\r\nMortgage Accounting Services\r\nEncompass Help Desk &amp; Programming\r\nOther Mortgage Services\r\nTitle Services', 'no'),
(1656, '_options_footer_list_4', 'field_5e2aabd232fe5', 'no'),
(1657, 'options_footer_list_3_heading', 'Quick Links', 'no'),
(1658, '_options_footer_list_3_heading', 'field_5e2aaff48eb27', 'no'),
(1659, 'options_bottom_line_1', '© 2019 Verity Global Solutions', 'no'),
(1660, '_options_bottom_line_1', 'field_5e2ab2add379e', 'no'),
(1661, 'options_bottom_line_2', 'San Antonio Web Design by: J 12 Designs', 'no'),
(1662, '_options_bottom_line_2', 'field_5e2ab2bfd379f', 'no'),
(1663, 'options_footer_form_heading', 'Contact Verity Global Solutions', 'no'),
(1664, '_options_footer_form_heading', 'field_5e2ac527f3edd', 'no'),
(1693, 'options_footer_logo_link', 'http://localhost/jeremy/?page_id=336', 'no'),
(1694, '_options_footer_logo_link', 'field_5e2dc5ab1f772', 'no'),
(1738, 'theme_mods_verity', 'a:4:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583927418;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"widget-area-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:10:\"calendar-2\";i:2;s:7:\"pages-3\";}s:13:\"widget-area-2\";a:1:{i:0;s:14:\"recent-posts-2\";}s:13:\"widget-area-3\";a:1:{i:0;s:6:\"text-2\";}s:20:\"custom-header-widget\";a:1:{i:0;s:14:\"recent-posts-4\";}s:13:\"custom-widget\";a:1:{i:0;s:10:\"nav_menu-2\";}}}}', 'yes'),
(1953, 'options_header_up_heading', 'Your Expert Mortgage Loan Production Company', 'no'),
(1954, '_options_header_up_heading', 'field_5e590c4dbf900', 'no'),
(1955, 'options_header_heading_down', 'Blog', 'no'),
(1956, '_options_header_heading_down', 'field_5e590c75bf901', 'no'),
(2017, 'theme_mods_SEA', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1607324079;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"pages-3\";i:1;s:10:\"calendar-2\";i:2;s:6:\"text-2\";i:3;s:14:\"recent-posts-4\";i:4;s:10:\"nav_menu-2\";}s:13:\"widget-area-1\";a:2:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";}s:13:\"widget-area-2\";a:0:{}s:13:\"widget-area-3\";a:0:{}s:20:\"custom-header-widget\";N;s:13:\"custom-widget\";N;}}}', 'yes'),
(2024, 'options_header_image_logo', '721', 'no'),
(2025, '_options_header_image_logo', 'field_5e68d1895970c', 'no'),
(2059, 'options_footer_logo_image', '721', 'no'),
(2060, '_options_footer_logo_image', 'field_5e6b2998f3c55', 'no'),
(2061, 'options_footer_left_text_area', '<strong>Sports Engineering Association</strong>\r\nCIN: U92410RJ2019NPL063817\r\n\r\nPhysical Education (SWD) 2103,\r\nBirla Institute of Technology &amp; Science Pilani,\r\nPilani Campus\r\nRajasthan-333031 INDIA', 'no'),
(2062, '_options_footer_left_text_area', 'field_5e6b29b4f3c56', 'no'),
(2063, 'options_footer_center_list_heading', 'Other resources', 'no'),
(2064, '_options_footer_center_list_heading', 'field_5e6b2a58f3c57', 'no'),
(2065, 'options_footer_center_list', '', 'no'),
(2066, '_options_footer_center_list', 'field_5e6b2a6bf3c58', 'no'),
(2067, 'options_footer_right_heading', '<strong>Sign up to the mailing list</strong>\r\n\r\nStay in the loop for all the SEA activities.', 'no'),
(2068, '_options_footer_right_heading', 'field_5e6b2a95647a1', 'no'),
(2069, 'options_social_media_heading', 'Follow us on social media', 'no'),
(2070, '_options_social_media_heading', 'field_5e6b38c783bfb', 'no'),
(2071, 'options_social_media_repeater_0_social_media_repeater_icons', '<i class=\"fab fa-facebook-f\"></i>', 'no'),
(2072, '_options_social_media_repeater_0_social_media_repeater_icons', 'field_5e6b38fe83bfd', 'no'),
(2073, 'options_social_media_repeater_0_social_media_repeater_link', '#', 'no'),
(2074, '_options_social_media_repeater_0_social_media_repeater_link', 'field_5e6b391183bfe', 'no'),
(2075, 'options_social_media_repeater_1_social_media_repeater_icons', '<i class=\"fab fa-google-plus-square\"></i>', 'no'),
(2076, '_options_social_media_repeater_1_social_media_repeater_icons', 'field_5e6b38fe83bfd', 'no'),
(2077, 'options_social_media_repeater_1_social_media_repeater_link', '#', 'no'),
(2078, '_options_social_media_repeater_1_social_media_repeater_link', 'field_5e6b391183bfe', 'no'),
(2079, 'options_social_media_repeater_2_social_media_repeater_icons', '<i class=\"fab fa-instagram\"></i>', 'no'),
(2080, '_options_social_media_repeater_2_social_media_repeater_icons', 'field_5e6b38fe83bfd', 'no'),
(2081, 'options_social_media_repeater_2_social_media_repeater_link', '#', 'no'),
(2082, '_options_social_media_repeater_2_social_media_repeater_link', 'field_5e6b391183bfe', 'no'),
(2083, 'options_social_media_repeater_3_social_media_repeater_icons', '<i class=\"fab fa-linkedin-in\"></i>', 'no'),
(2084, '_options_social_media_repeater_3_social_media_repeater_icons', 'field_5e6b38fe83bfd', 'no'),
(2085, 'options_social_media_repeater_3_social_media_repeater_link', '#', 'no'),
(2086, '_options_social_media_repeater_3_social_media_repeater_link', 'field_5e6b391183bfe', 'no'),
(2087, 'options_social_media_repeater_4_social_media_repeater_icons', '<i class=\"fab fa-youtube\"></i>', 'no'),
(2088, '_options_social_media_repeater_4_social_media_repeater_icons', 'field_5e6b38fe83bfd', 'no'),
(2089, 'options_social_media_repeater_4_social_media_repeater_link', '#', 'no'),
(2090, '_options_social_media_repeater_4_social_media_repeater_link', 'field_5e6b391183bfe', 'no'),
(2091, 'options_social_media_repeater', '5', 'no'),
(2092, '_options_social_media_repeater', 'field_5e6b38de83bfc', 'no'),
(2093, 'options_footer_right_contacts', '<a class=\"call-logo\" href=\"tel:9879878978\">Contact : +91 9879878978</a>\r\n\r\n<a class=\"mail-logo\" href=\"mailto:info@sportsea.org\">Email : info@sportsea.org</a>', 'no'),
(2094, '_options_footer_right_contacts', 'field_5e6b550b948d9', 'no'),
(2095, 'options_footer_bottom_line_left', 'Copyright 2020 Sport engineering association of India', 'no'),
(2096, '_options_footer_bottom_line_left', 'field_5e6b59509eb0b', 'no'),
(2097, 'options_footer_bottom_line_right', 'Web design & development by <a href=\"https://symentix.com\" targe=\"_blank\">Symentix</a>', 'no'),
(2098, '_options_footer_bottom_line_right', 'field_5e6b59669eb0c', 'no'),
(2115, 'category_children', 'a:0:{}', 'yes'),
(2136, 'options_join_us_image', '876', 'no'),
(2137, '_options_join_us_image', 'field_5e6f491d32a24', 'no'),
(2138, 'options_join_us_heading', 'Do you want to join us ?', 'no'),
(2139, '_options_join_us_heading', 'field_5e6f493032a25', 'no'),
(2140, 'options_join_us_btn_', 'Join SEA', 'no'),
(2141, '_options_join_us_btn_', 'field_5e6f493e32a26', 'no'),
(2142, 'options_join_us_btn_link', 'http://localhost/jeremy/?page_id=911', 'no'),
(2143, '_options_join_us_btn_link', 'field_5e6f494e32a27', 'no'),
(2144, 'options_join_us_text_area', 'Details about why join sea and other benefits vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident in short', 'no'),
(2145, '_options_join_us_text_area', 'field_5e6f49f4d20fe', 'no'),
(2146, 'options_sub_header_image', '845', 'no'),
(2147, '_options_sub_header_image', 'field_5e6f50ea10936', 'no'),
(2154, 'options_pink_box_repeater_0_pink_box_img', '904', 'no'),
(2155, '_options_pink_box_repeater_0_pink_box_img', 'field_5e70692dda4d3', 'no');
INSERT INTO `aso_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2156, 'options_pink_box_repeater_0_pink_box_image_name', 'Conferences/Seminars', 'no'),
(2157, '_options_pink_box_repeater_0_pink_box_image_name', 'field_5e706942da4d4', 'no'),
(2158, 'options_pink_box_repeater_1_pink_box_img', '905', 'no'),
(2159, '_options_pink_box_repeater_1_pink_box_img', 'field_5e70692dda4d3', 'no'),
(2160, 'options_pink_box_repeater_1_pink_box_image_name', 'Workshop', 'no'),
(2161, '_options_pink_box_repeater_1_pink_box_image_name', 'field_5e706942da4d4', 'no'),
(2162, 'options_pink_box_repeater_2_pink_box_img', '906', 'no'),
(2163, '_options_pink_box_repeater_2_pink_box_img', 'field_5e70692dda4d3', 'no'),
(2164, 'options_pink_box_repeater_2_pink_box_image_name', 'Research', 'no'),
(2165, '_options_pink_box_repeater_2_pink_box_image_name', 'field_5e706942da4d4', 'no'),
(2166, 'options_pink_box_repeater_3_pink_box_img', '907', 'no'),
(2167, '_options_pink_box_repeater_3_pink_box_img', 'field_5e70692dda4d3', 'no'),
(2168, 'options_pink_box_repeater_3_pink_box_image_name', 'Online quiz', 'no'),
(2169, '_options_pink_box_repeater_3_pink_box_image_name', 'field_5e706942da4d4', 'no'),
(2170, 'options_pink_box_repeater_4_pink_box_img', '908', 'no'),
(2171, '_options_pink_box_repeater_4_pink_box_img', 'field_5e70692dda4d3', 'no'),
(2172, 'options_pink_box_repeater_4_pink_box_image_name', 'Projects', 'no'),
(2173, '_options_pink_box_repeater_4_pink_box_image_name', 'field_5e706942da4d4', 'no'),
(2174, 'options_pink_box_repeater', '5', 'no'),
(2175, '_options_pink_box_repeater', 'field_5e706904da4d1', 'no'),
(2242, 'options_box_title', 'What We Do', 'no'),
(2243, '_options_box_title', 'field_5e7b2a1dbd939', 'no'),
(2279, 'job-functions_children', 'a:0:{}', 'yes'),
(2281, 'location_children', 'a:0:{}', 'yes'),
(2283, 'rcat_children', 'a:0:{}', 'yes'),
(2284, 'blgcat_children', 'a:0:{}', 'yes'),
(2325, 'options_plan_list_0_id', '1', 'no'),
(2326, '_options_plan_list_0_id', 'field_5e9aa36986240', 'no'),
(2327, 'options_plan_list_0_name', 'Annual National Membership', 'no'),
(2328, '_options_plan_list_0_name', 'field_5e9aa37486241', 'no'),
(2329, 'options_plan_list_0_fee', '1000', 'no'),
(2330, '_options_plan_list_0_fee', 'field_5e9aa37986242', 'no'),
(2331, 'options_plan_list_1_id', '2', 'no'),
(2332, '_options_plan_list_1_id', 'field_5e9aa36986240', 'no'),
(2333, 'options_plan_list_1_name', 'Lifetime Membership (onetime payment)', 'no'),
(2334, '_options_plan_list_1_name', 'field_5e9aa37486241', 'no'),
(2335, 'options_plan_list_1_fee', '7000', 'no'),
(2336, '_options_plan_list_1_fee', 'field_5e9aa37986242', 'no'),
(2337, 'options_plan_list_2_id', '3', 'no'),
(2338, '_options_plan_list_2_id', 'field_5e9aa36986240', 'no'),
(2339, 'options_plan_list_2_name', 'Student Membership* (onetime payment)', 'no'),
(2340, '_options_plan_list_2_name', 'field_5e9aa37486241', 'no'),
(2341, 'options_plan_list_2_fee', '500', 'no'),
(2342, '_options_plan_list_2_fee', 'field_5e9aa37986242', 'no'),
(2343, 'options_plan_list', '3', 'no'),
(2344, '_options_plan_list', 'field_5e9aa3618623f', 'no'),
(2448, 'options_interest_list_0_name', 'Mechanical', 'no'),
(2449, '_options_interest_list_0_name', 'field_5eac3f3de6590', 'no'),
(2450, 'options_interest_list_1_name', 'Civil', 'no'),
(2451, '_options_interest_list_1_name', 'field_5eac3f3de6590', 'no'),
(2452, 'options_interest_list_2_name', 'Chemical', 'no'),
(2453, '_options_interest_list_2_name', 'field_5eac3f3de6590', 'no'),
(2454, 'options_interest_list_3_name', 'Computer Science', 'no'),
(2455, '_options_interest_list_3_name', 'field_5eac3f3de6590', 'no'),
(2456, 'options_interest_list_4_name', 'Chemistry', 'no'),
(2457, '_options_interest_list_4_name', 'field_5eac3f3de6590', 'no'),
(2458, 'options_interest_list_5_name', 'Physics', 'no'),
(2459, '_options_interest_list_5_name', 'field_5eac3f3de6590', 'no'),
(2460, 'options_interest_list_6_name', 'Biomechanics', 'no'),
(2461, '_options_interest_list_6_name', 'field_5eac3f3de6590', 'no'),
(2462, 'options_interest_list_7_name', 'Sports Analytics', 'no'),
(2463, '_options_interest_list_7_name', 'field_5eac3f3de6590', 'no'),
(2464, 'options_interest_list_8_name', 'Sports Science', 'no'),
(2465, '_options_interest_list_8_name', 'field_5eac3f3de6590', 'no'),
(2466, 'options_interest_list_9_name', 'Arithmetic', 'no'),
(2467, '_options_interest_list_9_name', 'field_5eac3f3de6590', 'no'),
(2468, 'options_interest_list_10_name', 'Exercise Physiology', 'no'),
(2469, '_options_interest_list_10_name', 'field_5eac3f3de6590', 'no'),
(2470, 'options_interest_list_11_name', 'Physical Education', 'no'),
(2471, '_options_interest_list_11_name', 'field_5eac3f3de6590', 'no'),
(2472, 'options_interest_list_12_name', 'Data Science', 'no'),
(2473, '_options_interest_list_12_name', 'field_5eac3f3de6590', 'no'),
(2474, 'options_interest_list_13_name', 'Artificial Intelligence', 'no'),
(2475, '_options_interest_list_13_name', 'field_5eac3f3de6590', 'no'),
(2476, 'options_interest_list', '14', 'no'),
(2477, '_options_interest_list', 'field_5eac3f3de658e', 'no'),
(2567, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1674635903;s:7:\"checked\";a:1:{s:6:\"jeremy\";s:5:\"1.4.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(2577, 'theme_mods_custom', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1674635951;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"pages-3\";i:1;s:10:\"calendar-2\";i:2;s:6:\"text-2\";i:3;s:14:\"recent-posts-4\";i:4;s:10:\"nav_menu-2\";}s:13:\"widget-area-1\";a:2:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";}s:13:\"widget-area-2\";a:0:{}s:13:\"widget-area-3\";a:0:{}}}}', 'yes'),
(2578, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2580, '_transient_timeout_acf_plugin_updates', '1674808700', 'no'),
(2581, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.7\";}}', 'no'),
(2582, 'wp_page_for_privacy_policy', '0', 'yes'),
(2583, 'show_comments_cookies_opt_in', '1', 'yes'),
(2584, 'admin_email_lifespan', '0', 'yes'),
(2585, 'disallowed_keys', '', 'no'),
(2586, 'comment_previously_approved', '1', 'yes'),
(2587, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(2588, 'auto_update_core_dev', 'enabled', 'yes'),
(2589, 'auto_update_core_minor', 'enabled', 'yes'),
(2590, 'auto_update_core_major', 'unset', 'yes'),
(2591, 'finished_updating_comment_type', '1', 'yes'),
(2594, 'db_upgraded', '', 'yes'),
(2595, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:7:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.1\";s:7:\"version\";s:3:\"6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.3\";s:7:\"version\";s:5:\"6.0.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.5-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.5\";s:7:\"version\";s:5:\"5.9.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.6\";s:7:\"version\";s:5:\"5.8.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.8-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.8-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.8-rollback-4.zip\";}s:7:\"current\";s:5:\"5.7.8\";s:7:\"version\";s:5:\"5.7.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:5:\"5.7.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1674635904;s:15:\"version_checked\";s:5:\"5.7.4\";s:12:\"translations\";a:0:{}}', 'no'),
(2597, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1674635905;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}', 'no'),
(2598, 'recovery_keys', 'a:0:{}', 'yes'),
(2599, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:17:\"bad_response_code\";a:1:{i:0;s:9:\"Not Found\";}}', 'yes'),
(2600, '_site_transient_timeout_available_translations', '1674646718', 'no');
INSERT INTO `aso_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2601, '_site_transient_available_translations', 'a:127:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-12-17 11:49:28\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-14 14:01:58\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.22/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-20 19:46:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-25 07:27:37\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-07-06 08:29:04\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-30 15:14:54\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-07-19 10:54:01\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-12-12 13:38:23\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-09-10 20:58:59\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.7.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-08 07:32:43\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-03-14 20:06:23\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-03-14 20:06:52\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.7.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-09-10 20:59:36\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-15 13:33:04\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.4/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-12-06 23:30:14\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-15 04:12:51\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-15 04:12:28\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-15 04:12:40\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-16 08:10:36\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-15 07:22:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-09-26 17:28:36\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-15 02:05:34\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-16 13:07:32\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-09-08 09:07:54\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-02 03:00:51\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-10-07 09:21:07\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-15 02:05:15\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-16 02:17:21\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:6:\"5.6.10\";s:7:\"updated\";s:19:\"2020-12-11 02:12:59\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.6.10/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.17/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-10-14 12:40:18\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2020-08-12 08:33:42\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-11-05 13:45:47\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-08-20 15:43:06\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-28 10:15:19\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-05-06 05:21:48\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-24 08:28:29\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-12-07 15:48:06\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-08-09 08:24:51\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.29\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.29/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-05-28 16:42:59\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-05-13 08:03:31\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-15 13:34:18\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.4/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-26 14:52:10\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-24 02:11:27\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-07-24 17:20:09\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-09-03 00:25:42\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-07-03 08:25:10\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-30 20:40:17\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.4/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.17/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2021-10-03 06:15:17\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-07-08 04:56:41\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-17 10:36:11\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.4/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-27 17:07:17\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.11\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.11/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.34\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.34/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-09-01 14:13:48\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2020-05-31 16:07:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.17/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-05-10 14:42:01\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.7.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-12-06 13:56:23\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-18 08:55:40\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2022-01-05 07:10:01\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.30\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.30/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-07-20 18:29:14\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.7.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-07-20 18:36:04\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-02 12:53:00\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-05-30 09:51:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2022-01-05 17:51:37\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-12-16 23:37:43\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.12/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-07-11 15:17:09\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-04-23 11:54:14\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.4/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:6:\"5.1.14\";s:7:\"updated\";s:19:\"2019-04-30 13:03:56\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.1.14/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-12-02 19:05:37\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-14 19:47:34\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-07-02 21:27:49\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.14\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.14/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.34\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.34/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"5.6.10\";s:7:\"updated\";s:19:\"2022-06-07 09:52:43\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6.10/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.21/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-05-23 09:26:34\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-07-24 15:34:57\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.12/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-05-23 07:16:16\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-11-16 01:46:58\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-06-15 12:16:10\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.7.4\";s:7:\"updated\";s:19:\"2021-09-17 18:17:09\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `aso_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2603, 'can_compress_scripts', '1', 'no'),
(2604, 'new_admin_email', 'james@j12designs.com', 'yes'),
(2607, 'theme_mods_jeremy', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(2610, '_site_transient_timeout_theme_roots', '1674639946', 'no'),
(2611, '_site_transient_theme_roots', 'a:1:{s:6:\"jeremy\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `aso_postmeta`
--

CREATE TABLE `aso_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aso_postmeta`
--

INSERT INTO `aso_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4650, 717, '_edit_lock', '1607324041:5'),
(4651, 717, '_edit_last', '5'),
(4687, 722, '_edit_lock', '1607324412:5'),
(4688, 722, '_edit_last', '5'),
(4689, 722, '_wp_page_template', 'index.php'),
(4690, 724, '_menu_item_type', 'post_type'),
(4691, 724, '_menu_item_menu_item_parent', '0'),
(4692, 724, '_menu_item_object_id', '722'),
(4693, 724, '_menu_item_object', 'page'),
(4694, 724, '_menu_item_target', ''),
(4695, 724, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(4696, 724, '_menu_item_xfn', ''),
(4697, 724, '_menu_item_url', ''),
(4717, 727, '_menu_item_type', 'custom'),
(4718, 727, '_menu_item_menu_item_parent', '0'),
(4719, 727, '_menu_item_object_id', '727'),
(4720, 727, '_menu_item_object', 'custom'),
(4721, 727, '_menu_item_target', ''),
(4722, 727, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(4723, 727, '_menu_item_xfn', ''),
(4724, 727, '_menu_item_url', '#'),
(4744, 730, '_edit_lock', '1607324392:5'),
(4745, 730, '_edit_last', '5'),
(4746, 722, 'section_first_image', '743'),
(4747, 722, '_section_first_image', 'field_5e68d87c30a99'),
(4748, 722, 'section_first_heading', ''),
(4749, 722, '_section_first_heading', 'field_5e68d88d30a9a'),
(4750, 722, 'section_first_btn_text', ''),
(4751, 722, '_section_first_btn_text', 'field_5e68d8be82222'),
(4752, 722, 'section_first_btn_link', '#'),
(4753, 722, '_section_first_btn_link', 'field_5e68d8da82223'),
(4788, 722, 'section_second_image', '739'),
(4789, 722, '_section_second_image', 'field_5e6a28575f9d9'),
(4790, 722, 'section_second_textarea', ''),
(4791, 722, '_section_second_textarea', 'field_5e6a28755f9da'),
(4840, 722, 'section_third_image', '740'),
(4841, 722, '_section_third_image', 'field_5e6a2c69780f1'),
(4842, 722, 'section_third_text_area', ''),
(4843, 722, '_section_third_text_area', 'field_5e6a2c75780f2'),
(4876, 722, 'section_fourth_heading', 'Activities'),
(4877, 722, '_section_fourth_heading', 'field_5e6a32edf62d3'),
(4896, 764, '_edit_lock', '1584020580:4'),
(4897, 764, '_edit_last', '4'),
(4899, 765, '_edit_lock', '1584020576:4'),
(4900, 765, '_edit_last', '4'),
(4902, 722, 'section_fifth_heading', ''),
(4903, 722, '_section_fifth_heading', 'field_5e6b1e853b0e7'),
(4912, 722, 'section_fifth_repeater', ''),
(4913, 722, '_section_fifth_repeater', 'field_5e6b1e9a3b0e8'),
(5174, 787, '_menu_item_type', 'custom'),
(5175, 787, '_menu_item_menu_item_parent', '0'),
(5176, 787, '_menu_item_object_id', '787'),
(5177, 787, '_menu_item_object', 'custom'),
(5178, 787, '_menu_item_target', ''),
(5179, 787, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5180, 787, '_menu_item_xfn', ''),
(5181, 787, '_menu_item_url', '#'),
(5183, 788, '_menu_item_type', 'custom'),
(5184, 788, '_menu_item_menu_item_parent', '0'),
(5185, 788, '_menu_item_object_id', '788'),
(5186, 788, '_menu_item_object', 'custom'),
(5187, 788, '_menu_item_target', ''),
(5188, 788, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5189, 788, '_menu_item_xfn', ''),
(5190, 788, '_menu_item_url', '#'),
(5192, 789, '_menu_item_type', 'custom'),
(5193, 789, '_menu_item_menu_item_parent', '0'),
(5194, 789, '_menu_item_object_id', '789'),
(5195, 789, '_menu_item_object', 'custom'),
(5196, 789, '_menu_item_target', ''),
(5197, 789, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5198, 789, '_menu_item_xfn', ''),
(5199, 789, '_menu_item_url', '#'),
(5201, 790, '_menu_item_type', 'custom'),
(5202, 790, '_menu_item_menu_item_parent', '0'),
(5203, 790, '_menu_item_object_id', '790'),
(5204, 790, '_menu_item_object', 'custom'),
(5205, 790, '_menu_item_target', ''),
(5206, 790, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5207, 790, '_menu_item_xfn', ''),
(5208, 790, '_menu_item_url', '#'),
(5210, 791, '_menu_item_type', 'custom'),
(5211, 791, '_menu_item_menu_item_parent', '0'),
(5212, 791, '_menu_item_object_id', '791'),
(5213, 791, '_menu_item_object', 'custom'),
(5214, 791, '_menu_item_target', ''),
(5215, 791, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5216, 791, '_menu_item_xfn', ''),
(5217, 791, '_menu_item_url', '#'),
(5219, 792, '_menu_item_type', 'custom'),
(5220, 792, '_menu_item_menu_item_parent', '0'),
(5221, 792, '_menu_item_object_id', '792'),
(5222, 792, '_menu_item_object', 'custom'),
(5223, 792, '_menu_item_target', ''),
(5224, 792, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5225, 792, '_menu_item_xfn', ''),
(5226, 792, '_menu_item_url', '#'),
(5228, 793, '_menu_item_type', 'custom'),
(5229, 793, '_menu_item_menu_item_parent', '0'),
(5230, 793, '_menu_item_object_id', '793'),
(5231, 793, '_menu_item_object', 'custom'),
(5232, 793, '_menu_item_target', ''),
(5233, 793, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5234, 793, '_menu_item_xfn', ''),
(5235, 793, '_menu_item_url', '#'),
(5237, 794, '_menu_item_type', 'custom'),
(5238, 794, '_menu_item_menu_item_parent', '0'),
(5239, 794, '_menu_item_object_id', '794'),
(5240, 794, '_menu_item_object', 'custom'),
(5241, 794, '_menu_item_target', ''),
(5242, 794, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(5243, 794, '_menu_item_xfn', ''),
(5244, 794, '_menu_item_url', '#'),
(6501, 968, '_edit_lock', '1607323583:5'),
(6502, 968, '_edit_last', '1'),
(6503, 968, '_wp_page_template', 'contact-us.php'),
(6506, 968, 'page_heading', 'Contact Us'),
(6507, 968, '_page_heading', 'field_5e70723008a6e'),
(6508, 968, 'contact_us_heading', 'Sports Engineering Association'),
(6509, 968, '_contact_us_heading', 'field_5e70734308a6f'),
(6510, 968, 'contact_us_heading_2', 'CIN: U92410RJ2019NPL063817'),
(6511, 968, '_contact_us_heading_2', 'field_5e70736808a70'),
(6512, 968, 'contact_us_contact_form', '[contact-form-7 id=\"976\" title=\"contact us form SEA\"]'),
(6513, 968, '_contact_us_contact_form', 'field_5e70738508a71'),
(6538, 978, '_menu_item_type', 'post_type'),
(6539, 978, '_menu_item_menu_item_parent', '0'),
(6540, 978, '_menu_item_object_id', '968'),
(6541, 978, '_menu_item_object', 'page'),
(6542, 978, '_menu_item_target', ''),
(6543, 978, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(6544, 978, '_menu_item_xfn', ''),
(6545, 978, '_menu_item_url', ''),
(6663, 993, '_edit_lock', '1585130306:1'),
(6664, 993, '_edit_last', '1'),
(6665, 993, '_wp_page_template', 'about-us.php'),
(6668, 993, 'header_banner', ''),
(6669, 993, '_header_banner', 'field_5e7a4cbf510c3'),
(6670, 993, 'header_title', 'About Us'),
(6671, 993, '_header_title', 'field_5e7a4cd0510c4'),
(6676, 968, 'header_banner', ''),
(6677, 968, '_header_banner', 'field_5e7a4cbf510c3'),
(6678, 968, 'header_title', 'Contact Us'),
(6679, 968, '_header_title', 'field_5e7a4cd0510c4'),
(7205, 722, 'section_repeater_0_image', '1036'),
(7206, 722, '_section_repeater_0_image', 'field_5e7b40846435a'),
(7207, 722, 'section_repeater_0_title', ''),
(7208, 722, '_section_repeater_0_title', 'field_5e7b408f6435b'),
(7209, 722, 'section_repeater_0_details', ''),
(7210, 722, '_section_repeater_0_details', 'field_5e7b409c6435c'),
(7211, 722, 'section_repeater_1_image', '1038'),
(7212, 722, '_section_repeater_1_image', 'field_5e7b40846435a'),
(7213, 722, 'section_repeater_1_title', ''),
(7214, 722, '_section_repeater_1_title', 'field_5e7b408f6435b'),
(7215, 722, 'section_repeater_1_details', ''),
(7216, 722, '_section_repeater_1_details', 'field_5e7b409c6435c'),
(7217, 722, 'section_repeater', '2'),
(7218, 722, '_section_repeater', 'field_5e7b407164359'),
(7219, 722, 'header_banner', ''),
(7220, 722, '_header_banner', 'field_5e7a4cbf510c3'),
(7221, 722, 'header_title', ''),
(7222, 722, '_header_title', 'field_5e7a4cd0510c4'),
(7295, 722, 'section_page_link', 'http://localhost/jeremy/?page_id=911'),
(7296, 722, '_section_page_link', 'field_5e7b49f09b0ec'),
(9736, 1064, '_edit_lock', '1586774505:1'),
(9737, 1064, '_edit_last', '1'),
(9741, 1074, '_edit_lock', '1586775130:1'),
(9742, 1074, '_edit_last', '1'),
(9743, 1075, '_edit_lock', '1586775141:1'),
(9744, 1075, '_edit_last', '1'),
(9745, 1076, '_edit_lock', '1586775152:1'),
(9746, 1076, '_edit_last', '1'),
(9928, 1108, 'first_name', 'Dashrath'),
(9929, 1108, '_first_name', 'field_5e986745565ca'),
(9930, 1108, 'last_name', 'Singh'),
(9931, 1108, '_last_name', 'field_5e986745565cb'),
(9932, 1108, 'email', 'dashrath009@gmail.com'),
(9933, 1108, '_email', 'field_5e98675c565cc'),
(9934, 1108, 'contact', '7877188110'),
(9935, 1108, '_contact', 'field_5e986761565cd'),
(9936, 1108, 'designation', 'Software Engineer'),
(9937, 1108, '_designation', 'field_5e98676c565cf'),
(9938, 1108, 'institute', 'BITS'),
(9939, 1108, '_institute', 'field_5e986767565ce'),
(9940, 1108, 'insterest', 'Computer Science'),
(9941, 1108, '_insterest', 'field_5e986771565d0'),
(9942, 1108, 'plan_id', '2'),
(9943, 1108, '_plan_id', 'field_5e9aa5fec97da'),
(9944, 1108, 'plan_name', 'Lifetime Membership (onetime payment) (7000/-) '),
(9945, 1108, '_plan_name', 'field_5e9aa626c97db'),
(9946, 1108, '_edit_lock', '1587213853:1'),
(9947, 1108, 'payment_id', 'a7bcefc28bbc4275b4d874fd52c16326'),
(9948, 1108, 'longurl', 'https://www.instamojo.com/@sportsea/a7bcefc28bbc4275b4d874fd52c16326'),
(9949, 1108, 'created_at', '2020-04-18T13:03:15.786215Z'),
(9950, 1108, 'payment_status', 'Requested'),
(9951, 1109, 'first_name', 'Dashrath'),
(9952, 1109, '_first_name', 'field_5e986745565ca'),
(9953, 1109, 'last_name', 'Singh'),
(9954, 1109, '_last_name', 'field_5e986745565cb'),
(9955, 1109, 'email', 'dashrath008@gmail.com'),
(9956, 1109, '_email', 'field_5e98675c565cc'),
(9957, 1109, 'contact', '7877188110'),
(9958, 1109, '_contact', 'field_5e986761565cd'),
(9959, 1109, 'designation', 'SE'),
(9960, 1109, '_designation', 'field_5e98676c565cf'),
(9961, 1109, 'institute', 'BITS'),
(9962, 1109, '_institute', 'field_5e986767565ce'),
(9963, 1109, 'insterest', 'Computer Science'),
(9964, 1109, '_insterest', 'field_5e986771565d0'),
(9965, 1109, 'plan_id', '3'),
(9966, 1109, '_plan_id', 'field_5e9aa5fec97da'),
(9967, 1109, 'plan_name', 'Student Membership* (onetime payment) (500/-) '),
(9968, 1109, '_plan_name', 'field_5e9aa626c97db'),
(9969, 1109, '_edit_lock', '1587498506:1'),
(9970, 1109, 'payment_id', 'bedbbe836d7f47108b74aa21cc81c48c'),
(9971, 1109, 'longurl', 'https://www.instamojo.com/@sportsea/bedbbe836d7f47108b74aa21cc81c48c'),
(9972, 1109, 'created_at', '2020-04-18T13:26:49.721072Z'),
(9973, 1109, 'payment_status', 'Requested'),
(9974, 1110, 'first_name', 'ss'),
(9975, 1110, '_first_name', 'field_5e986745565ca'),
(9976, 1110, 'last_name', 'ss'),
(9977, 1110, '_last_name', 'field_5e986745565cb'),
(9978, 1110, 'email', 'ss@ff.gg'),
(9979, 1110, '_email', 'field_5e98675c565cc'),
(9980, 1110, 'contact', '345534534'),
(9981, 1110, '_contact', 'field_5e986761565cd'),
(9982, 1110, 'designation', 'fff'),
(9983, 1110, '_designation', 'field_5e98676c565cf'),
(9984, 1110, 'institute', 'fff'),
(9985, 1110, '_institute', 'field_5e986767565ce'),
(9986, 1110, 'insterest', '-Select Interest-'),
(9987, 1110, '_insterest', 'field_5e986771565d0'),
(9988, 1110, 'plan_id', '1'),
(9989, 1110, '_plan_id', 'field_5e9aa5fec97da'),
(9990, 1110, 'plan_name', 'Annual National Membership (1000/-) '),
(9991, 1110, '_plan_name', 'field_5e9aa626c97db'),
(10084, 1110, '_edit_lock', '1587665625:1'),
(10109, 1135, 'field_5e9b0a520f6c5', 'das'),
(10110, 1135, '_field_5e9b0a520f6c5', ''),
(10111, 1135, 'field_5e9b0a640f6c6', 's'),
(10112, 1135, '_field_5e9b0a640f6c6', ''),
(10113, 1135, 'field_5e9b0a6a0f6c7', 'das@sds.ff'),
(10114, 1135, '_field_5e9b0a6a0f6c7', ''),
(10115, 1135, 'field_5e9b0a700f6c8', '34535345345'),
(10116, 1135, '_field_5e9b0a700f6c8', ''),
(10117, 1135, 'field_5e9b0a7d0f6ca', 'desig'),
(10118, 1135, '_field_5e9b0a7d0f6ca', ''),
(10119, 1135, 'field_5e9b0a760f6c9', 'inst'),
(10120, 1135, '_field_5e9b0a760f6c9', ''),
(10121, 1135, 'field_5e9b0a850f6cb', 'Mechanical'),
(10122, 1135, '_field_5e9b0a850f6cb', ''),
(10123, 1135, 'field_5e9b0a8b0f6cc', '3'),
(10124, 1135, '_field_5e9b0a8b0f6cc', ''),
(10125, 1135, 'field_5e9b0a9e0f6cd', 'Student Membership* (onetime payment)                                    (500/-)\n                                '),
(10126, 1135, '_field_5e9b0a9e0f6cd', ''),
(10127, 1135, 'doc_1', '1132'),
(10128, 1135, '_doc_1', 'field_5e9f3e01f1552'),
(10129, 1135, 'doc_2', '1133'),
(10130, 1135, '_doc_2', 'field_5e9f3e32f1553'),
(10131, 1135, 'doc_3', '1134'),
(10132, 1135, '_doc_3', 'field_5e9f3e4ff1554'),
(10133, 1135, '_edit_lock', '1587665710:1'),
(10189, 1165, 'field_5e9b0a520f6c5', 'dsa'),
(10190, 1165, '_field_5e9b0a520f6c5', ''),
(10191, 1165, 'field_5e9b0a640f6c6', 'das'),
(10192, 1165, '_field_5e9b0a640f6c6', ''),
(10193, 1165, 'field_5e9b0a6a0f6c7', 'das@ff.gg'),
(10194, 1165, '_field_5e9b0a6a0f6c7', ''),
(10195, 1165, 'field_5e9b0a700f6c8', '7897978979'),
(10196, 1165, '_field_5e9b0a700f6c8', ''),
(10197, 1165, 'field_5e9b0a7d0f6ca', 'dd'),
(10198, 1165, '_field_5e9b0a7d0f6ca', ''),
(10199, 1165, 'field_5e9b0a760f6c9', 'ii'),
(10200, 1165, '_field_5e9b0a760f6c9', ''),
(10201, 1165, 'field_5e9b0a850f6cb', 'Civil'),
(10202, 1165, '_field_5e9b0a850f6cb', ''),
(10203, 1165, 'field_5e9b0a8b0f6cc', '1'),
(10204, 1165, '_field_5e9b0a8b0f6cc', ''),
(10205, 1165, 'field_5e9b0a9e0f6cd', 'Annual National Membership                                    (1000/-)\n                                '),
(10206, 1165, '_field_5e9b0a9e0f6cd', ''),
(10207, 1165, 'field_5ea1dc3b44753', '1163'),
(10208, 1165, '_field_5ea1dc3b44753', ''),
(10209, 1165, 'field_5ea1dc5544754', '1164'),
(10210, 1165, '_field_5ea1dc5544754', ''),
(10211, 1165, 'field_5ea1dc6f44755', ''),
(10212, 1165, '_field_5ea1dc6f44755', ''),
(10213, 1165, 'is_activated', '0'),
(10214, 1165, 'activationcode', 'e74c01629072d4528920c446c3e1e19a'),
(10225, 1171, 'field_5e9b0a520f6c5', 'vvv'),
(10226, 1171, '_field_5e9b0a520f6c5', ''),
(10227, 1171, 'field_5e9b0a640f6c6', 'vv'),
(10228, 1171, '_field_5e9b0a640f6c6', ''),
(10229, 1171, 'field_5e9b0a6a0f6c7', 'vv@tgm.hh'),
(10230, 1171, '_field_5e9b0a6a0f6c7', ''),
(10231, 1171, 'field_5e9b0a700f6c8', 'vv'),
(10232, 1171, '_field_5e9b0a700f6c8', ''),
(10233, 1171, 'field_5e9b0a7d0f6ca', 'vv'),
(10234, 1171, '_field_5e9b0a7d0f6ca', ''),
(10235, 1171, 'field_5e9b0a760f6c9', 'ddd'),
(10236, 1171, '_field_5e9b0a760f6c9', ''),
(10237, 1171, 'field_5e9b0a850f6cb', 'Computer Science'),
(10238, 1171, '_field_5e9b0a850f6cb', ''),
(10239, 1171, 'field_5e9b0a8b0f6cc', '3'),
(10240, 1171, '_field_5e9b0a8b0f6cc', ''),
(10241, 1171, 'field_5e9b0a9e0f6cd', 'Student Membership* (onetime payment)                                    (500/-)\n                                '),
(10242, 1171, '_field_5e9b0a9e0f6cd', ''),
(10243, 1171, 'field_5ea1dc3b44753', '1168'),
(10244, 1171, '_field_5ea1dc3b44753', ''),
(10245, 1171, 'field_5ea1dc5544754', '1169'),
(10246, 1171, '_field_5ea1dc5544754', ''),
(10247, 1171, 'field_5ea1dc6f44755', '1170'),
(10248, 1171, '_field_5ea1dc6f44755', ''),
(10249, 1171, 'is_activated', '0'),
(10250, 1171, 'activationcode', '7def8d0ea0e2d4702eaae8c54b92ab56'),
(10257, 1175, 'field_5e9b0a520f6c5', 'das'),
(10258, 1175, '_field_5e9b0a520f6c5', ''),
(10259, 1175, 'field_5e9b0a640f6c6', 'das'),
(10260, 1175, '_field_5e9b0a640f6c6', ''),
(10261, 1175, 'field_5e9b0a6a0f6c7', 'da32@ff.bhh'),
(10262, 1175, '_field_5e9b0a6a0f6c7', ''),
(10263, 1175, 'field_5e9b0a700f6c8', '234234234'),
(10264, 1175, '_field_5e9b0a700f6c8', ''),
(10265, 1175, 'field_5e9b0a7d0f6ca', 'de'),
(10266, 1175, '_field_5e9b0a7d0f6ca', ''),
(10267, 1175, 'field_5e9b0a760f6c9', 'ins'),
(10268, 1175, '_field_5e9b0a760f6c9', ''),
(10269, 1175, 'field_5e9b0a850f6cb', 'Mechanical'),
(10270, 1175, '_field_5e9b0a850f6cb', ''),
(10271, 1175, 'field_5e9b0a8b0f6cc', '3'),
(10272, 1175, '_field_5e9b0a8b0f6cc', ''),
(10273, 1175, 'field_5e9b0a9e0f6cd', 'Student Membership* (onetime payment)                                    (500/-)\n                                '),
(10274, 1175, '_field_5e9b0a9e0f6cd', ''),
(10275, 1175, 'field_5ea1dc3b44753', '1172'),
(10276, 1175, '_field_5ea1dc3b44753', ''),
(10277, 1175, 'field_5ea1dc5544754', '1173'),
(10278, 1175, '_field_5ea1dc5544754', ''),
(10279, 1175, 'field_5ea1dc6f44755', '1174'),
(10280, 1175, '_field_5ea1dc6f44755', ''),
(10281, 1175, 'is_activated', '0'),
(10282, 1175, 'activationcode', '4d28419644cac3ea58d74319ae351a1b'),
(10297, 1181, 'field_5e9b0a520f6c5', 'adas'),
(10298, 1181, '_field_5e9b0a520f6c5', ''),
(10299, 1181, 'field_5e9b0a640f6c6', 'dada'),
(10300, 1181, '_field_5e9b0a640f6c6', ''),
(10301, 1181, 'field_5e9b0a6a0f6c7', 'da@dsd.fff'),
(10302, 1181, '_field_5e9b0a6a0f6c7', ''),
(10303, 1181, 'field_5e9b0a700f6c8', '3242452345'),
(10304, 1181, '_field_5e9b0a700f6c8', ''),
(10305, 1181, 'field_5e9b0a7d0f6ca', 'asdasdf'),
(10306, 1181, '_field_5e9b0a7d0f6ca', ''),
(10307, 1181, 'field_5e9b0a760f6c9', 'ffff'),
(10308, 1181, '_field_5e9b0a760f6c9', ''),
(10309, 1181, 'field_5e9b0a850f6cb', 'Mechanical'),
(10310, 1181, '_field_5e9b0a850f6cb', ''),
(10311, 1181, 'field_5e9b0a8b0f6cc', '2'),
(10312, 1181, '_field_5e9b0a8b0f6cc', ''),
(10313, 1181, 'field_5e9b0a9e0f6cd', 'Lifetime Membership (onetime payment)                                    (7000/-)\n                                '),
(10314, 1181, '_field_5e9b0a9e0f6cd', ''),
(10315, 1181, 'field_5ea1dc3b44753', '1179'),
(10316, 1181, '_field_5ea1dc3b44753', ''),
(10317, 1181, 'field_5ea1dc5544754', '1180'),
(10318, 1181, '_field_5ea1dc5544754', ''),
(10319, 1181, 'field_5ea1dc6f44755', ''),
(10320, 1181, '_field_5ea1dc6f44755', ''),
(10321, 1181, 'is_activated', '0'),
(10322, 1181, 'activationcode', '18548c3d76a34f6f033259206d7a0810'),
(10327, 1184, 'field_5e9b0a520f6c5', 'xcvxcvx'),
(10328, 1184, '_field_5e9b0a520f6c5', ''),
(10329, 1184, 'field_5e9b0a640f6c6', 'cvxcvxc'),
(10330, 1184, '_field_5e9b0a640f6c6', ''),
(10331, 1184, 'field_5e9b0a6a0f6c7', 'v@dcc.fff'),
(10332, 1184, '_field_5e9b0a6a0f6c7', ''),
(10333, 1184, 'field_5e9b0a700f6c8', '3454365464'),
(10334, 1184, '_field_5e9b0a700f6c8', ''),
(10335, 1184, 'field_5e9b0a7d0f6ca', 'ada'),
(10336, 1184, '_field_5e9b0a7d0f6ca', ''),
(10337, 1184, 'field_5e9b0a760f6c9', 'dff'),
(10338, 1184, '_field_5e9b0a760f6c9', ''),
(10339, 1184, 'field_5e9b0a850f6cb', 'Artificial Intelligence'),
(10340, 1184, '_field_5e9b0a850f6cb', ''),
(10341, 1184, 'field_5e9b0a8b0f6cc', '1'),
(10342, 1184, '_field_5e9b0a8b0f6cc', ''),
(10343, 1184, 'field_5e9b0a9e0f6cd', 'Annual National Membership                                    (1000/-)\n                                '),
(10344, 1184, '_field_5e9b0a9e0f6cd', ''),
(10345, 1184, 'field_5ea1dc3b44753', '1182'),
(10346, 1184, '_field_5ea1dc3b44753', ''),
(10347, 1184, 'field_5ea1dc5544754', '1183'),
(10348, 1184, '_field_5ea1dc5544754', ''),
(10349, 1184, 'field_5ea1dc6f44755', ''),
(10350, 1184, '_field_5ea1dc6f44755', ''),
(10351, 1184, 'is_activated', '0'),
(10352, 1184, 'activationcode', 'cfe9c2edba22c017b34b9874ff8251f7'),
(10357, 1187, 'field_5e9b0a520f6c5', 'das'),
(10358, 1187, '_field_5e9b0a520f6c5', ''),
(10359, 1187, 'field_5e9b0a640f6c6', 'das'),
(10360, 1187, '_field_5e9b0a640f6c6', ''),
(10361, 1187, 'field_5e9b0a6a0f6c7', 'das@gfh.ggg'),
(10362, 1187, '_field_5e9b0a6a0f6c7', ''),
(10363, 1187, 'field_5e9b0a700f6c8', '5435354'),
(10364, 1187, '_field_5e9b0a700f6c8', ''),
(10365, 1187, 'field_5e9b0a7d0f6ca', 'da'),
(10366, 1187, '_field_5e9b0a7d0f6ca', ''),
(10367, 1187, 'field_5e9b0a760f6c9', 'da'),
(10368, 1187, '_field_5e9b0a760f6c9', ''),
(10369, 1187, 'field_5e9b0a850f6cb', 'Mechanical'),
(10370, 1187, '_field_5e9b0a850f6cb', ''),
(10371, 1187, 'field_5e9b0a8b0f6cc', '1'),
(10372, 1187, '_field_5e9b0a8b0f6cc', ''),
(10373, 1187, 'field_5e9b0a9e0f6cd', 'Annual National Membership                                    (1000/-)\n                                '),
(10374, 1187, '_field_5e9b0a9e0f6cd', ''),
(10375, 1187, 'field_5ea1dc3b44753', '1185'),
(10376, 1187, '_field_5ea1dc3b44753', ''),
(10377, 1187, 'field_5ea1dc5544754', '1186'),
(10378, 1187, '_field_5ea1dc5544754', ''),
(10379, 1187, 'field_5ea1dc6f44755', ''),
(10380, 1187, '_field_5ea1dc6f44755', ''),
(10381, 1187, 'is_activated', '0'),
(10382, 1187, 'activationcode', 'cbe387d337a88375155840896f514485'),
(10385, 1189, 'field_5e9b0a520f6c5', 'ddd'),
(10386, 1189, '_field_5e9b0a520f6c5', ''),
(10387, 1189, 'field_5e9b0a640f6c6', 'dd'),
(10388, 1189, '_field_5e9b0a640f6c6', ''),
(10389, 1189, 'field_5e9b0a6a0f6c7', 'dd@fff.ccc'),
(10390, 1189, '_field_5e9b0a6a0f6c7', ''),
(10391, 1189, 'field_5e9b0a700f6c8', '345345345'),
(10392, 1189, '_field_5e9b0a700f6c8', ''),
(10393, 1189, 'field_5e9b0a7d0f6ca', 'ffas'),
(10394, 1189, '_field_5e9b0a7d0f6ca', ''),
(10395, 1189, 'field_5e9b0a760f6c9', 'fff'),
(10396, 1189, '_field_5e9b0a760f6c9', ''),
(10397, 1189, 'field_5e9b0a850f6cb', 'Civil'),
(10398, 1189, '_field_5e9b0a850f6cb', ''),
(10399, 1189, 'field_5e9b0a8b0f6cc', '1'),
(10400, 1189, '_field_5e9b0a8b0f6cc', ''),
(10401, 1189, 'field_5e9b0a9e0f6cd', 'Annual National Membership                                    (1000/-)\n                                '),
(10402, 1189, '_field_5e9b0a9e0f6cd', ''),
(10403, 1189, 'field_5ea1dc3b44753', '1188'),
(10404, 1189, '_field_5ea1dc3b44753', ''),
(10405, 1189, 'field_5ea1dc5544754', '1186'),
(10406, 1189, '_field_5ea1dc5544754', ''),
(10407, 1189, 'field_5ea1dc6f44755', ''),
(10408, 1189, '_field_5ea1dc6f44755', ''),
(10409, 1189, 'is_activated', '0'),
(10410, 1189, 'activationcode', '16520c0f6a7a14687fa01601a1b93e28'),
(10413, 1191, 'field_5e9b0a520f6c5', 'fff'),
(10414, 1191, '_field_5e9b0a520f6c5', ''),
(10415, 1191, 'field_5e9b0a640f6c6', 'fff'),
(10416, 1191, '_field_5e9b0a640f6c6', ''),
(10417, 1191, 'field_5e9b0a6a0f6c7', 'fff@fff.fff'),
(10418, 1191, '_field_5e9b0a6a0f6c7', ''),
(10419, 1191, 'field_5e9b0a700f6c8', 'f'),
(10420, 1191, '_field_5e9b0a700f6c8', ''),
(10421, 1191, 'field_5e9b0a7d0f6ca', 'fff'),
(10422, 1191, '_field_5e9b0a7d0f6ca', ''),
(10423, 1191, 'field_5e9b0a760f6c9', 'fff'),
(10424, 1191, '_field_5e9b0a760f6c9', ''),
(10425, 1191, 'field_5e9b0a850f6cb', 'Civil'),
(10426, 1191, '_field_5e9b0a850f6cb', ''),
(10427, 1191, 'field_5e9b0a8b0f6cc', '2'),
(10428, 1191, '_field_5e9b0a8b0f6cc', ''),
(10429, 1191, 'field_5e9b0a9e0f6cd', 'Lifetime Membership (onetime payment)                                    (7000/-)\n                                '),
(10430, 1191, '_field_5e9b0a9e0f6cd', ''),
(10431, 1191, 'field_5ea1dc3b44753', '1190'),
(10432, 1191, '_field_5ea1dc3b44753', ''),
(10433, 1191, 'field_5ea1dc5544754', '1186'),
(10434, 1191, '_field_5ea1dc5544754', ''),
(10435, 1191, 'field_5ea1dc6f44755', ''),
(10436, 1191, '_field_5ea1dc6f44755', ''),
(10437, 1191, 'is_activated', '0'),
(10438, 1191, 'activationcode', 'c38c4bc0a468756dd710637c416901d4'),
(10445, 1195, 'field_5e9b0a520f6c5', 'das'),
(10446, 1195, '_field_5e9b0a520f6c5', ''),
(10447, 1195, 'field_5e9b0a640f6c6', 'dad'),
(10448, 1195, '_field_5e9b0a640f6c6', ''),
(10449, 1195, 'field_5e9b0a6a0f6c7', 'ad@ff.hh'),
(10450, 1195, '_field_5e9b0a6a0f6c7', ''),
(10451, 1195, 'field_5e9b0a700f6c8', '5644566'),
(10452, 1195, '_field_5e9b0a700f6c8', ''),
(10453, 1195, 'field_5e9b0a7d0f6ca', 'fg'),
(10454, 1195, '_field_5e9b0a7d0f6ca', ''),
(10455, 1195, 'field_5e9b0a760f6c9', 'ggg'),
(10456, 1195, '_field_5e9b0a760f6c9', ''),
(10457, 1195, 'field_5e9b0a850f6cb', 'Mechanical'),
(10458, 1195, '_field_5e9b0a850f6cb', ''),
(10459, 1195, 'field_5e9b0a8b0f6cc', '3'),
(10460, 1195, '_field_5e9b0a8b0f6cc', ''),
(10461, 1195, 'field_5e9b0a9e0f6cd', 'Student Membership* (onetime payment)                                    (500/-)\n                                '),
(10462, 1195, '_field_5e9b0a9e0f6cd', ''),
(10463, 1195, 'field_5ea1dc3b44753', '1192'),
(10464, 1195, '_field_5ea1dc3b44753', ''),
(10465, 1195, 'field_5ea1dc5544754', '1193'),
(10466, 1195, '_field_5ea1dc5544754', ''),
(10467, 1195, 'field_5ea1dc6f44755', '1194'),
(10468, 1195, '_field_5ea1dc6f44755', ''),
(10469, 1195, 'is_activated', '0'),
(10470, 1195, 'activationcode', '6d0d31b1e3472e7d66e07e96dede9bd5'),
(10475, 1198, 'field_5e9b0a520f6c5', 'ddd'),
(10476, 1198, '_field_5e9b0a520f6c5', ''),
(10477, 1198, 'field_5e9b0a640f6c6', 'ddd'),
(10478, 1198, '_field_5e9b0a640f6c6', ''),
(10479, 1198, 'field_5e9b0a6a0f6c7', 'd@dd.gtg'),
(10480, 1198, '_field_5e9b0a6a0f6c7', ''),
(10481, 1198, 'field_5e9b0a700f6c8', '5353535345'),
(10482, 1198, '_field_5e9b0a700f6c8', ''),
(10483, 1198, 'field_5e9b0a7d0f6ca', 'fff'),
(10484, 1198, '_field_5e9b0a7d0f6ca', ''),
(10485, 1198, 'field_5e9b0a760f6c9', 'fff'),
(10486, 1198, '_field_5e9b0a760f6c9', ''),
(10487, 1198, 'field_5e9b0a850f6cb', 'Data Science'),
(10488, 1198, '_field_5e9b0a850f6cb', ''),
(10489, 1198, 'field_5e9b0a8b0f6cc', '1'),
(10490, 1198, '_field_5e9b0a8b0f6cc', ''),
(10491, 1198, 'field_5e9b0a9e0f6cd', 'Annual National Membership                                    (1000/-)\n                                '),
(10492, 1198, '_field_5e9b0a9e0f6cd', ''),
(10493, 1198, 'field_5ea1dc3b44753', '1196'),
(10494, 1198, '_field_5ea1dc3b44753', ''),
(10495, 1198, 'field_5ea1dc5544754', '1197'),
(10496, 1198, '_field_5ea1dc5544754', ''),
(10497, 1198, 'field_5ea1dc6f44755', ''),
(10498, 1198, '_field_5ea1dc6f44755', ''),
(10499, 1198, 'is_activated', '0'),
(10500, 1198, 'activationcode', 'aae0582b01d4b03ceb7b594eb36af806'),
(10503, 1198, '_wp_desired_post_slug', 'request-from-ddd-ddd-ddd-gtg'),
(10506, 1195, '_wp_desired_post_slug', 'request-from-das-dad-adff-hh'),
(10509, 1191, '_wp_desired_post_slug', 'request-from-fff-fff-ffffff-fff'),
(10512, 1189, '_wp_desired_post_slug', 'request-from-ddd-dd-ddfff-ccc'),
(10515, 1187, '_wp_desired_post_slug', 'request-from-das-das-dasgfh-ggg'),
(10518, 1184, '_wp_desired_post_slug', 'request-from-xcvxcvx-cvxcvxc-vdcc-fff'),
(10521, 1181, '_wp_desired_post_slug', 'request-from-adas-dada-dadsd-fff'),
(10524, 1175, '_wp_desired_post_slug', 'request-from-das-das-da32ff-bhh'),
(10527, 1171, '_wp_desired_post_slug', 'request-from-vvv-vv-vvtgm-hh'),
(10530, 1165, '_wp_desired_post_slug', 'request-from-dsa-das-dasff-gg'),
(10533, 1135, '_wp_desired_post_slug', 'request-from-das-s-dassds-ff'),
(10536, 1110, '_wp_desired_post_slug', 'request-from-ss-ss-ssff-gg'),
(10539, 1109, '_wp_desired_post_slug', 'request-from-dashrath-singh-dashrath008gmail-com'),
(10542, 1108, '_wp_desired_post_slug', 'request-from-dashrath-singh-dashrath009gmail-com'),
(10792, 1205, 'section_first_image', '743'),
(10793, 1205, '_section_first_image', 'field_5e68d87c30a99'),
(10794, 1205, 'section_first_heading', ''),
(10795, 1205, '_section_first_heading', 'field_5e68d88d30a9a'),
(10796, 1205, 'section_first_btn_text', ''),
(10797, 1205, '_section_first_btn_text', 'field_5e68d8be82222'),
(10798, 1205, 'section_first_btn_link', '#'),
(10799, 1205, '_section_first_btn_link', 'field_5e68d8da82223'),
(10800, 1205, 'section_second_image', '739'),
(10801, 1205, '_section_second_image', 'field_5e6a28575f9d9'),
(10802, 1205, 'section_second_textarea', ''),
(10803, 1205, '_section_second_textarea', 'field_5e6a28755f9da'),
(10804, 1205, 'section_third_image', '740'),
(10805, 1205, '_section_third_image', 'field_5e6a2c69780f1'),
(10806, 1205, 'section_third_text_area', ''),
(10807, 1205, '_section_third_text_area', 'field_5e6a2c75780f2'),
(10808, 1205, 'section_fourth_heading', 'Activities'),
(10809, 1205, '_section_fourth_heading', 'field_5e6a32edf62d3'),
(10810, 1205, 'section_fifth_heading', ''),
(10811, 1205, '_section_fifth_heading', 'field_5e6b1e853b0e7'),
(10812, 1205, 'section_fifth_repeater', ''),
(10813, 1205, '_section_fifth_repeater', 'field_5e6b1e9a3b0e8'),
(10814, 1205, 'section_repeater_0_image', '1036'),
(10815, 1205, '_section_repeater_0_image', 'field_5e7b40846435a'),
(10816, 1205, 'section_repeater_0_title', ''),
(10817, 1205, '_section_repeater_0_title', 'field_5e7b408f6435b'),
(10818, 1205, 'section_repeater_0_details', ''),
(10819, 1205, '_section_repeater_0_details', 'field_5e7b409c6435c'),
(10820, 1205, 'section_repeater_1_image', '1038'),
(10821, 1205, '_section_repeater_1_image', 'field_5e7b40846435a'),
(10822, 1205, 'section_repeater_1_title', ''),
(10823, 1205, '_section_repeater_1_title', 'field_5e7b408f6435b'),
(10824, 1205, 'section_repeater_1_details', ''),
(10825, 1205, '_section_repeater_1_details', 'field_5e7b409c6435c'),
(10826, 1205, 'section_repeater', '2'),
(10827, 1205, '_section_repeater', 'field_5e7b407164359'),
(10828, 1205, 'header_banner', ''),
(10829, 1205, '_header_banner', 'field_5e7a4cbf510c3'),
(10830, 1205, 'header_title', ''),
(10831, 1205, '_header_title', 'field_5e7a4cd0510c4'),
(10832, 1205, 'section_page_link', 'http://localhost/jeremy/?page_id=911'),
(10833, 1205, '_section_page_link', 'field_5e7b49f09b0ec'),
(10836, 730, '_wp_desired_post_slug', 'group_5e68d85dc0936'),
(10837, 1, '_edit_last', '5'),
(10838, 1, '_edit_lock', '1674637991:5'),
(10839, 8, '_edit_lock', '1674638018:5'),
(10840, 8, '_wp_page_template', 'index.php');

-- --------------------------------------------------------

--
-- Table structure for table `aso_posts`
--

CREATE TABLE `aso_posts` (
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
-- Dumping data for table `aso_posts`
--

INSERT INTO `aso_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 5, '2023-01-25 08:40:15', '2023-01-25 08:40:15', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Option Section', 'option-section', 'publish', 'closed', 'closed', '', 'group_63d0eabfaaf6f', '', '', '2023-01-25 09:15:30', '2023-01-25 09:15:30', '', 0, 'http://localhost/jeremy/?post_type=acf-field-group&#038;p=1', 0, 'acf-field-group', '', 0),
(2, 5, '2023-01-25 08:40:15', '2023-01-25 08:40:15', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Header Section', 'header_logo', 'publish', 'closed', 'closed', '', 'field_63d0eac04fb07', '', '', '2023-01-25 08:40:15', '2023-01-25 08:40:15', '', 1, 'http://localhost/jeremy/?post_type=acf-field&p=2', 0, 'acf-field', '', 0),
(3, 5, '2023-01-25 09:15:30', '2023-01-25 09:15:30', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Header Logo', 'header_logo', 'publish', 'closed', 'closed', '', 'field_63d0f289e8352', '', '', '2023-01-25 09:15:30', '2023-01-25 09:15:30', '', 1, 'http://localhost/jeremy/?post_type=acf-field&p=3', 1, 'acf-field', '', 0),
(4, 5, '2023-01-25 09:15:30', '2023-01-25 09:15:30', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Favicon Png', 'favicon_png', 'publish', 'closed', 'closed', '', 'field_63d0f29ee8353', '', '', '2023-01-25 09:15:30', '2023-01-25 09:15:30', '', 1, 'http://localhost/jeremy/?post_type=acf-field&p=4', 2, 'acf-field', '', 0),
(5, 5, '2023-01-25 09:15:30', '2023-01-25 09:15:30', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'CSS Text Area', 'css_text_area', 'publish', 'closed', 'closed', '', 'field_63d0f2bce8354', '', '', '2023-01-25 09:15:30', '2023-01-25 09:15:30', '', 1, 'http://localhost/jeremy/?post_type=acf-field&p=5', 3, 'acf-field', '', 0),
(6, 5, '2023-01-25 09:15:30', '2023-01-25 09:15:30', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer Section', 'footer_section', 'publish', 'closed', 'closed', '', 'field_63d0f2efe8355', '', '', '2023-01-25 09:15:30', '2023-01-25 09:15:30', '', 1, 'http://localhost/jeremy/?post_type=acf-field&p=6', 4, 'acf-field', '', 0),
(7, 5, '2023-01-25 09:15:30', '2023-01-25 09:15:30', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Footer Logo', 'footer_logo', 'publish', 'closed', 'closed', '', 'field_63d0f2ffe8356', '', '', '2023-01-25 09:15:30', '2023-01-25 09:15:30', '', 1, 'http://localhost/jeremy/?post_type=acf-field&p=7', 5, 'acf-field', '', 0),
(8, 5, '2023-01-25 09:15:59', '2023-01-25 09:15:59', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2023-01-25 09:15:59', '2023-01-25 09:15:59', '', 0, 'http://localhost/jeremy/?page_id=8', 0, 'page', '', 0),
(9, 5, '2023-01-25 09:15:59', '2023-01-25 09:15:59', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-01-25 09:15:59', '2023-01-25 09:15:59', '', 8, 'http://localhost/jeremy/?p=9', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `aso_termmeta`
--

CREATE TABLE `aso_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aso_terms`
--

CREATE TABLE `aso_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aso_terms`
--

INSERT INTO `aso_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'header menu', 'header-menu', 0),
(2, 'footer menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `aso_term_relationships`
--

CREATE TABLE `aso_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aso_term_relationships`
--

INSERT INTO `aso_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(724, 12, 0),
(727, 12, 0),
(787, 13, 0),
(788, 13, 0),
(789, 13, 0),
(790, 13, 0),
(791, 13, 0),
(792, 13, 0),
(793, 13, 0),
(794, 13, 0),
(978, 12, 0),
(1074, 20, 0),
(1075, 21, 0),
(1076, 20, 0),
(1076, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aso_term_taxonomy`
--

CREATE TABLE `aso_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aso_term_taxonomy`
--

INSERT INTO `aso_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(2, 41, 'post_tag', '', 0, 0),
(11, 50, 'category', '', 0, 0),
(12, 51, 'nav_menu', '', 0, 3),
(13, 52, 'nav_menu', '', 0, 8),
(14, 53, 'category', '', 0, 0),
(15, 54, 'blgcat', '', 0, 0),
(16, 55, 'blgcat', '', 0, 0),
(17, 56, 'job-functions', '', 0, 0),
(18, 57, 'location', '', 0, 0),
(19, 58, 'location', '', 0, 0),
(20, 59, 'rcat', '', 0, 2),
(21, 60, 'rcat', '', 0, 2),
(22, 1, 'nav_menu', '', 0, 0),
(23, 2, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aso_usermeta`
--

CREATE TABLE `aso_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aso_usermeta`
--

INSERT INTO `aso_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(149, 5, 'nickname', 'admin'),
(150, 5, 'first_name', ''),
(151, 5, 'last_name', ''),
(152, 5, 'description', ''),
(153, 5, 'rich_editing', 'true'),
(154, 5, 'comment_shortcuts', 'false'),
(155, 5, 'admin_color', 'fresh'),
(156, 5, 'use_ssl', '0'),
(157, 5, 'show_admin_bar_front', 'true'),
(158, 5, 'locale', ''),
(159, 5, 'aso_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(160, 5, 'aso_user_level', '0'),
(161, 5, 'default_password_nag', '1'),
(162, 5, 'session_tokens', 'a:1:{s:64:\"83a3d18d1955b3fb4e0e46b6e85ef172643991699d29c6ae6e45969e9f805946\";a:4:{s:10:\"expiration\";i:1674808714;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1674635914;}}'),
(163, 5, 'aso_dashboard_quick_press_last_post_id', '1203'),
(164, 5, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(165, 5, 'acf_user_settings', 'a:0:{}'),
(166, 5, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(167, 5, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `aso_users`
--

CREATE TABLE `aso_users` (
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
-- Dumping data for table `aso_users`
--

INSERT INTO `aso_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(5, 'admin', '$P$Bj1ZgT.GsJTPjT25JPXhMkkKGtCZyd.', 'admin', 'dashrath009@gmail.com', '', '2020-12-07 06:41:35', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aso_commentmeta`
--
ALTER TABLE `aso_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aso_comments`
--
ALTER TABLE `aso_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `aso_links`
--
ALTER TABLE `aso_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `aso_options`
--
ALTER TABLE `aso_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `aso_postmeta`
--
ALTER TABLE `aso_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aso_posts`
--
ALTER TABLE `aso_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `aso_termmeta`
--
ALTER TABLE `aso_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aso_terms`
--
ALTER TABLE `aso_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `aso_term_relationships`
--
ALTER TABLE `aso_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `aso_term_taxonomy`
--
ALTER TABLE `aso_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `aso_usermeta`
--
ALTER TABLE `aso_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aso_users`
--
ALTER TABLE `aso_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aso_commentmeta`
--
ALTER TABLE `aso_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aso_comments`
--
ALTER TABLE `aso_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aso_links`
--
ALTER TABLE `aso_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aso_options`
--
ALTER TABLE `aso_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2614;

--
-- AUTO_INCREMENT for table `aso_postmeta`
--
ALTER TABLE `aso_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10841;

--
-- AUTO_INCREMENT for table `aso_posts`
--
ALTER TABLE `aso_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `aso_termmeta`
--
ALTER TABLE `aso_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aso_terms`
--
ALTER TABLE `aso_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aso_term_taxonomy`
--
ALTER TABLE `aso_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `aso_usermeta`
--
ALTER TABLE `aso_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `aso_users`
--
ALTER TABLE `aso_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
