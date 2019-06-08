-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 08, 2019 lúc 07:23 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bachdatan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'rating', '5'),
(2, 1, 'verified', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1412, 'test', 'ectasy1703@gmail.com', '', '127.0.0.1', '2017-05-25 14:42:21', '2017-05-25 07:42:21', 'test', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'review', 0, 0),
(4, 1465, 'WooCommerce', '', '', '', '2017-05-27 14:04:06', '2017-05-27 07:04:06', 'Đang chờ kiểm tra thanh toán Trạng thái đơn hàng đã được chuyển từ Pending payment sang On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) DEFAULT NULL,
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/bachdatan', 'yes'),
(2, 'home', 'http://localhost/bachdatan', 'yes'),
(3, 'blogname', 'Bách Đạt An', 'yes'),
(4, 'blogdescription', 'Vững hiện tại, dựng tương lai', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ectasy1703@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:39:\"categories-images/categories-images.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:21:\"meta-box/meta-box.php\";i:4;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:5;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '/chuyen-muc', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '7', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:63:\"D:\\xampp\\htdocs\\bachdatan/wp-content/themes/bachdatan/style.css\";i:2;s:97:\"/home/vgroupdeco/domains/vietgroupdecor.vn/public_html/wp-content/themes/vietgroupdecor/index.php\";i:3;s:102:\"/home/vgroupdeco/domains/vietgroupdecor.vn/public_html/wp-content/themes/vietgroupdecor/front-page.php\";i:4;s:97:\"/home/vgroupdeco/domains/vietgroupdecor.vn/public_html/wp-content/themes/vietgroupdecor/style.css\";i:5;s:106:\"D:\\Program Files (x86)\\EasyPHP-12.1\\www\\matonghoathiennhien/wp-content/plugins/woocommerce/woocommerce.php\";}', 'no'),
(41, 'template', 'bachdatan', 'yes'),
(42, 'stylesheet', 'bachdatan', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '44719', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '0', 'yes'),
(60, 'thumbnail_size_h', '0', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '0', 'yes'),
(63, 'medium_size_h', '0', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '0', 'yes'),
(66, 'large_size_h', '0', 'yes'),
(67, 'image_default_link_type', '', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:3:{s:35:\"seo-redirection/seo-redirection.php\";s:14:\"WPSR_uninstall\";s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31533', 'yes'),
(89, 'wp_user_roles', 'a:10:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:134:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;s:10:\"loco_admin\";b:1;s:20:\"wpseo_manage_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(90, 'WPLANG', 'vi', 'yes'),
(91, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:1:{i:0;s:13:\"custom_html-3\";}s:15:\"footer-widget-2\";a:1:{i:0;s:13:\"custom_html-4\";}s:15:\"footer-widget-3\";a:1:{i:0;s:13:\"custom_html-5\";}s:15:\"footer-widget-4\";a:1:{i:0;s:13:\"custom_html-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(99, 'cron', 'a:9:{i:1559974356;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1559974371;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1559974387;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559974603;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1559979706;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560046012;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560046604;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560046834;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, '_transient_random_seed', 'b1d93cb099709af3deb8641ff11ba025', 'yes'),
(130, 'db_upgraded', '', 'yes'),
(141, 'theme_mods_twentyfifteen', 'a:2:{s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1477365657;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-7\";i:1;s:6:\"text-8\";i:2;s:6:\"text-9\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(142, 'current_theme', 'Bách Đạt An', 'yes'),
(143, 'theme_mods_vivatran', 'a:5:{i:0;b:0;s:16:\"background_color\";s:6:\"ffffff\";s:12:\"header_image\";s:13:\"remove-header\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1455684509;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:24:\"dazzling_tabbed_widget-2\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:1:{i:0;s:6:\"text-2\";}s:15:\"footer-widget-2\";a:1:{i:0;s:6:\"text-3\";}s:15:\"footer-widget-3\";a:1:{i:0;s:6:\"text-4\";}}}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(162, 'dazzling', 'a:46:{s:24:\"dazzling_slider_checkbox\";s:1:\"1\";s:25:\"dazzling_slide_categories\";s:3:\"461\";s:21:\"dazzling_slide_number\";s:1:\"3\";s:11:\"site_layout\";s:9:\"pull-left\";s:13:\"element_color\";s:7:\"#0054a5\";s:19:\"element_color_hover\";s:7:\"#f82a08\";s:14:\"custom_favicon\";s:0:\"\";s:12:\"w2f_cfa_text\";s:0:\"\";s:14:\"w2f_cfa_button\";s:0:\"\";s:12:\"w2f_cfa_link\";s:0:\"\";s:9:\"cfa_color\";s:7:\"#ffffff\";s:12:\"cfa_bg_color\";s:7:\"#106ec8\";s:13:\"cfa_btn_color\";s:7:\"#106ec8\";s:17:\"cfa_btn_txt_color\";s:7:\"#ffffff\";s:20:\"main_body_typography\";a:4:{s:4:\"size\";s:4:\"15px\";s:4:\"face\";s:5:\"arial\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#444444\";}s:13:\"heading_color\";s:0:\"\";s:10:\"link_color\";s:7:\"#f82a08\";s:16:\"link_hover_color\";s:7:\"#0054a5\";s:17:\"link_active_color\";s:0:\"\";s:16:\"top_nav_bg_color\";s:0:\"\";s:18:\"top_nav_link_color\";s:0:\"\";s:19:\"top_nav_dropdown_bg\";s:0:\"\";s:21:\"top_nav_dropdown_item\";s:0:\"\";s:22:\"footer_widget_bg_color\";s:0:\"\";s:15:\"footer_bg_color\";s:0:\"\";s:17:\"footer_text_color\";s:0:\"\";s:17:\"footer_link_color\";s:0:\"\";s:18:\"custom_footer_text\";s:0:\"\";s:12:\"social_color\";s:0:\"\";s:18:\"social_hover_color\";s:0:\"\";s:15:\"social_facebook\";s:0:\"\";s:14:\"social_twitter\";s:0:\"\";s:17:\"social_googleplus\";s:0:\"\";s:14:\"social_youtube\";s:0:\"\";s:15:\"social_linkedin\";s:0:\"\";s:16:\"social_pinterest\";s:0:\"\";s:10:\"social_rss\";s:0:\"\";s:13:\"social_tumblr\";s:0:\"\";s:13:\"social_flickr\";s:0:\"\";s:16:\"social_instagram\";s:0:\"\";s:15:\"social_dribbble\";s:0:\"\";s:12:\"social_skype\";s:0:\"\";s:13:\"social_github\";s:0:\"\";s:17:\"social_slideshare\";s:0:\"\";s:9:\"social_vk\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";}', 'yes'),
(171, 'widget_dazzling_tabbed_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(327, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"11.3\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";b:0;s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:0;s:18:\"first_activated_on\";i:1494575769;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(329, 'wpseo_titles', 'a:90:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:0:\"\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:70:\"Từ khóa tìm kiếm: %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:45:\"Không tìm thấy trang %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:1;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:0;s:23:\"is-media-purge-relevant\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:1;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:27:\"http://localhost/bachdatan/\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:1;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:0;s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:16:\"showdate-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:26:\"post_types-product-maintax\";i:0;s:23:\"title-ptarchive-product\";s:54:\"Lưu trữ %%pt_plural%% %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-product\";s:0:\"\";s:25:\"bctitle-ptarchive-product\";s:0:\"\";s:25:\"noindex-ptarchive-product\";b:0;s:21:\"title-tax-product_cat\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:23:\"noindex-tax-product_cat\";b:0;s:29:\"taxonomy-product_cat-ptparent\";i:0;s:21:\"title-tax-product_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:23:\"noindex-tax-product_tag\";b:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:32:\"title-tax-product_shipping_class\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:34:\"noindex-tax-product_shipping_class\";b:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;}', 'yes'),
(330, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:7:\"summary\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(334, 'recently_activated', 'a:0:{}', 'yes'),
(338, '_transient_yoast_i18n_wordpress-seo_promo_hide', '1', 'yes'),
(747, 'wpseo_taxonomy_meta', 'a:2:{s:8:\"category\";a:9:{i:335;a:5:{s:11:\"wpseo_title\";s:88:\"Blog du lịch - Những tin tức mới nhất luôn được cập nhật nhanh nhất\";s:10:\"wpseo_desc\";s:160:\"Tất cả mọi tin tức du lịch mới nhất luôn được đại lý vé máy bay Air India cập nhật nhanh nhất trong chuyên mục Blog du lịch.\";s:13:\"wpseo_focuskw\";s:9:\"du lịch\";s:13:\"wpseo_linkdex\";s:2:\"43\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:2;a:4:{s:11:\"wpseo_title\";s:71:\"Vé máy bay khuyến mãi - giá siêu rẻ tại đại lý Air India\";s:10:\"wpseo_desc\";s:188:\"Thường xuyên cập nhật những thông tin về các chương trình bán vé máy bay khuyến mãi tại đại lý Air India để mua được những tấm vé rẻ nhất nhé.\";s:13:\"wpseo_linkdex\";s:2:\"40\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:3;a:5:{s:11:\"wpseo_title\";s:92:\"Vé máy bay nội địa - giá rẻ và khuyến mãi chỉ có tại đại lý Air India\";s:10:\"wpseo_desc\";s:168:\"Đến đại lý Air India để có cơ hội sở hữu những tấm vé máy bay nội địa với các mức giá khuyến mãi cực kỳ rẻ. Nhanh lên nào!\";s:13:\"wpseo_focuskw\";s:25:\"vé máy bay nội địa\";s:13:\"wpseo_linkdex\";s:2:\"47\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:4;a:5:{s:11:\"wpseo_title\";s:95:\"Vé máy bay quốc tế - nhiều mức giá siêu rẻ - chỉ có tại đại lý Air India\";s:10:\"wpseo_desc\";s:170:\"Cùng đặt ngay vé máy bay quốc tế tại đại lý Air India để mua được vé rẻ nhất và tiết kiệm nhất. Liên hệ với chúng tôi ngay nào!\";s:13:\"wpseo_focuskw\";s:24:\"vé máy bay quốc tế\";s:13:\"wpseo_linkdex\";s:2:\"47\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:462;a:2:{s:13:\"wpseo_linkdex\";s:2:\"26\";s:19:\"wpseo_content_score\";s:2:\"60\";}i:463;a:2:{s:13:\"wpseo_linkdex\";s:2:\"47\";s:19:\"wpseo_content_score\";s:2:\"60\";}i:464;a:2:{s:13:\"wpseo_linkdex\";s:2:\"40\";s:19:\"wpseo_content_score\";s:2:\"60\";}i:468;a:2:{s:13:\"wpseo_linkdex\";s:2:\"29\";s:19:\"wpseo_content_score\";s:2:\"60\";}i:470;a:2:{s:13:\"wpseo_linkdex\";s:2:\"29\";s:19:\"wpseo_content_score\";s:2:\"60\";}}s:11:\"product_cat\";a:4:{i:440;a:2:{s:13:\"wpseo_linkdex\";s:2:\"17\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:453;a:2:{s:13:\"wpseo_linkdex\";s:2:\"17\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:454;a:2:{s:13:\"wpseo_linkdex\";s:2:\"17\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:455;a:2:{s:13:\"wpseo_linkdex\";s:2:\"11\";s:19:\"wpseo_content_score\";s:2:\"30\";}}}', 'yes'),
(1070, 'wpseo-gsc-refresh_token', '1/94FD_NeHqnzTK-PRISeUgr3D51mEdSzXtcJsVRtHeEZIgOrJDtdun6zK6XiATCKT', 'yes'),
(1071, 'wpseo-gsc-access_token', 'a:5:{s:13:\"refresh_token\";s:66:\"1/94FD_NeHqnzTK-PRISeUgr3D51mEdSzXtcJsVRtHeEZIgOrJDtdun6zK6XiATCKT\";s:12:\"access_token\";s:132:\"ya29.Gl1WBDfRTfliLsZs6GhRTBrP4Ngae42aboTvEgsqmUbDITkpq0LWzy1rt3_Nes2fo7HFWMQh9mnIYYRiP_36TyleJfsN0o3jj_XOMFmYJyHzfkHNBTq8O2k8VJTw9Rw\";s:7:\"expires\";i:1495822919;s:10:\"expires_in\";i:3600;s:7:\"created\";i:1495794119;}', 'yes'),
(1072, 'wpseo-gsc', 'a:1:{s:7:\"profile\";s:27:\"http://localhost/bachdatan/\";}', 'yes'),
(1077, 'wpseo_gsc_issues_counts', 'a:3:{s:3:\"web\";a:6:{s:9:\"not_found\";a:2:{s:5:\"count\";i:11;s:10:\"last_fetch\";i:1441076864;}s:12:\"not_followed\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:13:\"access_denied\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:12:\"server_error\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:8:\"soft_404\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:5:\"other\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}}s:6:\"mobile\";a:5:{s:9:\"not_found\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:12:\"not_followed\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:13:\"access_denied\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:12:\"server_error\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:5:\"other\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}}s:15:\"smartphone_only\";a:8:{s:9:\"not_found\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:12:\"not_followed\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:13:\"access_denied\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:12:\"server_error\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:8:\"soft_404\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:7:\"roboted\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:16:\"faulty_redirects\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}s:5:\"other\";a:2:{s:5:\"count\";s:1:\"0\";s:10:\"last_fetch\";N;}}}', 'yes'),
(1155, 'wpseo-gsc-issues-web-not_found', 'a:11:{i:0;a:6:{s:3:\"url\";s:37:\"/dai-ly-ve-may-bay-huyen-hoc-mon.html\";s:14:\"first_detected\";s:8:\"08/13/15\";s:18:\"first_detected_raw\";s:10:\"1439503397\";s:12:\"last_crawled\";s:8:\"08/13/15\";s:16:\"last_crawled_raw\";s:10:\"1439503397\";s:13:\"response_code\";i:404;}i:1;a:6:{s:3:\"url\";s:30:\"/ve-may-bay-di-can-tho-gia-re/\";s:14:\"first_detected\";s:8:\"08/26/15\";s:18:\"first_detected_raw\";s:10:\"1440632717\";s:12:\"last_crawled\";s:8:\"08/26/15\";s:16:\"last_crawled_raw\";s:10:\"1440632717\";s:13:\"response_code\";i:404;}i:2;a:6:{s:3:\"url\";s:41:\"/ve-may-bay-di-canada-gia-re/%20%E2%80%8E\";s:14:\"first_detected\";s:8:\"08/28/15\";s:18:\"first_detected_raw\";s:10:\"1440795670\";s:12:\"last_crawled\";s:8:\"08/28/15\";s:16:\"last_crawled_raw\";s:10:\"1440795670\";s:13:\"response_code\";i:404;}i:3;a:6:{s:3:\"url\";s:26:\"/mo-dai-ly-ve-may-bay.html\";s:14:\"first_detected\";s:8:\"08/18/15\";s:18:\"first_detected_raw\";s:10:\"1439874054\";s:12:\"last_crawled\";s:8:\"08/24/15\";s:16:\"last_crawled_raw\";s:10:\"1440417863\";s:13:\"response_code\";i:404;}i:4;a:6:{s:3:\"url\";s:13:\"/%20%E2%80%8E\";s:14:\"first_detected\";s:8:\"08/28/15\";s:18:\"first_detected_raw\";s:10:\"1440730989\";s:12:\"last_crawled\";s:8:\"08/29/15\";s:16:\"last_crawled_raw\";s:10:\"1440818640\";s:13:\"response_code\";i:404;}i:5;a:6:{s:3:\"url\";s:30:\"/dai-ly-ve-may-bay-quan-7.html\";s:14:\"first_detected\";s:8:\"08/30/15\";s:18:\"first_detected_raw\";s:10:\"1440900531\";s:12:\"last_crawled\";s:8:\"08/31/15\";s:16:\"last_crawled_raw\";s:10:\"1440999223\";s:13:\"response_code\";i:404;}i:6;a:6:{s:3:\"url\";s:39:\"/ve-may-bay-di-phap-gia-re/%20%E2%80%8E\";s:14:\"first_detected\";s:8:\"08/28/15\";s:18:\"first_detected_raw\";s:10:\"1440788086\";s:12:\"last_crawled\";s:8:\"08/28/15\";s:16:\"last_crawled_raw\";s:10:\"1440788086\";s:13:\"response_code\";i:404;}i:7;a:6:{s:3:\"url\";s:41:\"/ve-may-bay-di-brunei-gia-re/%20%E2%80%8E\";s:14:\"first_detected\";s:8:\"08/28/15\";s:18:\"first_detected_raw\";s:10:\"1440730585\";s:12:\"last_crawled\";s:8:\"08/29/15\";s:16:\"last_crawled_raw\";s:10:\"1440819420\";s:13:\"response_code\";i:404;}i:8;a:6:{s:3:\"url\";s:44:\"/ve-may-bay-di-my-gia-bao-nhieu/%20%E2%80%8E\";s:14:\"first_detected\";s:8:\"08/29/15\";s:18:\"first_detected_raw\";s:10:\"1440825454\";s:12:\"last_crawled\";s:8:\"08/29/15\";s:16:\"last_crawled_raw\";s:10:\"1440825454\";s:13:\"response_code\";i:404;}i:9;a:6:{s:3:\"url\";s:33:\"/ve-may-bay-di-New-zeland-gia-re/\";s:14:\"first_detected\";s:8:\"08/31/15\";s:18:\"first_detected_raw\";s:10:\"1441003778\";s:12:\"last_crawled\";s:8:\"08/31/15\";s:16:\"last_crawled_raw\";s:10:\"1441003778\";s:13:\"response_code\";i:404;}i:10;a:6:{s:3:\"url\";s:12:\"/ve-quoc-te/\";s:14:\"first_detected\";s:8:\"08/30/15\";s:18:\"first_detected_raw\";s:10:\"1440977884\";s:12:\"last_crawled\";s:8:\"08/30/15\";s:16:\"last_crawled_raw\";s:10:\"1440977884\";s:13:\"response_code\";i:404;}}', 'no'),
(1372, 'dd_global_config', 'a:6:{s:24:\"dd_global_twitter_option\";a:1:{s:31:\"dd_global_twitter_option_source\";s:0:\"\";}s:23:\"dd_global_buffer_option\";a:1:{s:30:\"dd_global_buffer_option_source\";s:0:\"\";}s:26:\"dd_global_tweetmeme_option\";a:3:{s:33:\"dd_global_tweetmeme_option_source\";s:0:\"\";s:34:\"dd_global_tweetmeme_option_service\";s:0:\"\";s:38:\"dd_global_tweetmeme_option_service_api\";s:0:\"\";}s:22:\"dd_global_topsy_option\";a:2:{s:29:\"dd_global_topsy_option_source\";s:0:\"\";s:28:\"dd_global_topsy_option_theme\";s:4:\"blue\";}s:25:\"dd_global_facebook_option\";a:5:{s:32:\"dd_global_facebook_option_locale\";s:5:\"en_US\";s:30:\"dd_global_facebook_option_send\";s:0:\"\";s:30:\"dd_global_facebook_option_face\";s:0:\"\";s:31:\"dd_global_facebook_option_thumb\";s:10:\"checked=on\";s:39:\"dd_global_facebook_option_default_thumb\";s:0:\"\";}s:23:\"dd_global_flattr_option\";a:1:{s:27:\"dd_global_flattr_option_uid\";s:0:\"\";}}', 'yes'),
(1373, 'dd_normal_display_config', 'a:5:{s:14:\"display_option\";a:6:{s:19:\"display_option_home\";s:0:\"\";s:19:\"display_option_post\";s:2:\"on\";s:19:\"display_option_page\";s:0:\"\";s:18:\"display_option_cat\";s:0:\"\";s:18:\"display_option_tag\";s:0:\"\";s:22:\"display_option_archive\";s:0:\"\";}s:15:\"category_option\";a:3:{s:21:\"category_option_radio\";s:29:\"category_option_radio_include\";s:23:\"category_option_include\";s:3:\"All\";s:23:\"category_option_exclude\";s:4:\"None\";}s:10:\"dd_line_up\";a:1:{s:17:\"dd_line_up_select\";s:10:\"Horizontal\";}s:16:\"dd_status_option\";a:1:{s:24:\"dd_status_option_display\";s:2:\"on\";}s:16:\"dd_excerp_option\";a:1:{s:24:\"dd_excerp_option_display\";s:2:\"on\";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1374, 'dd_normal_button', 'a:2:{s:24:\"dd_normal_button_display\";a:24:{s:16:\"dd_button_reddit\";O:9:\"DD_Reddit\":31:{s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:21:\"button2.html?width=51\";s:7:\"Compact\";s:22:\"button1.html?width=120\";s:4:\"Icon\";s:21:\"button3.html?width=69\";}s:16:\"buttonLayoutLazy\";a:3:{s:6:\"Normal\";s:21:\"button2.html?width=51\";s:7:\"Compact\";s:22:\"button1.html?width=120\";s:4:\"Icon\";s:21:\"button3.html?width=69\";}s:21:\"buttonLayoutLazyWidth\";a:3:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";s:4:\"Icon\";s:2:\"69\";}s:22:\"buttonLayoutLazyHeight\";a:3:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";s:4:\"Icon\";s:2:\"52\";}s:23:\"buttonLayoutWidthHeight\";a:3:{s:6:\"Normal\";s:22:\"height=\"69\" width=\"51\"\";s:7:\"Compact\";s:23:\"height=\"22\" width=\"120\"\";s:4:\"Icon\";s:22:\"height=\"52\" width=\"69\"\";}s:4:\"name\";s:6:\"Reddit\";s:10:\"websiteURL\";s:21:\"http://www.reddit.com\";s:6:\"apiURL\";s:30:\"http://www.reddit.com/buttons/\";s:7:\"baseURL\";s:165:\"<iframe src=\"http://www.reddit.com/static/button/VOTE_BUTTON_DESIGN&url=VOTE_URL&title=VOTE_TITLE&newwindow=\'1\'\" EXTRA_VALUE scrolling=\'no\' frameborder=\'0\'></iframe>\";s:12:\"baseURL_lazy\";s:164:\"<div class=\'dd-reddit-ajax-load dd-reddit-POST_ID\'></div><iframe class=\'DD_REDDIT_AJAX_POST_ID\' src=\'\' height=\'0\' width=\'0\' scrolling=\'no\' frameborder=\'0\'></iframe>\";s:19:\"baseURL_lazy_script\";s:400:\" function loadReddit_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-reddit-POST_ID\').remove();$(\'.DD_REDDIT_AJAX_POST_ID\').attr(\'width\',\'VOTE_BUTTON_DESIGN_LAZY_WIDTH\');$(\'.DD_REDDIT_AJAX_POST_ID\').attr(\'height\',\'VOTE_BUTTON_DESIGN_LAZY_HEIGHT\');$(\'.DD_REDDIT_AJAX_POST_ID\').attr(\'src\',\'http://www.reddit.com/static/button/VOTE_BUTTON_DESIGN&url=VOTE_URL&title=VOTE_TITLE&newwindow=1\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadReddit_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_reddit_appendType\";s:4:\"none\";s:22:\"dd_reddit_buttonDesign\";s:6:\"Normal\";s:25:\"dd_reddit_ajax_left_float\";s:0:\"\";s:19:\"dd_reddit_lazy_load\";s:0:\"\";s:23:\"dd_reddit_button_weight\";s:2:\"99\";}s:18:\"option_append_type\";s:20:\"dd_reddit_appendType\";s:20:\"option_button_design\";s:22:\"dd_reddit_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_reddit_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_reddit_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_reddit_lazy_load\";s:19:\"button_weight_value\";s:2:\"99\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;}s:15:\"dd_button_dzone\";O:8:\"DD_DZone\":30:{s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:25:\"1\' height=\'70\' width=\'50\'\";s:7:\"Compact\";s:26:\"2\' height=\'25\' width=\'155\'\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:1:\"1\";s:7:\"Compact\";s:1:\"2\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"50\";s:7:\"Compact\";s:3:\"155\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"70\";s:7:\"Compact\";s:2:\"25\";}s:4:\"name\";s:5:\"DZone\";s:10:\"websiteURL\";s:20:\"http://www.dzone.com\";s:6:\"apiURL\";s:38:\"http://www.dzone.com/links/buttons.jsp\";s:7:\"baseURL\";s:163:\"<iframe src=\'http://widgets.dzone.com/links/widgets/zoneit.html?url=VOTE_URL&amp;title=VOTE_TITLE&amp;t=VOTE_BUTTON_DESIGN frameborder=\'0\' scrolling=\'no\'></iframe>\";s:12:\"baseURL_lazy\";s:161:\"<div class=\'dd-dzone-ajax-load dd-dzone-POST_ID\'></div><iframe class=\'DD_DZONE_AJAX_POST_ID\' src=\'\' height=\'0\' width=\'0\' scrolling=\'no\' frameborder=\'0\'></iframe>\";s:19:\"baseURL_lazy_script\";s:400:\" function loadDzone_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-dzone-POST_ID\').remove();$(\'.DD_DZONE_AJAX_POST_ID\').attr(\'width\',\'VOTE_BUTTON_DESIGN_LAZY_WIDTH\');$(\'.DD_DZONE_AJAX_POST_ID\').attr(\'height\',\'VOTE_BUTTON_DESIGN_LAZY_HEIGHT\');$(\'.DD_DZONE_AJAX_POST_ID\').attr(\'src\',\'http://widgets.dzone.com/links/widgets/zoneit.html?url=VOTE_URL&title=VOTE_TITLE&t=VOTE_BUTTON_DESIGN\'); }); }\";s:21:\"scheduler_lazy_script\";s:57:\"window.setTimeout(\'loadDzone_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:19:\"dd_dzone_appendType\";s:4:\"none\";s:21:\"dd_dzone_buttonDesign\";s:6:\"Normal\";s:24:\"dd_dzone_ajax_left_float\";s:0:\"\";s:18:\"dd_dzone_lazy_load\";s:0:\"\";s:22:\"dd_dzone_button_weight\";s:2:\"97\";}s:18:\"option_append_type\";s:19:\"dd_dzone_appendType\";s:20:\"option_button_design\";s:21:\"dd_dzone_buttonDesign\";s:20:\"option_button_weight\";s:22:\"dd_dzone_button_weight\";s:22:\"option_ajax_left_float\";s:24:\"dd_dzone_ajax_left_float\";s:16:\"option_lazy_load\";s:18:\"dd_dzone_lazy_load\";s:19:\"button_weight_value\";s:2:\"97\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;}s:17:\"dd_button_fbshare\";O:10:\"DD_FbShare\":30:{s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:9:\"box_count\";s:7:\"Compact\";s:12:\"button_count\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:9:\"box_count\";s:7:\"Compact\";s:12:\"button_count\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:14:\"Facebook Share\";s:10:\"websiteURL\";s:23:\"http://www.facebook.com\";s:6:\"apiURL\";s:30:\"http://www.facebook.com/share/\";s:7:\"baseURL\";s:209:\"<a name=\'fb_share\' type=\'VOTE_BUTTON_DESIGN\' share_url=\'VOTE_URL\' href=\'http://www.facebook.com/sharer.php\'></a><script src=\'http://static.ak.fbcdn.net/connect.php/js/FB.Share\' type=\'text/javascript\'></script>\";s:12:\"baseURL_lazy\";s:203:\"<div class=\'dd-fbshare-ajax-load dd-fbshare-POST_ID\'></div><a class=\'DD_FBSHARE_AJAX_POST_ID\' name=\'fb_share\' type=\'VOTE_BUTTON_DESIGN\' share_url=\'VOTE_URL\' href=\'http://www.facebook.com/sharer.php\'></a>\";s:19:\"baseURL_lazy_script\";s:177:\" function loadFBShare_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-fbshare-POST_ID\').remove(); $.getScript(\'http://static.ak.fbcdn.net/connect.php/js/FB.Share\'); }); }\";s:21:\"scheduler_lazy_script\";s:59:\"window.setTimeout(\'loadFBShare_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:21:\"dd_fbshare_appendType\";s:4:\"none\";s:23:\"dd_fbshare_buttonDesign\";s:6:\"Normal\";s:26:\"dd_fbshare_ajax_left_float\";s:0:\"\";s:20:\"dd_fbshare_lazy_load\";s:0:\"\";s:24:\"dd_fbshare_button_weight\";s:2:\"95\";}s:18:\"option_append_type\";s:21:\"dd_fbshare_appendType\";s:20:\"option_button_design\";s:23:\"dd_fbshare_buttonDesign\";s:20:\"option_button_weight\";s:24:\"dd_fbshare_button_weight\";s:22:\"option_ajax_left_float\";s:26:\"dd_fbshare_ajax_left_float\";s:16:\"option_lazy_load\";s:20:\"dd_fbshare_lazy_load\";s:19:\"button_weight_value\";s:2:\"95\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:19:\"dd_button_delicious\";O:12:\"DD_Delicious\":30:{s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:25:\"dd_delicious_normal_image\";s:7:\"Compact\";s:26:\"dd_delicious_compact_image\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:25:\"dd_delicious_normal_image\";s:7:\"Compact\";s:26:\"dd_delicious_compact_image\";}s:4:\"name\";s:9:\"Delicious\";s:10:\"websiteURL\";s:24:\"http://www.delicious.com\";s:6:\"apiURL\";s:35:\"http://www.delicious.com/help/feeds\";s:7:\"baseURL\";s:436:\"<div class=\'VOTE_BUTTON_DESIGN dd_delicious\'><a class=\'VOTE_BUTTON_DESIGN\' href=\'http://delicious.com/save\' onclick=\"window.open(\'http://delicious.com/save?v=5&amp;noui&amp;jump=close&amp;url=\'+encodeURIComponent(\'VOTE_URL\')+\'&amp;title=\'+encodeURIComponent(\'VOTE_TITLE\'),\'delicious\', \'toolbar=no,width=550,height=550\'); return false;\"><span id=\'DD_DELICIOUS_AJAX_POST_ID\'><div style=\'padding-top:3px\'>SAVED_COUNT</div></span></a></div>\";s:12:\"baseURL_lazy\";s:374:\"<div class=\'VOTE_BUTTON_DESIGN dd_delicious\'><a href=\'http://delicious.com/save\' onclick=\"window.open(\'http://delicious.com/save?v=5&amp;noui&amp;jump=close&amp;url=\'+encodeURIComponent(\'VOTE_URL\')+\'&amp;title=\'+encodeURIComponent(\'VOTE_TITLE\'),\'delicious\', \'toolbar=no,width=550,height=550\'); return false;\"><span id=\'DD_DELICIOUS_AJAX_POST_ID\'>SAVED_COUNT</span></a></div>\";s:19:\"baseURL_lazy_script\";s:428:\" function loadDelicious_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-delicious-POST_ID\').remove();$.getJSON(\'http://feeds.delicious.com/v2/json/urlinfo/data?url=VOTE_URL&amp;callback=?\',function(data) {var msg =\'\';var count = 0;if (data.length > 0) {count = data[0].total_posts;if(count ==0){msg = \'0\';}else if(count ==1){msg = \'1\';}else{msg = count}}else{msg = \'0\';}$(\'#DD_DELICIOUS_AJAX_POST_ID\').text(msg);}); }); }\";s:21:\"scheduler_lazy_script\";s:61:\"window.setTimeout(\'loadDelicious_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:23:\"dd_delicious_appendType\";s:4:\"none\";s:25:\"dd_delicious_buttonDesign\";s:6:\"Normal\";s:28:\"dd_delicious_ajax_left_float\";s:0:\"\";s:22:\"dd_delicious_lazy_load\";s:0:\"\";s:26:\"dd_delicious_button_weight\";s:2:\"93\";}s:18:\"option_append_type\";s:23:\"dd_delicious_appendType\";s:20:\"option_button_design\";s:25:\"dd_delicious_buttonDesign\";s:20:\"option_button_weight\";s:26:\"dd_delicious_button_weight\";s:22:\"option_ajax_left_float\";s:28:\"dd_delicious_ajax_left_float\";s:16:\"option_lazy_load\";s:22:\"dd_delicious_lazy_load\";s:19:\"button_weight_value\";s:2:\"93\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:16:\"dd_button_fblike\";O:9:\"DD_FbLike\":31:{s:19:\"float_button_design\";s:14:\"Like Box Count\";s:12:\"buttonLayout\";a:6:{s:13:\"Like Standard\";s:81:\"layout=standard&amp;action=like&amp;width=350&amp;height=24&amp;colorscheme=light\";s:17:\"Like Button Count\";s:84:\"layout=button_count&amp;action=like&amp;width=92&amp;height=20&amp;colorscheme=light\";s:14:\"Like Box Count\";s:81:\"layout=box_count&amp;action=like&amp;width=50&amp;height=60&amp;colorscheme=light\";s:18:\"Recommend Standard\";s:86:\"layout=standard&amp;action=recommend&amp;width=400&amp;height=24&amp;colorscheme=light\";s:22:\"Recommend Button Count\";s:90:\"layout=button_count&amp;action=recommend&amp;width=130&amp;height=20&amp;colorscheme=light\";s:19:\"Recommend Box Count\";s:86:\"layout=box_count&amp;action=recommend&amp;width=90&amp;height=60&amp;colorscheme=light\";}s:16:\"buttonLayoutLazy\";a:6:{s:13:\"Like Standard\";s:81:\"layout=standard&amp;action=like&amp;width=350&amp;height=24&amp;colorscheme=light\";s:17:\"Like Button Count\";s:84:\"layout=button_count&amp;action=like&amp;width=92&amp;height=20&amp;colorscheme=light\";s:14:\"Like Box Count\";s:81:\"layout=box_count&amp;action=like&amp;width=50&amp;height=60&amp;colorscheme=light\";s:18:\"Recommend Standard\";s:86:\"layout=standard&amp;action=recommend&amp;width=400&amp;height=24&amp;colorscheme=light\";s:22:\"Recommend Button Count\";s:90:\"layout=button_count&amp;action=recommend&amp;width=130&amp;height=20&amp;colorscheme=light\";s:19:\"Recommend Box Count\";s:86:\"layout=box_count&amp;action=recommend&amp;width=90&amp;height=60&amp;colorscheme=light\";}s:23:\"buttonLayoutWidthHeight\";a:6:{s:13:\"Like Standard\";s:25:\"width:500px; height:24px;\";s:17:\"Like Button Count\";s:24:\"width:92px; height:20px;\";s:14:\"Like Box Count\";s:24:\"width:50px; height:62px;\";s:18:\"Recommend Standard\";s:25:\"width:500px; height:24px;\";s:22:\"Recommend Button Count\";s:25:\"width:130px; height:20px;\";s:19:\"Recommend Box Count\";s:24:\"width:90px; height:60px;\";}s:21:\"buttonLayoutLazyWidth\";a:6:{s:13:\"Like Standard\";s:3:\"500\";s:17:\"Like Button Count\";s:2:\"92\";s:14:\"Like Box Count\";s:2:\"50\";s:18:\"Recommend Standard\";s:3:\"500\";s:22:\"Recommend Button Count\";s:3:\"130\";s:19:\"Recommend Box Count\";s:2:\"90\";}s:22:\"buttonLayoutLazyHeight\";a:6:{s:13:\"Like Standard\";s:2:\"24\";s:17:\"Like Button Count\";s:2:\"20\";s:14:\"Like Box Count\";s:2:\"62\";s:18:\"Recommend Standard\";s:2:\"24\";s:22:\"Recommend Button Count\";s:2:\"20\";s:19:\"Recommend Box Count\";s:2:\"60\";}s:4:\"name\";s:22:\"Facebook Like (IFrame)\";s:10:\"websiteURL\";s:23:\"http://www.facebook.com\";s:6:\"apiURL\";s:58:\"http://developers.facebook.com/docs/reference/plugins/like\";s:7:\"baseURL\";s:234:\"<iframe src=\'http://www.facebook.com/plugins/like.php?href=VOTE_URL&amp;locale=FACEBOOK_LOCALE&amp;VOTE_BUTTON_DESIGN\' scrolling=\'no\' frameborder=\'0\' style=\'border:none; overflow:hidden; EXTRA_VALUE\' allowTransparency=\'true\'></iframe>\";s:12:\"baseURL_lazy\";s:189:\"<div class=\'dd-fblike-ajax-load dd-fblike-POST_ID\'></div><iframe class=\"DD_FBLIKE_AJAX_POST_ID\" src=\'\' height=\'0\' width=\'0\' scrolling=\'no\' frameborder=\'0\' allowTransparency=\'true\'></iframe>\";s:19:\"baseURL_lazy_script\";s:408:\" function loadFBLike_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-fblike-POST_ID\').remove();$(\'.DD_FBLIKE_AJAX_POST_ID\').attr(\'width\',\'VOTE_BUTTON_DESIGN_LAZY_WIDTH\');$(\'.DD_FBLIKE_AJAX_POST_ID\').attr(\'height\',\'VOTE_BUTTON_DESIGN_LAZY_HEIGHT\');$(\'.DD_FBLIKE_AJAX_POST_ID\').attr(\'src\',\'http://www.facebook.com/plugins/like.php?href=VOTE_URL&amp;locale=FACEBOOK_LOCALE&amp;VOTE_BUTTON_DESIGN\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadFBLike_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_fblike_appendType\";s:4:\"none\";s:22:\"dd_fblike_buttonDesign\";s:13:\"Like Standard\";s:25:\"dd_fblike_ajax_left_float\";s:0:\"\";s:19:\"dd_fblike_lazy_load\";s:0:\"\";s:23:\"dd_fblike_button_weight\";s:2:\"96\";}s:18:\"option_append_type\";s:20:\"dd_fblike_appendType\";s:20:\"option_button_design\";s:22:\"dd_fblike_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_fblike_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_fblike_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_fblike_lazy_load\";s:19:\"button_weight_value\";s:2:\"96\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;}s:21:\"dd_button_stumbleupon\";O:14:\"DD_StumbleUpon\":30:{s:19:\"islazyLoadAvailable\";b:0;s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:1:\"5\";s:7:\"Compact\";s:1:\"1\";}s:4:\"name\";s:11:\"Stumbleupon\";s:10:\"websiteURL\";s:26:\"http://www.stumbleupon.com\";s:6:\"apiURL\";s:34:\"http://www.stumbleupon.com/badges/\";s:7:\"baseURL\";s:102:\"<script src=\'http://www.stumbleupon.com/hostedbadge.php?s=VOTE_BUTTON_DESIGN&amp;r=VOTE_URL\'></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:10:\"wp_options\";a:5:{s:25:\"dd_stumbleupon_appendType\";s:4:\"none\";s:27:\"dd_stumbleupon_buttonDesign\";s:6:\"Normal\";s:30:\"dd_stumbleupon_ajax_left_float\";s:0:\"\";s:24:\"dd_stumbleupon_lazy_load\";s:0:\"\";s:28:\"dd_stumbleupon_button_weight\";s:2:\"97\";}s:18:\"option_append_type\";s:25:\"dd_stumbleupon_appendType\";s:20:\"option_button_design\";s:27:\"dd_stumbleupon_buttonDesign\";s:20:\"option_button_weight\";s:28:\"dd_stumbleupon_button_weight\";s:22:\"option_ajax_left_float\";s:30:\"dd_stumbleupon_ajax_left_float\";s:16:\"option_lazy_load\";s:24:\"dd_stumbleupon_lazy_load\";s:19:\"button_weight_value\";s:2:\"97\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:19:\"dd_button_yahoobuzz\";O:8:\"DD_YBuzz\":30:{s:19:\"islazyLoadAvailable\";b:0;s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:6:\"square\";s:7:\"Compact\";s:11:\"small-votes\";s:12:\"Compact_Text\";s:10:\"text-votes\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:10:\"Yahoo Buzz\";s:10:\"websiteURL\";s:21:\"http://buzz.yahoo.com\";s:6:\"apiURL\";s:29:\"http://buzz.yahoo.com/buttons\";s:7:\"baseURL\";s:216:\"<script type=\'text/javascript\'>yahooBuzzArticleHeadline=\"VOTE_TITLE\";yahooBuzzArticleId=\"VOTE_URL\";</script><script type=\'text/javascript\' src=\'http://d.yimg.com/ds/badge2.js\' badgetype=\'VOTE_BUTTON_DESIGN\'></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:19:\"dd_ybuzz_appendType\";s:4:\"none\";s:21:\"dd_ybuzz_buttonDesign\";s:6:\"Normal\";s:24:\"dd_ybuzz_ajax_left_float\";s:0:\"\";s:18:\"dd_ybuzz_lazy_load\";s:0:\"\";s:22:\"dd_ybuzz_button_weight\";s:2:\"90\";}s:18:\"option_append_type\";s:19:\"dd_ybuzz_appendType\";s:20:\"option_button_design\";s:21:\"dd_ybuzz_buttonDesign\";s:20:\"option_button_weight\";s:22:\"dd_ybuzz_button_weight\";s:22:\"option_ajax_left_float\";s:24:\"dd_ybuzz_ajax_left_float\";s:16:\"option_lazy_load\";s:18:\"dd_ybuzz_lazy_load\";s:19:\"button_weight_value\";s:2:\"90\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:19:\"dd_button_fbshareme\";O:12:\"DD_FbShareMe\":30:{s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:5:\"large\";s:7:\"Compact\";s:5:\"small\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:5:\"large\";s:7:\"Compact\";s:5:\"small\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"53\";s:7:\"Compact\";s:2:\"80\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"18\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:10:\"fbShare.me\";s:10:\"websiteURL\";s:21:\"http://www.fbshare.me\";s:6:\"apiURL\";s:21:\"http://www.fbshare.me\";s:7:\"baseURL\";s:142:\"<script>var fbShare = {url: \'VOTE_URL\',size: \'VOTE_BUTTON_DESIGN\',}</script><script src=\'http://widgets.fbshare.me/files/fbshare.js\'></script>\";s:12:\"baseURL_lazy\";s:198:\"<div class=\'dd-fbshareme-ajax-load dd-fbshareme-POST_ID\'></div><iframe class=\"DD_FBSHAREME_AJAX_POST_ID\" src=\'\' height=\'0\' width=\'0\' scrolling=\'no\' frameborder=\'0\' allowtransparency=\'true\'></iframe>\";s:19:\"baseURL_lazy_script\";s:400:\" function loadFBShareMe_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-fbshareme-POST_ID\').remove();$(\'.DD_FBSHAREME_AJAX_POST_ID\').attr(\'width\',\'VOTE_BUTTON_DESIGN_LAZY_WIDTH\');$(\'.DD_FBSHAREME_AJAX_POST_ID\').attr(\'height\',\'VOTE_BUTTON_DESIGN_LAZY_HEIGHT\');$(\'.DD_FBSHAREME_AJAX_POST_ID\').attr(\'src\',\'http://widgets.fbshare.me/files/fbshare.php?url=VOTE_URL&size=VOTE_BUTTON_DESIGN\');  }); }\";s:21:\"scheduler_lazy_script\";s:61:\"window.setTimeout(\'loadFBShareMe_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:23:\"dd_fbshareme_appendType\";s:4:\"none\";s:25:\"dd_fbshareme_buttonDesign\";s:6:\"Normal\";s:28:\"dd_fbshareme_ajax_left_float\";s:0:\"\";s:22:\"dd_fbshareme_lazy_load\";s:0:\"\";s:26:\"dd_fbshareme_button_weight\";s:2:\"94\";}s:18:\"option_append_type\";s:23:\"dd_fbshareme_appendType\";s:20:\"option_button_design\";s:25:\"dd_fbshareme_buttonDesign\";s:20:\"option_button_weight\";s:26:\"dd_fbshareme_button_weight\";s:22:\"option_ajax_left_float\";s:28:\"dd_fbshareme_ajax_left_float\";s:16:\"option_lazy_load\";s:22:\"dd_fbshareme_lazy_load\";s:19:\"button_weight_value\";s:2:\"94\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;}s:21:\"dd_button_blogenagage\";O:13:\"DD_BlogEngage\":30:{s:19:\"islazyLoadAvailable\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:1:{s:6:\"Normal\";s:11:\"button4.php\";}s:4:\"name\";s:10:\"BlogEngage\";s:10:\"websiteURL\";s:25:\"http://www.blogengage.com\";s:6:\"apiURL\";s:43:\"http://www.blogengage.com/profile_promo.php\";s:7:\"baseURL\";s:132:\"<script type=\'text/javascript\'>submit_url = \'VOTE_URL\';</script><script src=\'http://blogengage.com/evb/VOTE_BUTTON_DESIGN\'></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:24:\"dd_blogengage_appendType\";s:4:\"none\";s:26:\"dd_blogengage_buttonDesign\";s:6:\"Normal\";s:29:\"dd_blogengage_ajax_left_float\";s:0:\"\";s:23:\"dd_blogengage_lazy_load\";s:0:\"\";s:27:\"dd_blogengage_button_weight\";s:2:\"84\";}s:18:\"option_append_type\";s:24:\"dd_blogengage_appendType\";s:20:\"option_button_design\";s:26:\"dd_blogengage_buttonDesign\";s:20:\"option_button_weight\";s:27:\"dd_blogengage_button_weight\";s:22:\"option_ajax_left_float\";s:29:\"dd_blogengage_ajax_left_float\";s:16:\"option_lazy_load\";s:23:\"dd_blogengage_lazy_load\";s:19:\"button_weight_value\";s:2:\"84\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:21:\"dd_button_thewebblend\";O:14:\"DD_TheWebBlend\":30:{s:19:\"islazyLoadAvailable\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:0:\"\";s:7:\"Compact\";s:21:\"badge_size=\'compact\';\";}s:4:\"name\";s:11:\"TheWebBlend\";s:10:\"websiteURL\";s:26:\"http://www.thewebblend.com\";s:6:\"apiURL\";s:33:\"http://thewebblend.com/tools/vote\";s:7:\"baseURL\";s:194:\"<script type=\'text/javascript\'>url_site=\'VOTE_URL\'; VOTE_BUTTON_DESIGN</script><script src=\'http://thewebblend.com/sites/all/modules/drigg_external/js/button.js\' type=\'text/javascript\'></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:22:\"dd_webblend_appendType\";s:4:\"none\";s:24:\"dd_webblend_buttonDesign\";s:6:\"Normal\";s:27:\"dd_webblend_ajax_left_float\";s:0:\"\";s:21:\"dd_webblend_lazy_load\";s:0:\"\";s:25:\"dd_webblend_button_weight\";s:2:\"85\";}s:18:\"option_append_type\";s:22:\"dd_webblend_appendType\";s:20:\"option_button_design\";s:24:\"dd_webblend_buttonDesign\";s:20:\"option_button_weight\";s:25:\"dd_webblend_button_weight\";s:22:\"option_ajax_left_float\";s:27:\"dd_webblend_ajax_left_float\";s:16:\"option_lazy_load\";s:21:\"dd_webblend_lazy_load\";s:19:\"button_weight_value\";s:2:\"85\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:20:\"dd_button_designbump\";O:13:\"DD_DesignBump\":30:{s:19:\"islazyLoadAvailable\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:1:{s:6:\"Normal\";s:6:\"Normal\";}s:4:\"name\";s:10:\"DesignBump\";s:10:\"websiteURL\";s:25:\"http://www.designbump.com\";s:6:\"apiURL\";s:33:\"http://designbump.com/content/evb\";s:7:\"baseURL\";s:176:\"<script type=\'text/javascript\'>url_site=\'VOTE_URL\'; </script> <script src=\'http://designbump.com/sites/all/modules/drigg_external/js/button.js\' type=\'text/javascript\'></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:24:\"dd_designbump_appendType\";s:4:\"none\";s:26:\"dd_designbump_buttonDesign\";s:6:\"Normal\";s:29:\"dd_designbump_ajax_left_float\";s:0:\"\";s:23:\"dd_designbump_lazy_load\";s:0:\"\";s:27:\"dd_designbump_button_weight\";s:2:\"87\";}s:18:\"option_append_type\";s:24:\"dd_designbump_appendType\";s:20:\"option_button_design\";s:26:\"dd_designbump_buttonDesign\";s:20:\"option_button_weight\";s:27:\"dd_designbump_button_weight\";s:22:\"option_ajax_left_float\";s:29:\"dd_designbump_ajax_left_float\";s:16:\"option_lazy_load\";s:23:\"dd_designbump_lazy_load\";s:19:\"button_weight_value\";s:2:\"87\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:17:\"dd_button_twitter\";O:10:\"DD_Twitter\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";s:2:\"on\";s:9:\"lazy_load\";b:0;s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:7:\"Twitter\";s:10:\"websiteURL\";s:22:\"http://www.twitter.com\";s:6:\"apiURL\";s:38:\"http://twitter.com/goodies/tweetbutton\";s:7:\"baseURL\";s:247:\"<a href=\"http://twitter.com/share\" class=\"twitter-share-button\" data-url=\"VOTE_URL\" data-count=\"VOTE_BUTTON_DESIGN\" data-text=\"VOTE_TITLE\" data-via=\"VOTE_SOURCE\" ></a><script type=\"text/javascript\" src=\"//platform.twitter.com/widgets.js\"></script>\";s:12:\"baseURL_lazy\";s:226:\"<div class=\'dd-twitter-ajax-load dd-twitter-POST_ID\'></div><a href=\"http://twitter.com/share\" class=\"twitter-share-button\" data-url=\"VOTE_URL\" data-count=\"VOTE_BUTTON_DESIGN\" data-text=\"VOTE_TITLE\" data-via=\"VOTE_SOURCE\" ></a>\";s:19:\"baseURL_lazy_script\";s:164:\" function loadTwitter_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-twitter-POST_ID\').remove();$.getScript(\'http://platform.twitter.com/widgets.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:59:\"window.setTimeout(\'loadTwitter_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:21:\"dd_twitter_appendType\";s:4:\"none\";s:23:\"dd_twitter_buttonDesign\";s:6:\"Normal\";s:26:\"dd_twitter_ajax_left_float\";s:0:\"\";s:20:\"dd_twitter_lazy_load\";s:0:\"\";s:24:\"dd_twitter_button_weight\";s:3:\"110\";}s:18:\"option_append_type\";s:21:\"dd_twitter_appendType\";s:20:\"option_button_design\";s:23:\"dd_twitter_buttonDesign\";s:20:\"option_button_weight\";s:24:\"dd_twitter_button_weight\";s:22:\"option_ajax_left_float\";s:26:\"dd_twitter_ajax_left_float\";s:16:\"option_lazy_load\";s:20:\"dd_twitter_lazy_load\";s:19:\"button_weight_value\";s:3:\"110\";s:19:\"float_button_design\";s:6:\"Normal\";s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:19:\"dd_button_tweetmeme\";O:12:\"DD_TweetMeme\":30:{s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:30:\"normal\' height=\'61\' width=\'50\'\";s:7:\"Compact\";s:31:\"compact\' height=\'20\' width=\'90\'\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"normal\";s:7:\"Compact\";s:7:\"compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"50\";s:7:\"Compact\";s:2:\"90\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"61\";s:7:\"Compact\";s:2:\"20\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:9:\"TweetMeme\";s:10:\"websiteURL\";s:25:\"http://www.tweetmeme.com/\";s:6:\"apiURL\";s:46:\"http://wordpress.org/extend/plugins/tweetmeme/\";s:7:\"baseURL\";s:200:\"<iframe src=\'http://api.tweetmeme.com/button.js?url=VOTE_URL&source=VOTE_SOURCE&service=VOTE_SERVICE_NAME&service_api=VOTE_SERVICE_API&style=VOTE_BUTTON_DESIGN frameborder=\'0\' scrolling=\'no\'></iframe>\";s:12:\"baseURL_lazy\";s:173:\"<div class=\'dd-tweetmeme-ajax-load dd-tweetmeme-POST_ID\'></div><iframe class=\'DD_TWEETMEME_AJAX_POST_ID\' src=\'\' height=\'0\' width=\'0\' scrolling=\'no\' frameborder=\'0\'></iframe>\";s:19:\"baseURL_lazy_script\";s:465:\" function loadTweetMeme_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-tweetmeme-POST_ID\').remove();$(\'.DD_TWEETMEME_AJAX_POST_ID\').attr(\'width\',\'VOTE_BUTTON_DESIGN_LAZY_WIDTH\');$(\'.DD_TWEETMEME_AJAX_POST_ID\').attr(\'height\',\'VOTE_BUTTON_DESIGN_LAZY_HEIGHT\');$(\'.DD_TWEETMEME_AJAX_POST_ID\').attr(\'src\',\'http://api.tweetmeme.com/button.js?url=VOTE_URL&source=VOTE_SOURCE&style=VOTE_BUTTON_DESIGN&service=VOTE_SERVICE_NAME&service_api=VOTE_SERVICE_API\'); }); }\";s:21:\"scheduler_lazy_script\";s:61:\"window.setTimeout(\'loadTweetMeme_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:23:\"dd_tweetmeme_appendType\";s:4:\"none\";s:25:\"dd_tweetmeme_buttonDesign\";s:6:\"Normal\";s:28:\"dd_tweetmeme_ajax_left_float\";s:0:\"\";s:22:\"dd_tweetmeme_lazy_load\";s:0:\"\";s:26:\"dd_tweetmeme_button_weight\";s:2:\"97\";}s:18:\"option_append_type\";s:23:\"dd_tweetmeme_appendType\";s:20:\"option_button_design\";s:25:\"dd_tweetmeme_buttonDesign\";s:20:\"option_button_weight\";s:26:\"dd_tweetmeme_button_weight\";s:22:\"option_ajax_left_float\";s:28:\"dd_tweetmeme_ajax_left_float\";s:16:\"option_lazy_load\";s:22:\"dd_tweetmeme_lazy_load\";s:19:\"button_weight_value\";s:2:\"97\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;}s:15:\"dd_button_topsy\";O:8:\"DD_Topsy\":30:{s:19:\"islazyLoadAvailable\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:3:\"big\";s:7:\"Compact\";s:7:\"compact\";}s:4:\"name\";s:5:\"Topsy\";s:10:\"websiteURL\";s:20:\"http://www.topsy.com\";s:6:\"apiURL\";s:44:\"http://labs.topsy.com/button/retweet-button/\";s:7:\"baseURL\";s:233:\"<script type=\"text/javascript\" src=\"http://cdn.topsy.com/topsy.js?init=topsyWidgetCreator\"></script><div class=\"topsy_widget_data\"><!--{\"url\":\"VOTE_URL\",\"style\":\"VOTE_BUTTON_DESIGN\",\"theme\":\"VOTE_THEME\",\"nick\":\"VOTE_SOURCE\"}--></div>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:19:\"dd_topsy_appendType\";s:4:\"none\";s:21:\"dd_topsy_buttonDesign\";s:6:\"Normal\";s:24:\"dd_topsy_ajax_left_float\";s:0:\"\";s:18:\"dd_topsy_lazy_load\";s:0:\"\";s:22:\"dd_topsy_button_weight\";s:2:\"96\";}s:18:\"option_append_type\";s:19:\"dd_topsy_appendType\";s:20:\"option_button_design\";s:21:\"dd_topsy_buttonDesign\";s:20:\"option_button_weight\";s:22:\"dd_topsy_button_weight\";s:22:\"option_ajax_left_float\";s:24:\"dd_topsy_ajax_left_float\";s:16:\"option_lazy_load\";s:18:\"dd_topsy_lazy_load\";s:19:\"button_weight_value\";s:2:\"96\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:18:\"dd_button_comments\";O:11:\"DD_Comments\":30:{s:19:\"islazyLoadAvailable\";b:0;s:12:\"buttonLayout\";a:1:{s:6:\"Normal\";s:6:\"Normal\";}s:4:\"name\";s:8:\"Comments\";s:10:\"websiteURL\";s:11:\"http://none\";s:6:\"apiURL\";s:11:\"http://none\";s:7:\"baseURL\";s:142:\"<div id=\'dd_comments\'><a class=\'clcount\' href=VOTE_URL><span class=\'ctotal\'>COMMENTS_COUNT</span></a><a class=\'clink\' href=VOTE_URL></a></div>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:10:\"wp_options\";a:5:{s:22:\"dd_comments_appendType\";s:4:\"none\";s:24:\"dd_comments_buttonDesign\";s:6:\"Normal\";s:27:\"dd_comments_ajax_left_float\";s:0:\"\";s:21:\"dd_comments_lazy_load\";s:0:\"\";s:25:\"dd_comments_button_weight\";s:2:\"88\";}s:18:\"option_append_type\";s:22:\"dd_comments_appendType\";s:20:\"option_button_design\";s:24:\"dd_comments_buttonDesign\";s:20:\"option_button_weight\";s:25:\"dd_comments_button_weight\";s:22:\"option_ajax_left_float\";s:27:\"dd_comments_ajax_left_float\";s:16:\"option_lazy_load\";s:21:\"dd_comments_lazy_load\";s:19:\"button_weight_value\";s:2:\"88\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:18:\"dd_button_linkedin\";O:11:\"DD_Linkedin\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";s:2:\"on\";s:9:\"lazy_load\";b:0;s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:3:\"top\";s:7:\"Compact\";s:5:\"right\";s:7:\"NoCount\";s:4:\"none\";}s:16:\"buttonLayoutLazy\";a:3:{s:6:\"Normal\";s:3:\"top\";s:7:\"Compact\";s:5:\"right\";s:7:\"NoCount\";s:4:\"none\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:8:\"Linkedin\";s:10:\"websiteURL\";s:23:\"http://www.linkedin.com\";s:6:\"apiURL\";s:34:\"http://www.linkedin.com/publishers\";s:7:\"baseURL\";s:163:\"<script src=\'//platform.linkedin.com/in.js\' type=\'text/javascript\'></script><script type=\'IN/Share\' data-url=\'VOTE_URL\' data-counter=\'VOTE_BUTTON_DESIGN\'></script>\";s:12:\"baseURL_lazy\";s:148:\"<div class=\'dd-linkedin-ajax-load dd-linkedin-POST_ID\'></div><script type=\'IN/share\' data-url=\'VOTE_URL\' data-counter=\'VOTE_BUTTON_DESIGN\'></script>\";s:19:\"baseURL_lazy_script\";s:162:\" function loadLinkedin_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-linkedin-POST_ID\').remove();$.getScript(\'http://platform.linkedin.com/in.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:60:\"window.setTimeout(\'loadLinkedin_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:22:\"dd_linkedin_appendType\";s:4:\"none\";s:24:\"dd_linkedin_buttonDesign\";s:6:\"Normal\";s:27:\"dd_linkedin_ajax_left_float\";s:0:\"\";s:21:\"dd_linkedin_lazy_load\";s:0:\"\";s:25:\"dd_linkedin_button_weight\";s:2:\"94\";}s:18:\"option_append_type\";s:22:\"dd_linkedin_appendType\";s:20:\"option_button_design\";s:24:\"dd_linkedin_buttonDesign\";s:20:\"option_button_weight\";s:25:\"dd_linkedin_button_weight\";s:22:\"option_ajax_left_float\";s:27:\"dd_linkedin_ajax_left_float\";s:16:\"option_lazy_load\";s:21:\"dd_linkedin_lazy_load\";s:19:\"button_weight_value\";s:2:\"94\";s:19:\"float_button_design\";s:6:\"Normal\";s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:15:\"dd_button_serpd\";O:8:\"DD_Serpd\":30:{s:19:\"islazyLoadAvailable\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:1:{s:6:\"Normal\";s:0:\"\";}s:4:\"name\";s:5:\"Serpd\";s:10:\"websiteURL\";s:20:\"http://www.serpd.com\";s:6:\"apiURL\";s:29:\"http://www.serpd.com/widgets/\";s:7:\"baseURL\";s:150:\"<script type=\"text/javascript\">submit_url = \"VOTE_URL\";</script><script type=\"text/javascript\" src=\"http://www.serpd.com/index.php?page=evb\"></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:19:\"dd_serpd_appendType\";s:4:\"none\";s:21:\"dd_serpd_buttonDesign\";s:6:\"Normal\";s:24:\"dd_serpd_ajax_left_float\";s:0:\"\";s:18:\"dd_serpd_lazy_load\";s:0:\"\";s:22:\"dd_serpd_button_weight\";s:2:\"86\";}s:18:\"option_append_type\";s:19:\"dd_serpd_appendType\";s:20:\"option_button_design\";s:21:\"dd_serpd_buttonDesign\";s:20:\"option_button_weight\";s:22:\"dd_serpd_button_weight\";s:22:\"option_ajax_left_float\";s:24:\"dd_serpd_ajax_left_float\";s:16:\"option_lazy_load\";s:18:\"dd_serpd_lazy_load\";s:19:\"button_weight_value\";s:2:\"86\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:22:\"dd_button_fblike_xfbml\";O:15:\"DD_FbLike_XFBML\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:17:\"Like Button Count\";s:15:\"ajax_left_float\";s:2:\"on\";s:9:\"lazy_load\";b:0;s:19:\"islazyLoadAvailable\";b:0;s:19:\"float_button_design\";s:14:\"Like Box Count\";s:12:\"buttonLayout\";a:6:{s:13:\"Like Standard\";s:13:\" width=\"450\" \";s:17:\"Like Button Count\";s:34:\" layout=\"button_count\" width=\"92\" \";s:14:\"Like Box Count\";s:31:\" layout=\"box_count\" width=\"50\" \";s:18:\"Recommend Standard\";s:32:\" action=\"recommend\" width=\"400\" \";s:22:\"Recommend Button Count\";s:54:\" action=\"recommend\" layout=\"button_count\" width=\"130\" \";s:19:\"Recommend Box Count\";s:50:\" action=\"recommend\" layout=\"box_count\" width=\"90\" \";}s:4:\"name\";s:21:\"Facebook Like (XFBML)\";s:10:\"websiteURL\";s:23:\"http://www.facebook.com\";s:6:\"apiURL\";s:58:\"http://developers.facebook.com/docs/reference/plugins/like\";s:7:\"baseURL\";s:165:\"<script src=\"//connect.facebook.net/FACEBOOK_LOCALE/all.js#xfbml=1\"></script><fb:like href=\"VOTE_URL\" FACEBOOK_SEND FACEBOOK_SHOW_FACE VOTE_BUTTON_DESIGN ></fb:like>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:10:\"wp_options\";a:5:{s:26:\"dd_fblike_xfbml_appendType\";s:13:\"after_content\";s:28:\"dd_fblike_xfbml_buttonDesign\";s:14:\"Like Box Count\";s:31:\"dd_fblike_xfbml_ajax_left_float\";s:0:\"\";s:25:\"dd_fblike_xfbml_lazy_load\";s:0:\"\";s:29:\"dd_fblike_xfbml_button_weight\";s:2:\"96\";}s:18:\"option_append_type\";s:26:\"dd_fblike_xfbml_appendType\";s:20:\"option_button_design\";s:28:\"dd_fblike_xfbml_buttonDesign\";s:20:\"option_button_weight\";s:29:\"dd_fblike_xfbml_button_weight\";s:22:\"option_ajax_left_float\";s:31:\"dd_fblike_xfbml_ajax_left_float\";s:16:\"option_lazy_load\";s:25:\"dd_fblike_xfbml_lazy_load\";s:19:\"button_weight_value\";s:2:\"96\";s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:17:\"dd_button_google1\";O:10:\"DD_Google1\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";s:2:\"on\";s:9:\"lazy_load\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:4:{s:6:\"Normal\";s:4:\"tall\";s:14:\"Compact (15px)\";s:5:\"small\";s:14:\"Compact (20px)\";s:6:\"medium\";s:14:\"Compact (24px)\";s:4:\"none\";}s:16:\"buttonLayoutLazy\";a:4:{s:6:\"Normal\";s:4:\"tall\";s:14:\"Compact (15px)\";s:5:\"small\";s:14:\"Compact (20px)\";s:6:\"medium\";s:14:\"Compact (24px)\";s:4:\"none\";}s:4:\"name\";s:9:\"Google +1\";s:10:\"websiteURL\";s:32:\"http://www.google.com/+1/button/\";s:6:\"apiURL\";s:37:\"http://code.google.com/apis/+1button/\";s:7:\"baseURL\";s:149:\"<script type=\'text/javascript\' src=\'https://apis.google.com/js/plusone.js\'></script><g:plusone size=\'VOTE_BUTTON_DESIGN\' href=\'VOTE_URL\'></g:plusone>\";s:12:\"baseURL_lazy\";s:124:\"<div class=\'dd-google1-ajax-load dd-google1-POST_ID\'></div><g:plusone size=\'VOTE_BUTTON_DESIGN\' href=\'VOTE_URL\'></g:plusone>\";s:19:\"baseURL_lazy_script\";s:163:\" function loadGoogle1_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-google1-POST_ID\').remove();$.getScript(\'https://apis.google.com/js/plusone.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:59:\"window.setTimeout(\'loadGoogle1_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:21:\"dd_google1_appendType\";s:13:\"after_content\";s:23:\"dd_google1_buttonDesign\";s:6:\"Normal\";s:26:\"dd_google1_ajax_left_float\";s:0:\"\";s:20:\"dd_google1_lazy_load\";s:2:\"on\";s:24:\"dd_google1_button_weight\";s:2:\"96\";}s:18:\"option_append_type\";s:21:\"dd_google1_appendType\";s:20:\"option_button_design\";s:23:\"dd_google1_buttonDesign\";s:20:\"option_button_weight\";s:24:\"dd_google1_button_weight\";s:22:\"option_ajax_left_float\";s:26:\"dd_google1_ajax_left_float\";s:16:\"option_lazy_load\";s:20:\"dd_google1_lazy_load\";s:19:\"button_weight_value\";s:2:\"95\";s:19:\"float_button_design\";s:6:\"Normal\";s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:16:\"dd_button_buffer\";O:9:\"DD_Buffer\":30:{s:11:\"append_type\";s:13:\"after_content\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";s:2:\"on\";s:9:\"lazy_load\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:16:\"buttonLayoutLazy\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:4:\"name\";s:6:\"Buffer\";s:10:\"websiteURL\";s:21:\"http://bufferapp.com/\";s:6:\"apiURL\";s:36:\"http://bufferapp.com/goodies/button/\";s:7:\"baseURL\";s:257:\"<a href=\"http://bufferapp.com/add\" class=\"buffer-add-button\" data-count=\"VOTE_BUTTON_DESIGN\" data-text=\"VOTE_TITLE\" data-url=\"VOTE_URL\" data-via=\"VOTE_BUFFER_SOURCE\"></a><script type=\"text/javascript\" src=\"http://static.bufferapp.com/js/button.js\"></script>\";s:12:\"baseURL_lazy\";s:170:\"<a href=\"http://bufferapp.com/add\" class=\"buffer-add-button\" data-count=\"VOTE_BUTTON_DESIGN\" data-text=\"VOTE_TITLE\" data-url=\"VOTE_URL\" data-via=\"VOTE_BUFFER_SOURCE\"></a>\";s:19:\"baseURL_lazy_script\";s:163:\"function loadBuffer_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-buffer-POST_ID\').remove();$.getScript(\'http://static.bufferapp.com/js/button.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadBuffer_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_buffer_appendType\";s:4:\"none\";s:22:\"dd_buffer_buttonDesign\";s:6:\"Normal\";s:25:\"dd_buffer_ajax_left_float\";s:0:\"\";s:19:\"dd_buffer_lazy_load\";s:0:\"\";s:23:\"dd_buffer_button_weight\";s:2:\"99\";}s:18:\"option_append_type\";s:20:\"dd_buffer_appendType\";s:20:\"option_button_design\";s:22:\"dd_buffer_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_buffer_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_buffer_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_buffer_lazy_load\";s:19:\"button_weight_value\";s:2:\"99\";s:19:\"float_button_design\";s:6:\"Normal\";s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:19:\"dd_button_pinterest\";O:12:\"DD_Pinterest\":30:{s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:16:\"buttonLayoutLazy\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:4:\"name\";s:9:\"Pinterest\";s:10:\"websiteURL\";s:20:\"http://pinterest.com\";s:6:\"apiURL\";s:55:\"http://pinterest.com/about/goodies/#button_for_websites\";s:7:\"baseURL\";s:249:\"<a href=\"http://pinterest.com/pin/create/button/?url=VOTE_URL&description=VOTE_TITLE&media=VOTE_IMAGE\" class=\"pin-it-button\" count-layout=\"VOTE_BUTTON_DESIGN\"></a><script type=\"text/javascript\" src=\"http://assets.pinterest.com/js/pinit.js\"></script>\";s:12:\"baseURL_lazy\";s:207:\"<a href=\"http://pinterest.com/pin/create/button/?url=VOTE_URL&description=VOTE_TITLE&media=VOTE_IMAGE\" class=\"pin-it-button dd-pinterest-ajax-load dd-pinterest-POST_ID\" count-layout=\"VOTE_BUTTON_DESIGN\"></a>\";s:19:\"baseURL_lazy_script\";s:132:\"function loadPinterest_POST_ID(){ jQuery(document).ready(function($) { $.getScript(\'http://assets.pinterest.com/js/pinit.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:61:\"window.setTimeout(\'loadPinterest_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:23:\"dd_pinterest_appendType\";s:4:\"none\";s:25:\"dd_pinterest_buttonDesign\";s:6:\"Normal\";s:28:\"dd_pinterest_ajax_left_float\";s:0:\"\";s:22:\"dd_pinterest_lazy_load\";s:2:\"on\";s:26:\"dd_pinterest_button_weight\";s:2:\"96\";}s:18:\"option_append_type\";s:23:\"dd_pinterest_appendType\";s:20:\"option_button_design\";s:25:\"dd_pinterest_buttonDesign\";s:20:\"option_button_weight\";s:26:\"dd_pinterest_button_weight\";s:22:\"option_ajax_left_float\";s:28:\"dd_pinterest_ajax_left_float\";s:16:\"option_lazy_load\";s:22:\"dd_pinterest_lazy_load\";s:19:\"button_weight_value\";s:2:\"10\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:16:\"dd_button_flattr\";O:9:\"DD_Flattr\":30:{s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:7:\"default\";s:7:\"Compact\";s:7:\"compact\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:7:\"default\";s:7:\"Compact\";s:7:\"compact\";}s:4:\"name\";s:6:\"Flattr\";s:10:\"websiteURL\";s:17:\"http://flattr.com\";s:6:\"apiURL\";s:36:\"http://developers.flattr.net/button/\";s:7:\"baseURL\";s:257:\"<script src=\"http://api.flattr.com/js/0.6/load.js?mode=auto\"></script><a class=\"FlattrButton\" href=\"VOTE_URL\" style=\"display:none;\" title=\"VOTE_TITLE\" data-flattr-uid=\"VOTE_FLATTR_UID\" data-flattr-button=\"VOTE_BUTTON_DESIGN\" data-flattr-category=\"text\"></a>\";s:12:\"baseURL_lazy\";s:187:\"<a class=\"FlattrButton\" href=\"VOTE_URL\" style=\"display:none;\" title=\"VOTE_TITLE\" data-flattr-uid=\"VOTE_FLATTR_UID\" data-flattr-button=\"VOTE_BUTTON_DESIGN\" data-flattr-category=\"text\"></a>\";s:19:\"baseURL_lazy_script\";s:136:\"function loadFlattr_POST_ID(){ jQuery(document).ready(function($) { $.getScript(\'http://api.flattr.com/js/0.6/load.js?mode=auto\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadFlattr_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_flattr_appendType\";s:4:\"none\";s:22:\"dd_flattr_buttonDesign\";s:6:\"Normal\";s:25:\"dd_flattr_ajax_left_float\";s:0:\"\";s:19:\"dd_flattr_lazy_load\";s:0:\"\";s:23:\"dd_flattr_button_weight\";s:2:\"10\";}s:18:\"option_append_type\";s:20:\"dd_flattr_appendType\";s:20:\"option_button_design\";s:22:\"dd_flattr_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_flattr_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_flattr_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_flattr_lazy_load\";s:19:\"button_weight_value\";s:2:\"10\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:16:\"dd_button_pocket\";O:9:\"DD_Pocket\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:6:\"Normal\";s:9:\"lazy_load\";b:0;s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:16:\"buttonLayoutLazy\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:6:\"Pocket\";s:10:\"websiteURL\";s:24:\"http://www.getpocket.com\";s:6:\"apiURL\";s:38:\"https://getpocket.com/publisher/button\";s:7:\"baseURL\";s:382:\"<a data-pocket-label=\"pocket\" data-pocket-count=\"VOTE_BUTTON_DESIGN\" data-save-url=\"VOTE_URL\" class=\"pocket-btn\" data-lang=\"en\"></a><script type=\"text/javascript\">!function(d,i){if(!d.getElementById(i)){var j=d.createElement(\"script\");j.id=i;j.src=\"https://widgets.getpocket.com/v1/j/btn.js?v=1\";var w=d.getElementById(i);d.body.appendChild(j);}}(document,\"pocket-btn-js\");</script>\";s:12:\"baseURL_lazy\";s:164:\"<div class=\'dd-pocket-ajax-load dd-pocket-POST_ID\'></div><a data-pocket-label=\"pocket\" data-pocket-count=\"VOTE_BUTTON_DESIGN\" class=\"pocket-btn\" data-lang=\"en\"></a>\";s:19:\"baseURL_lazy_script\";s:169:\" function loadPocket_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-pocket-POST_ID\').remove();$.getScript(\'https://widgets.getpocket.com/v1/j/btn.js?v=1\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadPocket_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_pocket_appendType\";s:4:\"none\";s:22:\"dd_pocket_buttonDesign\";s:6:\"Normal\";s:25:\"dd_pocket_ajax_left_float\";s:0:\"\";s:19:\"dd_pocket_lazy_load\";s:0:\"\";s:23:\"dd_pocket_button_weight\";s:2:\"93\";}s:18:\"option_append_type\";s:20:\"dd_pocket_appendType\";s:20:\"option_button_design\";s:22:\"dd_pocket_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_pocket_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_pocket_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_pocket_lazy_load\";s:19:\"button_weight_value\";s:2:\"93\";s:19:\"float_button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:16:\"dd_button_tumblr\";O:9:\"DD_Tumblr\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:6:\"Normal\";s:9:\"lazy_load\";b:0;s:12:\"buttonLayout\";a:1:{s:6:\"Normal\";s:0:\"\";}s:16:\"buttonLayoutLazy\";a:1:{s:6:\"Normal\";s:0:\"\";}s:16:\"isEncodeRequired\";b:1;s:4:\"name\";s:6:\"Tumblr\";s:10:\"websiteURL\";s:21:\"http://www.tumblr.com\";s:6:\"apiURL\";s:29:\"http://www.tumblr.com/buttons\";s:7:\"baseURL\";s:342:\"<a href=\"http://www.tumblr.com/share?link=VOTE_URL\" title=\"Share on Tumblr\" style=\"display:inline-block; text-indent:-9999px; overflow:hidden; width:61px; height:20px; background:url(\'http://platform.tumblr.com/v1/share_2.png\') top left no-repeat transparent;\">Share on Tumblr</a><script src=\"http://platform.tumblr.com/v1/share.js\"></script>\";s:12:\"baseURL_lazy\";s:336:\"<div class=\"dd-tumblrajax-load dd-tumblr-POST_ID\"></div><a href=\"http://www.tumblr.com/share?link=VOTE_URL\" title=\"Share on Tumblr\" style=\"display:inline-block; text-indent:-9999px; overflow:hidden; width:61px; height:20px; background:url(\'http://platform.tumblr.com/v1/share_2.png\') top left no-repeat transparent;\">Share on Tumblr</a>\";s:19:\"baseURL_lazy_script\";s:162:\" function loadTumblr_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-pocket-POST_ID\').remove();$.getScript(\'http://platform.tumblr.com/v1/share.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadTumblr_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_tumblr_appendType\";s:4:\"none\";s:22:\"dd_tumblr_buttonDesign\";s:6:\"Normal\";s:25:\"dd_tumblr_ajax_left_float\";s:0:\"\";s:19:\"dd_tumblr_lazy_load\";s:0:\"\";s:23:\"dd_tumblr_button_weight\";s:2:\"94\";}s:18:\"option_append_type\";s:20:\"dd_tumblr_appendType\";s:20:\"option_button_design\";s:22:\"dd_tumblr_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_tumblr_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_tumblr_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_tumblr_lazy_load\";s:19:\"button_weight_value\";s:2:\"94\";s:19:\"float_button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}}s:22:\"dd_normal_button_final\";a:2:{s:22:\"dd_button_fblike_xfbml\";r:781;s:17:\"dd_button_google1\";r:829;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1375, 'dd_float_display_config', 'a:7:{s:14:\"display_option\";a:6:{s:19:\"display_option_home\";s:0:\"\";s:19:\"display_option_post\";s:2:\"on\";s:19:\"display_option_page\";s:0:\"\";s:18:\"display_option_cat\";s:0:\"\";s:18:\"display_option_tag\";s:0:\"\";s:22:\"display_option_archive\";s:0:\"\";}s:15:\"category_option\";a:3:{s:21:\"category_option_radio\";s:29:\"category_option_radio_include\";s:23:\"category_option_include\";s:3:\"All\";s:23:\"category_option_exclude\";s:4:\"None\";}s:16:\"dd_status_option\";a:1:{s:24:\"dd_status_option_display\";s:0:\"\";}s:15:\"dd_float_option\";a:4:{s:22:\"dd_float_option_credit\";s:0:\"\";s:20:\"dd_float_option_left\";s:2:\"40\";s:19:\"dd_float_option_top\";s:1:\"0\";s:31:\"dd_float_option_initial_element\";s:0:\"\";}s:24:\"dd_comment_anchor_option\";a:1:{s:31:\"dd_comment_anchor_option_status\";s:0:\"\";}s:21:\"dd_extra_option_email\";a:2:{s:28:\"dd_extra_option_email_status\";s:0:\"\";s:31:\"dd_extra_option_email_sharethis\";s:0:\"\";}s:21:\"dd_extra_option_print\";a:1:{s:28:\"dd_extra_option_print_status\";s:0:\"\";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1376, 'dd_float_button', 'a:2:{s:23:\"dd_float_button_display\";a:24:{s:16:\"dd_button_reddit\";O:9:\"DD_Reddit\":31:{s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:21:\"button2.html?width=51\";s:7:\"Compact\";s:22:\"button1.html?width=120\";s:4:\"Icon\";s:21:\"button3.html?width=69\";}s:16:\"buttonLayoutLazy\";a:3:{s:6:\"Normal\";s:21:\"button2.html?width=51\";s:7:\"Compact\";s:22:\"button1.html?width=120\";s:4:\"Icon\";s:21:\"button3.html?width=69\";}s:21:\"buttonLayoutLazyWidth\";a:3:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";s:4:\"Icon\";s:2:\"69\";}s:22:\"buttonLayoutLazyHeight\";a:3:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";s:4:\"Icon\";s:2:\"52\";}s:23:\"buttonLayoutWidthHeight\";a:3:{s:6:\"Normal\";s:22:\"height=\"69\" width=\"51\"\";s:7:\"Compact\";s:23:\"height=\"22\" width=\"120\"\";s:4:\"Icon\";s:22:\"height=\"52\" width=\"69\"\";}s:4:\"name\";s:6:\"Reddit\";s:10:\"websiteURL\";s:21:\"http://www.reddit.com\";s:6:\"apiURL\";s:30:\"http://www.reddit.com/buttons/\";s:7:\"baseURL\";s:165:\"<iframe src=\"http://www.reddit.com/static/button/VOTE_BUTTON_DESIGN&url=VOTE_URL&title=VOTE_TITLE&newwindow=\'1\'\" EXTRA_VALUE scrolling=\'no\' frameborder=\'0\'></iframe>\";s:12:\"baseURL_lazy\";s:164:\"<div class=\'dd-reddit-ajax-load dd-reddit-POST_ID\'></div><iframe class=\'DD_REDDIT_AJAX_POST_ID\' src=\'\' height=\'0\' width=\'0\' scrolling=\'no\' frameborder=\'0\'></iframe>\";s:19:\"baseURL_lazy_script\";s:400:\" function loadReddit_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-reddit-POST_ID\').remove();$(\'.DD_REDDIT_AJAX_POST_ID\').attr(\'width\',\'VOTE_BUTTON_DESIGN_LAZY_WIDTH\');$(\'.DD_REDDIT_AJAX_POST_ID\').attr(\'height\',\'VOTE_BUTTON_DESIGN_LAZY_HEIGHT\');$(\'.DD_REDDIT_AJAX_POST_ID\').attr(\'src\',\'http://www.reddit.com/static/button/VOTE_BUTTON_DESIGN&url=VOTE_URL&title=VOTE_TITLE&newwindow=1\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadReddit_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_reddit_appendType\";s:0:\"\";s:22:\"dd_reddit_buttonDesign\";s:0:\"\";s:25:\"dd_reddit_ajax_left_float\";s:0:\"\";s:19:\"dd_reddit_lazy_load\";s:0:\"\";s:23:\"dd_reddit_button_weight\";s:2:\"99\";}s:18:\"option_append_type\";s:20:\"dd_reddit_appendType\";s:20:\"option_button_design\";s:22:\"dd_reddit_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_reddit_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_reddit_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_reddit_lazy_load\";s:19:\"button_weight_value\";s:2:\"99\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;}s:15:\"dd_button_dzone\";O:8:\"DD_DZone\":30:{s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:25:\"1\' height=\'70\' width=\'50\'\";s:7:\"Compact\";s:26:\"2\' height=\'25\' width=\'155\'\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:1:\"1\";s:7:\"Compact\";s:1:\"2\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"50\";s:7:\"Compact\";s:3:\"155\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"70\";s:7:\"Compact\";s:2:\"25\";}s:4:\"name\";s:5:\"DZone\";s:10:\"websiteURL\";s:20:\"http://www.dzone.com\";s:6:\"apiURL\";s:38:\"http://www.dzone.com/links/buttons.jsp\";s:7:\"baseURL\";s:163:\"<iframe src=\'http://widgets.dzone.com/links/widgets/zoneit.html?url=VOTE_URL&amp;title=VOTE_TITLE&amp;t=VOTE_BUTTON_DESIGN frameborder=\'0\' scrolling=\'no\'></iframe>\";s:12:\"baseURL_lazy\";s:161:\"<div class=\'dd-dzone-ajax-load dd-dzone-POST_ID\'></div><iframe class=\'DD_DZONE_AJAX_POST_ID\' src=\'\' height=\'0\' width=\'0\' scrolling=\'no\' frameborder=\'0\'></iframe>\";s:19:\"baseURL_lazy_script\";s:400:\" function loadDzone_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-dzone-POST_ID\').remove();$(\'.DD_DZONE_AJAX_POST_ID\').attr(\'width\',\'VOTE_BUTTON_DESIGN_LAZY_WIDTH\');$(\'.DD_DZONE_AJAX_POST_ID\').attr(\'height\',\'VOTE_BUTTON_DESIGN_LAZY_HEIGHT\');$(\'.DD_DZONE_AJAX_POST_ID\').attr(\'src\',\'http://widgets.dzone.com/links/widgets/zoneit.html?url=VOTE_URL&title=VOTE_TITLE&t=VOTE_BUTTON_DESIGN\'); }); }\";s:21:\"scheduler_lazy_script\";s:57:\"window.setTimeout(\'loadDzone_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:19:\"dd_dzone_appendType\";s:0:\"\";s:21:\"dd_dzone_buttonDesign\";s:0:\"\";s:24:\"dd_dzone_ajax_left_float\";s:0:\"\";s:18:\"dd_dzone_lazy_load\";s:0:\"\";s:22:\"dd_dzone_button_weight\";s:2:\"97\";}s:18:\"option_append_type\";s:19:\"dd_dzone_appendType\";s:20:\"option_button_design\";s:21:\"dd_dzone_buttonDesign\";s:20:\"option_button_weight\";s:22:\"dd_dzone_button_weight\";s:22:\"option_ajax_left_float\";s:24:\"dd_dzone_ajax_left_float\";s:16:\"option_lazy_load\";s:18:\"dd_dzone_lazy_load\";s:19:\"button_weight_value\";s:2:\"97\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;}s:17:\"dd_button_fbshare\";O:10:\"DD_FbShare\":30:{s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:9:\"box_count\";s:7:\"Compact\";s:12:\"button_count\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:9:\"box_count\";s:7:\"Compact\";s:12:\"button_count\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:14:\"Facebook Share\";s:10:\"websiteURL\";s:23:\"http://www.facebook.com\";s:6:\"apiURL\";s:30:\"http://www.facebook.com/share/\";s:7:\"baseURL\";s:209:\"<a name=\'fb_share\' type=\'VOTE_BUTTON_DESIGN\' share_url=\'VOTE_URL\' href=\'http://www.facebook.com/sharer.php\'></a><script src=\'http://static.ak.fbcdn.net/connect.php/js/FB.Share\' type=\'text/javascript\'></script>\";s:12:\"baseURL_lazy\";s:203:\"<div class=\'dd-fbshare-ajax-load dd-fbshare-POST_ID\'></div><a class=\'DD_FBSHARE_AJAX_POST_ID\' name=\'fb_share\' type=\'VOTE_BUTTON_DESIGN\' share_url=\'VOTE_URL\' href=\'http://www.facebook.com/sharer.php\'></a>\";s:19:\"baseURL_lazy_script\";s:177:\" function loadFBShare_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-fbshare-POST_ID\').remove(); $.getScript(\'http://static.ak.fbcdn.net/connect.php/js/FB.Share\'); }); }\";s:21:\"scheduler_lazy_script\";s:59:\"window.setTimeout(\'loadFBShare_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:21:\"dd_fbshare_appendType\";s:0:\"\";s:23:\"dd_fbshare_buttonDesign\";s:0:\"\";s:26:\"dd_fbshare_ajax_left_float\";s:0:\"\";s:20:\"dd_fbshare_lazy_load\";s:0:\"\";s:24:\"dd_fbshare_button_weight\";s:2:\"95\";}s:18:\"option_append_type\";s:21:\"dd_fbshare_appendType\";s:20:\"option_button_design\";s:23:\"dd_fbshare_buttonDesign\";s:20:\"option_button_weight\";s:24:\"dd_fbshare_button_weight\";s:22:\"option_ajax_left_float\";s:26:\"dd_fbshare_ajax_left_float\";s:16:\"option_lazy_load\";s:20:\"dd_fbshare_lazy_load\";s:19:\"button_weight_value\";s:2:\"95\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:19:\"dd_button_delicious\";O:12:\"DD_Delicious\":30:{s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:25:\"dd_delicious_normal_image\";s:7:\"Compact\";s:26:\"dd_delicious_compact_image\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:25:\"dd_delicious_normal_image\";s:7:\"Compact\";s:26:\"dd_delicious_compact_image\";}s:4:\"name\";s:9:\"Delicious\";s:10:\"websiteURL\";s:24:\"http://www.delicious.com\";s:6:\"apiURL\";s:35:\"http://www.delicious.com/help/feeds\";s:7:\"baseURL\";s:436:\"<div class=\'VOTE_BUTTON_DESIGN dd_delicious\'><a class=\'VOTE_BUTTON_DESIGN\' href=\'http://delicious.com/save\' onclick=\"window.open(\'http://delicious.com/save?v=5&amp;noui&amp;jump=close&amp;url=\'+encodeURIComponent(\'VOTE_URL\')+\'&amp;title=\'+encodeURIComponent(\'VOTE_TITLE\'),\'delicious\', \'toolbar=no,width=550,height=550\'); return false;\"><span id=\'DD_DELICIOUS_AJAX_POST_ID\'><div style=\'padding-top:3px\'>SAVED_COUNT</div></span></a></div>\";s:12:\"baseURL_lazy\";s:374:\"<div class=\'VOTE_BUTTON_DESIGN dd_delicious\'><a href=\'http://delicious.com/save\' onclick=\"window.open(\'http://delicious.com/save?v=5&amp;noui&amp;jump=close&amp;url=\'+encodeURIComponent(\'VOTE_URL\')+\'&amp;title=\'+encodeURIComponent(\'VOTE_TITLE\'),\'delicious\', \'toolbar=no,width=550,height=550\'); return false;\"><span id=\'DD_DELICIOUS_AJAX_POST_ID\'>SAVED_COUNT</span></a></div>\";s:19:\"baseURL_lazy_script\";s:428:\" function loadDelicious_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-delicious-POST_ID\').remove();$.getJSON(\'http://feeds.delicious.com/v2/json/urlinfo/data?url=VOTE_URL&amp;callback=?\',function(data) {var msg =\'\';var count = 0;if (data.length > 0) {count = data[0].total_posts;if(count ==0){msg = \'0\';}else if(count ==1){msg = \'1\';}else{msg = count}}else{msg = \'0\';}$(\'#DD_DELICIOUS_AJAX_POST_ID\').text(msg);}); }); }\";s:21:\"scheduler_lazy_script\";s:61:\"window.setTimeout(\'loadDelicious_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:23:\"dd_delicious_appendType\";s:0:\"\";s:25:\"dd_delicious_buttonDesign\";s:0:\"\";s:28:\"dd_delicious_ajax_left_float\";s:0:\"\";s:22:\"dd_delicious_lazy_load\";s:0:\"\";s:26:\"dd_delicious_button_weight\";s:2:\"93\";}s:18:\"option_append_type\";s:23:\"dd_delicious_appendType\";s:20:\"option_button_design\";s:25:\"dd_delicious_buttonDesign\";s:20:\"option_button_weight\";s:26:\"dd_delicious_button_weight\";s:22:\"option_ajax_left_float\";s:28:\"dd_delicious_ajax_left_float\";s:16:\"option_lazy_load\";s:22:\"dd_delicious_lazy_load\";s:19:\"button_weight_value\";s:2:\"93\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:16:\"dd_button_fblike\";O:9:\"DD_FbLike\":31:{s:19:\"float_button_design\";s:14:\"Like Box Count\";s:12:\"buttonLayout\";a:6:{s:13:\"Like Standard\";s:81:\"layout=standard&amp;action=like&amp;width=350&amp;height=24&amp;colorscheme=light\";s:17:\"Like Button Count\";s:84:\"layout=button_count&amp;action=like&amp;width=92&amp;height=20&amp;colorscheme=light\";s:14:\"Like Box Count\";s:81:\"layout=box_count&amp;action=like&amp;width=50&amp;height=60&amp;colorscheme=light\";s:18:\"Recommend Standard\";s:86:\"layout=standard&amp;action=recommend&amp;width=400&amp;height=24&amp;colorscheme=light\";s:22:\"Recommend Button Count\";s:90:\"layout=button_count&amp;action=recommend&amp;width=130&amp;height=20&amp;colorscheme=light\";s:19:\"Recommend Box Count\";s:86:\"layout=box_count&amp;action=recommend&amp;width=90&amp;height=60&amp;colorscheme=light\";}s:16:\"buttonLayoutLazy\";a:6:{s:13:\"Like Standard\";s:81:\"layout=standard&amp;action=like&amp;width=350&amp;height=24&amp;colorscheme=light\";s:17:\"Like Button Count\";s:84:\"layout=button_count&amp;action=like&amp;width=92&amp;height=20&amp;colorscheme=light\";s:14:\"Like Box Count\";s:81:\"layout=box_count&amp;action=like&amp;width=50&amp;height=60&amp;colorscheme=light\";s:18:\"Recommend Standard\";s:86:\"layout=standard&amp;action=recommend&amp;width=400&amp;height=24&amp;colorscheme=light\";s:22:\"Recommend Button Count\";s:90:\"layout=button_count&amp;action=recommend&amp;width=130&amp;height=20&amp;colorscheme=light\";s:19:\"Recommend Box Count\";s:86:\"layout=box_count&amp;action=recommend&amp;width=90&amp;height=60&amp;colorscheme=light\";}s:23:\"buttonLayoutWidthHeight\";a:6:{s:13:\"Like Standard\";s:25:\"width:500px; height:24px;\";s:17:\"Like Button Count\";s:24:\"width:92px; height:20px;\";s:14:\"Like Box Count\";s:24:\"width:50px; height:62px;\";s:18:\"Recommend Standard\";s:25:\"width:500px; height:24px;\";s:22:\"Recommend Button Count\";s:25:\"width:130px; height:20px;\";s:19:\"Recommend Box Count\";s:24:\"width:90px; height:60px;\";}s:21:\"buttonLayoutLazyWidth\";a:6:{s:13:\"Like Standard\";s:3:\"500\";s:17:\"Like Button Count\";s:2:\"92\";s:14:\"Like Box Count\";s:2:\"50\";s:18:\"Recommend Standard\";s:3:\"500\";s:22:\"Recommend Button Count\";s:3:\"130\";s:19:\"Recommend Box Count\";s:2:\"90\";}s:22:\"buttonLayoutLazyHeight\";a:6:{s:13:\"Like Standard\";s:2:\"24\";s:17:\"Like Button Count\";s:2:\"20\";s:14:\"Like Box Count\";s:2:\"62\";s:18:\"Recommend Standard\";s:2:\"24\";s:22:\"Recommend Button Count\";s:2:\"20\";s:19:\"Recommend Box Count\";s:2:\"60\";}s:4:\"name\";s:22:\"Facebook Like (IFrame)\";s:10:\"websiteURL\";s:23:\"http://www.facebook.com\";s:6:\"apiURL\";s:58:\"http://developers.facebook.com/docs/reference/plugins/like\";s:7:\"baseURL\";s:234:\"<iframe src=\'http://www.facebook.com/plugins/like.php?href=VOTE_URL&amp;locale=FACEBOOK_LOCALE&amp;VOTE_BUTTON_DESIGN\' scrolling=\'no\' frameborder=\'0\' style=\'border:none; overflow:hidden; EXTRA_VALUE\' allowTransparency=\'true\'></iframe>\";s:12:\"baseURL_lazy\";s:189:\"<div class=\'dd-fblike-ajax-load dd-fblike-POST_ID\'></div><iframe class=\"DD_FBLIKE_AJAX_POST_ID\" src=\'\' height=\'0\' width=\'0\' scrolling=\'no\' frameborder=\'0\' allowTransparency=\'true\'></iframe>\";s:19:\"baseURL_lazy_script\";s:408:\" function loadFBLike_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-fblike-POST_ID\').remove();$(\'.DD_FBLIKE_AJAX_POST_ID\').attr(\'width\',\'VOTE_BUTTON_DESIGN_LAZY_WIDTH\');$(\'.DD_FBLIKE_AJAX_POST_ID\').attr(\'height\',\'VOTE_BUTTON_DESIGN_LAZY_HEIGHT\');$(\'.DD_FBLIKE_AJAX_POST_ID\').attr(\'src\',\'http://www.facebook.com/plugins/like.php?href=VOTE_URL&amp;locale=FACEBOOK_LOCALE&amp;VOTE_BUTTON_DESIGN\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadFBLike_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_fblike_appendType\";s:0:\"\";s:22:\"dd_fblike_buttonDesign\";s:0:\"\";s:25:\"dd_fblike_ajax_left_float\";s:0:\"\";s:19:\"dd_fblike_lazy_load\";s:0:\"\";s:23:\"dd_fblike_button_weight\";s:2:\"96\";}s:18:\"option_append_type\";s:20:\"dd_fblike_appendType\";s:20:\"option_button_design\";s:22:\"dd_fblike_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_fblike_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_fblike_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_fblike_lazy_load\";s:19:\"button_weight_value\";s:2:\"96\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;}s:21:\"dd_button_stumbleupon\";O:14:\"DD_StumbleUpon\":30:{s:19:\"islazyLoadAvailable\";b:0;s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:1:\"5\";s:7:\"Compact\";s:1:\"1\";}s:4:\"name\";s:11:\"Stumbleupon\";s:10:\"websiteURL\";s:26:\"http://www.stumbleupon.com\";s:6:\"apiURL\";s:34:\"http://www.stumbleupon.com/badges/\";s:7:\"baseURL\";s:102:\"<script src=\'http://www.stumbleupon.com/hostedbadge.php?s=VOTE_BUTTON_DESIGN&amp;r=VOTE_URL\'></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:10:\"wp_options\";a:5:{s:25:\"dd_stumbleupon_appendType\";s:0:\"\";s:27:\"dd_stumbleupon_buttonDesign\";s:0:\"\";s:30:\"dd_stumbleupon_ajax_left_float\";s:0:\"\";s:24:\"dd_stumbleupon_lazy_load\";s:0:\"\";s:28:\"dd_stumbleupon_button_weight\";s:2:\"97\";}s:18:\"option_append_type\";s:25:\"dd_stumbleupon_appendType\";s:20:\"option_button_design\";s:27:\"dd_stumbleupon_buttonDesign\";s:20:\"option_button_weight\";s:28:\"dd_stumbleupon_button_weight\";s:22:\"option_ajax_left_float\";s:30:\"dd_stumbleupon_ajax_left_float\";s:16:\"option_lazy_load\";s:24:\"dd_stumbleupon_lazy_load\";s:19:\"button_weight_value\";s:2:\"97\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:19:\"dd_button_yahoobuzz\";O:8:\"DD_YBuzz\":30:{s:19:\"islazyLoadAvailable\";b:0;s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:6:\"square\";s:7:\"Compact\";s:11:\"small-votes\";s:12:\"Compact_Text\";s:10:\"text-votes\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:10:\"Yahoo Buzz\";s:10:\"websiteURL\";s:21:\"http://buzz.yahoo.com\";s:6:\"apiURL\";s:29:\"http://buzz.yahoo.com/buttons\";s:7:\"baseURL\";s:216:\"<script type=\'text/javascript\'>yahooBuzzArticleHeadline=\"VOTE_TITLE\";yahooBuzzArticleId=\"VOTE_URL\";</script><script type=\'text/javascript\' src=\'http://d.yimg.com/ds/badge2.js\' badgetype=\'VOTE_BUTTON_DESIGN\'></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:19:\"dd_ybuzz_appendType\";s:0:\"\";s:21:\"dd_ybuzz_buttonDesign\";s:0:\"\";s:24:\"dd_ybuzz_ajax_left_float\";s:0:\"\";s:18:\"dd_ybuzz_lazy_load\";s:0:\"\";s:22:\"dd_ybuzz_button_weight\";s:2:\"90\";}s:18:\"option_append_type\";s:19:\"dd_ybuzz_appendType\";s:20:\"option_button_design\";s:21:\"dd_ybuzz_buttonDesign\";s:20:\"option_button_weight\";s:22:\"dd_ybuzz_button_weight\";s:22:\"option_ajax_left_float\";s:24:\"dd_ybuzz_ajax_left_float\";s:16:\"option_lazy_load\";s:18:\"dd_ybuzz_lazy_load\";s:19:\"button_weight_value\";s:2:\"90\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:19:\"dd_button_fbshareme\";O:12:\"DD_FbShareMe\":30:{s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:5:\"large\";s:7:\"Compact\";s:5:\"small\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:5:\"large\";s:7:\"Compact\";s:5:\"small\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"53\";s:7:\"Compact\";s:2:\"80\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"18\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:10:\"fbShare.me\";s:10:\"websiteURL\";s:21:\"http://www.fbshare.me\";s:6:\"apiURL\";s:21:\"http://www.fbshare.me\";s:7:\"baseURL\";s:142:\"<script>var fbShare = {url: \'VOTE_URL\',size: \'VOTE_BUTTON_DESIGN\',}</script><script src=\'http://widgets.fbshare.me/files/fbshare.js\'></script>\";s:12:\"baseURL_lazy\";s:198:\"<div class=\'dd-fbshareme-ajax-load dd-fbshareme-POST_ID\'></div><iframe class=\"DD_FBSHAREME_AJAX_POST_ID\" src=\'\' height=\'0\' width=\'0\' scrolling=\'no\' frameborder=\'0\' allowtransparency=\'true\'></iframe>\";s:19:\"baseURL_lazy_script\";s:400:\" function loadFBShareMe_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-fbshareme-POST_ID\').remove();$(\'.DD_FBSHAREME_AJAX_POST_ID\').attr(\'width\',\'VOTE_BUTTON_DESIGN_LAZY_WIDTH\');$(\'.DD_FBSHAREME_AJAX_POST_ID\').attr(\'height\',\'VOTE_BUTTON_DESIGN_LAZY_HEIGHT\');$(\'.DD_FBSHAREME_AJAX_POST_ID\').attr(\'src\',\'http://widgets.fbshare.me/files/fbshare.php?url=VOTE_URL&size=VOTE_BUTTON_DESIGN\');  }); }\";s:21:\"scheduler_lazy_script\";s:61:\"window.setTimeout(\'loadFBShareMe_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:23:\"dd_fbshareme_appendType\";s:0:\"\";s:25:\"dd_fbshareme_buttonDesign\";s:0:\"\";s:28:\"dd_fbshareme_ajax_left_float\";s:0:\"\";s:22:\"dd_fbshareme_lazy_load\";s:0:\"\";s:26:\"dd_fbshareme_button_weight\";s:2:\"94\";}s:18:\"option_append_type\";s:23:\"dd_fbshareme_appendType\";s:20:\"option_button_design\";s:25:\"dd_fbshareme_buttonDesign\";s:20:\"option_button_weight\";s:26:\"dd_fbshareme_button_weight\";s:22:\"option_ajax_left_float\";s:28:\"dd_fbshareme_ajax_left_float\";s:16:\"option_lazy_load\";s:22:\"dd_fbshareme_lazy_load\";s:19:\"button_weight_value\";s:2:\"94\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;}s:21:\"dd_button_blogenagage\";O:13:\"DD_BlogEngage\":30:{s:19:\"islazyLoadAvailable\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:1:{s:6:\"Normal\";s:11:\"button4.php\";}s:4:\"name\";s:10:\"BlogEngage\";s:10:\"websiteURL\";s:25:\"http://www.blogengage.com\";s:6:\"apiURL\";s:43:\"http://www.blogengage.com/profile_promo.php\";s:7:\"baseURL\";s:132:\"<script type=\'text/javascript\'>submit_url = \'VOTE_URL\';</script><script src=\'http://blogengage.com/evb/VOTE_BUTTON_DESIGN\'></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:24:\"dd_blogengage_appendType\";s:0:\"\";s:26:\"dd_blogengage_buttonDesign\";s:0:\"\";s:29:\"dd_blogengage_ajax_left_float\";s:0:\"\";s:23:\"dd_blogengage_lazy_load\";s:0:\"\";s:27:\"dd_blogengage_button_weight\";s:2:\"84\";}s:18:\"option_append_type\";s:24:\"dd_blogengage_appendType\";s:20:\"option_button_design\";s:26:\"dd_blogengage_buttonDesign\";s:20:\"option_button_weight\";s:27:\"dd_blogengage_button_weight\";s:22:\"option_ajax_left_float\";s:29:\"dd_blogengage_ajax_left_float\";s:16:\"option_lazy_load\";s:23:\"dd_blogengage_lazy_load\";s:19:\"button_weight_value\";s:2:\"84\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:21:\"dd_button_thewebblend\";O:14:\"DD_TheWebBlend\":30:{s:19:\"islazyLoadAvailable\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:0:\"\";s:7:\"Compact\";s:21:\"badge_size=\'compact\';\";}s:4:\"name\";s:11:\"TheWebBlend\";s:10:\"websiteURL\";s:26:\"http://www.thewebblend.com\";s:6:\"apiURL\";s:33:\"http://thewebblend.com/tools/vote\";s:7:\"baseURL\";s:194:\"<script type=\'text/javascript\'>url_site=\'VOTE_URL\'; VOTE_BUTTON_DESIGN</script><script src=\'http://thewebblend.com/sites/all/modules/drigg_external/js/button.js\' type=\'text/javascript\'></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:22:\"dd_webblend_appendType\";s:0:\"\";s:24:\"dd_webblend_buttonDesign\";s:0:\"\";s:27:\"dd_webblend_ajax_left_float\";s:0:\"\";s:21:\"dd_webblend_lazy_load\";s:0:\"\";s:25:\"dd_webblend_button_weight\";s:2:\"85\";}s:18:\"option_append_type\";s:22:\"dd_webblend_appendType\";s:20:\"option_button_design\";s:24:\"dd_webblend_buttonDesign\";s:20:\"option_button_weight\";s:25:\"dd_webblend_button_weight\";s:22:\"option_ajax_left_float\";s:27:\"dd_webblend_ajax_left_float\";s:16:\"option_lazy_load\";s:21:\"dd_webblend_lazy_load\";s:19:\"button_weight_value\";s:2:\"85\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:20:\"dd_button_designbump\";O:13:\"DD_DesignBump\":30:{s:19:\"islazyLoadAvailable\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:1:{s:6:\"Normal\";s:6:\"Normal\";}s:4:\"name\";s:10:\"DesignBump\";s:10:\"websiteURL\";s:25:\"http://www.designbump.com\";s:6:\"apiURL\";s:33:\"http://designbump.com/content/evb\";s:7:\"baseURL\";s:176:\"<script type=\'text/javascript\'>url_site=\'VOTE_URL\'; </script> <script src=\'http://designbump.com/sites/all/modules/drigg_external/js/button.js\' type=\'text/javascript\'></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:24:\"dd_designbump_appendType\";s:0:\"\";s:26:\"dd_designbump_buttonDesign\";s:0:\"\";s:29:\"dd_designbump_ajax_left_float\";s:0:\"\";s:23:\"dd_designbump_lazy_load\";s:0:\"\";s:27:\"dd_designbump_button_weight\";s:2:\"87\";}s:18:\"option_append_type\";s:24:\"dd_designbump_appendType\";s:20:\"option_button_design\";s:26:\"dd_designbump_buttonDesign\";s:20:\"option_button_weight\";s:27:\"dd_designbump_button_weight\";s:22:\"option_ajax_left_float\";s:29:\"dd_designbump_ajax_left_float\";s:16:\"option_lazy_load\";s:23:\"dd_designbump_lazy_load\";s:19:\"button_weight_value\";s:2:\"87\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:17:\"dd_button_twitter\";O:10:\"DD_Twitter\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";s:2:\"on\";s:9:\"lazy_load\";b:0;s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:7:\"Twitter\";s:10:\"websiteURL\";s:22:\"http://www.twitter.com\";s:6:\"apiURL\";s:38:\"http://twitter.com/goodies/tweetbutton\";s:7:\"baseURL\";s:247:\"<a href=\"http://twitter.com/share\" class=\"twitter-share-button\" data-url=\"VOTE_URL\" data-count=\"VOTE_BUTTON_DESIGN\" data-text=\"VOTE_TITLE\" data-via=\"VOTE_SOURCE\" ></a><script type=\"text/javascript\" src=\"//platform.twitter.com/widgets.js\"></script>\";s:12:\"baseURL_lazy\";s:226:\"<div class=\'dd-twitter-ajax-load dd-twitter-POST_ID\'></div><a href=\"http://twitter.com/share\" class=\"twitter-share-button\" data-url=\"VOTE_URL\" data-count=\"VOTE_BUTTON_DESIGN\" data-text=\"VOTE_TITLE\" data-via=\"VOTE_SOURCE\" ></a>\";s:19:\"baseURL_lazy_script\";s:164:\" function loadTwitter_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-twitter-POST_ID\').remove();$.getScript(\'http://platform.twitter.com/widgets.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:59:\"window.setTimeout(\'loadTwitter_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:21:\"dd_twitter_appendType\";s:0:\"\";s:23:\"dd_twitter_buttonDesign\";s:0:\"\";s:26:\"dd_twitter_ajax_left_float\";s:2:\"on\";s:20:\"dd_twitter_lazy_load\";s:0:\"\";s:24:\"dd_twitter_button_weight\";s:3:\"110\";}s:18:\"option_append_type\";s:21:\"dd_twitter_appendType\";s:20:\"option_button_design\";s:23:\"dd_twitter_buttonDesign\";s:20:\"option_button_weight\";s:24:\"dd_twitter_button_weight\";s:22:\"option_ajax_left_float\";s:26:\"dd_twitter_ajax_left_float\";s:16:\"option_lazy_load\";s:20:\"dd_twitter_lazy_load\";s:19:\"button_weight_value\";s:3:\"110\";s:19:\"float_button_design\";s:6:\"Normal\";s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:19:\"dd_button_tweetmeme\";O:12:\"DD_TweetMeme\":30:{s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:30:\"normal\' height=\'61\' width=\'50\'\";s:7:\"Compact\";s:31:\"compact\' height=\'20\' width=\'90\'\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"normal\";s:7:\"Compact\";s:7:\"compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"50\";s:7:\"Compact\";s:2:\"90\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"61\";s:7:\"Compact\";s:2:\"20\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:9:\"TweetMeme\";s:10:\"websiteURL\";s:25:\"http://www.tweetmeme.com/\";s:6:\"apiURL\";s:46:\"http://wordpress.org/extend/plugins/tweetmeme/\";s:7:\"baseURL\";s:200:\"<iframe src=\'http://api.tweetmeme.com/button.js?url=VOTE_URL&source=VOTE_SOURCE&service=VOTE_SERVICE_NAME&service_api=VOTE_SERVICE_API&style=VOTE_BUTTON_DESIGN frameborder=\'0\' scrolling=\'no\'></iframe>\";s:12:\"baseURL_lazy\";s:173:\"<div class=\'dd-tweetmeme-ajax-load dd-tweetmeme-POST_ID\'></div><iframe class=\'DD_TWEETMEME_AJAX_POST_ID\' src=\'\' height=\'0\' width=\'0\' scrolling=\'no\' frameborder=\'0\'></iframe>\";s:19:\"baseURL_lazy_script\";s:465:\" function loadTweetMeme_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-tweetmeme-POST_ID\').remove();$(\'.DD_TWEETMEME_AJAX_POST_ID\').attr(\'width\',\'VOTE_BUTTON_DESIGN_LAZY_WIDTH\');$(\'.DD_TWEETMEME_AJAX_POST_ID\').attr(\'height\',\'VOTE_BUTTON_DESIGN_LAZY_HEIGHT\');$(\'.DD_TWEETMEME_AJAX_POST_ID\').attr(\'src\',\'http://api.tweetmeme.com/button.js?url=VOTE_URL&source=VOTE_SOURCE&style=VOTE_BUTTON_DESIGN&service=VOTE_SERVICE_NAME&service_api=VOTE_SERVICE_API\'); }); }\";s:21:\"scheduler_lazy_script\";s:61:\"window.setTimeout(\'loadTweetMeme_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:23:\"dd_tweetmeme_appendType\";s:0:\"\";s:25:\"dd_tweetmeme_buttonDesign\";s:0:\"\";s:28:\"dd_tweetmeme_ajax_left_float\";s:0:\"\";s:22:\"dd_tweetmeme_lazy_load\";s:0:\"\";s:26:\"dd_tweetmeme_button_weight\";s:2:\"97\";}s:18:\"option_append_type\";s:23:\"dd_tweetmeme_appendType\";s:20:\"option_button_design\";s:25:\"dd_tweetmeme_buttonDesign\";s:20:\"option_button_weight\";s:26:\"dd_tweetmeme_button_weight\";s:22:\"option_ajax_left_float\";s:28:\"dd_tweetmeme_ajax_left_float\";s:16:\"option_lazy_load\";s:22:\"dd_tweetmeme_lazy_load\";s:19:\"button_weight_value\";s:2:\"97\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;}s:15:\"dd_button_topsy\";O:8:\"DD_Topsy\":30:{s:19:\"islazyLoadAvailable\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:3:\"big\";s:7:\"Compact\";s:7:\"compact\";}s:4:\"name\";s:5:\"Topsy\";s:10:\"websiteURL\";s:20:\"http://www.topsy.com\";s:6:\"apiURL\";s:44:\"http://labs.topsy.com/button/retweet-button/\";s:7:\"baseURL\";s:233:\"<script type=\"text/javascript\" src=\"http://cdn.topsy.com/topsy.js?init=topsyWidgetCreator\"></script><div class=\"topsy_widget_data\"><!--{\"url\":\"VOTE_URL\",\"style\":\"VOTE_BUTTON_DESIGN\",\"theme\":\"VOTE_THEME\",\"nick\":\"VOTE_SOURCE\"}--></div>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:19:\"dd_topsy_appendType\";s:0:\"\";s:21:\"dd_topsy_buttonDesign\";s:0:\"\";s:24:\"dd_topsy_ajax_left_float\";s:0:\"\";s:18:\"dd_topsy_lazy_load\";s:0:\"\";s:22:\"dd_topsy_button_weight\";s:2:\"96\";}s:18:\"option_append_type\";s:19:\"dd_topsy_appendType\";s:20:\"option_button_design\";s:21:\"dd_topsy_buttonDesign\";s:20:\"option_button_weight\";s:22:\"dd_topsy_button_weight\";s:22:\"option_ajax_left_float\";s:24:\"dd_topsy_ajax_left_float\";s:16:\"option_lazy_load\";s:18:\"dd_topsy_lazy_load\";s:19:\"button_weight_value\";s:2:\"96\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:18:\"dd_button_comments\";O:11:\"DD_Comments\":30:{s:19:\"islazyLoadAvailable\";b:0;s:12:\"buttonLayout\";a:1:{s:6:\"Normal\";s:6:\"Normal\";}s:4:\"name\";s:8:\"Comments\";s:10:\"websiteURL\";s:11:\"http://none\";s:6:\"apiURL\";s:11:\"http://none\";s:7:\"baseURL\";s:142:\"<div id=\'dd_comments\'><a class=\'clcount\' href=VOTE_URL><span class=\'ctotal\'>COMMENTS_COUNT</span></a><a class=\'clink\' href=VOTE_URL></a></div>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:10:\"wp_options\";a:5:{s:22:\"dd_comments_appendType\";s:0:\"\";s:24:\"dd_comments_buttonDesign\";s:0:\"\";s:27:\"dd_comments_ajax_left_float\";s:0:\"\";s:21:\"dd_comments_lazy_load\";s:0:\"\";s:25:\"dd_comments_button_weight\";s:2:\"88\";}s:18:\"option_append_type\";s:22:\"dd_comments_appendType\";s:20:\"option_button_design\";s:24:\"dd_comments_buttonDesign\";s:20:\"option_button_weight\";s:25:\"dd_comments_button_weight\";s:22:\"option_ajax_left_float\";s:27:\"dd_comments_ajax_left_float\";s:16:\"option_lazy_load\";s:21:\"dd_comments_lazy_load\";s:19:\"button_weight_value\";s:2:\"88\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:18:\"dd_button_linkedin\";O:11:\"DD_Linkedin\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";s:2:\"on\";s:9:\"lazy_load\";b:0;s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:3:\"top\";s:7:\"Compact\";s:5:\"right\";s:7:\"NoCount\";s:4:\"none\";}s:16:\"buttonLayoutLazy\";a:3:{s:6:\"Normal\";s:3:\"top\";s:7:\"Compact\";s:5:\"right\";s:7:\"NoCount\";s:4:\"none\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:8:\"Linkedin\";s:10:\"websiteURL\";s:23:\"http://www.linkedin.com\";s:6:\"apiURL\";s:34:\"http://www.linkedin.com/publishers\";s:7:\"baseURL\";s:163:\"<script src=\'//platform.linkedin.com/in.js\' type=\'text/javascript\'></script><script type=\'IN/Share\' data-url=\'VOTE_URL\' data-counter=\'VOTE_BUTTON_DESIGN\'></script>\";s:12:\"baseURL_lazy\";s:148:\"<div class=\'dd-linkedin-ajax-load dd-linkedin-POST_ID\'></div><script type=\'IN/share\' data-url=\'VOTE_URL\' data-counter=\'VOTE_BUTTON_DESIGN\'></script>\";s:19:\"baseURL_lazy_script\";s:162:\" function loadLinkedin_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-linkedin-POST_ID\').remove();$.getScript(\'http://platform.linkedin.com/in.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:60:\"window.setTimeout(\'loadLinkedin_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:22:\"dd_linkedin_appendType\";s:0:\"\";s:24:\"dd_linkedin_buttonDesign\";s:0:\"\";s:27:\"dd_linkedin_ajax_left_float\";s:2:\"on\";s:21:\"dd_linkedin_lazy_load\";s:0:\"\";s:25:\"dd_linkedin_button_weight\";s:2:\"94\";}s:18:\"option_append_type\";s:22:\"dd_linkedin_appendType\";s:20:\"option_button_design\";s:24:\"dd_linkedin_buttonDesign\";s:20:\"option_button_weight\";s:25:\"dd_linkedin_button_weight\";s:22:\"option_ajax_left_float\";s:27:\"dd_linkedin_ajax_left_float\";s:16:\"option_lazy_load\";s:21:\"dd_linkedin_lazy_load\";s:19:\"button_weight_value\";s:2:\"94\";s:19:\"float_button_design\";s:6:\"Normal\";s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:15:\"dd_button_serpd\";O:8:\"DD_Serpd\":30:{s:19:\"islazyLoadAvailable\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:1:{s:6:\"Normal\";s:0:\"\";}s:4:\"name\";s:5:\"Serpd\";s:10:\"websiteURL\";s:20:\"http://www.serpd.com\";s:6:\"apiURL\";s:29:\"http://www.serpd.com/widgets/\";s:7:\"baseURL\";s:150:\"<script type=\"text/javascript\">submit_url = \"VOTE_URL\";</script><script type=\"text/javascript\" src=\"http://www.serpd.com/index.php?page=evb\"></script>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:10:\"wp_options\";a:5:{s:19:\"dd_serpd_appendType\";s:0:\"\";s:21:\"dd_serpd_buttonDesign\";s:0:\"\";s:24:\"dd_serpd_ajax_left_float\";s:0:\"\";s:18:\"dd_serpd_lazy_load\";s:0:\"\";s:22:\"dd_serpd_button_weight\";s:2:\"86\";}s:18:\"option_append_type\";s:19:\"dd_serpd_appendType\";s:20:\"option_button_design\";s:21:\"dd_serpd_buttonDesign\";s:20:\"option_button_weight\";s:22:\"dd_serpd_button_weight\";s:22:\"option_ajax_left_float\";s:24:\"dd_serpd_ajax_left_float\";s:16:\"option_lazy_load\";s:18:\"dd_serpd_lazy_load\";s:19:\"button_weight_value\";s:2:\"86\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:22:\"dd_button_fblike_xfbml\";O:15:\"DD_FbLike_XFBML\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:17:\"Like Button Count\";s:15:\"ajax_left_float\";s:2:\"on\";s:9:\"lazy_load\";b:0;s:19:\"islazyLoadAvailable\";b:0;s:19:\"float_button_design\";s:14:\"Like Box Count\";s:12:\"buttonLayout\";a:6:{s:13:\"Like Standard\";s:13:\" width=\"450\" \";s:17:\"Like Button Count\";s:34:\" layout=\"button_count\" width=\"92\" \";s:14:\"Like Box Count\";s:31:\" layout=\"box_count\" width=\"50\" \";s:18:\"Recommend Standard\";s:32:\" action=\"recommend\" width=\"400\" \";s:22:\"Recommend Button Count\";s:54:\" action=\"recommend\" layout=\"button_count\" width=\"130\" \";s:19:\"Recommend Box Count\";s:50:\" action=\"recommend\" layout=\"box_count\" width=\"90\" \";}s:4:\"name\";s:21:\"Facebook Like (XFBML)\";s:10:\"websiteURL\";s:23:\"http://www.facebook.com\";s:6:\"apiURL\";s:58:\"http://developers.facebook.com/docs/reference/plugins/like\";s:7:\"baseURL\";s:165:\"<script src=\"//connect.facebook.net/FACEBOOK_LOCALE/all.js#xfbml=1\"></script><fb:like href=\"VOTE_URL\" FACEBOOK_SEND FACEBOOK_SHOW_FACE VOTE_BUTTON_DESIGN ></fb:like>\";s:12:\"baseURL_lazy\";N;s:19:\"baseURL_lazy_script\";N;s:21:\"scheduler_lazy_script\";N;s:20:\"scheduler_lazy_timer\";N;s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:10:\"wp_options\";a:5:{s:26:\"dd_fblike_xfbml_appendType\";s:0:\"\";s:28:\"dd_fblike_xfbml_buttonDesign\";s:0:\"\";s:31:\"dd_fblike_xfbml_ajax_left_float\";s:2:\"on\";s:25:\"dd_fblike_xfbml_lazy_load\";s:0:\"\";s:29:\"dd_fblike_xfbml_button_weight\";s:2:\"96\";}s:18:\"option_append_type\";s:26:\"dd_fblike_xfbml_appendType\";s:20:\"option_button_design\";s:28:\"dd_fblike_xfbml_buttonDesign\";s:20:\"option_button_weight\";s:29:\"dd_fblike_xfbml_button_weight\";s:22:\"option_ajax_left_float\";s:31:\"dd_fblike_xfbml_ajax_left_float\";s:16:\"option_lazy_load\";s:25:\"dd_fblike_xfbml_lazy_load\";s:19:\"button_weight_value\";s:2:\"96\";s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:6:\"Normal\";s:7:\"Compact\";s:7:\"Compact\";}s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:17:\"dd_button_google1\";O:10:\"DD_Google1\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";s:2:\"on\";s:9:\"lazy_load\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:4:{s:6:\"Normal\";s:4:\"tall\";s:14:\"Compact (15px)\";s:5:\"small\";s:14:\"Compact (20px)\";s:6:\"medium\";s:14:\"Compact (24px)\";s:4:\"none\";}s:16:\"buttonLayoutLazy\";a:4:{s:6:\"Normal\";s:4:\"tall\";s:14:\"Compact (15px)\";s:5:\"small\";s:14:\"Compact (20px)\";s:6:\"medium\";s:14:\"Compact (24px)\";s:4:\"none\";}s:4:\"name\";s:9:\"Google +1\";s:10:\"websiteURL\";s:32:\"http://www.google.com/+1/button/\";s:6:\"apiURL\";s:37:\"http://code.google.com/apis/+1button/\";s:7:\"baseURL\";s:149:\"<script type=\'text/javascript\' src=\'https://apis.google.com/js/plusone.js\'></script><g:plusone size=\'VOTE_BUTTON_DESIGN\' href=\'VOTE_URL\'></g:plusone>\";s:12:\"baseURL_lazy\";s:124:\"<div class=\'dd-google1-ajax-load dd-google1-POST_ID\'></div><g:plusone size=\'VOTE_BUTTON_DESIGN\' href=\'VOTE_URL\'></g:plusone>\";s:19:\"baseURL_lazy_script\";s:163:\" function loadGoogle1_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-google1-POST_ID\').remove();$.getScript(\'https://apis.google.com/js/plusone.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:59:\"window.setTimeout(\'loadGoogle1_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:21:\"dd_google1_appendType\";s:0:\"\";s:23:\"dd_google1_buttonDesign\";s:0:\"\";s:26:\"dd_google1_ajax_left_float\";s:2:\"on\";s:20:\"dd_google1_lazy_load\";s:0:\"\";s:24:\"dd_google1_button_weight\";s:2:\"95\";}s:18:\"option_append_type\";s:21:\"dd_google1_appendType\";s:20:\"option_button_design\";s:23:\"dd_google1_buttonDesign\";s:20:\"option_button_weight\";s:24:\"dd_google1_button_weight\";s:22:\"option_ajax_left_float\";s:26:\"dd_google1_ajax_left_float\";s:16:\"option_lazy_load\";s:20:\"dd_google1_lazy_load\";s:19:\"button_weight_value\";s:2:\"95\";s:19:\"float_button_design\";s:6:\"Normal\";s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:16:\"dd_button_buffer\";O:9:\"DD_Buffer\":30:{s:11:\"append_type\";s:13:\"after_content\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";s:2:\"on\";s:9:\"lazy_load\";b:0;s:16:\"isEncodeRequired\";b:0;s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:16:\"buttonLayoutLazy\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:4:\"name\";s:6:\"Buffer\";s:10:\"websiteURL\";s:21:\"http://bufferapp.com/\";s:6:\"apiURL\";s:36:\"http://bufferapp.com/goodies/button/\";s:7:\"baseURL\";s:257:\"<a href=\"http://bufferapp.com/add\" class=\"buffer-add-button\" data-count=\"VOTE_BUTTON_DESIGN\" data-text=\"VOTE_TITLE\" data-url=\"VOTE_URL\" data-via=\"VOTE_BUFFER_SOURCE\"></a><script type=\"text/javascript\" src=\"http://static.bufferapp.com/js/button.js\"></script>\";s:12:\"baseURL_lazy\";s:170:\"<a href=\"http://bufferapp.com/add\" class=\"buffer-add-button\" data-count=\"VOTE_BUTTON_DESIGN\" data-text=\"VOTE_TITLE\" data-url=\"VOTE_URL\" data-via=\"VOTE_BUFFER_SOURCE\"></a>\";s:19:\"baseURL_lazy_script\";s:163:\"function loadBuffer_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-buffer-POST_ID\').remove();$.getScript(\'http://static.bufferapp.com/js/button.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadBuffer_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_buffer_appendType\";s:0:\"\";s:22:\"dd_buffer_buttonDesign\";s:0:\"\";s:25:\"dd_buffer_ajax_left_float\";s:2:\"on\";s:19:\"dd_buffer_lazy_load\";s:0:\"\";s:23:\"dd_buffer_button_weight\";s:2:\"99\";}s:18:\"option_append_type\";s:20:\"dd_buffer_appendType\";s:20:\"option_button_design\";s:22:\"dd_buffer_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_buffer_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_buffer_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_buffer_lazy_load\";s:19:\"button_weight_value\";s:2:\"99\";s:19:\"float_button_design\";s:6:\"Normal\";s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:19:\"dd_button_pinterest\";O:12:\"DD_Pinterest\":30:{s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:16:\"buttonLayoutLazy\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:4:\"name\";s:9:\"Pinterest\";s:10:\"websiteURL\";s:20:\"http://pinterest.com\";s:6:\"apiURL\";s:55:\"http://pinterest.com/about/goodies/#button_for_websites\";s:7:\"baseURL\";s:249:\"<a href=\"http://pinterest.com/pin/create/button/?url=VOTE_URL&description=VOTE_TITLE&media=VOTE_IMAGE\" class=\"pin-it-button\" count-layout=\"VOTE_BUTTON_DESIGN\"></a><script type=\"text/javascript\" src=\"http://assets.pinterest.com/js/pinit.js\"></script>\";s:12:\"baseURL_lazy\";s:207:\"<a href=\"http://pinterest.com/pin/create/button/?url=VOTE_URL&description=VOTE_TITLE&media=VOTE_IMAGE\" class=\"pin-it-button dd-pinterest-ajax-load dd-pinterest-POST_ID\" count-layout=\"VOTE_BUTTON_DESIGN\"></a>\";s:19:\"baseURL_lazy_script\";s:132:\"function loadPinterest_POST_ID(){ jQuery(document).ready(function($) { $.getScript(\'http://assets.pinterest.com/js/pinit.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:61:\"window.setTimeout(\'loadPinterest_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:23:\"dd_pinterest_appendType\";s:0:\"\";s:25:\"dd_pinterest_buttonDesign\";s:0:\"\";s:28:\"dd_pinterest_ajax_left_float\";s:0:\"\";s:22:\"dd_pinterest_lazy_load\";s:0:\"\";s:26:\"dd_pinterest_button_weight\";s:2:\"10\";}s:18:\"option_append_type\";s:23:\"dd_pinterest_appendType\";s:20:\"option_button_design\";s:25:\"dd_pinterest_buttonDesign\";s:20:\"option_button_weight\";s:26:\"dd_pinterest_button_weight\";s:22:\"option_ajax_left_float\";s:28:\"dd_pinterest_ajax_left_float\";s:16:\"option_lazy_load\";s:22:\"dd_pinterest_lazy_load\";s:19:\"button_weight_value\";s:2:\"10\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:16:\"dd_button_flattr\";O:9:\"DD_Flattr\":30:{s:12:\"buttonLayout\";a:2:{s:6:\"Normal\";s:7:\"default\";s:7:\"Compact\";s:7:\"compact\";}s:16:\"buttonLayoutLazy\";a:2:{s:6:\"Normal\";s:7:\"default\";s:7:\"Compact\";s:7:\"compact\";}s:4:\"name\";s:6:\"Flattr\";s:10:\"websiteURL\";s:17:\"http://flattr.com\";s:6:\"apiURL\";s:36:\"http://developers.flattr.net/button/\";s:7:\"baseURL\";s:257:\"<script src=\"http://api.flattr.com/js/0.6/load.js?mode=auto\"></script><a class=\"FlattrButton\" href=\"VOTE_URL\" style=\"display:none;\" title=\"VOTE_TITLE\" data-flattr-uid=\"VOTE_FLATTR_UID\" data-flattr-button=\"VOTE_BUTTON_DESIGN\" data-flattr-category=\"text\"></a>\";s:12:\"baseURL_lazy\";s:187:\"<a class=\"FlattrButton\" href=\"VOTE_URL\" style=\"display:none;\" title=\"VOTE_TITLE\" data-flattr-uid=\"VOTE_FLATTR_UID\" data-flattr-button=\"VOTE_BUTTON_DESIGN\" data-flattr-category=\"text\"></a>\";s:19:\"baseURL_lazy_script\";s:136:\"function loadFlattr_POST_ID(){ jQuery(document).ready(function($) { $.getScript(\'http://api.flattr.com/js/0.6/load.js?mode=auto\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadFlattr_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:16:\"isEncodeRequired\";b:1;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_flattr_appendType\";s:0:\"\";s:22:\"dd_flattr_buttonDesign\";s:0:\"\";s:25:\"dd_flattr_ajax_left_float\";s:0:\"\";s:19:\"dd_flattr_lazy_load\";s:0:\"\";s:23:\"dd_flattr_button_weight\";s:2:\"10\";}s:18:\"option_append_type\";s:20:\"dd_flattr_appendType\";s:20:\"option_button_design\";s:22:\"dd_flattr_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_flattr_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_flattr_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_flattr_lazy_load\";s:19:\"button_weight_value\";s:2:\"10\";s:19:\"float_button_design\";s:6:\"Normal\";s:11:\"append_type\";s:4:\"none\";s:13:\"button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:9:\"lazy_load\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:16:\"dd_button_pocket\";O:9:\"DD_Pocket\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:6:\"Normal\";s:9:\"lazy_load\";b:0;s:12:\"buttonLayout\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:16:\"buttonLayoutLazy\";a:3:{s:6:\"Normal\";s:8:\"vertical\";s:7:\"Compact\";s:10:\"horizontal\";s:8:\"No Count\";s:4:\"none\";}s:16:\"isEncodeRequired\";b:0;s:4:\"name\";s:6:\"Pocket\";s:10:\"websiteURL\";s:24:\"http://www.getpocket.com\";s:6:\"apiURL\";s:38:\"https://getpocket.com/publisher/button\";s:7:\"baseURL\";s:382:\"<a data-pocket-label=\"pocket\" data-pocket-count=\"VOTE_BUTTON_DESIGN\" data-save-url=\"VOTE_URL\" class=\"pocket-btn\" data-lang=\"en\"></a><script type=\"text/javascript\">!function(d,i){if(!d.getElementById(i)){var j=d.createElement(\"script\");j.id=i;j.src=\"https://widgets.getpocket.com/v1/j/btn.js?v=1\";var w=d.getElementById(i);d.body.appendChild(j);}}(document,\"pocket-btn-js\");</script>\";s:12:\"baseURL_lazy\";s:164:\"<div class=\'dd-pocket-ajax-load dd-pocket-POST_ID\'></div><a data-pocket-label=\"pocket\" data-pocket-count=\"VOTE_BUTTON_DESIGN\" class=\"pocket-btn\" data-lang=\"en\"></a>\";s:19:\"baseURL_lazy_script\";s:169:\" function loadPocket_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-pocket-POST_ID\').remove();$.getScript(\'https://widgets.getpocket.com/v1/j/btn.js?v=1\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadPocket_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_pocket_appendType\";s:0:\"\";s:22:\"dd_pocket_buttonDesign\";s:0:\"\";s:25:\"dd_pocket_ajax_left_float\";s:0:\"\";s:19:\"dd_pocket_lazy_load\";s:0:\"\";s:23:\"dd_pocket_button_weight\";s:2:\"93\";}s:18:\"option_append_type\";s:20:\"dd_pocket_appendType\";s:20:\"option_button_design\";s:22:\"dd_pocket_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_pocket_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_pocket_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_pocket_lazy_load\";s:19:\"button_weight_value\";s:2:\"93\";s:19:\"float_button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}s:16:\"dd_button_tumblr\";O:9:\"DD_Tumblr\":30:{s:11:\"append_type\";s:10:\"left_float\";s:13:\"button_design\";s:6:\"Normal\";s:9:\"lazy_load\";b:0;s:12:\"buttonLayout\";a:1:{s:6:\"Normal\";s:0:\"\";}s:16:\"buttonLayoutLazy\";a:1:{s:6:\"Normal\";s:0:\"\";}s:16:\"isEncodeRequired\";b:1;s:4:\"name\";s:6:\"Tumblr\";s:10:\"websiteURL\";s:21:\"http://www.tumblr.com\";s:6:\"apiURL\";s:29:\"http://www.tumblr.com/buttons\";s:7:\"baseURL\";s:342:\"<a href=\"http://www.tumblr.com/share?link=VOTE_URL\" title=\"Share on Tumblr\" style=\"display:inline-block; text-indent:-9999px; overflow:hidden; width:61px; height:20px; background:url(\'http://platform.tumblr.com/v1/share_2.png\') top left no-repeat transparent;\">Share on Tumblr</a><script src=\"http://platform.tumblr.com/v1/share.js\"></script>\";s:12:\"baseURL_lazy\";s:336:\"<div class=\"dd-tumblrajax-load dd-tumblr-POST_ID\"></div><a href=\"http://www.tumblr.com/share?link=VOTE_URL\" title=\"Share on Tumblr\" style=\"display:inline-block; text-indent:-9999px; overflow:hidden; width:61px; height:20px; background:url(\'http://platform.tumblr.com/v1/share_2.png\') top left no-repeat transparent;\">Share on Tumblr</a>\";s:19:\"baseURL_lazy_script\";s:162:\" function loadTumblr_POST_ID(){ jQuery(document).ready(function($) { $(\'.dd-pocket-POST_ID\').remove();$.getScript(\'http://platform.tumblr.com/v1/share.js\'); }); }\";s:21:\"scheduler_lazy_script\";s:58:\"window.setTimeout(\'loadTumblr_POST_ID()\',SCHEDULER_TIMER);\";s:20:\"scheduler_lazy_timer\";s:4:\"1000\";s:8:\"finalURL\";N;s:13:\"finalURL_lazy\";N;s:20:\"finalURL_lazy_script\";N;s:27:\"final_scheduler_lazy_script\";N;s:19:\"islazyLoadAvailable\";b:1;s:10:\"wp_options\";a:5:{s:20:\"dd_tumblr_appendType\";s:0:\"\";s:22:\"dd_tumblr_buttonDesign\";s:0:\"\";s:25:\"dd_tumblr_ajax_left_float\";s:0:\"\";s:19:\"dd_tumblr_lazy_load\";s:0:\"\";s:23:\"dd_tumblr_button_weight\";s:2:\"94\";}s:18:\"option_append_type\";s:20:\"dd_tumblr_appendType\";s:20:\"option_button_design\";s:22:\"dd_tumblr_buttonDesign\";s:20:\"option_button_weight\";s:23:\"dd_tumblr_button_weight\";s:22:\"option_ajax_left_float\";s:25:\"dd_tumblr_ajax_left_float\";s:16:\"option_lazy_load\";s:19:\"dd_tumblr_lazy_load\";s:19:\"button_weight_value\";s:2:\"94\";s:19:\"float_button_design\";s:6:\"Normal\";s:15:\"ajax_left_float\";b:0;s:21:\"buttonLayoutLazyWidth\";a:2:{s:6:\"Normal\";s:2:\"51\";s:7:\"Compact\";s:3:\"120\";}s:22:\"buttonLayoutLazyHeight\";a:2:{s:6:\"Normal\";s:2:\"69\";s:7:\"Compact\";s:2:\"22\";}}}s:21:\"dd_float_button_final\";a:5:{s:17:\"dd_button_twitter\";r:517;s:18:\"dd_button_linkedin\";r:692;s:22:\"dd_button_fblike_xfbml\";r:781;s:17:\"dd_button_google1\";r:829;s:16:\"dd_button_buffer\";r:877;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1377, 'dd_client_version', '5', 'yes'),
(3156, 'ossdl_off_cdn_url', 'http://dailyvemaybaygiare.com.vn', 'yes'),
(3157, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(3158, 'ossdl_off_exclude', '.php', 'yes'),
(3159, 'ossdl_cname', '', 'yes'),
(3163, 'wpsupercache_start', '1440152738', 'yes'),
(3164, 'wpsupercache_count', '0', 'yes'),
(3165, 'wpsupercache_gc_time', '1455667642', 'yes'),
(4744, 'wpseo_gsc_last_fetch', '1441076863', 'no'),
(5243, 'finished_splitting_shared_terms', '1', 'yes'),
(5851, 'tadv_settings', 'a:9:{s:7:\"options\";s:44:\"menubar,advlist,menubar_block,merge_toolbars\";s:9:\"toolbar_1\";s:117:\"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv\";s:9:\"toolbar_2\";s:121:\"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"plugins\";s:107:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist\";s:13:\"toolbar_block\";s:21:\"core/image,core/image\";s:18:\"toolbar_block_side\";s:74:\"tadv/sup,tadv/sub,core/strikethrough,core/code,tadv/mark,tadv/removeformat\";s:12:\"panels_block\";s:44:\"tadv/color-panel,tadv/background-color-panel\";}', 'yes'),
(5852, 'tadv_admin_settings', 'a:1:{s:7:\"options\";s:98:\"hybrid_mode,classic_paragraph_block,table_resize_bars,table_grid,table_tab_navigation,table_advtab\";}', 'yes'),
(5853, 'tadv_version', '5210', 'yes'),
(6168, 'dismissed_update_core', 'a:1:{s:6:\"4.3|vi\";b:1;}', 'yes'),
(6572, 'kksr_enable', '1', 'yes'),
(6573, 'kksr_clear', '0', 'yes'),
(6574, 'kksr_show_in_home', '0', 'yes'),
(6575, 'kksr_show_in_archives', '0', 'yes'),
(6576, 'kksr_show_in_posts', '1', 'yes'),
(6577, 'kksr_show_in_pages', '0', 'yes'),
(6578, 'kksr_unique', '1', 'yes'),
(6579, 'kksr_position', 'top-right', 'yes'),
(6580, 'kksr_legend', '[avg] ([total]) vote[s]', 'yes'),
(6581, 'kksr_init_msg', 'Đánh giá bài viết', 'yes'),
(6582, 'kksr_column', '1', 'yes'),
(6583, 'kksr_ver', '2.4', 'yes'),
(6584, 'kksr_stars', '5', 'yes'),
(6585, 'kksr_stars_w', '24', 'yes'),
(6586, 'kksr_stars_h', '24', 'yes'),
(6587, 'kksr_stars_gray', 'http://localhost/bachdatan/wp-content/plugins/kk-star-ratings/gray.png', 'yes'),
(6588, 'kksr_stars_yellow', 'http://localhost/bachdatan/wp-content/plugins/kk-star-ratings/yellow.png', 'yes'),
(6589, 'kksr_stars_orange', 'http://localhost/bachdatan/wp-content/plugins/kk-star-ratings/orange.png', 'yes'),
(6590, 'kksr_js_fuelspeed', '400', 'yes'),
(6591, 'kksr_js_thankyou', 'Cảm ơn bạn đã đánh giá', 'yes'),
(6592, 'kksr_js_error', 'Đã có lỗi xảy ra', 'yes'),
(6593, 'kksr_tooltip', '1', 'yes'),
(6594, 'kksr_tooltips', 'a:5:{i:0;a:2:{s:3:\"tip\";s:0:\"\";s:5:\"color\";s:7:\"#ffffff\";}i:1;a:2:{s:3:\"tip\";s:0:\"\";s:5:\"color\";s:7:\"#ffffff\";}i:2;a:2:{s:3:\"tip\";s:0:\"\";s:5:\"color\";s:7:\"#ffffff\";}i:3;a:2:{s:3:\"tip\";s:0:\"\";s:5:\"color\";s:7:\"#ffffff\";}i:4;a:2:{s:3:\"tip\";s:0:\"\";s:5:\"color\";s:7:\"#ffffff\";}}', 'yes'),
(6600, 'kksr_disable_in_archives', '', 'yes'),
(6601, 'kksr_exclude_categories', '', 'yes'),
(6602, 'kksr_grs', '1', 'yes'),
(6871, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"ectasy1703@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1552704183;}', 'no'),
(11277, 'supercache_stats', 'a:3:{s:9:\"generated\";i:1445567937;s:10:\"supercache\";a:6:{s:7:\"expired\";i:18;s:12:\"expired_list\";a:0:{}s:6:\"cached\";i:44;s:11:\"cached_list\";a:0:{}s:2:\"ts\";i:1445567937;s:5:\"fsize\";i:2497650;}s:7:\"wpcache\";a:3:{s:6:\"cached\";i:1;s:7:\"expired\";i:2;s:5:\"fsize\";s:8:\"218.47KB\";}}', 'yes'),
(11391, 'widget_bhittaniplugin_kkstarratings_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(11450, 'wp-seo-redirection-group', 'a:12:{s:13:\"plugin_status\";s:1:\"1\";s:16:\"redirection_base\";s:32:\"http://dailyvemaybaygiare.com.vn\";s:22:\"redirect_control_panel\";s:1:\"1\";s:17:\"show_redirect_box\";s:1:\"1\";s:21:\"reflect_modifications\";s:1:\"1\";s:14:\"history_status\";s:1:\"1\";s:13:\"history_limit\";s:2:\"30\";s:21:\"p404_discovery_status\";i:1;s:16:\"p404_redirect_to\";s:32:\"http://dailyvemaybaygiare.com.vn\";s:11:\"p404_status\";i:1;s:9:\"keep_data\";s:1:\"1\";s:14:\"plugin_version\";s:3:\"3.5\";}', 'yes'),
(13521, 'wpseo_dismiss_recalculate', '1', 'yes'),
(16358, 'site_icon', '1550', 'yes'),
(16359, 'medium_large_size_w', '768', 'yes'),
(16360, 'medium_large_size_h', '0', 'yes'),
(16381, '_transient_twentyfifteen_categories', '2', 'yes'),
(16382, 'theme_mods_vemaybayairasia', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:16:\"header_textcolor\";s:5:\"blank\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1455953162;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-6\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:24:\"dazzling_tabbed_widget-3\";i:2;s:6:\"text-5\";}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:1:{i:0;s:6:\"text-7\";}s:15:\"footer-widget-2\";a:1:{i:0;s:6:\"text-8\";}s:15:\"footer-widget-3\";a:1:{i:0;s:6:\"text-9\";}}}}', 'yes'),
(16384, 'theme_mods_twentythirteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1455685189;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:6:\"text-6\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:9:\"sidebar-2\";N;}}}', 'yes'),
(16533, 'theme_mods_vemaybayevaair', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1458117280;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:24:\"dazzling_tabbed_widget-3\";i:2;s:6:\"text-5\";}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:1:{i:0;s:6:\"text-7\";}s:15:\"footer-widget-2\";a:1:{i:0;s:6:\"text-8\";}s:15:\"footer-widget-3\";a:1:{i:0;s:6:\"text-9\";}}}}', 'yes'),
(16571, 'RMVer', '3.0.18', 'yes'),
(16572, 'RMOptions', 'a:74:{s:2:\"RM\";s:9:\"main-menu\";s:7:\"RMBreak\";i:768;s:7:\"RMDepth\";i:2;s:5:\"RMTop\";i:10;s:7:\"RMRight\";i:5;s:5:\"RMCss\";s:0:\"\";s:7:\"RMTitle\";s:10:\"Danh Mục\";s:9:\"RMLineCol\";s:7:\"#FFFFFF\";s:10:\"RMClickBkg\";s:7:\"#000000\";s:12:\"RMClickTitle\";s:0:\"\";s:9:\"RMBkgTran\";N;s:6:\"RMFont\";s:0:\"\";s:5:\"RMPos\";s:0:\"\";s:7:\"RMImage\";s:0:\"\";s:7:\"RMWidth\";i:75;s:5:\"RMBkg\";s:7:\"#43494C\";s:8:\"RMBkgHov\";s:7:\"#3C3C3C\";s:10:\"RMTitleCol\";s:7:\"#FFFFFF\";s:9:\"RMTextCol\";s:7:\"#FFFFFF\";s:8:\"RMBorCol\";s:7:\"#3C3C3C\";s:12:\"RMTextColHov\";s:7:\"#FFFFFF\";s:13:\"RMTitleColHov\";s:7:\"#FFFFFF\";s:6:\"RMAnim\";s:7:\"overlay\";s:9:\"RMPushCSS\";s:0:\"\";s:10:\"RMTitleBkg\";s:7:\"#43494C\";s:10:\"RMFontSize\";i:13;s:11:\"RMTitleSize\";i:14;s:9:\"RMBtnSize\";i:13;s:8:\"RMCurBkg\";s:7:\"#43494C\";s:8:\"RMCurCol\";s:7:\"#FFFFFF\";s:9:\"RMAnimSpd\";d:0.5;s:9:\"RMTranSpd\";d:1;s:10:\"RMTxtAlign\";s:4:\"left\";s:8:\"RMSearch\";N;s:8:\"RMExpand\";N;s:12:\"RMLinkHeight\";i:20;s:10:\"RMExternal\";N;s:6:\"RMSide\";s:4:\"left\";s:8:\"RMFooter\";s:6:\"footer\";s:10:\"RMClickImg\";s:0:\"\";s:8:\"RMMinify\";s:6:\"minify\";s:12:\"RMClickClose\";s:5:\"close\";s:8:\"RMRemImp\";N;s:3:\"RMX\";N;s:10:\"RMMinWidth\";i:0;s:10:\"RMMaxWidth\";i:0;s:11:\"RMExpandPar\";s:6:\"expand\";s:11:\"RMIgnParCli\";N;s:10:\"RMCliToClo\";s:12:\"clicktoclose\";s:11:\"RMSearchPos\";s:5:\"below\";s:11:\"RMTitleLink\";s:0:\"\";s:10:\"RMTitleLoc\";s:5:\"_self\";s:6:\"RMHtml\";s:0:\"\";s:9:\"RMHtmlLoc\";s:5:\"above\";s:11:\"RMShortcode\";N;s:12:\"RMLineHeight\";i:5;s:11:\"RMLineWidth\";i:33;s:12:\"RMLineMargin\";i:6;s:17:\"RMClickImgClicked\";s:0:\"\";s:11:\"RMAccordion\";N;s:8:\"RMArShpA\";s:8:\"\"\\u25b2\"\";s:8:\"RMArShpI\";s:8:\"\"\\u25bc\"\";s:8:\"RMArImgA\";s:0:\"\";s:8:\"RMArImgI\";s:0:\"\";s:9:\"RMTrigger\";s:11:\"#click-menu\";s:9:\"RMPushBtn\";N;s:11:\"RMCurBkgHov\";s:7:\"#43494C\";s:11:\"RMCurColHov\";s:7:\"#FFFFFF\";s:8:\"RMWalker\";s:0:\"\";s:9:\"RMUseTran\";N;s:5:\"RMLoc\";s:5:\"right\";s:15:\"RMThemeLocation\";s:0:\"\";s:15:\"RMClickTitlePos\";s:6:\"bottom\";s:18:\"RMClickTitleHeight\";s:2:\"14\";}', 'yes'),
(16654, 'theme_mods_vemaybaychinaeastern', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1477365649;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:24:\"dazzling_tabbed_widget-3\";i:1;s:6:\"text-5\";}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:1:{i:0;s:6:\"text-8\";}s:15:\"footer-widget-2\";a:1:{i:0;s:6:\"text-7\";}s:15:\"footer-widget-3\";a:1:{i:0;s:6:\"text-9\";}}}}', 'yes'),
(16828, 'theme_mods_vemaybayairindia', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1487913803;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:24:\"dazzling_tabbed_widget-3\";}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:1:{i:0;s:6:\"text-7\";}s:15:\"footer-widget-2\";a:1:{i:0;s:6:\"text-8\";}s:15:\"footer-widget-3\";a:1:{i:0;s:6:\"text-9\";}}}}', 'yes'),
(16846, 'responsive_menu_current_page', 'button', 'yes'),
(16988, 'theme_mods_matonghoathiennhien', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1540866876;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:16:\"sidebar-san-pham\";a:2:{i:0;s:7:\"text-11\";i:1;s:7:\"text-10\";}s:16:\"sidebar-bai-viet\";a:1:{i:0;s:24:\"dazzling_tabbed_widget-3\";}s:9:\"sidebar-1\";a:0:{}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:1:{i:0;s:6:\"text-9\";}s:15:\"footer-widget-2\";a:1:{i:0;s:6:\"text-8\";}s:15:\"footer-widget-3\";a:0:{}}}}', 'yes'),
(17085, 'woocommerce_default_country', 'VN', 'yes'),
(17086, 'woocommerce_allowed_countries', 'all', 'yes'),
(17087, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(17088, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(17089, 'woocommerce_ship_to_countries', '', 'yes'),
(17090, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(17091, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(17092, 'woocommerce_calc_taxes', 'no', 'yes'),
(17093, 'woocommerce_demo_store', 'no', 'yes'),
(17094, 'woocommerce_demo_store_notice', 'Đây là cửa hàng demo nhằm mục đích thử nghiệm &mdash; các đơn hàng sẽ không có hiệu lực.', 'no'),
(17095, 'woocommerce_currency', 'VND', 'yes'),
(17096, 'woocommerce_currency_pos', 'right', 'yes'),
(17097, 'woocommerce_price_thousand_sep', '.', 'yes'),
(17098, 'woocommerce_price_decimal_sep', ',', 'yes'),
(17099, 'woocommerce_price_num_decimals', '0', 'yes'),
(17100, 'woocommerce_weight_unit', 'kg', 'yes'),
(17101, 'woocommerce_dimension_unit', 'cm', 'yes'),
(17102, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(17103, 'woocommerce_review_rating_required', 'yes', 'no'),
(17104, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(17105, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(17106, 'woocommerce_shop_page_id', '1411', 'yes'),
(17107, 'woocommerce_shop_page_display', '', 'yes'),
(17108, 'woocommerce_category_archive_display', '', 'yes'),
(17109, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(17110, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(17111, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(17112, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"350\";s:6:\"height\";s:3:\"453\";s:4:\"crop\";i:1;}', 'yes'),
(17113, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"570\";s:6:\"height\";s:3:\"708\";s:4:\"crop\";i:1;}', 'yes'),
(17114, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"350\";s:6:\"height\";s:3:\"453\";s:4:\"crop\";i:0;}', 'yes'),
(17115, 'woocommerce_manage_stock', 'yes', 'yes'),
(17116, 'woocommerce_hold_stock_minutes', '60', 'no'),
(17117, 'woocommerce_notify_low_stock', 'yes', 'no'),
(17118, 'woocommerce_notify_no_stock', 'yes', 'no'),
(17119, 'woocommerce_stock_email_recipient', 'ectasy1703@gmail.com', 'no'),
(17120, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(17121, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(17122, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(17123, 'woocommerce_stock_format', '', 'yes'),
(17124, 'woocommerce_file_download_method', 'force', 'no'),
(17125, 'woocommerce_downloads_require_login', 'no', 'no'),
(17126, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(17127, 'woocommerce_prices_include_tax', 'no', 'yes'),
(17128, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(17129, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(17130, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(17131, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(17132, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(17133, 'woocommerce_tax_display_cart', 'excl', 'no'),
(17134, 'woocommerce_price_display_suffix', '', 'yes'),
(17135, 'woocommerce_tax_total_display', 'itemized', 'no'),
(17136, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(17137, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(17138, 'woocommerce_ship_to_destination', 'billing', 'no'),
(17139, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(17140, 'woocommerce_enable_coupons', 'yes', 'yes'),
(17141, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(17142, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(17143, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(17144, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(17145, 'woocommerce_cart_page_id', '1408', 'yes'),
(17146, 'woocommerce_checkout_page_id', '1409', 'yes'),
(17147, 'woocommerce_terms_page_id', '', 'no'),
(17148, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(17149, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(17150, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(17151, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(17152, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(17153, 'woocommerce_myaccount_page_id', '1410', 'yes'),
(17154, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(17155, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(17156, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(17157, 'woocommerce_registration_generate_username', 'yes', 'no'),
(17158, 'woocommerce_registration_generate_password', 'no', 'no'),
(17159, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(17160, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(17161, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(17162, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(17163, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(17164, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(17165, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(17166, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(17167, 'woocommerce_email_from_name', 'Mật Ong Hoa Thiên Nhiên', 'no'),
(17168, 'woocommerce_email_from_address', 'ectasy1703@gmail.com', 'no'),
(17169, 'woocommerce_email_header_image', '', 'no'),
(17170, 'woocommerce_email_footer_text', 'Mật Ong Hoa Thiên Nhiên - Powered by WooCommerce', 'no'),
(17171, 'woocommerce_email_base_color', '#96588a', 'no'),
(17172, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(17173, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(17174, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(17175, 'woocommerce_api_enabled', 'yes', 'yes'),
(17181, 'woocommerce_admin_notices', 'a:1:{i:1;s:20:\"no_secure_connection\";}', 'yes'),
(17183, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(17184, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17185, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17186, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17187, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17188, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:5:\"order\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(17189, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17190, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17191, 'widget_woocommerce_products', 'a:2:{i:2;a:7:{s:5:\"title\";s:24:\"Sản phẩm nổi bật\";s:6:\"number\";i:5;s:4:\"show\";s:8:\"featured\";s:7:\"orderby\";s:5:\"price\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(17192, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17193, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17194, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:2;a:2:{s:5:\"title\";s:22:\"Sản phẩm vừa xem\";s:6:\"number\";i:10;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(17195, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17200, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(17215, 'fresh_site', '0', 'yes'),
(17234, '_transient_product_query-transient-version', '1553760511', 'yes'),
(17235, '_transient_product-transient-version', '1553760511', 'yes'),
(17271, '_transient_shipping-transient-version', '1495620500', 'yes'),
(17313, 'wc_quick_buy_redirect', 'checkout', 'yes'),
(17314, 'wc_quick_buy_custom_redirect', 'http://localhost/bachdatan/thanh-toan/', 'yes'),
(17315, 'wc_quick_buy_product_types', 'a:1:{i:0;s:3:\"all\";}', 'yes'),
(17316, 'wc_quick_buy_product_qty', '', 'yes'),
(17319, 'wc_quick_buy_label', 'Mua ngay', 'yes'),
(17320, 'wc_quick_buy_class', '', 'yes'),
(17321, 'wc_quick_buy_btn_css', '', 'yes'),
(17324, 'wc_quick_buy_single_product_auto', 'true', 'yes'),
(17325, 'wc_quick_buy_single_product_pos', 'after_button', 'yes'),
(17326, 'wc_quick_buy_listing_page_auto', 'false', 'yes'),
(17327, 'wc_quick_buy_listing_page_pos', 'after_button', 'yes'),
(17330, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(17339, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(17370, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:6:\"p=1408\";i:1;s:10:\"/gio-hang/\";i:2;s:6:\"p=1409\";i:3;s:12:\"/thanh-toan/\";i:4;s:6:\"p=1410\";i:5;s:11:\"/tai-khoan/\";}', 'yes'),
(17391, 'kksr_reset', 'a:32:{i:25;s:1:\"0\";i:29;s:1:\"0\";i:42;s:1:\"0\";i:49;s:1:\"0\";i:54;s:1:\"0\";i:60;s:1:\"0\";i:80;s:1:\"0\";i:92;s:1:\"0\";i:103;s:1:\"0\";i:108;s:1:\"0\";i:112;s:1:\"0\";i:115;s:1:\"0\";i:118;s:1:\"0\";i:147;s:1:\"0\";i:153;s:1:\"0\";i:159;s:1:\"0\";i:175;s:1:\"0\";i:197;s:1:\"0\";i:246;s:1:\"0\";i:260;s:1:\"0\";i:278;s:1:\"0\";i:299;s:1:\"0\";i:375;s:1:\"0\";i:392;s:1:\"0\";i:404;s:1:\"0\";i:414;s:1:\"0\";i:420;s:1:\"0\";i:424;s:1:\"0\";i:428;s:1:\"0\";i:1282;s:1:\"0\";i:1290;s:1:\"0\";i:1293;s:1:\"0\";}', 'yes'),
(17403, 'woosidebars-version', '1.4.3', 'yes'),
(17423, '_transient_orders-transient-version', '1495868645', 'yes'),
(17590, 'loco_settings', 'a:3:{s:1:\"c\";s:18:\"Loco_data_Settings\";s:1:\"v\";i:0;s:1:\"d\";a:9:{s:7:\"version\";s:6:\"2.0.14\";s:8:\"gen_hash\";b:0;s:9:\"use_fuzzy\";b:1;s:11:\"num_backups\";i:1;s:9:\"pot_alias\";a:3:{i:0;s:10:\"default.po\";i:1;s:8:\"en_US.po\";i:2;s:5:\"en.po\";}s:9:\"php_alias\";a:1:{i:0;s:3:\"php\";}s:10:\"fs_persist\";b:0;s:12:\"max_php_size\";s:4:\"100K\";s:11:\"po_utf8_bom\";b:0;}}', 'yes'),
(17591, '_transient_loco_po_5f89f4a1b28d76a9c25e34a6b0daf33c', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:50:\"plugins/woocommerce/i18n/languages/woocommerce.pot\";s:5:\"bytes\";i:621927;s:5:\"mtime\";i:1495596691;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:4790;s:1:\"p\";i:0;s:1:\"f\";i:0;}}}', 'yes'),
(17594, '_transient_loco_po_1423949a09bdb89d78cd54a4c33affb4', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:35:\"languages/plugins/woocommerce-vi.po\";s:5:\"bytes\";i:732847;s:5:\"mtime\";i:1495596706;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:4538;s:1:\"p\";i:4538;s:1:\"f\";i:0;}}}', 'yes'),
(17617, 'mail_from', 'nhut.nguyen@vivatrantravel.vn', 'yes'),
(17618, 'mail_from_name', 'Đặt Hàng', 'yes'),
(17619, 'mailer', 'smtp', 'yes'),
(17620, 'mail_set_return_path', '', 'yes'),
(17621, 'smtp_host', 'smtp.gmail.com', 'yes'),
(17622, 'smtp_port', '465', 'yes'),
(17623, 'smtp_ssl', 'ssl', 'yes'),
(17624, 'smtp_auth', 'true', 'yes'),
(17625, 'smtp_user', 'ectasy1992@gmail.com', 'yes'),
(17626, 'smtp_pass', 'iruqylwzlpbehbex', 'yes'),
(17627, 'pepipost_user', '', 'yes'),
(17628, 'pepipost_pass', '', 'yes'),
(17629, 'pepipost_port', '2525', 'yes'),
(17630, 'pepipost_ssl', 'none', 'yes'),
(17872, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17873, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17874, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17875, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(17876, 'widget_custom_html', 'a:5:{i:3;a:2:{s:5:\"title\";s:8:\"Dự án\";s:7:\"content\";s:119:\"<p><a href=\"#\">Căn hộ</a></p>\r\n<p><a href=\"#\">Biệt thự - Đất nền</a></p>\r\n<p><a href=\"#\">Nhà phố</a></p>\";}i:4;a:2:{s:5:\"title\";s:11:\"Liên kết\";s:7:\"content\";s:145:\"<p><a href=\"#\">Giới thiệu</a></p>\r\n<p><a href=\"#\">Tin tức</a></p>\r\n<p><a href=\"#\">Tuyển dụng</a></p>\r\n<p><a href=\"#\">Liên hệ</a></p>\";}i:5;a:2:{s:5:\"title\";s:56:\"Công ty cổ phần bất động sản Bách Đạt An\";s:7:\"content\";s:333:\"<p class=\"website-address\"><strong>Địa chỉ:</strong> 38-40-42 Nguyễn Du, Đà Nẵng\r\n</p>\r\n<p class=\"website-number\">\r\n	<strong>Điện thoại: </strong><a href=\"tel:0946201949\">0511.2474704</a>\r\n</p>\r\n<p class=\"website-email\">\r\n	<strong>Email: </strong><a href=\"mailto:chaubachdat@gmail.com\">chaubachdat@gmail.com</a>\r\n</p>\";}i:6;a:2:{s:5:\"title\";s:29:\"Kết nối với chúng tôi\";s:7:\"content\";s:97:\"<a href=\"#\"><i class=\"fab fa-facebook-f\"></i></a>\r\n<a href=\"#\"><i class=\"fab fa-youtube\"></i></a>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(17889, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:9:\"/san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(17890, 'current_theme_supports_woocommerce', 'no', 'yes'),
(17891, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(17894, 'woocommerce_store_address', '', 'yes'),
(17895, 'woocommerce_store_address_2', '', 'yes'),
(17896, 'woocommerce_store_city', '', 'yes'),
(17897, 'woocommerce_store_postcode', '', 'yes'),
(17898, 'woocommerce_placeholder_image', '', 'yes'),
(17899, 'woocommerce_enable_reviews', 'yes', 'yes'),
(17900, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(17901, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(17902, 'wp_page_for_privacy_policy', '', 'yes'),
(17903, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(17904, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(17905, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(17906, 'woocommerce_trash_pending_orders', '', 'no'),
(17907, 'woocommerce_trash_failed_orders', '', 'no'),
(17908, 'woocommerce_trash_cancelled_orders', '', 'no'),
(17909, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(17910, 'woocommerce_single_image_width', '600', 'yes'),
(17911, 'woocommerce_thumbnail_image_width', '600', 'yes'),
(17912, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(17914, 'default_product_cat', '455', 'yes'),
(17930, '_amn_smtp_last_checked', '1541203200', 'yes'),
(17932, 'wpseo_license_server_version', '2', 'yes'),
(17935, '_transient_timeout_wpseo_link_table_inaccessible', '1572402034', 'no'),
(17936, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(17937, '_transient_timeout_wpseo_meta_table_inaccessible', '1572402034', 'no'),
(17938, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(17940, 'wp_mail_smtp', 'a:3:{s:4:\"smtp\";a:7:{s:4:\"pass\";s:16:\"iruqylwzlpbehbex\";s:4:\"user\";s:20:\"ectasy1992@gmail.com\";s:4:\"auth\";b:1;s:10:\"encryption\";s:3:\"ssl\";s:4:\"port\";i:465;s:4:\"host\";s:14:\"smtp.gmail.com\";s:7:\"autotls\";b:1;}s:4:\"mail\";a:4:{s:11:\"return_path\";b:0;s:6:\"mailer\";s:4:\"smtp\";s:9:\"from_name\";s:12:\"Đặt Hàng\";s:10:\"from_email\";s:29:\"nhut.nguyen@vivatrantravel.vn\";}s:7:\"general\";a:1:{s:23:\"am_notifications_hidden\";b:0;}}', 'no'),
(17941, 'wp_mail_smtp_version', '1.3.3', 'yes'),
(17942, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(17949, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(17957, 'woocommerce_thumbnail_cropping', '1:1', 'yes'),
(17958, 'woocommerce_thumbnail_cropping_custom_width', '1', 'yes'),
(17959, 'woocommerce_thumbnail_cropping_custom_height', '2', 'yes'),
(17994, 'new_admin_email', 'ectasy1703@gmail.com', 'yes'),
(17998, 'theme_mods_vietgroupdecor', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:77:\"http://localhost/bachdatan/wp-content/uploads/2018/11/logo-vietgroupdecor.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:1469;s:3:\"url\";s:77:\"http://localhost/bachdatan/wp-content/uploads/2018/11/logo-vietgroupdecor.png\";s:13:\"thumbnail_url\";s:77:\"http://localhost/bachdatan/wp-content/uploads/2018/11/logo-vietgroupdecor.png\";s:6:\"height\";i:54;s:5:\"width\";i:300;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553482089;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:16:\"sidebar-san-pham\";a:4:{i:0;s:38:\"woocommerce_recently_viewed_products-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:13:\"media_image-3\";i:3;s:13:\"media_image-4\";}s:16:\"sidebar-bai-viet\";a:4:{i:0;s:38:\"woocommerce_recently_viewed_products-3\";i:1;s:22:\"woocommerce_products-3\";i:2;s:13:\"media_image-5\";i:3;s:13:\"media_image-6\";}s:9:\"sidebar-1\";a:0:{}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:1:{i:0;s:13:\"media_image-2\";}s:15:\"footer-widget-2\";a:1:{i:0;s:7:\"text-12\";}s:15:\"footer-widget-3\";a:1:{i:0;s:7:\"text-13\";}s:15:\"footer-widget-4\";a:1:{i:0;s:13:\"custom_html-2\";}}}}', 'yes'),
(17999, 'woocommerce_maybe_regenerate_images_hash', '363fbb40c0f44b4b89b60b3bf7a51ad2', 'yes'),
(19522, 'show_comments_cookies_opt_in', '1', 'yes'),
(19541, 'can_compress_scripts', '1', 'no'),
(19565, 'woocommerce_version', '3.5.7', 'yes'),
(19583, 'woocommerce_db_version', '3.5.7', 'yes'),
(19592, 'theme_mods_maynenkhilehung', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:82:\"http://localhost/bachdatan/wp-content/uploads/2019/03/logo-may-nen-khi-le-hung.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:1525;s:3:\"url\";s:82:\"http://localhost/bachdatan/wp-content/uploads/2019/03/logo-may-nen-khi-le-hung.png\";s:13:\"thumbnail_url\";s:82:\"http://localhost/bachdatan/wp-content/uploads/2019/03/logo-may-nen-khi-le-hung.png\";s:6:\"height\";i:73;s:5:\"width\";i:300;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1558606748;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:16:\"sidebar-san-pham\";a:3:{i:0;s:32:\"woocommerce_product_categories-2\";i:1;s:38:\"woocommerce_recently_viewed_products-2\";i:2;s:22:\"woocommerce_products-2\";}s:16:\"sidebar-bai-viet\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:1:{i:0;s:13:\"media_image-2\";}s:15:\"footer-widget-2\";a:1:{i:0;s:7:\"text-12\";}s:15:\"footer-widget-3\";a:1:{i:0;s:7:\"text-13\";}s:15:\"footer-widget-4\";a:1:{i:0;s:13:\"custom_html-2\";}}}}', 'yes'),
(20031, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(20059, 'product_cat_children', 'a:0:{}', 'yes'),
(20312, '_transient_timeout_wc_low_stock_count', '1561198393', 'no'),
(20313, '_transient_wc_low_stock_count', '0', 'no'),
(20314, '_transient_timeout_wc_outofstock_count', '1561198393', 'no'),
(20315, '_transient_wc_outofstock_count', '0', 'no'),
(20357, 'theme_mods_bachdatan', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_image\";s:0:\"\";s:12:\"header_image\";s:72:\"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:1553;s:3:\"url\";s:72:\"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\";s:13:\"thumbnail_url\";s:72:\"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\";s:6:\"height\";i:120;s:5:\"width\";i:156;}}', 'yes'),
(20360, 'bsr_data', 'a:8:{s:13:\"select_tables\";a:14:{i:0;s:14:\"wp_commentmeta\";i:1;s:11:\"wp_comments\";i:2;s:8:\"wp_links\";i:3;s:10:\"wp_options\";i:4;s:11:\"wp_postmeta\";i:5;s:8:\"wp_posts\";i:6;s:21:\"wp_term_relationships\";i:7;s:16:\"wp_term_taxonomy\";i:8;s:11:\"wp_termmeta\";i:9;s:8:\"wp_terms\";i:10;s:11:\"wp_usermeta\";i:11;s:8:\"wp_users\";i:12;s:18:\"wp_yoast_seo_links\";i:13;s:17:\"wp_yoast_seo_meta\";}s:16:\"case_insensitive\";s:3:\"off\";s:13:\"replace_guids\";s:2:\"on\";s:7:\"dry_run\";s:3:\"off\";s:10:\"search_for\";s:32:\"http://localhost/maynenkhilehung\";s:12:\"replace_with\";s:26:\"http://localhost/bachdatan\";s:15:\"completed_pages\";i:14;s:11:\"total_pages\";i:14;}', 'yes'),
(20521, 'z_taxonomy_image462', 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-project.jpg', 'yes'),
(20579, 'z_taxonomy_image463', 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-doi-tac.jpg', 'yes'),
(20639, 'recovery_keys', 'a:0:{}', 'yes'),
(20645, 'z_taxonomy_image464', 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-tin-tuc.jpg', 'yes'),
(20655, 'z_taxonomy_image465', 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-tin-tuc.jpg', 'yes'),
(20658, 'z_taxonomy_image466', 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-tin-tuc.jpg', 'yes'),
(20661, 'z_taxonomy_image467', 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-tin-tuc.jpg', 'yes'),
(20723, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1559223540;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(20926, '_site_transient_timeout_browser_d05ee10df769c707d38bdd862b4df84b', '1560481765', 'no'),
(20927, '_site_transient_browser_d05ee10df769c707d38bdd862b4df84b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"75.0.3770.80\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(20928, '_site_transient_timeout_php_check_baf661bc1e7958f3dc9ec8c07cccafb4', '1560481765', 'no'),
(20929, '_site_transient_php_check_baf661bc1e7958f3dc9ec8c07cccafb4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(20970, 'z_taxonomy_image468', 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-project.jpg', 'yes'),
(20976, 'z_taxonomy_image469', 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-project.jpg', 'yes'),
(20979, 'z_taxonomy_image470', 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-project.jpg', 'yes'),
(20982, 'category_children', 'a:2:{i:464;a:3:{i:0;i:465;i:1;i:466;i:2;i:467;}i:462;a:3:{i:0;i:468;i:1;i:469;i:2;i:470;}}', 'yes'),
(20984, 'rewrite_rules', 'a:118:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:62:\"(du-an/biet-thu-dat-nen)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:45:\"(du-an/biet-thu-dat-nen)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"(du-an/biet-thu-dat-nen)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:52:\"(du-an/can-ho)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"(du-an/can-ho)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"(du-an/can-ho)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:55:\"(khong-phan-loai)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:38:\"(khong-phan-loai)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:20:\"(khong-phan-loai)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:45:\"(du-an)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(du-an)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:10:\"(du-an)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"(du-an/nha-pho)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:36:\"(du-an/nha-pho)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:18:\"(du-an/nha-pho)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:50:\"(slide-home)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(slide-home)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:15:\"(slide-home)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:64:\"(tin-tuc/su-kien-hinh-anh)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(tin-tuc/su-kien-hinh-anh)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:29:\"(tin-tuc/su-kien-hinh-anh)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:64:\"(tin-tuc/tin-bat-dong-san)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(tin-tuc/tin-bat-dong-san)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:29:\"(tin-tuc/tin-bat-dong-san)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:59:\"(tin-tuc/tin-cong-ty)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"(tin-tuc/tin-cong-ty)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:24:\"(tin-tuc/tin-cong-ty)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(tin-tuc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(tin-tuc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(tin-tuc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(doi-tac)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(doi-tac)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(doi-tac)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:16:\"chuyen-muc/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(20987, '_transient_is_multi_author', '0', 'yes'),
(20988, '_transient_all_the_cool_cats', '10', 'yes'),
(20995, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.1.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1559956642;s:15:\"version_checked\";s:5:\"5.2.1\";s:12:\"translations\";a:0:{}}', 'no'),
(20996, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1559956643;s:7:\"checked\";a:1:{s:9:\"bachdatan\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(20997, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1559956643;s:8:\"response\";a:1:{s:21:\"meta-box/meta-box.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/meta-box\";s:4:\"slug\";s:8:\"meta-box\";s:6:\"plugin\";s:21:\"meta-box/meta-box.php\";s:11:\"new_version\";s:6:\"4.18.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/meta-box/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/meta-box.4.18.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/meta-box/assets/icon-128x128.png?rev=1100915\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/meta-box/assets/banner-772x250.png?rev=1929588\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.0.5\";s:7:\"updated\";s:19:\"2018-10-23 05:18:02\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.0.5/vi.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:6:{s:47:\"better-search-replace/better-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/better-search-replace\";s:4:\"slug\";s:21:\"better-search-replace\";s:6:\"plugin\";s:47:\"better-search-replace/better-search-replace.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/better-search-replace/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/better-search-replace.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/better-search-replace/assets/icon-256x256.png?rev=1238934\";s:2:\"1x\";s:74:\"https://ps.w.org/better-search-replace/assets/icon-128x128.png?rev=1238934\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/better-search-replace/assets/banner-1544x500.png?rev=1238934\";s:2:\"1x\";s:76:\"https://ps.w.org/better-search-replace/assets/banner-772x250.png?rev=1238934\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"categories-images/categories-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/categories-images\";s:4:\"slug\";s:17:\"categories-images\";s:6:\"plugin\";s:39:\"categories-images/categories-images.php\";s:11:\"new_version\";s:5:\"2.5.4\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/categories-images/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/categories-images.2.5.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:68:\"https://s.w.org/plugins/geopattern-icon/categories-images_7a8aa3.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/categories-images/assets/banner-772x250.png?rev=1803373\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"5.2.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.5.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/tinymce-advanced/assets/banner-1544x500.png?rev=2011513\";s:2:\"1x\";s:71:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=2011513\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"11.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.11.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1439192902:1'),
(12, 6, 'post_views_count', '1'),
(7870, 1404, '_wc_review_count', '0'),
(7871, 1404, '_wc_rating_count', 'a:0:{}'),
(7872, 1404, '_wc_average_rating', '0'),
(7873, 1404, '_edit_last', '1'),
(7874, 1404, '_sku', ''),
(7877, 1404, '_sale_price_dates_from', ''),
(7878, 1404, '_sale_price_dates_to', ''),
(7879, 1404, 'total_sales', '3'),
(7880, 1404, '_tax_status', 'taxable'),
(7881, 1404, '_tax_class', ''),
(7882, 1404, '_manage_stock', 'no'),
(7883, 1404, '_backorders', 'no'),
(7884, 1404, '_sold_individually', 'no'),
(7885, 1404, '_weight', ''),
(7886, 1404, '_length', ''),
(7887, 1404, '_width', ''),
(7888, 1404, '_height', ''),
(7889, 1404, '_upsell_ids', 'a:0:{}'),
(7890, 1404, '_crosssell_ids', 'a:0:{}'),
(7891, 1404, '_purchase_note', ''),
(7892, 1404, '_default_attributes', 'a:0:{}'),
(7893, 1404, '_virtual', 'no'),
(7894, 1404, '_downloadable', 'no'),
(7895, 1404, '_product_image_gallery', ''),
(7896, 1404, '_download_limit', '-1'),
(7897, 1404, '_download_expiry', '-1'),
(7898, 1404, '_stock', NULL),
(7899, 1404, '_stock_status', 'instock'),
(7900, 1404, '_product_version', '3.5.7'),
(7902, 1404, '_yoast_wpseo_primary_product_cat', ''),
(7903, 1404, '_yoast_wpseo_content_score', '60'),
(7904, 1404, '_edit_lock', '1553760511:1'),
(7919, 1404, '_wp_old_slug', 'mat-ong-rung-tay-bac'),
(7932, 1412, '_wc_review_count', '1'),
(7933, 1412, '_wc_rating_count', 'a:1:{i:5;i:1;}'),
(7934, 1412, '_wc_average_rating', '5.00'),
(7935, 1412, '_edit_last', '1'),
(7936, 1412, '_edit_lock', '1553760502:1'),
(7940, 1412, '_sku', ''),
(7943, 1412, '_sale_price_dates_from', ''),
(7944, 1412, '_sale_price_dates_to', ''),
(7945, 1412, 'total_sales', '0'),
(7946, 1412, '_tax_status', 'taxable'),
(7947, 1412, '_tax_class', ''),
(7948, 1412, '_manage_stock', 'no'),
(7949, 1412, '_backorders', 'no'),
(7950, 1412, '_sold_individually', 'no'),
(7951, 1412, '_weight', ''),
(7952, 1412, '_length', ''),
(7953, 1412, '_width', ''),
(7954, 1412, '_height', ''),
(7955, 1412, '_upsell_ids', 'a:0:{}'),
(7956, 1412, '_crosssell_ids', 'a:0:{}'),
(7957, 1412, '_purchase_note', ''),
(7958, 1412, '_default_attributes', 'a:0:{}'),
(7959, 1412, '_virtual', 'no'),
(7960, 1412, '_downloadable', 'no'),
(7961, 1412, '_product_image_gallery', ''),
(7962, 1412, '_download_limit', '-1'),
(7963, 1412, '_download_expiry', '-1'),
(7964, 1412, '_stock', NULL),
(7965, 1412, '_stock_status', 'instock'),
(7966, 1412, '_product_version', '3.5.7'),
(7968, 1412, '_yoast_wpseo_primary_product_cat', '440'),
(7969, 1412, '_yoast_wpseo_content_score', '60'),
(7975, 1415, '_edit_last', '1'),
(7976, 1415, '_edit_lock', '1553913588:1'),
(7978, 1415, '_sidebar_to_replace', 'sidebar-1'),
(8360, 1451, '_wc_review_count', '0'),
(8361, 1451, '_wc_rating_count', 'a:0:{}'),
(8362, 1451, '_wc_average_rating', '0'),
(8363, 1451, '_edit_last', '1'),
(8364, 1451, '_edit_lock', '1553760492:1'),
(8365, 1451, '_sku', ''),
(8368, 1451, '_sale_price_dates_from', ''),
(8369, 1451, '_sale_price_dates_to', ''),
(8370, 1451, 'total_sales', '1'),
(8371, 1451, '_tax_status', 'taxable'),
(8372, 1451, '_tax_class', ''),
(8373, 1451, '_manage_stock', 'no'),
(8374, 1451, '_backorders', 'no'),
(8375, 1451, '_sold_individually', 'no'),
(8376, 1451, '_weight', ''),
(8377, 1451, '_length', ''),
(8378, 1451, '_width', ''),
(8379, 1451, '_height', ''),
(8380, 1451, '_upsell_ids', 'a:0:{}'),
(8381, 1451, '_crosssell_ids', 'a:0:{}'),
(8382, 1451, '_purchase_note', ''),
(8383, 1451, '_default_attributes', 'a:0:{}'),
(8384, 1451, '_virtual', 'no'),
(8385, 1451, '_downloadable', 'no'),
(8386, 1451, '_product_image_gallery', ''),
(8387, 1451, '_download_limit', '-1'),
(8388, 1451, '_download_expiry', '-1'),
(8389, 1451, '_stock', NULL),
(8390, 1451, '_stock_status', 'instock'),
(8391, 1451, '_product_attributes', 'a:0:{}'),
(8392, 1451, '_product_version', '3.5.7'),
(8536, 1451, '_yoast_wpseo_primary_product_cat', '440'),
(8537, 1451, '_yoast_wpseo_content_score', '60'),
(8538, 1412, '_product_attributes', 'a:0:{}'),
(8679, 1404, '_product_attributes', 'a:0:{}'),
(8844, 1465, '_order_key', 'wc_order_592924e0f32e9'),
(8845, 1465, '_customer_user', '0'),
(8846, 1465, '_payment_method', 'cheque'),
(8847, 1465, '_payment_method_title', 'Check payments'),
(8848, 1465, '_transaction_id', ''),
(8849, 1465, '_customer_ip_address', '127.0.0.1'),
(8850, 1465, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; wow64) applewebkit/537.36 (khtml, like gecko) coc_coc_browser/63.4.160 chrome/57.4.2987.160 safari/537.36'),
(8851, 1465, '_created_via', 'checkout'),
(8852, 1465, '_date_completed', ''),
(8853, 1465, '_completed_date', ''),
(8854, 1465, '_date_paid', ''),
(8855, 1465, '_paid_date', ''),
(8856, 1465, '_cart_hash', '09c96b72d39563664f8f640f704f3060'),
(8857, 1465, '_billing_first_name', ''),
(8858, 1465, '_billing_last_name', 'Nhựt'),
(8859, 1465, '_billing_company', ''),
(8860, 1465, '_billing_address_1', 'HCM'),
(8861, 1465, '_billing_address_2', ''),
(8862, 1465, '_billing_city', ''),
(8863, 1465, '_billing_state', ''),
(8864, 1465, '_billing_postcode', ''),
(8865, 1465, '_billing_country', ''),
(8866, 1465, '_billing_email', ''),
(8867, 1465, '_billing_phone', '01287547947'),
(8868, 1465, '_shipping_first_name', ''),
(8869, 1465, '_shipping_last_name', ''),
(8870, 1465, '_shipping_company', ''),
(8871, 1465, '_shipping_address_1', ''),
(8872, 1465, '_shipping_address_2', ''),
(8873, 1465, '_shipping_city', ''),
(8874, 1465, '_shipping_state', ''),
(8875, 1465, '_shipping_postcode', ''),
(8876, 1465, '_shipping_country', ''),
(8877, 1465, '_order_currency', 'VND'),
(8878, 1465, '_cart_discount', '0'),
(8879, 1465, '_cart_discount_tax', '0'),
(8880, 1465, '_order_shipping', '0'),
(8881, 1465, '_order_shipping_tax', '0'),
(8882, 1465, '_order_tax', '0'),
(8883, 1465, '_order_total', '380000'),
(8884, 1465, '_order_version', '3.0.7'),
(8885, 1465, '_prices_include_tax', 'no'),
(8886, 1465, '_billing_address_index', ' Nhựt  HCM       01287547947'),
(8887, 1465, '_shipping_address_index', '        '),
(8888, 1465, '_shipping_method', ''),
(8889, 1465, '_recorded_sales', 'yes'),
(8890, 1465, '_recorded_coupon_usage_counts', 'yes'),
(8891, 1465, '_order_stock_reduced', 'yes'),
(8958, 1451, '_low_stock_amount', ''),
(8959, 1451, '_price', ''),
(8960, 1451, '_price', ''),
(8961, 1451, '_price', ''),
(8962, 1451, '_price', ''),
(8963, 1451, '_regular_price', ''),
(8964, 1451, '_sale_price', ''),
(8965, 1451, '_wp_old_slug', 'mat-ong-chom-chom-vuon-long-khanh-dong-nai'),
(8968, 1412, '_wp_old_slug', 'mat-ong-hoa-nhan-nam-bo'),
(8969, 1412, '_low_stock_amount', ''),
(8972, 1404, '_wp_old_slug', 'mat-ong-hoa-rung-tay-bac'),
(8973, 1404, '_low_stock_amount', ''),
(9017, 1485, '_wc_review_count', '0'),
(9018, 1485, '_wc_rating_count', 'a:0:{}'),
(9019, 1485, '_wc_average_rating', '0'),
(9020, 1485, '_edit_last', '1'),
(9021, 1485, '_edit_lock', '1553507036:1'),
(9025, 1485, '_sku', ''),
(9026, 1485, '_regular_price', ''),
(9027, 1485, '_sale_price', ''),
(9028, 1485, '_sale_price_dates_from', ''),
(9029, 1485, '_sale_price_dates_to', ''),
(9030, 1485, 'total_sales', '0'),
(9031, 1485, '_tax_status', 'taxable'),
(9032, 1485, '_tax_class', ''),
(9033, 1485, '_manage_stock', 'no'),
(9034, 1485, '_backorders', 'no'),
(9035, 1485, '_low_stock_amount', ''),
(9036, 1485, '_sold_individually', 'no'),
(9037, 1485, '_weight', ''),
(9038, 1485, '_length', ''),
(9039, 1485, '_width', ''),
(9040, 1485, '_height', ''),
(9041, 1485, '_upsell_ids', 'a:0:{}'),
(9042, 1485, '_crosssell_ids', 'a:0:{}'),
(9043, 1485, '_purchase_note', ''),
(9044, 1485, '_default_attributes', 'a:0:{}'),
(9045, 1485, '_virtual', 'no'),
(9046, 1485, '_downloadable', 'no'),
(9047, 1485, '_product_image_gallery', ''),
(9048, 1485, '_download_limit', '-1'),
(9049, 1485, '_download_expiry', '-1'),
(9050, 1485, '_stock', NULL),
(9051, 1485, '_stock_status', 'instock'),
(9052, 1485, '_product_version', '3.5.7'),
(9053, 1485, '_price', ''),
(9054, 1485, '_yoast_wpseo_primary_product_cat', '440'),
(9055, 1485, '_yoast_wpseo_content_score', '60'),
(9090, 1404, '_price', '2650000'),
(9091, 1404, '_price', '2650000'),
(9092, 1404, '_price', '2650000'),
(9093, 1404, '_price', '2650000'),
(9094, 1404, '_regular_price', '2650000'),
(9095, 1404, '_sale_price', ''),
(9106, 1412, '_price', '1600000'),
(9107, 1412, '_price', '1600000'),
(9108, 1412, '_price', '1600000'),
(9109, 1412, '_price', '1600000'),
(9110, 1412, '_regular_price', '1600000'),
(9111, 1412, '_sale_price', ''),
(9169, 1485, '_wp_old_slug', 'den-ban-robot'),
(9172, 1451, '_wp_old_slug', 'bo-2-ban-sofa-coca'),
(9175, 1412, '_wp_old_slug', 'bo-sofa-monterey'),
(9178, 1404, '_wp_old_slug', 'dong-ho-bike'),
(9336, 1415, '_condition', 'post-1527'),
(9337, 1415, '_condition', 'post-1529'),
(9338, 1415, '_condition', 'post-type-archive-product'),
(9339, 1415, '_condition', 'post-type-product'),
(9340, 1415, '_condition', 'post-type-post'),
(9341, 1415, '_condition', 'archive-category'),
(9342, 1415, '_condition', 'archive-post_tag'),
(9343, 1415, '_condition', 'archive-product_cat'),
(9344, 1415, '_condition', 'archive-product_tag'),
(9345, 1415, '_condition', 'search'),
(9346, 1415, '_condition', 'wc-shop_page'),
(9347, 1415, '_condition', 'wc-product_category'),
(9348, 1415, '_condition', 'wc-product_tag'),
(9349, 1415, '_condition', 'wc-product'),
(9350, 1536, '_wp_trash_meta_status', 'publish'),
(9351, 1536, '_wp_trash_meta_time', '1558850900'),
(9358, 1539, '_wp_trash_meta_status', 'publish'),
(9359, 1539, '_wp_trash_meta_time', '1558850934'),
(9361, 1540, '_wp_trash_meta_status', 'publish'),
(9362, 1540, '_wp_trash_meta_time', '1558851135'),
(9417, 1547, '_edit_last', '1'),
(9418, 1547, '_edit_lock', '1558855288:1'),
(9419, 1548, '_wp_attached_file', '2019/05/slide-home-1.jpg'),
(9420, 1548, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:790;s:4:\"file\";s:24:\"2019/05/slide-home-1.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"slide-home-1-768x316.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:316;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:24:\"slide-home-1-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:22:\"slide-home-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9421, 1547, '_thumbnail_id', '1548'),
(9424, 1547, '_yoast_wpseo_primary_category', '461'),
(9425, 1547, '_yoast_wpseo_content_score', '60'),
(9426, 1549, '_edit_lock', '1558856294:1'),
(9427, 1550, '_wp_attached_file', '2019/05/favicon-bachdatan.png'),
(9428, 1550, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:29:\"2019/05/favicon-bachdatan.png\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:27:\"favicon-bachdatan-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9429, 1549, '_wp_trash_meta_status', 'publish'),
(9430, 1549, '_wp_trash_meta_time', '1558856307'),
(9437, 1552, '_wp_trash_meta_status', 'publish'),
(9438, 1552, '_wp_trash_meta_time', '1558856356'),
(9439, 1547, 'post_views_count', '14'),
(9440, 1553, '_wp_attached_file', '2019/05/logo-bachdatan.png'),
(9441, 1553, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:156;s:6:\"height\";i:120;s:4:\"file\";s:26:\"2019/05/logo-bachdatan.png\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:24:\"logo-bachdatan-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9442, 1553, '_wp_attachment_custom_header_last_used_bachdatan', '1558951634'),
(9443, 1553, '_wp_attachment_is_custom_header', 'bachdatan'),
(9444, 1554, '_wp_trash_meta_status', 'publish'),
(9445, 1554, '_wp_trash_meta_time', '1558951634'),
(9446, 1555, '_edit_last', '1'),
(9447, 1555, '_edit_lock', '1559890442:1'),
(9448, 1556, '_wp_attached_file', '2019/05/banner-header-about-us.jpg'),
(9449, 1556, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2019/05/banner-header-about-us.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"banner-header-about-us-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:34:\"banner-header-about-us-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:32:\"banner-header-about-us-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9450, 1555, '_thumbnail_id', '1556'),
(9451, 1555, '_wp_page_template', 'page-fullwidth.php'),
(9452, 1555, '_yoast_wpseo_content_score', '60'),
(9453, 1557, '_menu_item_type', 'post_type'),
(9454, 1557, '_menu_item_menu_item_parent', '0'),
(9455, 1557, '_menu_item_object_id', '1555'),
(9456, 1557, '_menu_item_object', 'page'),
(9457, 1557, '_menu_item_target', ''),
(9458, 1557, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9459, 1557, '_menu_item_xfn', ''),
(9460, 1557, '_menu_item_url', ''),
(9462, 1558, '_wp_attached_file', '2019/05/bg-project.jpg'),
(9463, 1558, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1980;s:6:\"height\";i:412;s:4:\"file\";s:22:\"2019/05/bg-project.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"bg-project-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:22:\"bg-project-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:20:\"bg-project-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(9464, 1559, '_menu_item_type', 'taxonomy'),
(9465, 1559, '_menu_item_menu_item_parent', '0'),
(9466, 1559, '_menu_item_object_id', '462'),
(9467, 1559, '_menu_item_object', 'category'),
(9468, 1559, '_menu_item_target', ''),
(9469, 1559, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9470, 1559, '_menu_item_xfn', ''),
(9471, 1559, '_menu_item_url', ''),
(9473, 1560, '_edit_last', '1'),
(9474, 1560, '_edit_lock', '1559892438:1'),
(9475, 1561, '_wp_attached_file', '2019/05/du-an-1.jpg'),
(9476, 1561, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:425;s:6:\"height\";i:255;s:4:\"file\";s:19:\"2019/05/du-an-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:17:\"du-an-1-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9477, 1560, '_thumbnail_id', '1561'),
(9480, 1560, '_yoast_wpseo_primary_category', '462'),
(9481, 1560, '_yoast_wpseo_content_score', '60'),
(9482, 1562, '_edit_last', '1'),
(9483, 1562, '_edit_lock', '1559892428:1'),
(9484, 1563, '_wp_attached_file', '2019/05/du-an-2.jpg'),
(9485, 1563, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:382;s:6:\"height\";i:255;s:4:\"file\";s:19:\"2019/05/du-an-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:17:\"du-an-2-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9486, 1562, '_thumbnail_id', '1563'),
(9489, 1562, '_yoast_wpseo_primary_category', '462'),
(9490, 1562, '_yoast_wpseo_content_score', '60'),
(9491, 1564, '_edit_last', '1'),
(9492, 1564, '_edit_lock', '1559892420:1'),
(9493, 1565, '_wp_attached_file', '2019/05/du-an-3.jpg'),
(9494, 1565, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:407;s:6:\"height\";i:255;s:4:\"file\";s:19:\"2019/05/du-an-3.jpg\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:17:\"du-an-3-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9495, 1564, '_thumbnail_id', '1565'),
(9498, 1564, '_yoast_wpseo_primary_category', '462'),
(9499, 1564, '_yoast_wpseo_content_score', '60'),
(9500, 1566, '_edit_last', '1'),
(9501, 1566, '_edit_lock', '1559180150:1'),
(9502, 1566, '_oembed_a62c44c7da17acb85779aaf06ace2657', '{{unknown}}'),
(9503, 1567, '_wp_attached_file', '2019/05/partner-3.png'),
(9504, 1567, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:162;s:6:\"height\";i:72;s:4:\"file\";s:21:\"2019/05/partner-3.png\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:19:\"partner-3-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9505, 1566, '_thumbnail_id', '1567'),
(9508, 1566, '_yoast_wpseo_primary_category', ''),
(9509, 1566, '_yoast_wpseo_content_score', '60'),
(9510, 1568, '_edit_last', '1'),
(9511, 1568, '_edit_lock', '1559179876:1'),
(9512, 1568, '_oembed_a62c44c7da17acb85779aaf06ace2657', '{{unknown}}'),
(9513, 1569, '_wp_attached_file', '2019/05/partner-2.png'),
(9514, 1569, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:230;s:6:\"height\";i:76;s:4:\"file\";s:21:\"2019/05/partner-2.png\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:19:\"partner-2-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9515, 1568, '_thumbnail_id', '1569'),
(9518, 1568, '_yoast_wpseo_primary_category', '463'),
(9519, 1568, '_yoast_wpseo_content_score', '60'),
(9522, 1570, '_edit_last', '1'),
(9523, 1570, '_edit_lock', '1559180140:1'),
(9524, 1571, '_wp_attached_file', '2019/05/partner-5.png'),
(9525, 1571, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:162;s:6:\"height\";i:72;s:4:\"file\";s:21:\"2019/05/partner-5.png\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:19:\"partner-5-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9526, 1570, '_thumbnail_id', '1571'),
(9529, 1570, '_oembed_09c6437d5c0c31fc6ae08b7b5881da6e', '{{unknown}}'),
(9530, 1570, '_yoast_wpseo_primary_category', ''),
(9531, 1570, '_yoast_wpseo_content_score', '60'),
(9532, 1572, '_edit_last', '1'),
(9533, 1572, '_edit_lock', '1559179951:1'),
(9534, 1572, '_oembed_f808c8e1a21847782aeb77c4bfa5a69b', '{{unknown}}'),
(9535, 1573, '_wp_attached_file', '2019/05/partner-4.png'),
(9536, 1573, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:84;s:6:\"height\";i:72;s:4:\"file\";s:21:\"2019/05/partner-4.png\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:19:\"partner-4-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9537, 1572, '_thumbnail_id', '1573'),
(9540, 1572, '_yoast_wpseo_primary_category', '463'),
(9541, 1572, '_yoast_wpseo_content_score', '60'),
(9542, 1574, '_edit_last', '1'),
(9543, 1574, '_edit_lock', '1559179989:1'),
(9544, 1574, '_oembed_77a6ba3071308043be9589e1213f2c2a', '{{unknown}}'),
(9545, 1575, '_wp_attached_file', '2019/05/partner-1.png'),
(9546, 1575, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:112;s:6:\"height\";i:72;s:4:\"file\";s:21:\"2019/05/partner-1.png\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:19:\"partner-1-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9547, 1574, '_thumbnail_id', '1575'),
(9550, 1574, '_yoast_wpseo_primary_category', '463'),
(9551, 1574, '_yoast_wpseo_content_score', '60'),
(9556, 1578, '_menu_item_type', 'taxonomy'),
(9557, 1578, '_menu_item_menu_item_parent', '0'),
(9558, 1578, '_menu_item_object_id', '463'),
(9559, 1578, '_menu_item_object', 'category'),
(9560, 1578, '_menu_item_target', ''),
(9561, 1578, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9562, 1578, '_menu_item_xfn', ''),
(9563, 1578, '_menu_item_url', ''),
(9565, 1579, '_wp_attached_file', '2019/05/bg-doi-tac.jpg'),
(9566, 1579, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:414;s:4:\"file\";s:22:\"2019/05/bg-doi-tac.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"bg-doi-tac-768x166.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:22:\"bg-doi-tac-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:20:\"bg-doi-tac-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9567, 1580, '_wp_attached_file', '2019/05/bg-tin-tuc.jpg'),
(9568, 1580, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:414;s:4:\"file\";s:22:\"2019/05/bg-tin-tuc.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"bg-tin-tuc-768x166.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:22:\"bg-tin-tuc-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:20:\"bg-tin-tuc-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9569, 1581, '_menu_item_type', 'taxonomy'),
(9570, 1581, '_menu_item_menu_item_parent', '0'),
(9571, 1581, '_menu_item_object_id', '464'),
(9572, 1581, '_menu_item_object', 'category'),
(9573, 1581, '_menu_item_target', ''),
(9574, 1581, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9575, 1581, '_menu_item_xfn', ''),
(9576, 1581, '_menu_item_url', ''),
(9578, 1583, '_edit_last', '1'),
(9579, 1583, '_edit_lock', '1559182590:1'),
(9580, 1584, '_wp_attached_file', '2019/05/00fcxb.jpg'),
(9581, 1584, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:363;s:6:\"height\";i:245;s:4:\"file\";s:18:\"2019/05/00fcxb.jpg\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:16:\"00fcxb-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9582, 1583, '_thumbnail_id', '1584'),
(9585, 1583, '_yoast_wpseo_primary_category', '464'),
(9586, 1583, '_yoast_wpseo_content_score', '60'),
(9587, 1585, '_edit_last', '1'),
(9588, 1585, '_edit_lock', '1559182632:1'),
(9589, 1586, '_wp_attached_file', '2019/05/sanbaylongthanh.jpg'),
(9590, 1586, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:393;s:6:\"height\";i:245;s:4:\"file\";s:27:\"2019/05/sanbaylongthanh.jpg\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:25:\"sanbaylongthanh-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9591, 1585, '_thumbnail_id', '1586'),
(9594, 1585, '_yoast_wpseo_primary_category', '464'),
(9595, 1585, '_yoast_wpseo_content_score', '60'),
(9596, 1587, '_edit_last', '1'),
(9597, 1587, '_edit_lock', '1559182677:1'),
(9598, 1588, '_wp_attached_file', '2019/05/hinhtintucjpg16.jpg'),
(9599, 1588, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:491;s:6:\"height\";i:245;s:4:\"file\";s:27:\"2019/05/hinhtintucjpg16.jpg\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:25:\"hinhtintucjpg16-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9600, 1587, '_thumbnail_id', '1588'),
(9603, 1587, '_yoast_wpseo_primary_category', '464'),
(9604, 1587, '_yoast_wpseo_content_score', '60'),
(9605, 1589, '_edit_last', '1'),
(9606, 1589, '_edit_lock', '1559182716:1'),
(9607, 1590, '_wp_attached_file', '2019/05/od.jpg'),
(9608, 1590, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:436;s:6:\"height\";i:245;s:4:\"file\";s:14:\"2019/05/od.jpg\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:12:\"od-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9609, 1589, '_thumbnail_id', '1590'),
(9612, 1589, '_yoast_wpseo_primary_category', '464'),
(9613, 1589, '_yoast_wpseo_content_score', '60'),
(9614, 1591, '_edit_last', '1'),
(9615, 1591, '_edit_lock', '1559556996:1'),
(9616, 1592, '_wp_attached_file', '2019/05/od6.jpg'),
(9617, 1592, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:395;s:6:\"height\";i:245;s:4:\"file\";s:15:\"2019/05/od6.jpg\";s:5:\"sizes\";a:1:{s:9:\"tab-small\";a:4:{s:4:\"file\";s:13:\"od6-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9618, 1591, '_thumbnail_id', '1592'),
(9621, 1591, '_yoast_wpseo_primary_category', '464'),
(9622, 1591, '_yoast_wpseo_content_score', '60'),
(9623, 1593, '_edit_last', '1'),
(9624, 1593, '_edit_lock', '1559200907:1'),
(9625, 1593, '_wp_page_template', 'page-fullwidth.php'),
(9626, 1593, '_yoast_wpseo_content_score', '90'),
(9627, 1594, '_menu_item_type', 'post_type'),
(9628, 1594, '_menu_item_menu_item_parent', '0'),
(9629, 1594, '_menu_item_object_id', '1593'),
(9630, 1594, '_menu_item_object', 'page'),
(9631, 1594, '_menu_item_target', ''),
(9632, 1594, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9633, 1594, '_menu_item_xfn', ''),
(9634, 1594, '_menu_item_url', ''),
(9636, 1595, '_form', '<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-sm-6\">\n[text* your-name placeholder \"Họ tên: *\"]\n[email* your-email placeholder \"Địa chỉ email: *\"]\n[tel* phone placeholder \"Số điện thoại: *\"]\n</div>\n<div class=\"col-sm-6\">\n[textarea your-message x6 placeholder \"Nội dung thông điệp: *\"]\n</div>\n<div class=\"col-sm-12\">\n[submit \"Gửi liên hệ\"]\n</div>\n</div>\n</div>'),
(9637, 1595, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"Bách Đạt An \"[your-subject]\"\";s:6:\"sender\";s:38:\"Bách Đạt An <ectasy1703@gmail.com>\";s:9:\"recipient\";s:20:\"ectasy1703@gmail.com\";s:4:\"body\";s:180:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Bách Đạt An (http://localhost/bachdatan)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(9638, 1595, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"Bách Đạt An \"[your-subject]\"\";s:6:\"sender\";s:38:\"Bách Đạt An <ectasy1703@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:122:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Bách Đạt An (http://localhost/bachdatan)\";s:18:\"additional_headers\";s:30:\"Reply-To: ectasy1703@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(9639, 1595, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:30:\"Lỗi không thể gửi mail.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_small\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}'),
(9640, 1595, '_additional_settings', ''),
(9641, 1595, '_locale', 'vi'),
(9642, 1562, 'post_views_count', '0'),
(9643, 1564, 'post_views_count', '36'),
(9644, 1596, '_wp_attached_file', '2019/05/oceandunes0303.jpg'),
(9645, 1596, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1279;s:6:\"height\";i:637;s:4:\"file\";s:26:\"2019/05/oceandunes0303.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"oceandunes0303-768x382.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:26:\"oceandunes0303-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:24:\"oceandunes0303-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9646, 1597, '_wp_attached_file', '2019/05/oceandunes0603.jpg'),
(9647, 1597, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1279;s:6:\"height\";i:637;s:4:\"file\";s:26:\"2019/05/oceandunes0603.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"oceandunes0603-768x382.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:26:\"oceandunes0603-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:24:\"oceandunes0603-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9648, 1598, '_wp_attached_file', '2019/05/oceandunes1903.jpg'),
(9649, 1598, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1279;s:6:\"height\";i:637;s:4:\"file\";s:26:\"2019/05/oceandunes1903.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"oceandunes1903-768x382.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:26:\"oceandunes1903-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:24:\"oceandunes1903-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9650, 1599, '_wp_attached_file', '2019/05/oceandunes2003.jpg'),
(9651, 1599, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1279;s:6:\"height\";i:637;s:4:\"file\";s:26:\"2019/05/oceandunes2003.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"oceandunes2003-768x382.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:26:\"oceandunes2003-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:24:\"oceandunes2003-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9652, 1600, '_wp_attached_file', '2019/05/oceandunes2103.jpg'),
(9653, 1600, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1279;s:6:\"height\";i:637;s:4:\"file\";s:26:\"2019/05/oceandunes2103.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"oceandunes2103-768x382.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:26:\"oceandunes2103-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:24:\"oceandunes2103-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9694, 1601, '_wp_attached_file', '2019/05/ban-do-vi-tri-garden-hills.jpg'),
(9695, 1601, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1130;s:6:\"height\";i:802;s:4:\"file\";s:38:\"2019/05/ban-do-vi-tri-garden-hills.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"ban-do-vi-tri-garden-hills-768x545.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:545;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:38:\"ban-do-vi-tri-garden-hills-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:36:\"ban-do-vi-tri-garden-hills-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9732, 1564, 'vi-tri-du-an', '<ul>\n<li>Khu đô thị Khu Đô thị 7B Mở rộng tọa lạc ngay tại trung tâm khu vực Nam Đà Nẵng – khu vực phát triển thành phố về phía Nam hiện nay.</li>\n<li>Các trục đường lớn bao quanh:</li>\n<li>Phía Bắc: giáp sông Cổ Cò.</li>\n<li>Phía Nam: Khu đô thị 7B.</li>\n<li>Phía Đông giáp: Vành đai du lịch phía Nam Đà Nẵng.</li>\n<li>Phía Tây: giáp Làng đại học Đà Nẵng.</li>\n<li>Khu Đô thị 7B Mở rộng sở hữu trục đường huyết mạch 27m nối thẳng ra biển giúp cư dân tương lai tận hưởng một cuộc sống xanh trọn vẹn. Giao thông thuận lợi khi nằm trên tuyến giao thông huyết mạch nối Đà Nẵng – Hội An và kết nối thông suốt đến các địa điểm trọng yếu trong khu vực và các vùng lân cận</li>\n</ul>\n'),
(9736, 1564, 'thu-vien-hinh-anh', '1596'),
(9737, 1564, 'thu-vien-hinh-anh', '1597'),
(9738, 1564, 'thu-vien-hinh-anh', '1598'),
(9739, 1564, 'thu-vien-hinh-anh', '1599'),
(9740, 1564, 'thu-vien-hinh-anh', '1600'),
(9741, 1564, 'tong-quan-du-an', 'Công ty Cổ Phần Bách Đạt An'),
(9742, 1564, 'tong-quan-du-an', 'Khu Đô thị 7B Mở rộng'),
(9743, 1564, 'tong-quan-du-an', '19,53 ha'),
(9744, 1564, 'tong-quan-du-an', 'Liền kề, Biệt Thự'),
(9745, 1564, 'hinh-vi-tri-du-an', '1601'),
(9746, 1564, 'tien-ich-du-an', '<p>Khu Đô thị 7B Mở rộng được bao bọc bởi các tiện ích nội ngoại khu cao cấp hiện hữu đáp ứng nhanh chóng mọi nhu cầu cho cư dân tương lai. Khu Đô thị 7B Mở rộng nằm cạnh sông Cổ Cò, liền kề Tổ hợp du lịch và giải trí thế giới CocoBay, sân golf đẳng cấp Montgomerie Links, các khu đô thị cao cấp, nằm trên tuyến đường du lịch năm sao ven biển Đà Nẵng – Hội An…</p>\n<p>Khu Đô thị 7B Mở rộng tô điểm thêm bức tranh cuộc sống đầy màu sắc khu vực Nam Đà Nẵng, mang đến môi trường sống xanh, sống sang ngay tại mảnh đất trù phú này.</p>\n<p><strong>Các tiện ích liền kề bao quanh:</strong></p>\n<ul>\n<li>Cách biển: 800m.</li>\n<li>Cách chợ Điện Ngọc: 1km.</li>\n<li>Cách tổ hợp du lịch và giải trí thế giới CocoBay: 1km.</li>\n<li>Cách sân golf Montgomerie Link, Vinacapital: 2km.</li>\n<li>Cách các trường ĐH Nội vụ Hà Nội – Cơ sở Miền Trung, ĐH Mỹ Thái Bình Dương, CĐ CNTT Hữu Nghị Việt Hàn, CĐ Công nghệ thông tin: 2km.</li>\n<li>Cách KĐT FPT City: 5km.</li>\n<li>Cách trung tâm TP Đà Nẵng: 10km.</li>\n<li>Cách trung tâm Phố cổ Hội An: 14km.</li>\n</ul>\n'),
(9747, 1604, '_wp_attached_file', '2019/05/OD-3.jpg'),
(9748, 1604, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:625;s:4:\"file\";s:16:\"2019/05/OD-3.jpg\";s:5:\"sizes\";a:3:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"OD-3-768x343.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"dazzling-featured\";a:4:{s:4:\"file\";s:16:\"OD-3-730x410.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:14:\"OD-3-60x60.jpg\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9749, 1555, 'gioi-thieu-chi-tiet', '<p>Ra đời vào ngày 09 tháng 05 năm 2005, Công Ty TNHH Sản Xuất và Thương Mại Bách Đạt tự hào vì đã có một chặng đường 10 năm hoạt động ổn định, phát triển vững chắc, không ngừng mở rộng qui mô, ngành nghề và ngày càng khẳng định chỗ đứng của Doanh Nghiệp trên thương trường.</p>\n<p>Cùng với sự phát triển chung của Thành Phố Đà Nẵng, Công Ty TNHH Sản Xuất và Thương Mại Bách Đạt đã lựa chọn cho mình hướng đi phù hợp với những mục tiêu cụ thể trong từng giai đoạn.</p>\n'),
(9750, 1555, 'gioi-thieu-qua-trinh-phat-trien', '<p>Bách Đạt luôn không ngừng tập trung mọi nỗ lực phát triển nguồn nhân lực, nâng cao tiềm lực tài chính và ứng dụng công nghệ hiện đại, với mong muốn cung ứng cho khách hàng các dòng sản phẩm độc đáo, chất lượng.</p>\n'),
(9751, 1555, 'chi-tiet-qua-trinh-phat-trien', 'a:6:{i:0;a:2:{i:0;s:7:\"10/2007\";i:1;s:129:\"Tháng 10/2007: thành lập Công ty cổ phần Bất động sản Sài Gòn Phương Nam, vốn điều lệ 20 tỷ đồng.\";}i:1;a:2:{i:0;s:7:\"09/2009\";i:1;s:158:\"Tháng 09/2009: Thành lập Sàn giao dịch Bất động sản Sài Gòn Phương Nam, tại số 06 Nam Quốc Cang, Phường Phạm Ngũ Lão, Quận 1.\";}i:2;a:2:{i:0;s:7:\"05/2010\";i:1;s:145:\"Tháng 05/2010: thành lập Chi nhánh Công ty cổ phần Bất động sản Sài Gòn Phương Nam, tại 288 – 290 Cao Thắng, Quận 3.\";}i:3;a:2:{i:0;s:7:\"04/2011\";i:1;s:171:\"Tháng 04/2011: Bách Đạt An là đơn vị Phát triển và Độc quyền phân phối dự án Khu căn hộ nghỉ dưỡng cao cấp Ocean Vista – Phan Thiết.\";}i:4;a:2:{i:0;s:7:\"05/2013\";i:1;s:161:\"Tháng 05/2013: thay đổi vốn điều lệ của Công ty cổ phần Bất động sản Sài Gòn Phương Nam, từ 20 tỷ đồng lên 150 tỷ đồng.\";}i:5;a:2:{i:0;s:4:\"2016\";i:1;s:123:\"Năm 2016: Bách Đạt An là đơn vị Phát triển dự án Khu đô thị Du lịch biển cao cấp – Ocean Dunes.\";}}'),
(9752, 1555, 'gioi-thieu-ban-lanh-dao', '<p>Bao gồm những người sáng lập và các thành viên cấp cao trong đội ngũ quản lý của Bách Đạt An, Ban điều hành định hướng tầm nhìn của Bách Đạt An và đưa ra các quyết định chiến lược và tài chính chủ chốt cho các công ty.</p>\n'),
(9753, 1555, 'chi-tiet-ban-lanh-dao', 'a:5:{i:0;a:4:{i:0;s:20:\"Ông Nguyễn Văn A\";i:1;s:19:\"Tổng giám đốc\";i:2;s:75:\"Tổng giám đốc công ty đầu tư bất động sản Bách Đạt An\";i:3;s:0:\"\";}i:1;a:4:{i:0;s:20:\"Ông Nguyễn Văn A\";i:1;s:19:\"Tổng giám đốc\";i:2;s:75:\"Tổng giám đốc công ty đầu tư bất động sản Bách Đạt An\";i:3;s:0:\"\";}i:2;a:4:{i:0;s:20:\"Ông Nguyễn Văn A\";i:1;s:19:\"Tổng giám đốc\";i:2;s:75:\"Tổng giám đốc công ty đầu tư bất động sản Bách Đạt An\";i:3;s:0:\"\";}i:3;a:4:{i:0;s:20:\"Ông Nguyễn Văn A\";i:1;s:19:\"Tổng giám đốc\";i:2;s:75:\"Tổng giám đốc công ty đầu tư bất động sản Bách Đạt An\";i:3;s:0:\"\";}i:4;a:4:{i:0;s:20:\"Ông Nguyễn Văn A\";i:1;s:19:\"Tổng giám đốc\";i:2;s:75:\"Tổng giám đốc công ty đầu tư bất động sản Bách Đạt An\";i:3;s:0:\"\";}}'),
(9758, 1560, '_pingme', '1'),
(9759, 1560, '_encloseme', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1404, 1, '2017-05-24 12:16:37', '2017-05-24 05:16:37', '', 'Máy nén khí Airman 50 HP', 'Hãng Sản Xuất: AIRMAN\r\n\r\nCông Suất: 50 HP 37KW\r\n\r\nXuất Xứ: Nhật Bản\r\n\r\nTình trạng: Mới 85%\r\n\r\nChức Năng: Dùng Trong Công Nghiệp', 'publish', 'open', 'closed', '', 'may-nen-khi-airman-50-hp', '', '', '2019-03-28 15:08:31', '2019-03-28 08:08:31', '', 0, 'http://localhost/bachdatan/?post_type=product&#038;p=1404', 0, 'product', '', 0),
(1406, 1, '2019-03-25 10:13:58', '2019-03-25 03:13:58', '', 'Máy nén khí Airman 50 HP', 'Hãng Sản Xuất :AIRMAN\n\nCông Suất :50 HP 37KW\n\nXuất Xứ :Nhật Bản\n\nTình trạng :Mới 85%\n\nChức Năng :Dùng Trong Công Nghiệp', 'inherit', 'closed', 'closed', '', '1404-autosave-v1', '', '', '2019-03-25 10:13:58', '2019-03-25 03:13:58', '', 1404, 'http://localhost/bachdatan/1404-autosave-v1.html', 0, 'revision', '', 0),
(1412, 1, '2017-05-25 11:56:12', '2017-05-25 04:56:12', '', 'Máy nén khí 50 HP HITACHI', 'Hãng Sản Xuất: HITACHI\r\n\r\nCông Suất: 50 HP 37KW\r\n\r\nXuất Xứ: Nhật Bản\r\n\r\nTình trạng: Mới 90%\r\n\r\nChức Năng: Dùng Trong Công Nghiệp', 'publish', 'open', 'closed', '', 'may-nen-khi-50-hp-inverter', '', '', '2019-03-28 15:08:22', '2019-03-28 08:08:22', '', 0, 'http://localhost/bachdatan/?post_type=product&#038;p=1412', 0, 'product', '', 1),
(1415, 1, '2017-05-25 13:35:43', '2017-05-25 06:35:43', '', 'Sidebar sản phẩm', '', 'publish', 'closed', 'closed', '', 'sidebar-san-pham', '', '', '2019-03-30 09:42:06', '2019-03-30 02:42:06', '', 0, 'http://localhost/bachdatan/?post_type=sidebar&#038;p=1415', 0, 'sidebar', '', 0),
(1451, 1, '2017-05-27 09:06:34', '2017-05-27 02:06:34', '', 'Máy nén khí HITACHI 20 HP INVERTER', 'Hãng Sản Xuất: HITACHI\r\n\r\nCông Suất: 20 HP 15KW\r\n\r\nXuất Xứ: Nhật Bản\r\n\r\nTình trạng: Mới 90%\r\n\r\nChức Năng: Dùng Trong Công Nghiệp', 'publish', 'open', 'closed', '', 'may-nen-khi-hitachi-20-hp-inverter', '', '', '2019-03-28 15:08:11', '2019-03-28 08:08:11', '', 0, 'http://localhost/bachdatan/?post_type=product&#038;p=1451', 0, 'product', '', 0),
(1465, 0, '2017-05-27 14:04:00', '2017-05-27 07:04:00', '', 'Order &ndash; Tháng Năm 27, 2017 @ 02:04 Chiều', '', 'wc-on-hold', 'open', 'closed', 'order_592924e106fd0', 'don-hang-may-27-2017-0704-am', '', '', '2017-05-27 14:04:05', '2017-05-27 07:04:05', '', 0, 'http://localhost/bachdatan/?post_type=shop_order&#038;p=1465', 0, 'shop_order', '', 1),
(1472, 1, '2019-03-25 10:08:40', '2019-03-25 03:08:40', 'Mặt bàn đá vân phối cùng thanh sắt xếp song song mang lại một định nghĩa mới cho bàn sofa không chỉ thuần một chất liệu trên một mặt bàn. Bên cạnh đó, bàn sofa có 2 chiếc bàn để mỗi khi không cần sử dụng nhiều có thể lồng ghép vào nhau rất tiện dụng.', 'Máy nén khí HITACHI 20 HP INVERTER', 'Bàn lớn: 80x80cm, cao 37cm\n\nBàn nhỏ: 70x70cm, cao 34cm\n\nMặt bàn: đá vân đen\n\nChân bàn: Sơn tĩnh điện đen', 'inherit', 'closed', 'closed', '', '1451-autosave-v1', '', '', '2019-03-25 10:08:40', '2019-03-25 03:08:40', '', 1451, 'http://localhost/bachdatan/1451-autosave-v1/', 0, 'revision', '', 0),
(1476, 1, '2019-03-25 10:10:58', '2019-03-25 03:10:58', 'Sang trọng với chất liệu đá Marble và chân kim loại mạ vàng lấp lánh, bộ đôi Bàn Sofa Monterey với chính là điểm nhấn đặc biệt cho không gian phòng khách.\n\nBộ sản phẩm gồm 2 bàn tròn,  1 bàn cao, 1 bàn thấp lồng ghép vào nhau một cách tinh tế. Khung chân của bàn to, cao hơn chỉ 2/3 vòng tròn, để khoảng trống cho 1/3 vòng tròn của chân bàn nhỏ lồng ghép vào, tạo thành một bàn trà đẹp mắt, độc đáo.\n\nMặt bàn bằng đá có vân nổi bật đẹp mắt, sang trọng. Bề mặt láng mịn giúp <strong>bàn trà tròn</strong> này có khả năng chống thấm nước, dễ dàng lau sạch bằng khăn mềm. Chất liệu đá có độ sáng bóng, bền đẹp với khả năng chịu lực cao, chịu nhiệt tốt, đảm bảo không trầy xước, hạn chế bám bụi bẩn.', 'Máy nén khí 50 HP HITACHI', 'Bàn lớn: D=70cm, H=50cm\n\nBàn nhỏ: D=50cm, H=45cm\n\nChất liệu: đá Marble\n\nChân bàn: kim loại mạ vàng', 'inherit', 'closed', 'closed', '', '1412-autosave-v1', '', '', '2019-03-25 10:10:58', '2019-03-25 03:10:58', '', 1412, 'http://localhost/bachdatan/1412-autosave-v1/', 0, 'revision', '', 0),
(1485, 1, '2018-11-02 10:06:56', '2018-11-02 03:06:56', '', 'Máy Nén Khí 100 HP KOBELION-VS', 'Hãng Sản Xuất: KOBELCO\r\n\r\nCông Suất: 100 HP 75KW\r\n\r\nXuất Xứ: Nhật Bản\r\n\r\nTình trạng: Mới 90%\r\n\r\nChức Năng: Dùng Trong Công Nghiệp', 'publish', 'open', 'closed', '', 'may-nen-khi-100-hp-kobelion-vs', '', '', '2019-03-25 16:43:56', '2019-03-25 09:43:56', '', 0, 'http://localhost/bachdatan/?post_type=product&#038;p=1485', 0, 'product', '', 0),
(1487, 1, '2019-03-25 10:06:16', '2019-03-25 03:06:16', '', 'Máy Nén Khí 100 HP KOBELION-VS', 'Chiều cao: 30cm\n\nĐường kính đế: 15cm\n\nĐường kính chụp đèn: 12cm\n\nChất liệu: kim loại sơn phủ bóng\n\nMàu sắc: vàng đồng', 'inherit', 'closed', 'closed', '', '1485-autosave-v1', '', '', '2019-03-25 10:06:16', '2019-03-25 03:06:16', '', 1485, 'http://localhost/bachdatan/1485-autosave-v1/', 0, 'revision', '', 0),
(1536, 1, '2019-05-26 13:08:20', '2019-05-26 06:08:20', '{\n    \"blogdescription\": {\n        \"value\": \"V\\u1eefng hi\\u1ec7n t\\u1ea1i, d\\u1ef1ng t\\u01b0\\u01a1ng lai\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-26 06:08:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2027b7a-e93d-47fc-9759-c3b3cb8379bf', '', '', '2019-05-26 13:08:20', '2019-05-26 06:08:20', '', 0, 'http://localhost/bachdatan/f2027b7a-e93d-47fc-9759-c3b3cb8379bf/', 0, 'customize_changeset', '', 0),
(1539, 1, '2019-05-26 13:08:54', '2019-05-26 06:08:54', '{\n    \"bachdatan::header_image\": {\n        \"value\": \"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-26 06:08:54\"\n    },\n    \"bachdatan::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\",\n            \"thumbnail_url\": \"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\",\n            \"timestamp\": 1558850924987,\n            \"attachment_id\": 1538,\n            \"width\": 103,\n            \"height\": 80\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-26 06:08:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4ac6cd32-15a0-4926-8f8d-bb9d2e590c70', '', '', '2019-05-26 13:08:54', '2019-05-26 06:08:54', '', 0, 'http://localhost/bachdatan/4ac6cd32-15a0-4926-8f8d-bb9d2e590c70/', 0, 'customize_changeset', '', 0),
(1540, 1, '2019-05-26 13:12:14', '2019-05-26 06:12:14', '{\n    \"site_icon\": {\n        \"value\": 1537,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-26 06:12:14\"\n    },\n    \"bachdatan::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-26 06:12:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0e4224a8-8a1a-483a-bdaa-41afb65190cd', '', '', '2019-05-26 13:12:14', '2019-05-26 06:12:14', '', 0, 'http://localhost/bachdatan/0e4224a8-8a1a-483a-bdaa-41afb65190cd/', 0, 'customize_changeset', '', 0),
(1547, 1, '2019-05-26 14:23:35', '2019-05-26 07:23:35', '', 'Mekong Pearl', '', 'publish', 'open', 'open', '', 'mekong-pearl', '', '', '2019-05-26 14:23:35', '2019-05-26 07:23:35', '', 0, 'http://localhost/bachdatan/?p=1547', 0, 'post', '', 0),
(1548, 1, '2019-05-26 14:23:08', '2019-05-26 07:23:08', '', 'slide-home-1', '', 'inherit', 'open', 'closed', '', 'slide-home-1', '', '', '2019-05-26 14:23:08', '2019-05-26 07:23:08', '', 1547, 'http://localhost/bachdatan/wp-content/uploads/2019/05/slide-home-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1549, 1, '2019-05-26 14:38:27', '2019-05-26 07:38:27', '{\n    \"site_icon\": {\n        \"value\": 1550,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-26 07:38:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ac69d35-39b2-4af6-87df-6820bea8cfa5', '', '', '2019-05-26 14:38:27', '2019-05-26 07:38:27', '', 0, 'http://localhost/bachdatan/?p=1549', 0, 'customize_changeset', '', 0),
(1550, 1, '2019-05-26 14:38:18', '2019-05-26 07:38:18', '', 'favicon-bachdatan', '', 'inherit', 'open', 'closed', '', 'favicon-bachdatan', '', '', '2019-05-26 14:38:18', '2019-05-26 07:38:18', '', 0, 'http://localhost/bachdatan/wp-content/uploads/2019/05/favicon-bachdatan.png', 0, 'attachment', 'image/png', 0),
(1552, 1, '2019-05-26 14:39:16', '2019-05-26 07:39:16', '{\n    \"bachdatan::header_image\": {\n        \"value\": \"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-26 07:39:16\"\n    },\n    \"bachdatan::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\",\n            \"thumbnail_url\": \"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\",\n            \"timestamp\": 1558856347839,\n            \"attachment_id\": 1551,\n            \"width\": 176,\n            \"height\": 120\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-26 07:39:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1666ab22-f835-41cf-8b6d-e7bfde6379fe', '', '', '2019-05-26 14:39:16', '2019-05-26 07:39:16', '', 0, 'http://localhost/bachdatan/1666ab22-f835-41cf-8b6d-e7bfde6379fe/', 0, 'customize_changeset', '', 0),
(1553, 1, '2019-05-27 17:07:08', '2019-05-27 10:07:08', '', 'logo-bachdatan', '', 'inherit', 'open', 'closed', '', 'logo-bachdatan', '', '', '2019-05-27 17:07:08', '2019-05-27 10:07:08', '', 0, 'http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png', 0, 'attachment', 'image/png', 0),
(1554, 1, '2019-05-27 17:07:13', '2019-05-27 10:07:13', '{\n    \"bachdatan::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\",\n            \"thumbnail_url\": \"http://localhost/bachdatan/wp-content/uploads/2019/05/logo-bachdatan.png\",\n            \"timestamp\": 1558951631139,\n            \"attachment_id\": 1553,\n            \"width\": 156,\n            \"height\": 120\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-27 10:07:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7aecc52f-fcc9-4c0d-a966-bf4153cced66', '', '', '2019-05-27 17:07:13', '2019-05-27 10:07:13', '', 0, 'http://localhost/bachdatan/7aecc52f-fcc9-4c0d-a966-bf4153cced66/', 0, 'customize_changeset', '', 0),
(1555, 1, '2019-05-28 09:05:16', '2019-05-28 02:05:16', 'Với triết lý kinh doanh \"Vươn đến tầm cao mới\" - tầm cao của tư duy, tầm cao của trách nhiệm, tầm cao của những giá trị, tin rằng Bách Đạt An sẽ nhanh chóng trở thành đối tác tin cậy hàng đầu tại Việt Nam về Đầu tư, Phát triển và Xây dựng các dự án Bất động sản cao cấp.', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2019-06-07 10:29:17', '2019-06-07 03:29:17', '', 0, 'http://localhost/bachdatan/?page_id=1555', 0, 'page', '', 0),
(1556, 1, '2019-05-28 09:05:07', '2019-05-28 02:05:07', '', 'banner-header-about-us', '', 'inherit', 'open', 'closed', '', 'banner-header-about-us', '', '', '2019-05-28 09:05:07', '2019-05-28 02:05:07', '', 1555, 'http://localhost/bachdatan/wp-content/uploads/2019/05/banner-header-about-us.jpg', 0, 'attachment', 'image/jpeg', 0),
(1557, 1, '2019-05-28 09:05:37', '2019-05-28 02:05:37', ' ', '', '', 'publish', 'closed', 'closed', '', '1557', '', '', '2019-05-30 10:37:02', '2019-05-30 03:37:02', '', 0, 'http://localhost/bachdatan/?p=1557', 1, 'nav_menu_item', '', 0),
(1558, 1, '2019-05-28 14:41:14', '2019-05-28 07:41:14', '', 'bg-project', '', 'inherit', 'open', 'closed', '', 'bg-project', '', '', '2019-05-28 14:41:14', '2019-05-28 07:41:14', '', 0, 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-project.jpg', 0, 'attachment', 'image/jpeg', 0),
(1559, 1, '2019-05-28 14:44:27', '2019-05-28 07:44:27', 'Bách Đạt An hân hạnh giới thiệu các dự án bất động sản đã được nghiên cứu và phân tích kỹ lưỡng nhằm đảm bảo lợi ích cho khách hàng và các đối tác.', '', '', 'publish', 'closed', 'closed', '', '1559', '', '', '2019-05-30 10:37:02', '2019-05-30 03:37:02', '', 0, 'http://localhost/bachdatan/?p=1559', 2, 'nav_menu_item', '', 0),
(1560, 1, '2019-05-28 15:16:02', '2019-05-28 08:16:02', 'Khu du lịch nghỉ dưỡng sinh thái Mekong Pearl tọa lạc trên khu vực cồn Phụng (Long, Lân, Qui, Phụng), huyện Châu Thành, tỉnh Bến Tre. Với vị trí thuận lợi, ba mặt giáp sông', 'Mekong Pearl', '', 'publish', 'open', 'open', '', 'mekong-pearl-2', '', '', '2019-06-07 14:27:17', '2019-06-07 07:27:17', '', 0, 'http://localhost/bachdatan/?p=1560', 0, 'post', '', 0),
(1561, 1, '2019-05-28 15:15:56', '2019-05-28 08:15:56', '', 'du-an-1', '', 'inherit', 'open', 'closed', '', 'du-an-1', '', '', '2019-05-28 15:15:56', '2019-05-28 08:15:56', '', 1560, 'http://localhost/bachdatan/wp-content/uploads/2019/05/du-an-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1562, 1, '2019-05-28 15:16:25', '2019-05-28 08:16:25', 'Ocean Vista tọa lạc trên khuôn viên 7.8 ha trong quần thể Sea Links Golf-Hotel-Villa, là khu căn hộ nghỉ dưỡng sang trọng cạnh biển và nằm trong sân golf đầu tiên tại Phan', 'Ocean Vista', '', 'publish', 'open', 'open', '', 'ocean-vista', '', '', '2019-06-07 14:27:07', '2019-06-07 07:27:07', '', 0, 'http://localhost/bachdatan/?p=1562', 0, 'post', '', 0),
(1563, 1, '2019-05-28 15:16:21', '2019-05-28 08:16:21', '', 'du-an-2', '', 'inherit', 'open', 'closed', '', 'du-an-2', '', '', '2019-05-28 15:16:21', '2019-05-28 08:16:21', '', 1562, 'http://localhost/bachdatan/wp-content/uploads/2019/05/du-an-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1564, 1, '2019-05-28 15:16:54', '2019-05-28 08:16:54', 'Cách trung tâm thành phố Đà Nẵng khoảng 10km, khu Nam Đà Nẵng đang là tâm điểm của làn sóng đầu tư và an cư hấp dẫn tại “thành phố đáng sống” hiện nay. Các khu đô thị, khu dân cư, resort, sân golf,… đẳng cấp trỗi dậy mạnh mẽ chỉ trong một thời gian ngắn, thúc đẩy bất động sản khu vực này luôn diễn ra sôi động và đạt tính thanh khoản cao khi được bung hàng ra thị trường. Không chỉ mang đến một không gian sống sầm uất hòa hợp với thiên nhiên xanh mát, Khu Đô thị 7B Mở rộng còn kiến tạo một cuộc sống phồn thịnh, tài lộc cho các chủ nhân tương lai.', 'Ocean Dunes', '', 'publish', 'open', 'open', '', 'ocean-dunes', '', '', '2019-06-07 14:26:59', '2019-06-07 07:26:59', '', 0, 'http://localhost/bachdatan/?p=1564', 0, 'post', '', 0),
(1565, 1, '2019-05-28 15:16:47', '2019-05-28 08:16:47', '', 'du-an-3', '', 'inherit', 'open', 'closed', '', 'du-an-3', '', '', '2019-05-28 15:16:47', '2019-05-28 08:16:47', '', 1564, 'http://localhost/bachdatan/wp-content/uploads/2019/05/du-an-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(1566, 1, '2019-05-30 08:33:02', '2019-05-30 01:33:02', 'http://www.sealinkscity.com', 'Ocean Vista', '', 'publish', 'open', 'open', '', 'ocean-vista-2', '', '', '2019-05-30 08:35:47', '2019-05-30 01:35:47', '', 0, 'http://localhost/bachdatan/?p=1566', 0, 'post', '', 0),
(1567, 1, '2019-05-30 08:32:54', '2019-05-30 01:32:54', '', 'partner-3', '', 'inherit', 'open', 'closed', '', 'partner-3', '', '', '2019-05-30 08:32:54', '2019-05-30 01:32:54', '', 1566, 'http://localhost/bachdatan/wp-content/uploads/2019/05/partner-3.png', 0, 'attachment', 'image/png', 0),
(1568, 1, '2019-05-30 08:33:32', '2019-05-30 01:33:32', 'http://www.sealinkscity.com', 'Sea Links', '', 'publish', 'open', 'open', '', 'sea-links', '', '', '2019-05-30 08:33:37', '2019-05-30 01:33:37', '', 0, 'http://localhost/bachdatan/?p=1568', 0, 'post', '', 0),
(1569, 1, '2019-05-30 08:33:28', '2019-05-30 01:33:28', '', 'partner-2', '', 'inherit', 'open', 'closed', '', 'partner-2', '', '', '2019-05-30 08:33:28', '2019-05-30 01:33:28', '', 1568, 'http://localhost/bachdatan/wp-content/uploads/2019/05/partner-2.png', 0, 'attachment', 'image/png', 0),
(1570, 1, '2019-05-30 08:34:20', '2019-05-30 01:34:20', 'http://www.oceandunesresort.com.vn', 'Ocean Dunes', '', 'publish', 'open', 'open', '', 'ocean-dunes-2', '', '', '2019-05-30 08:35:39', '2019-05-30 01:35:39', '', 0, 'http://localhost/bachdatan/?p=1570', 0, 'post', '', 0),
(1571, 1, '2019-05-30 08:34:15', '2019-05-30 01:34:15', '', 'partner-5', '', 'inherit', 'open', 'closed', '', 'partner-5', '', '', '2019-05-30 08:34:15', '2019-05-30 01:34:15', '', 1570, 'http://localhost/bachdatan/wp-content/uploads/2019/05/partner-5.png', 0, 'attachment', 'image/png', 0),
(1572, 1, '2019-05-30 08:34:52', '2019-05-30 01:34:52', 'http://www.rangdonggroup.com', 'Rang Dong', '', 'publish', 'open', 'open', '', 'rang-dong', '', '', '2019-05-30 08:34:52', '2019-05-30 01:34:52', '', 0, 'http://localhost/bachdatan/?p=1572', 0, 'post', '', 0),
(1573, 1, '2019-05-30 08:34:46', '2019-05-30 01:34:46', '', 'partner-4', '', 'inherit', 'open', 'closed', '', 'partner-4', '', '', '2019-05-30 08:34:46', '2019-05-30 01:34:46', '', 1572, 'http://localhost/bachdatan/wp-content/uploads/2019/05/partner-4.png', 0, 'attachment', 'image/png', 0),
(1574, 1, '2019-05-30 08:35:27', '2019-05-30 01:35:27', 'https://greenreal.vn', 'Green Real', '', 'publish', 'open', 'open', '', 'green-real', '', '', '2019-05-30 08:35:27', '2019-05-30 01:35:27', '', 0, 'http://localhost/bachdatan/?p=1574', 0, 'post', '', 0),
(1575, 1, '2019-05-30 08:35:22', '2019-05-30 01:35:22', '', 'partner-1', '', 'inherit', 'open', 'closed', '', 'partner-1', '', '', '2019-05-30 08:35:22', '2019-05-30 01:35:22', '', 1574, 'http://localhost/bachdatan/wp-content/uploads/2019/05/partner-1.png', 0, 'attachment', 'image/png', 0),
(1576, 1, '2019-05-30 08:35:40', '2019-05-30 01:35:40', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '09c6437d5c0c31fc6ae08b7b5881da6e', '', '', '2019-05-30 08:35:40', '2019-05-30 01:35:40', '', 0, 'http://localhost/bachdatan/09c6437d5c0c31fc6ae08b7b5881da6e/', 0, 'oembed_cache', '', 0),
(1577, 1, '2019-05-30 08:35:50', '2019-05-30 01:35:50', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', 'a62c44c7da17acb85779aaf06ace2657', '', '', '2019-05-30 08:35:50', '2019-05-30 01:35:50', '', 0, 'http://localhost/bachdatan/a62c44c7da17acb85779aaf06ace2657/', 0, 'oembed_cache', '', 0),
(1578, 1, '2019-05-30 08:36:16', '2019-05-30 01:36:16', ' ', '', '', 'publish', 'closed', 'closed', '', '1578', '', '', '2019-05-30 10:37:02', '2019-05-30 03:37:02', '', 0, 'http://localhost/bachdatan/?p=1578', 3, 'nav_menu_item', '', 0),
(1579, 1, '2019-05-30 08:38:25', '2019-05-30 01:38:25', '', 'bg-doi-tac', '', 'inherit', 'open', 'closed', '', 'bg-doi-tac', '', '', '2019-05-30 08:38:25', '2019-05-30 01:38:25', '', 0, 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-doi-tac.jpg', 0, 'attachment', 'image/jpeg', 0),
(1580, 1, '2019-05-30 09:13:04', '2019-05-30 02:13:04', '', 'bg-tin-tuc', '', 'inherit', 'open', 'closed', '', 'bg-tin-tuc', '', '', '2019-05-30 09:13:04', '2019-05-30 02:13:04', '', 0, 'http://localhost/bachdatan/wp-content/uploads/2019/05/bg-tin-tuc.jpg', 0, 'attachment', 'image/jpeg', 0),
(1581, 1, '2019-05-30 09:13:35', '2019-05-30 02:13:35', 'Bản tin hoạt động của công ty bất động sản Bách Đạt An. Nơi đưa tin về các sự kiện nổi bật tại công ty, các dự án công ty hiện đang phân phối trên thị trường cũng như sự kiện nổi bật về tình hình bất động sản tại Việt Nam', '', '', 'publish', 'closed', 'closed', '', '1581', '', '', '2019-05-30 10:37:02', '2019-05-30 03:37:02', '', 0, 'http://localhost/bachdatan/?p=1581', 4, 'nav_menu_item', '', 0),
(1583, 1, '2019-05-30 09:18:48', '2019-05-30 02:18:48', 'Theo Bộ Xây dựng, trong tháng 5/2017, thị trường bất động sản (BĐS) tiếp tục có dấu hiệu tăng trưởng, lượng giao dịch tăng so với tháng 05/2016', 'Giao dịch bất động sản tăng nhẹ trong tháng 5/2017', '', 'publish', 'open', 'open', '', 'giao-dich-bat-dong-san-tang-nhe-trong-thang-5-2017', '', '', '2019-05-30 09:18:48', '2019-05-30 02:18:48', '', 0, 'http://localhost/bachdatan/?p=1583', 0, 'post', '', 0),
(1584, 1, '2019-05-30 09:18:44', '2019-05-30 02:18:44', '', '00fcxb', '', 'inherit', 'open', 'closed', '', '00fcxb', '', '', '2019-05-30 09:18:44', '2019-05-30 02:18:44', '', 1583, 'http://localhost/bachdatan/wp-content/uploads/2019/05/00fcxb.jpg', 0, 'attachment', 'image/jpeg', 0),
(1585, 1, '2019-05-30 09:19:32', '2019-05-30 02:19:32', 'Văn phòng chính phủ vừa có văn bản truyền đạt ý kiến của Thủ tướng Chính phủ về việc giao UBND tỉnh Đồng Nai phối hợp cùng các bộ ngành', 'Chính thức khởi động Dự án sân bay Long Thành', '', 'publish', 'open', 'open', '', 'chinh-thuc-khoi-dong-du-an-san-bay-long-thanh', '', '', '2019-05-30 09:19:32', '2019-05-30 02:19:32', '', 0, 'http://localhost/bachdatan/?p=1585', 0, 'post', '', 0),
(1586, 1, '2019-05-30 09:19:28', '2019-05-30 02:19:28', '', 'sanbaylongthanh', '', 'inherit', 'open', 'closed', '', 'sanbaylongthanh', '', '', '2019-05-30 09:19:28', '2019-05-30 02:19:28', '', 1585, 'http://localhost/bachdatan/wp-content/uploads/2019/05/sanbaylongthanh.jpg', 0, 'attachment', 'image/jpeg', 0),
(1587, 1, '2019-05-30 09:20:16', '2019-05-30 02:20:16', 'Các căn biệt thự đều có hướng nhìn trực diện ra biển, thiết kế theo phong cách châu Âu hiện đại.', 'Ra mắt dòng biệt thự mặt tiền biển tại Ocean Dunes', '', 'publish', 'open', 'open', '', 'ra-mat-dong-biet-thu-mat-tien-bien-tai-ocean-dunes', '', '', '2019-05-30 09:20:16', '2019-05-30 02:20:16', '', 0, 'http://localhost/bachdatan/?p=1587', 0, 'post', '', 0),
(1588, 1, '2019-05-30 09:20:12', '2019-05-30 02:20:12', '', 'hinhtintucjpg16', '', 'inherit', 'open', 'closed', '', 'hinhtintucjpg16', '', '', '2019-05-30 09:20:12', '2019-05-30 02:20:12', '', 1587, 'http://localhost/bachdatan/wp-content/uploads/2019/05/hinhtintucjpg16.jpg', 0, 'attachment', 'image/jpeg', 0),
(1589, 1, '2019-05-30 09:20:57', '2019-05-30 02:20:57', 'Nằm giữa khu nghỉ dưỡng Ocean Dunes là ngôi chùa cổ Thanh Minh Tự – điểm nhấn kiến trúc cổ điển mang lại giá trị phong thuỷ cho dự án.', 'Điểm nhấn phong thủy của Ocean Dunes', '', 'publish', 'open', 'open', '', 'diem-nhan-phong-thuy-cua-ocean-dunes', '', '', '2019-05-30 09:20:57', '2019-05-30 02:20:57', '', 0, 'http://localhost/bachdatan/?p=1589', 0, 'post', '', 0),
(1590, 1, '2019-05-30 09:20:51', '2019-05-30 02:20:51', '', 'od', '', 'inherit', 'open', 'closed', '', 'od', '', '', '2019-05-30 09:20:51', '2019-05-30 02:20:51', '', 1589, 'http://localhost/bachdatan/wp-content/uploads/2019/05/od.jpg', 0, 'attachment', 'image/jpeg', 0),
(1591, 1, '2019-05-30 09:21:33', '2019-05-30 02:21:33', 'Cụ thế, vào ngày 07 tháng 05 năm 2017 sắp tới đây, tập đoàn Rạng Đông sẽ tiến hành khởi công xây dựng Dinh Thự Rạng Đông – Tòa lâu đài mang phong cách Châu Âu. Khi hoàn thành, Dinh thự Rạng Đông sẽ trở thành trung tâm hội nghị tiêu chuẩn quốc tế và sở hữu các dịch vụ nhà hàng, quán ăn sang trọng đẳng cấp 5 sao quy mô nhất thành phố Phan Thiết.\r\n\r\n[caption id=\"attachment_1604\" align=\"aligncenter\" width=\"1400\"]<img class=\"size-full wp-image-1604\" src=\"http://localhost/bachdatan/wp-content/uploads/2019/05/OD-3.jpg\" alt=\"\" width=\"1400\" height=\"625\" /> Phối cảnh tổng thể dự án Ocean Dunes Phan Thiết và Dinh thự Châu Âu[/caption]\r\n\r\nSở hữu vị trí độc tôn vốn được nhiều ông lớn trong mảng bất động sản nghĩ dưỡng khao khát, dự án Ocean Dunes Phan Thiết tọa lạc tại ngã tư của hai đại lộ đẹp nhất thành phố: Nguyễn Tất Thành và Tôn Đất Thắng, nằm sát bãi biển Đồi Dương với hơn 1.200m bờ biển, 100% công trình hướng biển chính là những yếu tố chính tạo nên \"sức nóng” trong thời gian gần đây.\r\n\r\nQuy mô 62ha, được đầu tư hơn 2.600 tỷ đồng, dự án Ocean Dunes còn được giới chuyên môn đánh giá cao khi gần như chiếm trọn tâm điểm BĐS nghĩ dưỡng khi là dự án đi đầu tại Phan Thiết kết hợp giữa du lịch, nghĩ dưỡng và giải trí với nhau, tạo nên sự tiện nghi vượt trội với các cao ốc thương mại, biệt thự biển cao cấp, bến du thuyền, khu vực lâu đài sang trong, trường học, phố đi bộ và phố tây hiện đại nhất khu vực.', 'Dinh thự Rạng Đông - Điểm nhấn mang phong cách châu âu tại Ocean Dunes Phan Thiết', 'Sau khi hoàn tất gần như 100% cơ sở hạ tầng tại dự án Ocean Dunes, tập đoàn Rạng Đông đã bắt tay vào xây dựng các tiện ích công cộng, nhằm đảm bảo toàn bộ tiến độ bàn giao công trình như cam kết ban đầu.', 'publish', 'open', 'open', '', 'dinh-thu-rang-dong-diem-nhan-mang-phong-cach-chau-au-tai-ocean-dunes-phan-thiet', '', '', '2019-06-03 17:18:56', '2019-06-03 10:18:56', '', 0, 'http://localhost/bachdatan/?p=1591', 0, 'post', '', 0),
(1592, 1, '2019-05-30 09:21:29', '2019-05-30 02:21:29', '', 'od6', '', 'inherit', 'open', 'closed', '', 'od6', '', '', '2019-05-30 09:21:29', '2019-05-30 02:21:29', '', 1591, 'http://localhost/bachdatan/wp-content/uploads/2019/05/od6.jpg', 0, 'attachment', 'image/jpeg', 0),
(1593, 1, '2019-05-30 10:35:44', '2019-05-30 03:35:44', '<h2>Công ty đầu tư bất động sản Bách Đạt An</h2>\r\nĐịa chỉ: 38-40-42 Nguyễn Du, Đà Nẵng.\r\n\r\nĐiện thoại: 0511.2474704\r\n\r\nFax: 0511.384316\r\n\r\nEmail: chaubachdat@gmail.com', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2019-05-30 14:24:09', '2019-05-30 07:24:09', '', 0, 'http://localhost/bachdatan/?page_id=1593', 0, 'page', '', 0),
(1594, 1, '2019-05-30 10:37:02', '2019-05-30 03:37:02', ' ', '', '', 'publish', 'closed', 'closed', '', '1594', '', '', '2019-05-30 10:37:02', '2019-05-30 03:37:02', '', 0, 'http://localhost/bachdatan/?p=1594', 5, 'nav_menu_item', '', 0),
(1595, 1, '2019-05-30 13:39:00', '2019-05-30 06:39:00', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-6\">\r\n[text* your-name placeholder \"Họ tên: *\"]\r\n[email* your-email placeholder \"Địa chỉ email: *\"]\r\n[tel* phone placeholder \"Số điện thoại: *\"]\r\n</div>\r\n<div class=\"col-sm-6\">\r\n[textarea your-message x6 placeholder \"Nội dung thông điệp: *\"]\r\n</div>\r\n<div class=\"col-sm-12\">\r\n[submit \"Gửi liên hệ\"]\r\n</div>\r\n</div>\r\n</div>\n1\nBách Đạt An \"[your-subject]\"\nBách Đạt An <ectasy1703@gmail.com>\nectasy1703@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Bách Đạt An (http://localhost/bachdatan)\nReply-To: [your-email]\n\n\n\n\nBách Đạt An \"[your-subject]\"\nBách Đạt An <ectasy1703@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Bách Đạt An (http://localhost/bachdatan)\nReply-To: ectasy1703@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nLỗi không thể gửi mail.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nYour entered code is incorrect.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-05-30 14:13:20', '2019-05-30 07:13:20', '', 0, 'http://localhost/bachdatan/?post_type=wpcf7_contact_form&#038;p=1595', 0, 'wpcf7_contact_form', '', 0),
(1596, 1, '2019-05-31 11:05:26', '2019-05-31 04:05:26', '', 'oceandunes0303', '', 'inherit', 'open', 'closed', '', 'oceandunes0303', '', '', '2019-05-31 11:05:26', '2019-05-31 04:05:26', '', 1564, 'http://localhost/bachdatan/wp-content/uploads/2019/05/oceandunes0303.jpg', 0, 'attachment', 'image/jpeg', 0),
(1597, 1, '2019-05-31 11:05:26', '2019-05-31 04:05:26', '', 'oceandunes0603', '', 'inherit', 'open', 'closed', '', 'oceandunes0603', '', '', '2019-05-31 11:05:26', '2019-05-31 04:05:26', '', 1564, 'http://localhost/bachdatan/wp-content/uploads/2019/05/oceandunes0603.jpg', 0, 'attachment', 'image/jpeg', 0),
(1598, 1, '2019-05-31 11:05:27', '2019-05-31 04:05:27', '', 'oceandunes1903', '', 'inherit', 'open', 'closed', '', 'oceandunes1903', '', '', '2019-05-31 11:05:27', '2019-05-31 04:05:27', '', 1564, 'http://localhost/bachdatan/wp-content/uploads/2019/05/oceandunes1903.jpg', 0, 'attachment', 'image/jpeg', 0),
(1599, 1, '2019-05-31 11:05:28', '2019-05-31 04:05:28', '', 'oceandunes2003', '', 'inherit', 'open', 'closed', '', 'oceandunes2003', '', '', '2019-05-31 11:05:28', '2019-05-31 04:05:28', '', 1564, 'http://localhost/bachdatan/wp-content/uploads/2019/05/oceandunes2003.jpg', 0, 'attachment', 'image/jpeg', 0),
(1600, 1, '2019-05-31 11:05:28', '2019-05-31 04:05:28', '', 'oceandunes2103', '', 'inherit', 'open', 'closed', '', 'oceandunes2103', '', '', '2019-05-31 11:05:28', '2019-05-31 04:05:28', '', 1564, 'http://localhost/bachdatan/wp-content/uploads/2019/05/oceandunes2103.jpg', 0, 'attachment', 'image/jpeg', 0),
(1601, 1, '2019-05-31 13:45:28', '2019-05-31 06:45:28', '', 'ban-do-vi-tri-garden-hills', '', 'inherit', 'open', 'closed', '', 'ban-do-vi-tri-garden-hills', '', '', '2019-05-31 13:45:28', '2019-05-31 06:45:28', '', 1564, 'http://localhost/bachdatan/wp-content/uploads/2019/05/ban-do-vi-tri-garden-hills.jpg', 0, 'attachment', 'image/jpeg', 0),
(1602, 1, '2019-06-03 17:16:12', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-03 17:16:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/bachdatan/?p=1602', 0, 'post', '', 0),
(1603, 1, '2019-06-03 17:17:22', '2019-06-03 10:17:22', 'Cụ thế, vào ngày 07 tháng 05 năm 2017 sắp tới đây, tập đoàn Rạng Đông sẽ tiến hành khởi công xây dựng Dinh Thự Rạng Đông – Tòa lâu đài mang phong cách Châu Âu. Khi hoàn thành, Dinh thự Rạng Đông sẽ trở thành trung tâm hội nghị tiêu chuẩn quốc tế và sở hữu các dịch vụ nhà hàng, quán ăn sang trọng đẳng cấp 5 sao quy mô nhất thành phố Phan Thiết.\n\nSở hữu vị trí độc tôn vốn được nhiều ông lớn trong mảng bất động sản nghĩ dưỡng khao khát, dự án Ocean Dunes Phan Thiết tọa lạc tại ngã tư của hai đại lộ đẹp nhất thành phố: Nguyễn Tất Thành và Tôn Đất Thắng, nằm sát bãi biển Đồi Dương với hơn 1.200m bờ biển, 100% công trình hướng biển chính là những yếu tố chính tạo nên \"sức nóng” trong thời gian gần đây.\n\nQuy mô 62ha, được đầu tư hơn 2.600 tỷ đồng, dự án Ocean Dunes còn được giới chuyên môn đánh giá cao khi gần như chiếm trọn tâm điểm BĐS nghĩ dưỡng khi là dự án đi đầu tại Phan Thiết kết hợp giữa du lịch, nghĩ dưỡng và giải trí với nhau, tạo nên sự tiện nghi vượt trội với các cao ốc thương mại, biệt thự biển cao cấp, bến du thuyền, khu vực lâu đài sang trong, trường học, phố đi bộ và phố tây hiện đại nhất khu vực.', 'Dinh thự Rạng Đông - Điểm nhấn mang phong cách châu âu tại Ocean Dunes Phan Thiết', 'Sau khi hoàn tất gần như 100% cơ sở hạ tầng tại dự án Ocean Dunes, tập đoàn Rạng Đông đã bắt tay vào xây dựng các tiện ích công cộng, nhằm đảm bảo toàn bộ tiến độ bàn giao công trình như cam kết ban đầu.', 'inherit', 'closed', 'closed', '', '1591-autosave-v1', '', '', '2019-06-03 17:17:22', '2019-06-03 10:17:22', '', 1591, 'http://localhost/bachdatan/1591-autosave-v1/', 0, 'revision', '', 0),
(1604, 1, '2019-06-03 17:18:21', '2019-06-03 10:18:21', '', 'OD-3', 'Phối cảnh tổng thể dự án Ocean Dunes Phan Thiết và Dinh thự Châu Âu', 'inherit', 'open', 'closed', '', 'od-3', '', '', '2019-06-03 17:18:48', '2019-06-03 10:18:48', '', 1591, 'http://localhost/bachdatan/wp-content/uploads/2019/05/OD-3.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 440, 'order', '0'),
(2, 440, 'product_count_product_cat', '4'),
(3, 440, 'display_type', ''),
(4, 440, 'thumbnail_id', '0'),
(5, 453, 'order', '0'),
(6, 453, 'display_type', ''),
(7, 453, 'thumbnail_id', '0'),
(8, 454, 'order', '0'),
(9, 454, 'display_type', ''),
(10, 454, 'thumbnail_id', '0'),
(11, 455, 'order', '0'),
(12, 455, 'display_type', ''),
(13, 455, 'thumbnail_id', '0'),
(15, 455, 'product_count_product_cat', '4'),
(16, 454, 'product_count_product_cat', '4'),
(17, 453, 'product_count_product_cat', '4'),
(18, 458, 'order', '0'),
(19, 458, 'display_type', ''),
(20, 458, 'thumbnail_id', '0'),
(21, 459, 'order', '0'),
(22, 459, 'display_type', ''),
(23, 459, 'thumbnail_id', '0'),
(24, 460, 'order', '0'),
(25, 460, 'display_type', ''),
(26, 460, 'thumbnail_id', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(5, 'main-menu', 'main-menu', 0),
(208, 'post-format-aside', 'post-format-aside', 0),
(427, 'simple', 'simple', 0),
(428, 'grouped', 'grouped', 0),
(429, 'variable', 'variable', 0),
(430, 'external', 'external', 0),
(431, 'exclude-from-search', 'exclude-from-search', 0),
(432, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(433, 'featured', 'featured', 0),
(434, 'outofstock', 'outofstock', 0),
(435, 'rated-1', 'rated-1', 0),
(436, 'rated-2', 'rated-2', 0),
(437, 'rated-3', 'rated-3', 0),
(438, 'rated-4', 'rated-4', 0),
(439, 'rated-5', 'rated-5', 0),
(440, 'Máy cạy vỏ cũ Nhật bãi', 'may-cay-vo-cu', 0),
(453, 'Bình chứa khí mới', 'binh-chua-khi-moi', 0),
(454, 'Bộ máy lưu động vá vỏ', 'bo-may-luu-dong-va-vo', 0),
(455, 'Máy nén khí trục vít cũ Nhật bãi', 'may-nen-khi-truc-vit-cu', 0),
(458, 'Bình chứa khí cũ Nhật Bãi', 'binh-chua-khi-cu', 0),
(459, 'Phụ tùng máy nén khí', 'phu-tung-may-nen-khi', 0),
(460, 'Phụ tùng máy cạy vỏ', 'phu-tung-may-cay-vo', 0),
(461, 'Slide Home', 'slide-home', 0),
(462, 'Dự án - Sản phẩm', 'du-an', 0),
(463, 'Đối tác', 'doi-tac', 0),
(464, 'Tin tức', 'tin-tuc', 0),
(465, 'Tin công ty', 'tin-cong-ty', 0),
(466, 'Tin bất động sản', 'tin-bat-dong-san', 0),
(467, 'Sự kiện - Hình ảnh', 'su-kien-hinh-anh', 0),
(468, 'Căn hộ', 'can-ho', 0),
(469, 'Biệt thự - Đất nền', 'biet-thu-dat-nen', 0),
(470, 'Nhà phố', 'nha-pho', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 1, 0),
(1404, 427, 0),
(1404, 433, 0),
(1404, 440, 0),
(1404, 453, 0),
(1404, 454, 0),
(1404, 455, 0),
(1412, 427, 0),
(1412, 439, 0),
(1412, 440, 0),
(1412, 453, 0),
(1412, 454, 0),
(1412, 455, 0),
(1451, 427, 0),
(1451, 433, 0),
(1451, 440, 0),
(1451, 453, 0),
(1451, 454, 0),
(1451, 455, 0),
(1485, 427, 0),
(1485, 433, 0),
(1485, 440, 0),
(1485, 453, 0),
(1485, 454, 0),
(1485, 455, 0),
(1547, 461, 0),
(1557, 5, 0),
(1559, 5, 0),
(1560, 462, 0),
(1560, 468, 0),
(1560, 469, 0),
(1560, 470, 0),
(1562, 462, 0),
(1562, 468, 0),
(1562, 469, 0),
(1562, 470, 0),
(1564, 462, 0),
(1564, 468, 0),
(1564, 469, 0),
(1564, 470, 0),
(1566, 463, 0),
(1568, 463, 0),
(1570, 463, 0),
(1572, 463, 0),
(1574, 463, 0),
(1578, 5, 0),
(1581, 5, 0),
(1583, 464, 0),
(1583, 465, 0),
(1583, 466, 0),
(1583, 467, 0),
(1585, 464, 0),
(1585, 465, 0),
(1585, 466, 0),
(1585, 467, 0),
(1587, 464, 0),
(1587, 465, 0),
(1587, 466, 0),
(1587, 467, 0),
(1589, 464, 0),
(1589, 465, 0),
(1589, 466, 0),
(1589, 467, 0),
(1591, 464, 0),
(1591, 465, 0),
(1591, 466, 0),
(1591, 467, 0),
(1594, 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 5),
(208, 208, 'post_format', '', 0, 0),
(427, 427, 'product_type', '', 0, 4),
(428, 428, 'product_type', '', 0, 0),
(429, 429, 'product_type', '', 0, 0),
(430, 430, 'product_type', '', 0, 0),
(431, 431, 'product_visibility', '', 0, 0),
(432, 432, 'product_visibility', '', 0, 0),
(433, 433, 'product_visibility', '', 0, 3),
(434, 434, 'product_visibility', '', 0, 0),
(435, 435, 'product_visibility', '', 0, 0),
(436, 436, 'product_visibility', '', 0, 0),
(437, 437, 'product_visibility', '', 0, 0),
(438, 438, 'product_visibility', '', 0, 0),
(439, 439, 'product_visibility', '', 0, 1),
(440, 440, 'product_cat', '', 0, 4),
(453, 453, 'product_cat', '', 0, 4),
(454, 454, 'product_cat', '', 0, 4),
(455, 455, 'product_cat', '', 0, 4),
(458, 458, 'product_cat', '', 0, 0),
(459, 459, 'product_cat', '', 0, 0),
(460, 460, 'product_cat', '', 0, 0),
(461, 461, 'category', '', 0, 1),
(462, 462, 'category', 'Bách Đạt An hân hạnh giới thiệu các dự án bất động sản đã được nghiên cứu và phân tích kỹ lưỡng nhằm đảm bảo lợi ích cho khách hàng và các đối tác.', 0, 3),
(463, 463, 'category', 'Công ty đất động sản Bách Đạt An mong muốn trở thành đối tác tin cậy của các công ty trong nhiều lĩnh vực như: chủ đầu tư dự án bất động sản; công ty Tài chính, công ty xây dựng - dịch vụ, công ty - đơn vị cung cấp vật liệu xây dựng…', 0, 5),
(464, 464, 'category', 'Bản tin hoạt động của công ty bất động sản Bách Đạt An. Nơi đưa tin về các sự kiện nổi bật tại công ty, các dự án công ty hiện đang phân phối trên thị trường cũng như sự kiện nổi bật về tình hình bất động sản tại Việt Nam', 0, 5),
(465, 465, 'category', 'Bản tin hoạt động của công ty bất động sản Bách Đạt An. Nơi đưa tin về các sự kiện nổi bật tại công ty, các dự án công ty hiện đang phân phối trên thị trường cũng như sự kiện nổi bật về tình hình bất động sản tại Việt Nam', 464, 5),
(466, 466, 'category', 'Bản tin hoạt động của công ty bất động sản Bách Đạt An. Nơi đưa tin về các sự kiện nổi bật tại công ty, các dự án công ty hiện đang phân phối trên thị trường cũng như sự kiện nổi bật về tình hình bất động sản tại Việt Nam', 464, 5),
(467, 467, 'category', 'Bản tin hoạt động của công ty bất động sản Bách Đạt An. Nơi đưa tin về các sự kiện nổi bật tại công ty, các dự án công ty hiện đang phân phối trên thị trường cũng như sự kiện nổi bật về tình hình bất động sản tại Việt Nam', 464, 5),
(468, 468, 'category', 'Bách Đạt An hân hạnh giới thiệu các dự án bất động sản đã được nghiên cứu và phân tích kỹ lưỡng nhằm đảm bảo lợi ích cho khách hàng và các đối tác.', 462, 3),
(469, 469, 'category', 'Bách Đạt An hân hạnh giới thiệu các dự án bất động sản đã được nghiên cứu và phân tích kỹ lưỡng nhằm đảm bảo lợi ích cho khách hàng và các đối tác.', 462, 3),
(470, 470, 'category', 'Bách Đạt An hân hạnh giới thiệu các dự án bất động sản đã được nghiên cứu và phân tích kỹ lưỡng nhằm đảm bảo lợi ích cho khách hàng và các đối tác.', 462, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Bách Đạt An'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw,wp496_privacy,text_widget_paste_html,text_widget_custom_html,theme_editor_notice'),
(13, 1, 'show_welcome_panel', '0'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '1602'),
(16, 1, 'closedpostboxes_post', 'a:9:{i:0;s:9:\"formatdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:10:\"postcustom\";i:4;s:16:\"commentstatusdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";i:7;s:11:\"commentsdiv\";i:8;s:15:\"thong-tin-du-an\";}'),
(17, 1, 'metaboxhidden_post', 'a:0:{}'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list&editor=tinymce&advImgDetails=show&hidetb=1&woosidebarsshowadvanced=1'),
(19, 1, 'wp_user-settings-time', '1558855413'),
(20, 1, 'closedpostboxes_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(21, 1, 'metaboxhidden_page', 'a:0:{}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),
(24, 1, 'wpseo_ignore_tour', '1'),
(25, 1, 'wpseo_dismissed_gsc_notice', '1'),
(26, 1, 'wpseo_seen_about_version', '3.1.1'),
(27, 1, 'nav_menu_recently_edited', '5'),
(28, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:61:\"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:82:\"wpseo_meta,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_post', '2'),
(30, 1, 'wp_media_library_mode', 'grid'),
(34, 1, '_yoast_wpseo_profile_updated', '1558606749'),
(36, 1, 'wpseo_title', ''),
(37, 1, 'wpseo_metadesc', ''),
(38, 1, 'wpseo_metakey', ''),
(39, 1, 'wpseo_noindex_author', ''),
(40, 1, 'googleplus', ''),
(41, 1, 'twitter', ''),
(42, 1, 'facebook', ''),
(47, 1, 'wpseo_content_analysis_disable', ''),
(48, 1, 'wpseo_keyword_analysis_disable', ''),
(52, 1, 'locale', 'vi'),
(54, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:\"cart\";a:0:{}}'),
(56, 1, 'manageedit-productcolumnshidden', 'a:5:{i:0;s:5:\"thumb\";i:1;s:11:\"wpseo-title\";i:2;s:14:\"wpseo-metadesc\";i:3;s:13:\"wpseo-focuskw\";i:4;s:18:\"woosidebars_enable\";}'),
(57, 1, 'edit_product_per_page', '20'),
(58, 1, 'manageedit-postcolumnshidden', 'a:4:{i:0;s:11:\"wpseo-title\";i:1;s:14:\"wpseo-metadesc\";i:2;s:13:\"wpseo-focuskw\";i:3;s:18:\"woosidebars_enable\";}'),
(59, 1, 'edit_post_per_page', '20'),
(62, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(64, 1, 'billing_first_name', ''),
(65, 1, 'billing_last_name', ''),
(66, 1, 'billing_company', ''),
(67, 1, 'billing_address_1', ''),
(68, 1, 'billing_address_2', ''),
(69, 1, 'billing_city', ''),
(70, 1, 'billing_postcode', ''),
(71, 1, 'billing_country', ''),
(72, 1, 'billing_state', ''),
(73, 1, 'billing_phone', ''),
(74, 1, 'billing_email', 'ectasy1703@gmail.com'),
(75, 1, 'shipping_first_name', ''),
(76, 1, 'shipping_last_name', ''),
(77, 1, 'shipping_company', ''),
(78, 1, 'shipping_address_1', ''),
(79, 1, 'shipping_address_2', ''),
(80, 1, 'shipping_city', ''),
(81, 1, 'shipping_postcode', ''),
(82, 1, 'shipping_country', ''),
(83, 1, 'shipping_state', ''),
(84, 1, 'syntax_highlighting', 'true'),
(85, 1, 'last_update', '1558606485'),
(86, 1, 'dismissed_no_secure_connection_notice', '1'),
(87, 1, 'wc_last_active', '1558569600'),
(88, 1, 'dismissed_update_notice', '1'),
(89, 1, 'dismissed_store_notice_setting_moved_notice', '1'),
(91, 1, 'dismissed_template_files_notice', '1'),
(94, 1, 'closedpostboxes_product', 'a:0:{}'),
(95, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(97, 1, 'show_try_gutenberg_panel', '0'),
(102, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"42.117.241.0\";}'),
(109, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:459:\"Yoast SEO và WooCommerce có thể làm việc chung tốt hơn nhiều bằng cách thêm gói mở rộng giúp đỡ. Vui lòng cài đặt Yoast WooCommerce SEO để cuộc đời tốt hơn. <a href=\"https://yoa.st/1o0?php_version=7.3&platform=wordpress&platform_version=5.1.1&software=free&software_version=11.2.1&days_active=>30\" aria-label=\"Thông tin thêm về Yoast WooCommerce SEO\" target=\"_blank\" rel=\"noopener noreferrer\">Thông tin thêm</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:44:\"wpseo-suggested-plugin-yoast-woocommerce-seo\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:254:\"<strong>Lỗi SEO nghiêm trọng: Bạn đang chặn truy cập tới robots.</strong> Bạn phải <a href=\"http://localhost/bachdatan/wp-admin/options-reading.php\">tới mục Đọc</a> và bỏ đánh dấu Tương tác với công cụ tìm kiếm.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(112, 1, 'wp_wpseo-dismiss-blog-public-notice', 'seen');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin_BachDatAn', '$P$BFJf9QFYnf3HP5tTuy0thcaHLmXA2..', 'bachdatan', 'ectasy1703@gmail.com', '', '2015-08-10 06:12:26', '', 0, 'Bách Đạt An');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1393, 0, 0),
(1400, 0, 0),
(1402, 0, 0),
(1404, 0, 0),
(1405, 0, 0),
(1407, 0, 0),
(1408, 0, 0),
(1409, 0, 0),
(1410, 0, 0),
(1411, 0, 0),
(1412, 0, 0),
(1413, 0, 0),
(1414, 0, 0),
(1416, 0, 0),
(1417, 0, 0),
(1418, 0, 0),
(1419, 0, 0),
(1420, 0, 0),
(1421, 0, 0),
(1422, 0, 0),
(1423, 0, 0),
(1424, 0, 0),
(1425, 0, 0),
(1426, 0, 0),
(1427, 0, 0),
(1428, 0, 0),
(1429, 0, 0),
(1430, 0, 0),
(1431, 0, 0),
(1432, 0, 0),
(1433, 0, 0),
(1434, 0, 0),
(1435, 0, 0),
(1436, 0, 0),
(1437, 0, 0),
(1438, 0, 0),
(1439, 0, 0),
(1440, 0, 0),
(1441, 0, 0),
(1442, 0, 0),
(1443, 0, 0),
(1444, 0, 0),
(1445, 0, 0),
(1446, 0, 0),
(1447, 0, 0),
(1450, 0, 0),
(1451, 0, 0),
(1452, 0, 0),
(1453, 0, 0),
(1454, 0, 0),
(1455, 0, 0),
(1456, 0, 0),
(1457, 0, 0),
(1458, 0, 0),
(1459, 0, 0),
(1460, 0, 0),
(1461, 0, 0),
(1462, 0, 0),
(1463, 0, 0),
(1466, 0, 0),
(1467, 0, 0),
(1468, 0, 0),
(1469, 0, 0),
(1470, 0, 0),
(1471, 0, 0),
(1473, 0, 0),
(1474, 0, 0),
(1475, 0, 0),
(1477, 0, 0),
(1478, 0, 0),
(1479, 0, 0),
(1480, 0, 0),
(1481, 0, 0),
(1482, 0, 0),
(1483, 0, 0),
(1484, 0, 0),
(1485, 0, 0),
(1486, 0, 0),
(1488, 0, 0),
(1489, 0, 0),
(1490, 0, 0),
(1491, 0, 0),
(1492, 0, 0),
(1493, 0, 0),
(1494, 0, 0),
(1495, 0, 0),
(1496, 0, 0),
(1497, 0, 0),
(1498, 0, 0),
(1499, 0, 0),
(1500, 0, 0),
(1501, 0, 0),
(1502, 0, 0),
(1503, 0, 0),
(1504, 0, 0),
(1505, 0, 0),
(1506, 0, 0),
(1507, 0, 0),
(1508, 0, 0),
(1509, 0, 0),
(1510, 0, 0),
(1511, 0, 0),
(1512, 0, 0),
(1513, 0, 0),
(1514, 0, 0),
(1515, 0, 0),
(1516, 0, 0),
(1517, 0, 0),
(1518, 0, 0),
(1519, 0, 0),
(1520, 0, 0),
(1521, 0, 0),
(1522, 0, 0),
(1523, 0, 0),
(1524, 0, 0),
(1525, 0, 0),
(1526, 0, 0),
(1527, 0, 0),
(1528, 0, 0),
(1529, 0, 0),
(1530, 0, 0),
(1531, 0, 0),
(1532, 0, 0),
(1533, 0, 0),
(1534, 0, 0),
(1535, 0, 0),
(1537, 0, 0),
(1538, 0, 0),
(1541, 0, 0),
(1542, 0, 0),
(1543, 0, 0),
(1544, 0, 0),
(1545, 0, 0),
(1546, 0, 0),
(1547, 0, 0),
(1551, 0, 0),
(1555, 0, 0),
(1560, 0, 0),
(1562, 0, 0),
(1564, 0, 0),
(1566, 0, 0),
(1568, 0, 0),
(1570, 0, 0),
(1572, 0, 0),
(1574, 0, 0),
(1582, 0, 0),
(1583, 0, 0),
(1585, 0, 0),
(1587, 0, 0),
(1589, 0, 0),
(1591, 0, 0),
(1593, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21002;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9760;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1605;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
