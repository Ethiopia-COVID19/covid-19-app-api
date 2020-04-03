-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 07:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coronavirus`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_table`
--

CREATE TABLE `activity_table` (
  `activity_id` int(11) NOT NULL,
  `activity_user_id` int(11) NOT NULL,
  `activity_agent` varchar(255) NOT NULL,
  `activity_time` varchar(20) NOT NULL,
  `activity_ip` varchar(15) NOT NULL,
  `activity_login_status` tinyint(1) NOT NULL COMMENT '1: Success | 2: UnSuccess',
  `activity_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Activity Table';

-- --------------------------------------------------------

--
-- Table structure for table `admob_setting_table`
--

CREATE TABLE `admob_setting_table` (
  `admob_setting_id` int(11) NOT NULL,
  `admob_setting_app_id` varchar(255) NOT NULL,
  `admob_setting_banner_unit_id` varchar(255) NOT NULL,
  `admob_setting_interstitial_unit_id` varchar(255) NOT NULL,
  `admob_setting_rewarded_unit_id` varchar(255) NOT NULL,
  `admob_setting_native_advanced_unit_id` varchar(255) NOT NULL,
  `admob_setting_banner_size` varchar(35) NOT NULL,
  `admob_setting_interstitial_clicks` smallint(6) NOT NULL,
  `admob_setting_banner_status` tinyint(1) NOT NULL COMMENT '0: Disable | 1: Enable',
  `admob_setting_interstitial_status` tinyint(1) NOT NULL COMMENT '0: Disable | 1: Enable',
  `admob_setting_rewarded_status` tinyint(1) NOT NULL COMMENT '0: Disable | 1: Enable',
  `admob_setting_native_advanced_status` tinyint(1) NOT NULL COMMENT '0: Disable | 1: Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='AdMob Setting Table';

--
-- Dumping data for table `admob_setting_table`
--

INSERT INTO `admob_setting_table` (`admob_setting_id`, `admob_setting_app_id`, `admob_setting_banner_unit_id`, `admob_setting_interstitial_unit_id`, `admob_setting_rewarded_unit_id`, `admob_setting_native_advanced_unit_id`, `admob_setting_banner_size`, `admob_setting_interstitial_clicks`, `admob_setting_banner_status`, `admob_setting_interstitial_status`, `admob_setting_rewarded_status`, `admob_setting_native_advanced_status`) VALUES
(1, 'ca-app-pub-3940256099942544~3347511713', 'ca-app-pub-3940256099942544/6300978111', 'ca-app-pub-3940256099942544/1033173712', '', '', 'LARGE_BANNER', 5, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_table`
--

CREATE TABLE `api_table` (
  `api_id` int(11) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `api_status` tinyint(1) NOT NULL COMMENT '0: Inactive | 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='API Table';

--
-- Dumping data for table `api_table`
--

INSERT INTO `api_table` (`api_id`, `api_key`, `api_status`) VALUES
(1, 'AzFYV1cxU2sPMVFkUDRTZwZcViUHYlgfBGUPYVwuXA8Cagw2DG4KO1RKU2YFbFA8CTRTEwgn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_table`
--

CREATE TABLE `bookmark_table` (
  `bookmark_id` int(11) NOT NULL,
  `bookmark_user_id` int(11) NOT NULL,
  `bookmark_content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bookmark Table';

-- --------------------------------------------------------

--
-- Table structure for table `captcha_table`
--

CREATE TABLE `captcha_table` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `captcha_ip_address` varchar(45) NOT NULL,
  `captcha_word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `category_id` int(11) NOT NULL,
  `category_parent_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL,
  `category_image` varchar(100) NOT NULL,
  `category_role_id` tinyint(4) NOT NULL,
  `category_status` tinyint(1) NOT NULL COMMENT '0: Inactive | 1: Active',
  `category_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Category Table';

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `category_parent_id`, `category_title`, `category_image`, `category_role_id`, `category_status`, `category_order`) VALUES
(1, 0, 'Notices', '1fa1a46df946f84198953e1dcaba8279.png', 0, 1, 1),
(2, 0, 'Urgent News', 'c8ed9a7719dd0ce7f9eb33e5655e6c2f.png', 0, 1, 2),
(3, 0, 'Learning', '20ff49ffe63100d4c05deb62c53c1110.png', 0, 1, 3),
(4, 0, 'Game (Relaxation)', '17fdddaeb1468950da41e846b317113c.png', 0, 1, 4),
(5, 0, 'Drug Store', 'f86f8089530a0d54ece9a98a14629408.png', 0, 1, 5),
(6, 0, 'Hospital', 'eac06724cc379f124f1ac7b0301ce3a5.png', 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `comment_table`
--

CREATE TABLE `comment_table` (
  `comment_id` int(11) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `comment_device_type_id` int(11) NOT NULL,
  `comment_content_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_rate` float NOT NULL COMMENT '1 ~ 5 star',
  `comment_user_ip` varchar(80) NOT NULL,
  `comment_user_agent` varchar(255) NOT NULL,
  `comment_time` varchar(20) NOT NULL,
  `comment_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `comment_status` int(11) NOT NULL DEFAULT 0 COMMENT '0: Not Approved | 1: Approved | 2: Removed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Comment Table';

-- --------------------------------------------------------

--
-- Table structure for table `content_table`
--

CREATE TABLE `content_table` (
  `content_id` int(11) NOT NULL,
  `content_user_id` int(11) NOT NULL,
  `content_title` varchar(120) NOT NULL,
  `content_description` mediumtext NOT NULL,
  `content_phone` varchar(15) DEFAULT NULL,
  `content_email` varchar(100) DEFAULT NULL,
  `content_latitude` varchar(30) DEFAULT '0',
  `content_longitude` varchar(30) DEFAULT '0',
  `content_property1` varchar(100) NOT NULL COMMENT 'Custom Property',
  `content_property2` varchar(100) NOT NULL,
  `content_orientation` tinyint(1) NOT NULL COMMENT '1: It does not matter | 2: portrait | 3: landscape',
  `content_price` float NOT NULL,
  `content_type_id` tinyint(4) NOT NULL,
  `content_player_type_id` tinyint(4) NOT NULL DEFAULT 1,
  `content_access` tinyint(1) NOT NULL COMMENT '1: Indirect Access | 2: Direct Access',
  `content_category_id` smallint(6) NOT NULL,
  `content_user_role_id` tinyint(4) NOT NULL,
  `content_image` varchar(100) DEFAULT NULL,
  `content_url` varchar(200) NOT NULL,
  `content_duration` varchar(15) DEFAULT NULL,
  `content_viewed` int(11) NOT NULL,
  `content_liked` int(11) NOT NULL,
  `content_featured` tinyint(1) NOT NULL COMMENT '0: Not Featured | 1: Featured',
  `content_special` tinyint(1) NOT NULL COMMENT '0: Not Special | 1: Special',
  `content_cached` tinyint(1) NOT NULL COMMENT '0: Disable | 1: Enable',
  `content_rating_average` float NOT NULL DEFAULT 0,
  `content_rating_count` int(11) NOT NULL DEFAULT 0,
  `content_publish_date` varchar(20) NOT NULL,
  `content_publish_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `content_expired_date` varchar(20) NOT NULL,
  `content_order` int(11) NOT NULL DEFAULT 1,
  `content_status` tinyint(1) NOT NULL COMMENT '0: Inactive | 1: Active | 2: Expired'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Tables';

--
-- Dumping data for table `content_table`
--

INSERT INTO `content_table` (`content_id`, `content_user_id`, `content_title`, `content_description`, `content_phone`, `content_email`, `content_latitude`, `content_longitude`, `content_property1`, `content_property2`, `content_orientation`, `content_price`, `content_type_id`, `content_player_type_id`, `content_access`, `content_category_id`, `content_user_role_id`, `content_image`, `content_url`, `content_duration`, `content_viewed`, `content_liked`, `content_featured`, `content_special`, `content_cached`, `content_rating_average`, `content_rating_count`, `content_publish_date`, `content_publish_timestamp`, `content_expired_date`, `content_order`, `content_status`) VALUES
(1, 1, 'CoronaVirus 2019', '<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>\r\n<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>\r\n<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 2, 5, '28597cfc29c2de62eb110db29297a2e9.png', '', '', 5, 0, 0, 0, 0, 0, 0, '1583336923', '2020-03-04 15:48:43', '2371736923', 1, 1),
(2, 1, 'US Hospital 01', '<p>Write the address of hospital here...</p>', '0018181234567', 'test@gmail.com', '39.058158', '-94.629090', 'p1', 'p2', 1, 0, 7, 1, 1, 6, 5, '5404e61cf1b272847b66aa1ebfc747ab.jpg', 'http://www.Hospital.com', '', 4, 0, 1, 0, 0, 5, 1, '1583340611', '2020-03-04 16:50:11', '2371740611', 1, 1),
(3, 1, 'Kalifornien ruft wegen Coronavirus', '<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>\r\n<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 5, '445e621a7f769e048a6a308fd9edd0b0.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1583395666', '2020-03-05 08:07:46', '2371795666', 1, 1),
(4, 1, 'U.S. Task Force', '<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 1, 4, 1, 2, 5, '0f27321fb11f686d1db04ad53aa845da.png', 'r20K2YshFlo', '33:24', 2, 0, 0, 0, 0, 0, 0, '1583395922', '2020-03-05 08:12:02', '2371795922', 1, 1),
(5, 1, 'Hospital for Corona 2019', '<p>Write the address of hospital here...</p>', '0018181234567', 'test@gmail.com', '39.058158', '-94.629090', 'p1', 'p2', 1, 0, 7, 1, 1, 6, 5, '7c7f0d365745c1bd9bed03bc7e6ffcac.jpg', 'http://www.Hospital.com', '', 2, 0, 1, 0, 0, 0, 0, '1583396150', '2020-03-05 08:15:50', '2371796150', 1, 1),
(6, 1, 'Drug Store 01', '<p>Write the address of drug store here...</p>', '0018181234567', 'test@gmail.com', '39.058158', '-94.629090', 'p1', 'p2', 1, 0, 7, 1, 1, 5, 5, 'ebec72c9b52795b9994c9a9591c3aea2.jpg', '', '', 4, 0, 0, 0, 0, 5, 1, '1583396556', '2020-03-05 08:22:36', '2371796556', 1, 1),
(7, 1, 'CoronaVirus Ninja', '<p>This is a HTML5 game for demo. You can purchase this game from CodeCanyon:</p>\r\n<p>codecanyon.net/item/coronavirus-ninja-html5-game/25835281</p>', '', '', '', '', 'p1', 'p2', 2, 0, 3, 1, 1, 4, 5, 'd9818f4211ded318fe0932e9f887a289.png', 'https://previews.customer.envatousercontent.com/files/282049361/index.html', '', 0, 0, 0, 0, 0, 0, 0, '1583477433', '2020-03-06 06:50:33', '2371877433', 1, 1),
(8, 1, 'Zombie Invasion', '<p>This is a <strong>HTML5 Game</strong> for demo. This game load from: www.codethislab.com</p>\r\n<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>', '', '', '', '', 'p1', 'p2', 3, 0, 3, 1, 1, 4, 5, '112d64edad71477fe17f8ab9590f9664.png', 'http://showcase.codethislab.com/games/zombie_invasion/', '', 0, 0, 0, 0, 0, 0, 0, '1583477517', '2020-03-06 06:51:57', '2371877517', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `content_type_table`
--

CREATE TABLE `content_type_table` (
  `content_type_id` int(11) NOT NULL,
  `content_type_title` varchar(40) NOT NULL,
  `content_type_description` varchar(60) NOT NULL,
  `content_type_status` tinyint(1) NOT NULL COMMENT '0: Inactive | 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Content Type Table';

--
-- Dumping data for table `content_type_table`
--

INSERT INTO `content_type_table` (`content_type_id`, `content_type_title`, `content_type_description`, `content_type_status`) VALUES
(1, 'Video & Text', 'For video news', 1),
(2, '0', '0', 0),
(3, 'Game', 'For HTML5 games', 1),
(4, 'Only Text', 'For text news', 1),
(5, '0', '0', 0),
(6, '0', '0', 0),
(7, 'Location', 'For google map location', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_table`
--

CREATE TABLE `currency_table` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(5) NOT NULL COMMENT 'eg. IRR, USD, GBP, etc...',
  `currency_prefix` varchar(15) NOT NULL,
  `currency_suffix` varchar(15) NOT NULL,
  `currency_decimals` tinyint(1) NOT NULL,
  `currency_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Currency Table';

--
-- Dumping data for table `currency_table`
--

INSERT INTO `currency_table` (`currency_id`, `currency_code`, `currency_prefix`, `currency_suffix`, `currency_decimals`, `currency_rate`) VALUES
(1, 'USD', '', '$', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `device_type_table`
--

CREATE TABLE `device_type_table` (
  `device_type_id` int(11) NOT NULL,
  `device_type_title` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Device Type Table';

--
-- Dumping data for table `device_type_table`
--

INSERT INTO `device_type_table` (`device_type_id`, `device_type_title`) VALUES
(1, 'Website'),
(2, 'Android'),
(3, 'iOS'),
(4, 'AdminPanel');

-- --------------------------------------------------------

--
-- Table structure for table `email_setting_table`
--

CREATE TABLE `email_setting_table` (
  `email_setting_id` tinyint(4) NOT NULL,
  `email_setting_mailtype` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `email_setting_smtpport` smallint(6) NOT NULL,
  `email_setting_smtphost` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `email_setting_smtpuser` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `email_setting_smtppass` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `email_setting_crypto` varchar(5) COLLATE utf8_persian_ci NOT NULL,
  `email_setting_fromname` varchar(40) COLLATE utf8_persian_ci NOT NULL,
  `email_setting_fromemail` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `email_setting_cc` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `email_setting_signature` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `email_setting_status` tinyint(1) NOT NULL COMMENT '0: Disable | 1: Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='Email Setting Table';

--
-- Dumping data for table `email_setting_table`
--

INSERT INTO `email_setting_table` (`email_setting_id`, `email_setting_mailtype`, `email_setting_smtpport`, `email_setting_smtphost`, `email_setting_smtpuser`, `email_setting_smtppass`, `email_setting_crypto`, `email_setting_fromname`, `email_setting_fromemail`, `email_setting_cc`, `email_setting_signature`, `email_setting_status`) VALUES
(1, 'mail', 0, '', '', '', 'none', 'CoronaVirus', 'No-Reply@CoronaVirus.inw24.com', '', 'Best Regards,<br>\r\nCoronaVirus.inw24.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_table`
--

CREATE TABLE `page_table` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(100) NOT NULL,
  `page_slug` varchar(100) NOT NULL,
  `page_type` tinyint(2) NOT NULL COMMENT '1:News | 2: Annunciation | 3: Page | 4: Version',
  `page_content` mediumtext NOT NULL,
  `page_image` varchar(60) DEFAULT NULL,
  `page_keyword` varchar(100) DEFAULT NULL,
  `page_publish_time` varchar(15) NOT NULL,
  `page_status` tinyint(4) NOT NULL COMMENT '0:Inactive | 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Page Table';

--
-- Dumping data for table `page_table`
--

INSERT INTO `page_table` (`page_id`, `page_title`, `page_slug`, `page_type`, `page_content`, `page_image`, `page_keyword`, `page_publish_time`, `page_status`) VALUES
(1, 'Terms of Service', 'terms-of-service', 3, '<p>Terms of Service: You can edit this page from admin dashboard. some<strong> HTML5</strong> tags are supported here.</p>\r\n<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>', '', '', '1543481842', 1),
(2, 'Privacy Policy', 'privacy-policy', 3, '<p>Privacy Policy: You can edit this page from admin dashboard. some<strong> HTML5</strong> tags are supported here.</p>\r\n<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>', '', '', '1543481882', 1),
(3, 'GDPR Law', 'gdpr-law', 3, '<p>GDPR Law: You can edit this page from admin dashboard. some<strong> HTML5</strong> tags are supported here.</p>\r\n<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>', '', '', '1543481894', 1),
(4, 'About Us', 'about-us', 3, '<p>About Us: You can edit this page from admin dashboard. some<strong> HTML5</strong> tags are supported here.</p>\r\n<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>', '', '', '1543481904', 1),
(5, 'Contact Us', 'contact-us', 3, '<p><strong>Website:</strong> <br><a href=\"http://www.inw24.com\">www.inw24.com</a></p>\r\n<p><strong>Email:</strong><br><a href=\"mailto:inw24.com@gmail.com\">inw24.com@gmail.com</a></p>\r\n<p><strong>Purchase This App:<br></strong><a href=\"https://codecanyon.net/item/game-station-reward-coin/24531638\">https://codecanyon.net/item/game-station-reward-coin/24531638</a></p>', '', '', '1543731556', 1),
(6, 'Reserved Page 1', 'reserved-page-1', 3, '<p>Reserved Page 1</p>', '', '', '1543731622', 0),
(7, 'Reserved Page 2', 'reserved-page-2', 3, '<p>Reserved Page 2</p>', '', '', '1566137566', 0),
(8, 'Reserved Page 3', 'reserved-page-3', 3, '<p>Reserved Page 3</p>', NULL, NULL, '1576145214', 0),
(9, 'Reserved Page 4', 'reserved-page-4', 3, '<p>Reserved Page 4</p>', NULL, NULL, '1576145252', 0),
(10, 'Version 1.0.0', 'version-100', 4, '<p><code class=\"html plain\">Version 1.0.0 - January 1th, 2020</code></p>\r\n<p><code class=\"html plain\">- Initial release.</code></p>', NULL, NULL, '1576145327', 1);

-- --------------------------------------------------------

--
-- Table structure for table `player_type_table`
--

CREATE TABLE `player_type_table` (
  `player_type_id` int(11) NOT NULL,
  `player_type_title` varchar(30) NOT NULL,
  `player_type_description` varchar(100) NOT NULL,
  `player_type_status` tinyint(1) NOT NULL COMMENT '0: Disable | 1: Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Type Table';

--
-- Dumping data for table `player_type_table`
--

INSERT INTO `player_type_table` (`player_type_id`, `player_type_title`, `player_type_description`, `player_type_status`) VALUES
(1, 'ExoPlayer', 'Write full direct URL', 1),
(2, 'JzPlayer', 'Write full direct URL', 1),
(3, 'WebView Player', 'Write full direct URL', 1),
(4, 'YouTube Player', 'Only write Youtube Id. ex: MJLB4Qv38vM ', 1),
(5, 'YouTube Embed Player', 'Only write Youtube Id. ex: MJLB4Qv38vM ', 1),
(6, 'Vimeo Embed Player', 'Only write Vimeo Id. ex: 253989945', 1),
(7, 'HLS ExoPlayer', 'Write full direct HLS URL like m3u8', 1),
(8, 'Native Player', 'Write full direct URL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reward_coin_table`
--

CREATE TABLE `reward_coin_table` (
  `reward_coin_id` int(11) NOT NULL,
  `reward_coin_banner_ad_exp` int(11) NOT NULL COMMENT 'Expiration: 3600 = 1 Hour',
  `reward_coin_interstitial_ad_exp` int(11) NOT NULL COMMENT 'Expiration: 3600 = 1 Hour',
  `reward_coin_rewarded_ad_exp` int(11) NOT NULL COMMENT 'Expiration: 3600 = 1 Hour',
  `reward_coin_native_ad_exp` int(11) NOT NULL COMMENT 'Expiration: 3600 = 1 Hour',
  `reward_coin_play_game_exp` int(11) NOT NULL COMMENT ' Expiration: 3600 = 1 Hour ',
  `reward_coin_watching_video_exp` int(11) NOT NULL COMMENT 'Expiration: 3600 = 1 Hour ',
  `reward_coin_banner_ad_coin_req` int(11) NOT NULL COMMENT 'Account Update: Coin Requirement',
  `reward_coin_interstitial_ad_coin_req` int(11) NOT NULL COMMENT 'Account Update: Coin Requirement',
  `reward_coin_rewarded_ad_coin_req` int(11) NOT NULL COMMENT 'Account Update: Coin Requirement',
  `reward_coin_native_ad_coin_req` int(11) NOT NULL COMMENT 'Account Update: Coin Requirement',
  `reward_coin_vip_user_coin_req` int(11) NOT NULL COMMENT ' Account Update: Coin Requirement ',
  `reward_coin_banner_ad_click` int(11) NOT NULL COMMENT 'Each click, reward x coin',
  `reward_coin_interstitial_ad_click` int(11) NOT NULL COMMENT ' Each click, reward x coin ',
  `reward_coin_rewarded_ad_click` int(11) NOT NULL COMMENT ' Each click, reward x coin ',
  `reward_coin_native_ad_click` int(11) NOT NULL COMMENT ' Each click, reward x coin ',
  `reward_coin_write_review` int(11) NOT NULL COMMENT 'Write a review, reward x coin ',
  `reward_coin_play_game` int(11) NOT NULL COMMENT 'Play game, reward x coin',
  `reward_coin_watching_video` int(11) NOT NULL COMMENT 'Watch video, reward x coin',
  `reward_coin_referral_user` int(11) NOT NULL COMMENT 'Give referral ID to reward coin',
  `reward_coin_referral_friend` int(11) NOT NULL COMMENT 'Get referral ID to reward coin',
  `reward_coin_publish_game` int(100) NOT NULL COMMENT 'Publish a game to reward coin',
  `reward_coin_new_registeration` int(11) NOT NULL DEFAULT 10,
  `reward_coin_withdrawal_coin_minimum_req` int(11) NOT NULL DEFAULT 1000 COMMENT 'Minimum number of coins to withdraw from the account',
  `reward_coin_price_of_each_coin` float NOT NULL DEFAULT 0.01 COMMENT 'The price of each coin. For example 1000 coins * 0.01 = 10 USD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reward Coin Table';

--
-- Dumping data for table `reward_coin_table`
--

INSERT INTO `reward_coin_table` (`reward_coin_id`, `reward_coin_banner_ad_exp`, `reward_coin_interstitial_ad_exp`, `reward_coin_rewarded_ad_exp`, `reward_coin_native_ad_exp`, `reward_coin_play_game_exp`, `reward_coin_watching_video_exp`, `reward_coin_banner_ad_coin_req`, `reward_coin_interstitial_ad_coin_req`, `reward_coin_rewarded_ad_coin_req`, `reward_coin_native_ad_coin_req`, `reward_coin_vip_user_coin_req`, `reward_coin_banner_ad_click`, `reward_coin_interstitial_ad_click`, `reward_coin_rewarded_ad_click`, `reward_coin_native_ad_click`, `reward_coin_write_review`, `reward_coin_play_game`, `reward_coin_watching_video`, `reward_coin_referral_user`, `reward_coin_referral_friend`, `reward_coin_publish_game`, `reward_coin_new_registeration`, `reward_coin_withdrawal_coin_minimum_req`, `reward_coin_price_of_each_coin`) VALUES
(1, 21600000, 21600000, 21600, 21600, 3600, 21600000, 100000, 100000, 1000, 1000, 200000, 0, 0, 2, 2, 0, 1, 0, 0, 0, 50, 10, 100000, 0.001);

-- --------------------------------------------------------

--
-- Table structure for table `setting_table`
--

CREATE TABLE `setting_table` (
  `setting_id` int(11) NOT NULL,
  `setting_app_name` varchar(50) NOT NULL,
  `setting_app_desc` varchar(100) NOT NULL,
  `setting_website` varchar(50) NOT NULL,
  `setting_email` varchar(50) NOT NULL,
  `setting_phone1` varchar(15) NOT NULL,
  `setting_phone2` varchar(15) NOT NULL,
  `setting_phone3` varchar(15) NOT NULL,
  `setting_sms_no` varchar(20) NOT NULL,
  `setting_address` varchar(100) NOT NULL,
  `setting_logo` varchar(80) NOT NULL,
  `setting_favicon` varchar(50) NOT NULL,
  `setting_version_code` smallint(6) NOT NULL,
  `setting_version_string` varchar(25) NOT NULL,
  `setting_skype` varchar(60) NOT NULL,
  `setting_telegram` varchar(60) NOT NULL,
  `setting_whatsapp` varchar(60) NOT NULL,
  `setting_instagram` varchar(60) NOT NULL,
  `setting_facebook` varchar(60) NOT NULL,
  `setting_twiiter` varchar(60) NOT NULL,
  `setting_custom1` varchar(60) NOT NULL,
  `setting_custom2` varchar(60) NOT NULL,
  `setting_one_signal_app_id` varchar(255) NOT NULL,
  `setting_one_signal_rest_api_key` varchar(255) NOT NULL,
  `setting_youtube_api_key` varchar(255) NOT NULL,
  `setting_text_maintenance` varchar(255) NOT NULL,
  `setting_site_maintenance` tinyint(1) NOT NULL COMMENT '0: No | 1: Yes',
  `setting_android_maintenance` tinyint(1) NOT NULL COMMENT '0: No | 1: Yes',
  `setting_ios_maintenance` tinyint(1) NOT NULL COMMENT '0: No | 1: Yes',
  `setting_other_maintenance` tinyint(1) NOT NULL COMMENT '0: No | 1: Yes',
  `setting_disable_registration` tinyint(1) NOT NULL COMMENT '0: No | 1: Yes',
  `setting_checking` int(11) NOT NULL,
  `setting_pc` tinyint(1) DEFAULT NULL,
  `setting_mobile_verification` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0: No Need | Need To Verify ',
  `setting_email_verification` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0: No Need | Need To Verify ',
  `setting_document_verification` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0: No Need | Need To Verify '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Setting Table';

--
-- Dumping data for table `setting_table`
--

INSERT INTO `setting_table` (`setting_id`, `setting_app_name`, `setting_app_desc`, `setting_website`, `setting_email`, `setting_phone1`, `setting_phone2`, `setting_phone3`, `setting_sms_no`, `setting_address`, `setting_logo`, `setting_favicon`, `setting_version_code`, `setting_version_string`, `setting_skype`, `setting_telegram`, `setting_whatsapp`, `setting_instagram`, `setting_facebook`, `setting_twiiter`, `setting_custom1`, `setting_custom2`, `setting_one_signal_app_id`, `setting_one_signal_rest_api_key`, `setting_youtube_api_key`, `setting_text_maintenance`, `setting_site_maintenance`, `setting_android_maintenance`, `setting_ios_maintenance`, `setting_other_maintenance`, `setting_disable_registration`, `setting_checking`, `setting_pc`, `setting_mobile_verification`, `setting_email_verification`, `setting_document_verification`) VALUES
(1, 'CoronaVirus Disease', 'New CoronaVirus Disease (COVID-19)', 'http://coronavirus.inw24.com', 'inw24.com@gmail.com', '', '', '', '', '', 'fe5ce528a7679e9485cf639615904adb.png', '', 1, '1.0.0', '1', '2', '3', '4', '5', '6', '7', '8', 'B2c-', 'UjI-', '1', 'We are under maintenance mode. Please try again later.', 1, 0, 1, 1, 1, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_table`
--

CREATE TABLE `slider_table` (
  `slider_id` int(11) NOT NULL,
  `slider_category_id` smallint(6) NOT NULL,
  `slider_title` varchar(120) CHARACTER SET utf8 NOT NULL,
  `slider_description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slider_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `slider_image` varchar(120) CHARACTER SET utf8 NOT NULL,
  `slider_content_id` int(11) DEFAULT 0,
  `slider_status` tinyint(1) NOT NULL COMMENT '0: Inactive | 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='Slider Table';

--
-- Dumping data for table `slider_table`
--

INSERT INTO `slider_table` (`slider_id`, `slider_category_id`, `slider_title`, `slider_description`, `slider_url`, `slider_image`, `slider_content_id`, `slider_status`) VALUES
(1, 0, 'CoronaVirus 2019', 'CoronaVirus 2019', '', '6517303e0d802f961c58bc4dceacac4c.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `update_coin_table`
--

CREATE TABLE `update_coin_table` (
  `update_coin_id` bigint(20) NOT NULL,
  `update_coin_user_id` int(11) NOT NULL,
  `update_coin_type` varchar(35) NOT NULL,
  `update_coin_time` int(10) NOT NULL,
  `update_coin_user_ip` varchar(30) NOT NULL,
  `update_coin_user_agent` varchar(60) NOT NULL,
  `update_coin_status` tinyint(1) NOT NULL COMMENT '0: Expired | 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Coin Table';

-- --------------------------------------------------------

--
-- Table structure for table `user_role_table`
--

CREATE TABLE `user_role_table` (
  `user_role_id` smallint(6) NOT NULL,
  `user_type_id` smallint(6) NOT NULL,
  `user_role_title` varchar(30) NOT NULL,
  `user_role_price` float NOT NULL,
  `user_role_permission` text NOT NULL COMMENT 'Seprrate laste segment with |',
  `user_role_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: Active | 2: Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Role Table';

--
-- Dumping data for table `user_role_table`
--

INSERT INTO `user_role_table` (`user_role_id`, `user_type_id`, `user_role_title`, `user_role_price`, `user_role_permission`, `user_role_status`) VALUES
(1, 1, 'Super Admin', 0, 'No need to set permission for Super Admin.', 1),
(2, 1, 'Admin', 0, 'index users_list show_user add_user delete_user users_role delete_role general_settings email_settings sliders delete_slider edit_slider pages add_page delete_page edit_page users_activity categories edit_category delete_category content_list add_content edit_content delete_content push_notification admob_settings api_key', 1),
(3, 1, 'Employee', 0, 'index users_list show_user add_user delete_user users_role delete_role general_settings email_settings sliders delete_slider edit_slider pages add_page delete_page edit_page users_activity categories edit_category delete_category content_list add_content edit_content delete_content push_notification', 1),
(4, 1, 'Demo Admin', 0, 'index users_list show_user add_user delete_user users_role delete_role general_settings email_settings sliders delete_slider edit_slider pages add_page delete_page edit_page users_activity categories edit_category delete_category content_list add_content edit_content delete_content push_notification admob_settings api_key comments_list show_comment', 2),
(5, 2, 'Regular', 0, 'index', 1),
(6, 2, 'VIP', 2000, 'index', 2),
(7, 2, 'Demo User', 0, 'index add_content content_list edit_content withdrawal_coins show_withdrawal_coin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_firstname` varchar(50) DEFAULT NULL,
  `user_lastname` varchar(50) DEFAULT NULL,
  `user_image` varchar(80) NOT NULL DEFAULT 'avatar.png',
  `user_credit` float DEFAULT 0,
  `user_coin` int(11) NOT NULL DEFAULT 0,
  `user_type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1: Staff | 2: User | 3: Guest',
  `user_role_id` smallint(6) NOT NULL DEFAULT 5,
  `user_duration` int(11) DEFAULT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_mobile` varchar(15) DEFAULT NULL,
  `user_phone` varchar(15) DEFAULT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: Deactive | 1: Active',
  `user_reg_date` varchar(12) NOT NULL,
  `user_last_login` varchar(12) DEFAULT NULL,
  `user_device_type_id` tinyint(2) NOT NULL,
  `user_note` text DEFAULT NULL,
  `user_referral` int(11) NOT NULL,
  `user_mobile_verified` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: No| 1: Yes',
  `user_mobile_verification_code` varchar(100) DEFAULT NULL,
  `user_email_verified` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: No| 1: Yes',
  `user_email_verification_code` varchar(100) DEFAULT NULL,
  `user_document_verified` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: No| 1: Yes',
  `user_online` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Offline | 1: Online',
  `user_onesignal_player_id` varchar(100) NOT NULL DEFAULT 'Not set yet.',
  `user_hide_banner_ad` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Disable | 1: Enable (Hide)',
  `user_hide_interstitial_ad` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Disable | 1: Enable (Hide)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Table';

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_username`, `user_firstname`, `user_lastname`, `user_image`, `user_credit`, `user_coin`, `user_type`, `user_role_id`, `user_duration`, `user_email`, `user_password`, `user_mobile`, `user_phone`, `user_status`, `user_reg_date`, `user_last_login`, `user_device_type_id`, `user_note`, `user_referral`, `user_mobile_verified`, `user_mobile_verification_code`, `user_email_verified`, `user_email_verification_code`, `user_document_verified`, `user_online`, `user_onesignal_player_id`, `user_hide_banner_ad`, `user_hide_interstitial_ad`) VALUES
(1, 'admin', 'Super', 'Admin', '7e1ff1a1033dc605f8b2ab7a2cca5ef6.png', 0, 1, 1, 1, 0, 'inw24.com@gmail.com', 'd21933a6ee50e4dcaa8424f85582c3f51abf6379', '0124', '', 1, '1575811526', '', 4, 'Website: www.ViaCoders.com', 0, 1, '', 1, '', 1, 0, 'Not set yet.', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_type_table`
--

CREATE TABLE `user_type_table` (
  `user_type_id` smallint(6) NOT NULL COMMENT '1: Staff | 2: User | 3: Guest',
  `user_type_title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Type Table';

--
-- Dumping data for table `user_type_table`
--

INSERT INTO `user_type_table` (`user_type_id`, `user_type_title`) VALUES
(1, 'Staff'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_account_type_table`
--

CREATE TABLE `withdrawal_account_type_table` (
  `withdrawal_account_type_id` int(11) NOT NULL,
  `withdrawal_account_type_title` varchar(30) NOT NULL,
  `withdrawal_account_type_status` tinyint(1) NOT NULL COMMENT '0: Disable | 1: Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Withdrawal Account Type Table';

--
-- Dumping data for table `withdrawal_account_type_table`
--

INSERT INTO `withdrawal_account_type_table` (`withdrawal_account_type_id`, `withdrawal_account_type_title`, `withdrawal_account_type_status`) VALUES
(1, '0', 0),
(2, '0', 0),
(3, '0', 0),
(4, '0', 0),
(5, '0', 0),
(6, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_table`
--

CREATE TABLE `withdrawal_table` (
  `withdrawal_id` int(11) NOT NULL,
  `withdrawal_user_id` int(11) NOT NULL,
  `withdrawal_account_type` varchar(60) NOT NULL COMMENT ' For example: PayPal| Bitcoin',
  `withdrawal_account_name` varchar(60) NOT NULL COMMENT 'For example: PayPal Email | Bitcoin Wallet Address',
  `withdrawal_req_coin` int(11) NOT NULL,
  `withdrawal_req_cash` float DEFAULT NULL,
  `withdrawal_req_date` varchar(12) NOT NULL,
  `withdrawal_date_paid` varchar(12) DEFAULT NULL,
  `withdrawal_transaction` varchar(60) DEFAULT NULL,
  `withdrawal_user_comment` varchar(255) DEFAULT NULL,
  `withdrawal_admin_comment` varchar(255) DEFAULT NULL,
  `withdrawal_status` tinyint(1) NOT NULL COMMENT '1: Pending | 2: Paid | 3. Cancel'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Withdrawal Table';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_table`
--
ALTER TABLE `activity_table`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `admob_setting_table`
--
ALTER TABLE `admob_setting_table`
  ADD PRIMARY KEY (`admob_setting_id`);

--
-- Indexes for table `api_table`
--
ALTER TABLE `api_table`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `bookmark_table`
--
ALTER TABLE `bookmark_table`
  ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `captcha_table`
--
ALTER TABLE `captcha_table`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `captcha_word` (`captcha_word`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comment_table`
--
ALTER TABLE `comment_table`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `content_table`
--
ALTER TABLE `content_table`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `content_type_table`
--
ALTER TABLE `content_type_table`
  ADD PRIMARY KEY (`content_type_id`);

--
-- Indexes for table `currency_table`
--
ALTER TABLE `currency_table`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `device_type_table`
--
ALTER TABLE `device_type_table`
  ADD PRIMARY KEY (`device_type_id`);

--
-- Indexes for table `email_setting_table`
--
ALTER TABLE `email_setting_table`
  ADD PRIMARY KEY (`email_setting_id`);

--
-- Indexes for table `page_table`
--
ALTER TABLE `page_table`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `player_type_table`
--
ALTER TABLE `player_type_table`
  ADD PRIMARY KEY (`player_type_id`);

--
-- Indexes for table `reward_coin_table`
--
ALTER TABLE `reward_coin_table`
  ADD PRIMARY KEY (`reward_coin_id`);

--
-- Indexes for table `setting_table`
--
ALTER TABLE `setting_table`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `slider_table`
--
ALTER TABLE `slider_table`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `update_coin_table`
--
ALTER TABLE `update_coin_table`
  ADD PRIMARY KEY (`update_coin_id`);

--
-- Indexes for table `user_role_table`
--
ALTER TABLE `user_role_table`
  ADD PRIMARY KEY (`user_role_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_type_table`
--
ALTER TABLE `user_type_table`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `withdrawal_account_type_table`
--
ALTER TABLE `withdrawal_account_type_table`
  ADD PRIMARY KEY (`withdrawal_account_type_id`);

--
-- Indexes for table `withdrawal_table`
--
ALTER TABLE `withdrawal_table`
  ADD PRIMARY KEY (`withdrawal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_table`
--
ALTER TABLE `activity_table`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admob_setting_table`
--
ALTER TABLE `admob_setting_table`
  MODIFY `admob_setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_table`
--
ALTER TABLE `api_table`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookmark_table`
--
ALTER TABLE `bookmark_table`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captcha_table`
--
ALTER TABLE `captcha_table`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment_table`
--
ALTER TABLE `comment_table`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_table`
--
ALTER TABLE `content_table`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `content_type_table`
--
ALTER TABLE `content_type_table`
  MODIFY `content_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `currency_table`
--
ALTER TABLE `currency_table`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `device_type_table`
--
ALTER TABLE `device_type_table`
  MODIFY `device_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_setting_table`
--
ALTER TABLE `email_setting_table`
  MODIFY `email_setting_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_table`
--
ALTER TABLE `page_table`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `player_type_table`
--
ALTER TABLE `player_type_table`
  MODIFY `player_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reward_coin_table`
--
ALTER TABLE `reward_coin_table`
  MODIFY `reward_coin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_table`
--
ALTER TABLE `setting_table`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_table`
--
ALTER TABLE `slider_table`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `update_coin_table`
--
ALTER TABLE `update_coin_table`
  MODIFY `update_coin_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_role_table`
--
ALTER TABLE `user_role_table`
  MODIFY `user_role_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_type_table`
--
ALTER TABLE `user_type_table`
  MODIFY `user_type_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '1: Staff | 2: User | 3: Guest', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdrawal_account_type_table`
--
ALTER TABLE `withdrawal_account_type_table`
  MODIFY `withdrawal_account_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `withdrawal_table`
--
ALTER TABLE `withdrawal_table`
  MODIFY `withdrawal_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
