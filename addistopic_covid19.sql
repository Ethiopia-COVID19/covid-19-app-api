-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2020 at 10:22 AM
-- Server version: 10.1.40-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `addistopic_covid19`
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

--
-- Dumping data for table `activity_table`
--

INSERT INTO `activity_table` (`activity_id`, `activity_user_id`, `activity_agent`, `activity_time`, `activity_ip`, `activity_login_status`, `activity_desc`) VALUES
(1, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584279177', '196.188.240.224', 1, 'User login into the dashboard.'),
(2, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584295049', '196.188.240.224', 1, 'User login into the dashboard.'),
(3, 2, 'Dalvik/2.1.0 (Linux; U; Android 9; SM-G950U Build/PPR1.180610.011)', '1584295579', '196.188.240.224', 0, 'User joined from android.'),
(4, 2, 'Dalvik/2.1.0 (Linux; U; Android 9; SM-G950U Build/PPR1.180610.011)', '1584295594', '196.188.240.224', 1, 'User login into the android app.'),
(5, 2, 'Mozilla/5.0 (Linux; Android 9; SAMSUNG SM-G950U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/11.1 Chrome/75.0.3770.143 Mobile Safari/537.36', '1584298438', '196.188.240.224', 1, 'User login into the dashboard.'),
(6, 2, 'Mozilla/5.0 (Linux; Android 9; SAMSUNG SM-G950U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/11.1 Chrome/75.0.3770.143 Mobile Safari/537.36', '1584298440', '196.188.240.224', 1, 'User login into the dashboard.'),
(7, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584340935', '197.156.86.69', 1, 'User login into the dashboard.'),
(8, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584345143', '197.156.86.69', 1, 'User login into the dashboard.'),
(9, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584345210', '197.156.86.69', 0, 'User joined from admin panel.'),
(10, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584345519', '197.156.86.69', 1, 'User login into the dashboard.'),
(11, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584439626', '197.156.107.194', 1, 'User login into the dashboard.'),
(12, 4, 'Dalvik/2.1.0 (Linux; U; Android 9; SM-G950U Build/PPR1.180610.011)', '1584439961', '197.156.107.194', 0, 'User joined from android.'),
(13, 4, 'Dalvik/2.1.0 (Linux; U; Android 9; SM-G950U Build/PPR1.180610.011)', '1584439987', '197.156.107.194', 1, 'User login into the android app.'),
(14, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584443203', '197.156.107.194', 1, 'User login into the dashboard.'),
(15, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', '1584443672', '197.156.107.194', 1, 'User login into the dashboard.'),
(16, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1584621773', '196.190.154.235', 1, 'User login into the dashboard.'),
(17, 1, 'Mozilla/5.0 (Linux; Android 9; SM-G950U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Mobile Safari/537.36', '1584656612', '197.156.103.182', 1, 'User login into the dashboard.'),
(18, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.71', '1584765413', '212.92.105.217', 0, 'User joined from website.'),
(19, 3, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1584869945', '197.156.77.182', 1, 'User login into the dashboard.'),
(20, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585126137', '197.156.107.57', 1, 'User login into the dashboard.'),
(21, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585149372', '196.190.154.226', 1, 'User login into the dashboard.'),
(22, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585149832', '196.190.154.226', 1, 'User login into the dashboard.'),
(23, 3, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585153255', '196.190.154.226', 1, 'User login into the dashboard.'),
(24, 3, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585159818', '196.190.154.226', 1, 'User login into the dashboard.'),
(25, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585160388', '196.190.154.226', 1, 'User login into the dashboard.'),
(26, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585195918', '196.188.241.193', 1, 'User login into the dashboard.'),
(27, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585207417', '197.156.86.5', 1, 'User login into the dashboard.'),
(28, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585225330', '197.156.77.249', 1, 'User login into the dashboard.'),
(29, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585307596', '196.190.154.219', 0, 'User joined from admin panel.'),
(30, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585327556', '196.190.154.219', 1, 'User login into the dashboard.'),
(31, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585559269', '196.190.154.203', 1, 'User login into the dashboard.'),
(32, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585565607', '196.190.154.203', 1, 'User login into the dashboard.'),
(33, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585574994', '197.156.77.2', 1, 'User login into the dashboard.'),
(34, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585652432', '197.156.95.70', 1, 'User login into the dashboard.'),
(35, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585731195', '197.156.77.251', 1, 'User login into the dashboard.'),
(36, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585742699', '197.156.77.251', 1, 'User login into the dashboard.'),
(37, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585746733', '197.156.77.251', 1, 'User login into the dashboard.'),
(38, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585752070', '197.156.77.251', 1, 'User login into the dashboard.'),
(39, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585759544', '197.156.77.251', 1, 'User login into the dashboard.'),
(40, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585825874', '197.156.118.226', 1, 'User login into the dashboard.'),
(41, 3, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585844906', '100.36.49.151', 1, 'User login into the dashboard.'),
(42, 3, 'Mozilla/5.0 (Linux; Android 9; SM-G950U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Mobile Safari/537.36', '1585853874', '196.188.240.156', 1, 'User login into the dashboard.'),
(43, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '1585918394', '196.190.154.207', 1, 'User login into the dashboard.');

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
(1, 'ca-app-pub-3940256099942544~3347511713', 'ca-app-pub-3940256099942544/6300978111', 'ca-app-pub-3940256099942544/1033173712', '', '', 'LARGE_BANNER', 5, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_table`
--

CREATE TABLE `api_table` (
  `api_id` int(11) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `api_status` tinyint(1) NOT NULL COMMENT '0: Inactive | 1: Active',
  `auth_url` varchar(1024) NOT NULL,
  `client_key` varchar(512) NOT NULL,
  `client_secret` varchar(512) NOT NULL,
  `report_url` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='API Table';

--
-- Dumping data for table `api_table`
--

INSERT INTO `api_table` (`api_id`, `api_key`, `api_status`, `auth_url`, `client_key`, `client_secret`, `report_url`) VALUES
(1, 'BjRRZ1MHU2kPMFM1VzYBZVIzUAFVew89UEZbZlcyD3BSCw47UGNfMQA4UUcKZAcyDGcCZwkdU3w-', 1, '1', '1', '1', '1');

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

--
-- Dumping data for table `captcha_table`
--

INSERT INTO `captcha_table` (`captcha_id`, `captcha_time`, `captcha_ip_address`, `captcha_word`) VALUES
(40, 1584765410, '212.92.105.217', '22922'),
(41, 1584765412, '212.92.105.217', '89939'),
(42, 1584765413, '212.92.105.217', '70288'),
(43, 1584779220, '197.156.86.212', '60871'),
(44, 1584802627, '184.94.240.92', '73771'),
(45, 1584802675, '184.94.240.92', '84649'),
(46, 1584802693, '184.94.240.92', '87152'),
(47, 1584802694, '184.94.240.92', '40991'),
(48, 1584805509, '184.94.240.92', '54120'),
(49, 1584805537, '184.94.240.92', '58588'),
(50, 1584807476, '184.94.240.92', '27812'),
(51, 1584807479, '184.94.240.92', '31722'),
(52, 1584819084, '104.168.182.234', '27537'),
(53, 1584829266, '184.94.240.92', '87753'),
(54, 1584829267, '184.94.240.92', '17004'),
(55, 1584869895, '197.156.77.182', '95970'),
(56, 1584869895, '197.156.77.182', '54440'),
(57, 1584869931, '197.156.77.182', '69437'),
(58, 1584880637, '108.177.7.88', '60214'),
(59, 1584880637, '108.177.7.88', '35005'),
(60, 1585059532, '77.88.5.36', '49710'),
(61, 1585109633, '104.168.182.234', '66536'),
(62, 1585125294, '197.156.107.57', '94831'),
(63, 1585125979, '197.156.107.57', '76207'),
(64, 1585125998, '197.156.107.57', '48325'),
(65, 1585126034, '197.156.107.57', '41132'),
(66, 1585126047, '197.156.107.57', '56898'),
(67, 1585126059, '197.156.107.57', '23465'),
(68, 1585126106, '197.156.107.57', '41205'),
(69, 1585141871, '197.156.107.57', '55291'),
(70, 1585148848, '196.190.154.226', '38295'),
(71, 1585149349, '196.190.154.226', '92400'),
(72, 1585149771, '196.190.154.226', '66965'),
(73, 1585153059, '223.252.24.17', '36596'),
(74, 1585153202, '196.190.154.226', '23390'),
(75, 1585154148, '77.88.5.172', '40544'),
(76, 1585159341, '196.190.154.226', '95208'),
(77, 1585159366, '196.190.154.226', '92433'),
(78, 1585159375, '196.190.154.226', '13375'),
(79, 1585160253, '196.190.154.226', '35757'),
(80, 1585160342, '196.190.154.226', '82520'),
(81, 1585160375, '196.190.154.226', '97354'),
(82, 1585195802, '196.188.241.193', '41854'),
(83, 1585195880, '196.188.241.193', '77507'),
(84, 1585207253, '197.156.86.5', '79985'),
(85, 1585207299, '197.156.86.5', '46942'),
(86, 1585207321, '197.156.86.5', '25648'),
(87, 1585207340, '197.156.86.5', '77831'),
(88, 1585223724, '197.156.77.249', '42450'),
(89, 1585224064, '197.156.77.249', '27472'),
(90, 1585293708, '104.140.15.220', '57635'),
(91, 1585307275, '196.190.154.219', '83390'),
(92, 1585307401, '196.190.154.219', '24599'),
(93, 1585307429, '196.190.154.219', '37400'),
(94, 1585313029, '196.190.154.219', '39139'),
(95, 1585327477, '196.190.154.219', '70336'),
(96, 1585329379, '196.190.154.219', '47010'),
(97, 1585337554, '144.217.73.217', '57047'),
(98, 1585337555, '144.217.73.217', '48972'),
(99, 1585337556, '144.217.73.217', '82312'),
(100, 1585337556, '144.217.73.217', '30556'),
(101, 1585438016, '77.88.5.1', '16571'),
(102, 1585438016, '77.88.5.1', '91738'),
(103, 1585465686, '77.88.5.1', '21727'),
(104, 1585482210, '104.168.182.234', '57239'),
(105, 1585559213, '196.190.154.203', '38419'),
(106, 1585565579, '196.190.154.203', '84719'),
(107, 1585574965, '197.156.77.2', '61484'),
(108, 1585652393, '197.156.95.70', '40590'),
(109, 1585730167, '197.156.77.251', '43188'),
(110, 1585731010, '197.156.77.251', '72536'),
(111, 1585731174, '197.156.77.251', '26459'),
(112, 1585731182, '197.156.77.251', '67647'),
(113, 1585731188, '197.156.77.251', '32489'),
(114, 1585734701, '109.102.111.61', '15878'),
(115, 1585742667, '197.156.77.251', '19212'),
(116, 1585742691, '197.156.77.251', '26875'),
(117, 1585746712, '197.156.77.251', '88307'),
(118, 1585752004, '197.156.77.251', '21058'),
(119, 1585752046, '197.156.77.251', '67505'),
(120, 1585759368, '197.156.77.251', '16956'),
(121, 1585759504, '197.156.77.251', '56867'),
(122, 1585759509, '197.156.77.251', '14742'),
(123, 1585825826, '197.156.118.226', '66833'),
(124, 1585844843, '197.156.77.166', '52676'),
(125, 1585844895, '100.36.49.151', '25024'),
(126, 1585853842, '196.188.240.156', '18917'),
(127, 1585918380, '196.190.154.207', '38982');

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
  `category_language_id` int(11) NOT NULL,
  `category_status` tinyint(1) NOT NULL COMMENT '0: Inactive | 1: Active',
  `category_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Category Table';

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `category_parent_id`, `category_title`, `category_image`, `category_role_id`, `category_language_id`, `category_status`, `category_order`) VALUES
(1, 0, 'መግለጫ', '73ecde8e63a5f09859e1aad6475edc15.png', 0, 1, 1, 1),
(2, 0, 'ዜና', 'a6b872a38ac35fd95c739c367e69bd1c.png', 0, 1, 1, 2),
(3, 0, 'መከላከያ መንገዶች', 'b51f879ee262aef7268f681fc0e72122.png', 0, 1, 1, 3),
(5, 0, 'Drug Store', 'f86f8089530a0d54ece9a98a14629408.png', 0, 4, 0, 5),
(6, 0, 'ምርመራ  ጣቢያዎች', 'b194f46937ce793cd3250eee2167687f.png', 0, 1, 0, 6),
(7, 2, 'የሀገር ዉስጥ', 'd5690d093b7218cd6a72763e72b4cf66.png', 0, 1, 1, 1),
(8, 2, 'የዓለም ዜና', 'a80398e59c7faf3205a5101e7e68a9c5.png', 0, 1, 1, 2),
(11, 27, 'world news', '150d34c932cb778b88d14a578ddbba1f.png', 0, 4, 1, 1),
(24, 0, 'መከላከያ መንገዶች', 'f40805dd1f77b1a0ca30a5bcb41ffd41.png', 0, 3, 1, 1),
(25, 0, 'Prevention', '6290c176b9ab182c1f3928cac7b0b7e5.png', 0, 4, 1, 1),
(26, 0, 'Ittisuu', '5749fd8be359cbf5136caa85b64d5f89.png', 0, 2, 1, 1),
(27, 0, 'News', 'bd5506a6149800ca0f64d76712675a8d.png', 0, 4, 1, 1),
(28, 0, 'ዜና', '06489c8a7d88c81106e8bfa78205818f.png', 0, 3, 1, 1),
(29, 0, 'Oduu', 'a012399ce01d4aee2c4cffc9f0f30ac9.png', 0, 2, 1, 1),
(30, 0, 'መድሀኒት ቤት', '7d932118421ae28dc6197eae8d8b0455.png', 0, 1, 0, 1),
(31, 0, 'Mana Qoricha', '62b87b703a6cad494fe82848f8ccb230.png', 0, 2, 0, 1),
(32, 0, 'መድሀኒት ቤት', '65eb719d7982f4e7993828424060574a.png', 0, 3, 0, 1),
(33, 0, 'ምርመራ ጣቢያዎች', 'dfa90eca429789c6e25cecdb7a267bd6.png', 0, 3, 0, 1),
(34, 0, 'Dhabbatoota sakata\'iinsaa', '72a6a0235e1b35d063a16273126c429e.png', 0, 2, 0, 1),
(35, 0, 'Examination sites', '39644a306c189a9dc1c05f32e5d836f8.png', 0, 4, 0, 1),
(36, 2, 'የአለም ዜና', 'a8a8df739092f68e962f97690619e570.png', 0, 3, 1, 1),
(37, 29, 'Oduu Addunyaa', '00c8ae9d561e28e800c208e77424ccd0.png', 0, 2, 1, 1),
(38, 2, 'የሀገር ውስጥ', 'ed3e2ee058715a26e86407779c767b7f.png', 0, 3, 1, 1),
(39, 29, 'Biyya keessa', 'ac120dce4ab823850deeaca3eb78824b.png', 0, 2, 1, 1),
(40, 27, 'Local News', 'bc688d437144ff0f631afa7efc1d5715.png', 0, 4, 1, 1),
(41, 0, 'Announcement', 'fbf0c5a4eee00426293ebe7cca2eba77.png', 0, 4, 1, 1),
(42, 0, 'መግለጫ', 'ca946fc8c63eb81df6707ca703dc676c.png', 0, 3, 1, 1),
(43, 0, 'Ibsa', 'e334efd195b619f139a7ce736636e6eb.png', 0, 2, 1, 1);

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
  `comment_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_status` int(11) NOT NULL DEFAULT '0' COMMENT '0: Not Approved | 1: Approved | 2: Removed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Comment Table';

--
-- Dumping data for table `comment_table`
--

INSERT INTO `comment_table` (`comment_id`, `comment_user_id`, `comment_device_type_id`, `comment_content_id`, `comment_text`, `comment_rate`, `comment_user_ip`, `comment_user_agent`, `comment_time`, `comment_timestamp`, `comment_status`) VALUES
(1, 2, 2, 4, 'awesome', 5, '196.188.240.224', 'Dalvik/2.1.0 (Linux; U; Android 9; SM-G950U Build/PPR1.180610.011)', '1584300567', '2020-03-15 19:29:27', 0);

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
  `content_player_type_id` tinyint(4) NOT NULL DEFAULT '1',
  `content_access` tinyint(1) NOT NULL COMMENT '1: Indirect Access | 2: Direct Access',
  `content_category_id` smallint(6) NOT NULL,
  `content_language_id` int(11) NOT NULL,
  `content_user_role_id` tinyint(4) NOT NULL,
  `content_image` varchar(100) DEFAULT NULL,
  `content_url` varchar(200) NOT NULL,
  `content_duration` varchar(15) DEFAULT NULL,
  `content_viewed` int(11) NOT NULL,
  `content_liked` int(11) NOT NULL,
  `content_featured` tinyint(1) NOT NULL COMMENT '0: Not Featured | 1: Featured',
  `content_special` tinyint(1) NOT NULL COMMENT '0: Not Special | 1: Special',
  `content_cached` tinyint(1) NOT NULL COMMENT '0: Disable | 1: Enable',
  `content_rating_average` float NOT NULL DEFAULT '0',
  `content_rating_count` int(11) NOT NULL DEFAULT '0',
  `content_publish_date` varchar(20) NOT NULL,
  `content_publish_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content_expired_date` varchar(20) NOT NULL,
  `content_order` int(11) NOT NULL DEFAULT '1',
  `content_status` tinyint(1) NOT NULL COMMENT '0: Inactive | 1: Active | 2: Expired'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Tables';

--
-- Dumping data for table `content_table`
--

INSERT INTO `content_table` (`content_id`, `content_user_id`, `content_title`, `content_description`, `content_phone`, `content_email`, `content_latitude`, `content_longitude`, `content_property1`, `content_property2`, `content_orientation`, `content_price`, `content_type_id`, `content_player_type_id`, `content_access`, `content_category_id`, `content_language_id`, `content_user_role_id`, `content_image`, `content_url`, `content_duration`, `content_viewed`, `content_liked`, `content_featured`, `content_special`, `content_cached`, `content_rating_average`, `content_rating_count`, `content_publish_date`, `content_publish_timestamp`, `content_expired_date`, `content_order`, `content_status`) VALUES
(1, 1, 'CoronaVirus 2019', '<div class=\"PZPZlf\">\r\n<div class=\"JXRj4e\" data-hveid=\"CA0QAQ\" data-ved=\"2ahUKEwjpupaCr6roAhXiSRUIHVoaAlQQqsIBKAAwFXoECA0QAQ\">Coronavirus disease (COVID-19) is an infectious disease caused by a new virus.</div>\r\n</div>\r\n<div> </div>\r\n<div class=\"PZPZlf\">\r\n<div class=\"JXRj4e\" data-hveid=\"CA0QAg\" data-ved=\"2ahUKEwjpupaCr6roAhXiSRUIHVoaAlQQqsIBKAEwFXoECA0QAg\">The disease causes respiratory illness (like the flu) with symptoms such as a cough, fever, and in more severe cases, difficulty breathing. You can protect yourself by washing your hands frequently, avoiding touching your face, and avoiding close contact (1 meter or 3 feet) with people who are unwell.</div>\r\n</div>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 4, 5, '28597cfc29c2de62eb110db29297a2e9.png', '', '', 10, 0, 0, 0, 0, 0, 0, '1583336923', '2020-03-04 15:48:43', '2371736923', 1, 1),
(3, 1, 'Kalifornien ruft wegen Coronavirus', '<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>\r\n<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 4, 5, '445e621a7f769e048a6a308fd9edd0b0.jpg', '', '', 11, 0, 1, 0, 0, 0, 0, '1583395666', '2020-03-05 08:07:46', '2371795666', 1, 1),
(4, 1, 'U.S. Task Force', '<p>Lorem the It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 1, 4, 1, 8, 4, 5, '0f27321fb11f686d1db04ad53aa845da.png', 'r20K2YshFlo', '33:24', 13, 0, 0, 0, 0, 0, 0, '1583395922', '2020-03-05 08:12:02', '2371795922', 1, 1),
(6, 1, 'Drug Store 01', '<p>Write the address of drug store here...</p>', '0018181234567', 'test@gmail.com', '39.058158', '-94.629090', 'p1', 'p2', 1, 0, 7, 1, 1, 5, 4, 5, 'ebec72c9b52795b9994c9a9591c3aea2.jpg', '', '', 8, 0, 0, 0, 0, 5, 1, '1583396556', '2020-03-05 08:22:36', '2371796556', 1, 1),
(11, 3, 'ታጅ መሃል ተዘጋ!', '<p>የዓለም የቱሪስት መስእብ የሆነው \'ታጅ መሃል\' የኮሮና ቫይረስ ስርጭትን ለመቆጣጠር ሲባል እንዲዘጋ የህንድ መንግስት ትዕዛዝ አስተላልፏል። በየዕለቱ በሺዎች የሚቆጠሩ ቱሪስቶች ታጅ ማሃልን እንደሚጎበኙ ይታወቃል።</p>\r\n<p>ህንድ ውስጥ እስካሁን 129 የኮሮና ቫይረስ [COVID-19] ተጠቂዎች ያሉ ሲሆን ከነዚህ መካከል አስራ አምስቱ (15) ኬዞች የተመዘገቡት በ24 ሰዓት ውስጥ ነው። በሀገሪቱ በቫይረሱ ምክንያት 3 ሰዎች ሞተዋል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '27b937875466f3daf3863b37e1c39831.jpg', '', '', 5, 0, 1, 0, 0, 0, 0, '1584443044', '2020-03-17 11:04:04', '2372843044', 1, 1),
(12, 3, 'ኮቪድ-19', '<p>ኮቪድ-19  ኢትዮጵያ  ውስጥ ተከስቷል በሚል በኦሮሚያ ክልል የገበያ ዋጋ የሚያስወድዱ ፣ ያላግባብ ዋጋ ጭማሪ የሚያደርጉ የንግድ ተቋማትና ነጋዴዎች ላይ የኦሮሚያ ክልል መንግስት አስፈላጊውን እርምጃ እንደሚወስድ አቶ ሽመልስ አብዲሳ ተናግረዋል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, 'ddf23f840718faa24c72a83e898a2a98.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1584449427', '2020-03-17 12:50:27', '2372849427', 1, 1),
(14, 3, 'COVID-19', '<p>ሉፍታንዛ የኢትዮጵያ በረራዎቹን ሰረዘ!</p>\r\n<p>የጀርመኑ አየር መንገድ \'ሉፍታንዛ\' ከነገ ዕሮብ አንስቶ እስከ ሚያዚያ አራት ወደ አዲስ አበባ የሚያደርጋቸውን በረራዎች ሙሉ በሙሉ ሰርዟል።</p>\r\n<p>የኢትዮጲያ አየር መንገድ ግን ለጊዜው በየእለቱ ወደ ጀርመን ፍራንክፈርት የሚያደርገውን ጉዞ እንደማያቋርጥ አዲስ አበባ የሚገኘው የጀርመን ኤምባሲ ለዜጎቹ ባወጣው መግለጫ አስታውቋል።</p>\r\n<p>..</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '1e0aed9ae0b0c703b1f375a47d09e385.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1584449776', '2020-03-17 12:56:16', '2372849776', 1, 1),
(15, 3, 'COVID-19', '<p>የWHO ማስጠንቀቂያ!</p>\r\n<p>የዓለም ጤና ድርጅት /WHO/ የኮሮና ቫይረስ መያዛቸውን የሚጠረጥሩ ሰዎች ሀኪም ሳያማክሩ ኢቦፕሮፊን የተባለውን መድኃኒት እንዳይወስዱ አስጠንቅቋል።</p>\r\n<p>ምንጭ፦ የጀርመን ሬድዮ ጣቢያ</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, '1930e162817b8bf45dcc396e38cb425b.jpg', '', '', 3, 0, 0, 0, 0, 0, 0, '1584450430', '2020-03-17 13:07:10', '2372850430', 1, 1),
(16, 3, 'COVID-19', '<p>ዶክተር ሊያ ታደሰ፦</p>\r\n<p>በነጻ የስልክ መስመር 8335 ላይ አጋጥሞ የነበረው ችግር የተቃለለ ሲሆን አሁን መስመሩ አገልግሎት መስጠት የጀምረ ሲሆን በተጨማሪም 952 ንም፡፡ መጠቀም ይቻላል፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, 'content.png', '', '', 1, 0, 0, 0, 0, 0, 0, '1584450808', '2020-03-17 13:13:28', '2372850808', 1, 1),
(17, 3, 'COVID-19', '<p>ኬንያ ውስጥ የመጀመሪያው የኮሮና ቫይረስ [COVID-19] ኬዝ ሪፖርት ከተደረገ በኃላ 111 የቫይረሱ ተጠርጣሪዎች ላይ ምርመራ የተደረገ ሲሆን 71 ከቫይረሱ ነፃ ሆነው ተገኝተዋል። የ36 ናሙናዎች ውጤት ምርመራው ተጠናቆ ውጤቱ ይፋ አልተደረገም። 4 ሰዎች ደግሞ በቫይረሱ መጠቃታቸው ተረጋግጧል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '53da3360ddb582b0be8f943ce57c19a0.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1584457040', '2020-03-17 14:57:20', '2372857040', 1, 1),
(18, 3, 'COVID-19', '<p>በማሌዥያ የመጀመሪያው ሞት ተመዝግቧል!</p>\r\n<p>ማሌዢያ በኮሮና ቫይረስ ምክንያት በሀገሯ የመጀመሪያው ሞት መመዝገቡን ከሰዓታት በፊት አሳውቃለች። በቫይረሱ የሞቱት የ60 ዓመት ሰው እንደሆኑም ተሰምቷል።</p>\r\n<p>ከሟቹ ግለሰብ ጋር የቅርብ ንክኪ ነበራቸው የተባሉ አንድ መቶ ዘጠና ሶስት (193) ሰዎች ክትትል እየተደረገባቸው እንደሚገኝ የሀገሪቱ መንግስት አሳውቋል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'c867dbed8c0422c86a3e494a314e6bf1.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1584457123', '2020-03-17 14:58:43', '2372857123', 1, 1),
(19, 3, 'COVID-19', '<p>የኮሮና ቫይረስ ምልክት ለሚታይባቸው እንዲሁም በቫይረሱ ለሚያዙ ታራሚዎች ለይቶ ማከሚያ መዘጋጀቱን በፌደራል የማረሚያ ቤቶች አስተዳደር ህዝብ ግንኙነት ሃላፊ አቶ ገረመው አያሌው ገልፀዋል።</p>\r\n<p>አቶ ገረመው እንደገለፁት ለይቶ ማከሚያ ሆኖ የተዘጋጀው በተለምዶ አባሳሙኤል ተብሎ በሚጠራው አካባቢ ያለ አዲስ ማረሚያ ቤት ነው። ማረሚያ ቤቱ ከጤና ሚኒስቴር ጋር በመሆን የቅድመ ዝግጅት ስራ መስራቱን በማረሚያ ቤቶች ያለውን ሁኔታ የሚከታተል አካልም በጤና ሚኒስቴር መመደቡንም ተናግረዋል።</p>\r\n<p>ከኮሮና ቫይረስ [COVID-19] ጋር በተያያዘ በማረሚያ ቤት ያለውን ሁኔታ የሚከታተል በከፍተኛ ሃላፊዎች የሚመራ ቡድን ተቋቁሟል። የንፅህና መጠበቂያ ቁሳቁስ አቅርቦት እንዲጨምርም ስራዎች እየተሰሩ ነው።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '2702d23500a9e3dae747eff5bdfa3ec9.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1584457204', '2020-03-17 15:00:04', '2372857204', 1, 1),
(20, 3, 'COVID-19', '<p>ሀገር አቀፍ የፀሎት ቀን በኬንያ!</p>\r\n<p>የኬንያው ፕሬዝዳንት ኡሁሩ ኬንያታ መጭው ቅዳሜ በሀገር ዐቀፍ ደረጃ የጸሎት ቀን ሆኖ እንዲውል ማወጃቸውን Daily Nation ዘግቧል፡፡ ጸሎቱ የታወጀው በሀገሪቱ 4 ሰዎች በኮሮና ቫይረስ መያዛቸውን እና ሌሎች በርካቶችም በማቆያ ክፍል መግባታቸውን ተከትሎ ነው፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'e57083b016b9721f73eb91e657d5a29c.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1584460009', '2020-03-17 15:46:49', '2372860009', 1, 1),
(22, 3, 'COVID-19', '<p>በሀገር ውስጥ የተመረተ የንጽህና መጠበቂያ ሳኒታይዘር በከተማዋ ወደሚገኙ የከነማ ፋርማሲዎች እና ጤና ጣቢያዎች በመሰራጨት ላይ ይገኛል!</p>\r\n<p>በከተማዋ እየተሰራጨ ያለው የንጽህና መጠበቂያ ሳኒታይዘር 200 ሺህ ሊትር የሚሆን ሲሆን በከነማ ፋርማሲዎች ለህብረተሰቡ በተመጣጣኝ ዋጋ የሚቀርብ ይሆናል፡፡</p>\r\n<p>ከነገ ጀምሮ ህብረተሰቡ ከከነማ ፋርማሲዎች የንጽህና መጠበቂያውን ማግኘት እንደሚችል ማሳወቅ እንወዳለን፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '0fc46ba816dbc0048388e632e0809422.jpg', '', '', 2, 0, 0, 0, 0, 0, 0, '1584460613', '2020-03-17 15:56:53', '2372860613', 1, 1),
(24, 3, 'COVID-19', '<p>በኢትዮጵያ ስድስተኛው የኮሮና ቫይረስ ተጠቂ መገኘቱን የጤና ሚኒስትር ዶተር ሊያ ታደሰ አስታወቁ!</p>\r\n<p>ከዱባይ ወደ ኢትዮጵያ የመጣች የ59 ዓመት እንግሊዛዊ ዜግነት ያላት ዲፕሎማት ስትሆን በመጋቢት 7 ከሆቴል በተደረገ ጥቆማ ግለሰቧ በምትገኝበት እራሷን አግልላ እንድትቆይ በማድረግ በተደረገላት የላብቶሪ ምርመራ ናሙና ውጤት የኮሮና ቫይረስ መያዟ ተረጋገግጧል።</p>\r\n<p>የኢትዮጵያ የህብረተሰብ ጤና ኢንስቲትዩት ከግለሰቧ ጋር ንክኪ የነበራቸውን ሰዎች የመለየትና የክትትል ስራ ተጠናክሮ ቀሏል።</p>\r\n<p>በአሁኑ ሰዓት ግለሰቧ በለይቶ የህክምና መስጫ ማዕከል የቅርብ የሕክምና ክትትል እየተደረገላት ትገኛለች ።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, 'c08528be96cf3b70909c4bcdd0a848d3.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1584462701', '2020-03-17 16:31:41', '2372862701', 1, 1),
(25, 3, 'ለጥንቃቄ!', '<p>የእጅ ንፅህና መጠበቂያ ሳኒታይዘር ለመግዛት የተሰለፋችሁ እባካችሁ ለጥንቃቄ ሲባል በመሀከላችሁ ያለውን ተገቢ ርቀት ብትጠብቁ መልካም ነው። ይህን መልዕክት ለሌሎችም አንብቡላቸው። ከአዲስ አበባ የሚደርሱን ፎቶዎች በርካታ ሰዎች ተጠጋግተው እንደተሰለፉ የሚያሳይ ነው። ከተማ አስተዳደሩ የንፅህና መጠበቂያ ከቀናት በኃላም ጨምራለሁ ብሏል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, '13b79ccc1b1bb3df765f8cf1dc79d9dc.jpg', '', '', 3, 0, 1, 0, 0, 0, 0, '1584521554', '2020-03-18 08:52:34', '2372921554', 1, 1),
(26, 3, 'ለጤናችሁ ስትሉ ተጠንቀቁ!', '<p>ለጤናችሁ ስትሉ ተጠንቀቁ!</p>\r\n<p>ውድ ቤተሰቦቻችን እጅን መታጠብ ብቻ የኮሮና ቫይረስ [ኮቪድ-19] ተጋላጭነትን 100 ℅ ይቀንሳል በሚል እምነት የተሳሳተ ግንዛቤ እንዳለ የሚጠቁሙ እንቅስቃሴዎችን እያየን ነው።</p>\r\n<p>ህዝብ በሚበዙባቸው ቦታዎች አለመገኘት ፣ ንክኪዎችን መቀነስ ፣ ሰልፍም ቢሆን የምንቆምበትን ርቀት መጠበቅ ፣ ሌሎችም ሊወሰዱ የሚገባቸውን ጥንቃቄዎች መከተል ያስፈልጋል። አሁን ያሉትን እንቅስቃሴዎች ቫይረሱ ይበልጥ እንዲስፋፋ በር የሚከፍት ነው።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, '06542fa61b94c5359e1953c83aaf23bb.jpg', '', '', 10, 0, 0, 0, 0, 0, 0, '1584521693', '2020-03-18 08:54:53', '2372921693', 1, 1),
(27, 3, 'ለጤናችሁ ስትሉ ተጠንቀቁ!', '<p>ቻይና ኮሮና ቫይረስን [COVID-19] መቆጣጠር የቻለችው ዜጎቿ የሚሰጣቸውን የጤና ባለሙያዎች ምክር በከፍተኛ ዲሲፕሊን በመተግበራቸው ነው፤ የኢኮኖሚያዊ ጥንካሬዋ እንዳለ ሆኖ።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, '12c8ce86a199755a93f5ad6ab1615a5d.jpg', '', '', 11, 0, 1, 0, 0, 0, 0, '1584521796', '2020-03-18 08:56:36', '2372921796', 1, 1),
(28, 3, 'ፍርድ ቤቶች ከመጋቢት 10 እስከ 24 ቀን 2012 ዓ.ም ድረስ እንደሚዘጉ ተገለጸ።', '<p>ፍርድ ቤቶች ከመጋቢት 10 እስከ 24 ቀን 2012 ዓ.ም ድረስ እንደሚዘጉ ተገለጸ። የፌደራል ጠቅላይ ፍርድ ቤት ፕሬዘዳንት ወይዘሮ መዓዛ አሸናፊ በኮሮና ቫይረስ ስርጭት ሳቢያ የፍርድ ቤቶችን አገልግሎት አሰጣጥ አስመልክተው መግለጫ ሰጥተዋል።</p>\r\n<p>ሐሙስ እንዲሁም አርብ ዕለት ቀጠሮ ያላቸው ቀጠሯቸው እንደሚሸጋሸግላቸው በተሰጠው መግለጫው ተገልጿል። ከሰኞ ጀምሮ በአጭር የጽሁፍ መልዕክትና የ992 የመዝገብ ቀጠሯቸውን ማየት ይችላሉ።</p>\r\n<p>ወይም የቀጠሮ ቀናት በየፍርድ ቤቶች ይለጠፋሉ ተብሏል። አዲስ መዝገብ መክፈት ወይም አዲስ ክስ መመስረት ለሚፈልጉ ሰዎች ወይም ተቋማት ለቀጣዮቹ ሁለት ሳምንታት እንደማይቻልም ወይዘሮ መዓዛ ተናግረዋል። ልዩ ወይም አስቸኳይ እና ከአገር ደህንነት ጋር በተገናኘ በልዩ መልኩ ተረኛ ዳኞች ፋይል ሊከፍቱ ይችላሉ ተብሏል።</p>\r\n<p>ምንጭ፦ ኢትዮ ኤፍ ኤም 107.8</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, 'c7bdfe9f2d324f35d4ad897d24ebfc63.jpg', '', '', 9, 0, 1, 0, 0, 0, 0, '1584522288', '2020-03-18 09:04:48', '2372922288', 1, 1),
(29, 3, 'በቱርክ የመጀመሪያው ሞት ተመዝግቧል!', '<p>በቱርክ የመጀመሪያው ሞት ተመዝግቧል!</p>\r\n<p>በቱርክ በኮሮና ቫይረስ የመጀመሪያው ሞት ተመዝግቧል። በቫይረሱ የሞቱት የ89 ዓመት አዛውንት እንደሆኑ ነው የቱርክ ጤና ሚኒስቴር ያስታወቀው። በአሁን ሰዓት በቱርክ በኮቪድ-19 የተጠቁ ሰዎች ቁጥር 98 ደርሰዋል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'f4f54f354f65ee1b11cc89624ddaab18.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1584526550', '2020-03-18 10:15:50', '2372926550', 1, 1),
(30, 3, 'የኮሮና ቫይረስ [COVID-19] ወረርሺኝ በሁሉም የአሜሪካ ግዛቶች እየተስፋፋ መምጣቱ ተገለጸ', '<p>የኮሮና ቫይረስ [COVID-19] ወረርሺኝ በሁሉም የአሜሪካ ግዛቶች እየተስፋፋ መምጣቱ ተገለጸ። የዌስት ቨርጂኒያ አገረ ገዢ መግለጫ ሲሰጡ በግዛታቸው አንድ በኮሮናቫይረስ የተያዘ ሰው ስለተገኘ ቫይረሱ እንደሚመጣ እናውቅ ነበር ብለዋል፡፡</p>\r\n<p>በዚህም መሰረት በአሜሪካ አዲሱ ቫይረስ ባልታየባቸው ግዛቶች ጭምር እየተስፋፋ መምጣቱ ተነግሯል፡፡ በአሜሪካ እስካሁን ድረስ 108 ሰዎች በቫይረሱ ምክንያት የሞቱ ሲሆን 6ሺህ3መቶ የሚሆኑት ደግሞ በቫይረሱ መያዛቸው ተረጋግጧል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'b58b5d41271d546146d3a306506df487.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1584530574', '2020-03-18 11:22:54', '2372930574', 1, 1),
(31, 3, 'ሸገር የብዙሃን ትራንስፖርት አገልግሎት ድርጅት የኮሮና ቫይረስን ለመከላከል ለደንበኞቹ የእጅ ንፅህና መጠበቂያ አልኮል በማቅረብ ላይ ይገኛል፡፡', '<p>ሸገር የብዙሃን ትራንስፖርት አገልግሎት ድርጅት የኮሮና ቫይረስን ለመከላከል ለደንበኞቹ የእጅ ንፅህና መጠበቂያ አልኮል በማቅረብ ላይ ይገኛል፡፡ በደንበኞች መካከል የሚኖርን ንክኪ ለመቀነስም የአውቶብሶች የቀን ምልልስ ሲጨምር በአንድ አውቶቡስ የተሳፋሪዎች ቁጥር ወደ 50 ዝቅ እንዲልመም ማድረጉንም አስታውቋል፡፡</p>\r\n<p>በየአውቶቡሶቹ የተሳፋሪዎች ቁጥር እንዲቀንስ በመደረጉ የትራንስፖርት እጥረት እንዳይፈጠር 70 የተማሪ አውቶብሶችን ወደ ስምሪት በማስገባት አገልግሎት እየተሰጠ ነው፡፡</p>\r\n<p>በተጨማሪም የአውቶብሶቹ የውስጥ ክፍል በደንብ እንዲፀዳና በጉዞ ሰዓትም የአውቶብሶቹ መስኮቶች ሙሉ በሙሉ ክፍት እንዲሆኑ እየተደረገ ነው፡፡ ለተጠቃሚዎች ደህንነት ሲባል አሰራሩ ወደፊትም ተጠናክሮ የሚቀጥል ሲሆን ደንበኞችም በጤና ጥበቃ ሚኒስቴር የሚሰጡ ምክረ-ሃሳቦችን እንዲተገብሩ ሸገር ያሳስባል፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '2c827e8c3f856378dc0480650c630737.jpg', '', '', 5, 0, 1, 0, 0, 0, 0, '1584536247', '2020-03-18 12:57:27', '2372936247', 1, 1),
(32, 3, 'COVID-19', '<p>የቻይና ባለስልጣናት በጃፓኑ ግዙፍ ኩባንያ \"Fujifilm\" የተመረተው የኮሮና ቫይረስ [ኮቪድ-19] መድሃኒት በጣም ጥሩ ውጤት እያሳየ መሆኑን ተናግረዋል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'd1c08a135cd417d3ac0450e7a7ecb1cd.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1584541578', '2020-03-18 14:26:18', '2372941578', 1, 1),
(33, 3, '\"ከቤታችሁ እንዳትወጡ!\" - ሬሲፕ ጣይብ ኤርዶሃን', '<p>\"ከቤታችሁ እንዳትወጡ!\" - ሬሲፕ ጣይብ ኤርዶሃን</p>\r\n<p>የቱርክ ፕሬዘዳንት ሬሲፕ ጣይብ ኤርዶሃን የሀገሪቱ ዜጎች ለቀጣዮቹ 3 ሳምታት እጅግ አስገዳጅ እና አስፈላጊ ለሆነ ጉዳይ ካልሆነ በቀር በፍፁም ከቤታቸው እንዳይወጡ መልዕክት አስተላልፈዋል።</p>\r\n<p>ፕሬዘዳንቱ ይህ ውሳኔ ያሳለፉት ማህበራዊ ግንኙነቶችን በመቀነስ የኮሮና ቫይረስ ስርጭትን ለመቆጣጠር እንደሆነ ነው የተገለፀው። ዛሬ በቱርክ የመጀመሪያው የኮሮና ቫይረስ ሞት መመዝገቡ ይታወቃል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '05455c5ad4d12a592c17b3eb58cf508a.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1584604241', '2020-03-19 07:50:41', '2373004241', 1, 1),
(34, 3, 'አዲስ አበባ ቀላል ባቡር ትራንዚት አገልግሎት', '<p>የኮሮና ቫይረስ በሽታ ስርጭትን ለመቆጣጠር በአዲስ አበባ ቀላል ባቡር ትራንዚት አገልግሎት በእጅ የሚያዙ ቦታዎችን በኬሚካል የማፅዳት ስራ በዛሬው እለትም ሲካሄድ መዋሉን ወ/ሮ ዳግማዊት ሞገስ አሳውቀዋል። </p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '7d9b5967407235322cf7ef072a5509ed.jpg', '', '', 2, 0, 0, 0, 0, 0, 0, '1584604344', '2020-03-19 07:52:24', '2373004344', 1, 1),
(39, 3, 'ሀሌሉያ ሆስፒታል እያደረገ ያለው ዝግጅት', '<p>ሀሌሉያ ሆስፒታል እያደረገ ያለው ዝግጅት፦</p>\r\n<p>- የኮሮና ቫይረስን ለመከላከል የሙቀት ልየታ እያደረገ ነው። ወደ ሆስፒታሉ የሚመጡ ሁሉም ተገልጋዮች እና የሆስፒታሉ ሰራተኞች በዚሁ የሙቀት ልየት እንዲያልፉ እየተደረገ ነው።</p>\r\n<p>- የሙቀት ልየታ ስራው እየተሰራ ያለው የሆስፒታሉ መግቢያ በሮች በሙሉ ተዘግተው በተዘጋጁ ድንኳኖች ውስጥ ነው፤ ይህን ስራ የሚከውኑትም የሰለጠኑ ባለሙያዎች ናቸው። በተጨማሪ ወደ ውስጥ የሚገቡ ሰዎች የእጃቸውን ንፅህናም እንዲጠብቁ ይደረጋል።</p>\r\n<p>- 400 ለሚሆኑ የሆስፒታሉ ሰራተኞች በሽታውን መከላከል በሚቻልባቸው መንገዶች ላይ ያተኮሩ ስልጠናዎች ሰጥቷል። ለሰራተኞቹ የመከላከያ መሳሪያዎችን ሰጥቷል።</p>\r\n<p>- በሆስፒታሉ በሙቀት ልየታ ምርመራ የሚለዩ እና የኮሮና ቫይረስ [ኮቪድ-19] ምልክቶች የሚታዩባቸውን ሰዎች ለይቶ ማቆያ ክፍልም ሆስፒታሉ አዘጋጅቷል።</p>', '011 470 4242', '', '8.9861882', '38.7590401', 'p1', 'p2', 1, 0, 4, 1, 1, 6, 1, 5, '02d3e51cb5ab9a568b299ed59a370db7.png', 'hallelujahospital.org', '', 19, 0, 0, 0, 0, 0, 0, '1584619285', '2020-03-19 12:01:25', '2373019285', 1, 1),
(41, 3, 'የዶ/ር ሊያ ታደሰ መልዕክት', '<p>የዶ/ር ሊያ ታደሰ መልዕክት፦</p>\r\n<p>\"የኮሮና ቫይረስ በሽታ ዘር ቀለም እና ሃይማኖት የለውም። ከየትኛውም ሃገርና እና ዜግነት ጋር አይገናኝም። በሽታው በሁላችንም ላይ የመጣ የጋራ ፈተና ነውና ይህንን አስቸጋሪ ጊዜ በመተባበርና በመረዳዳት በፍፁም ኢትዮጵያዊ ጨዋነት ልናሳልፍ ይገባል።\"</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 4, 5, 'ad3ebc178b92fa35c6ca927aa07f20dc.jpg', '', '', 16, 0, 1, 0, 0, 0, 0, '1584622667', '2020-03-19 12:57:47', '2373022667', 1, 1),
(43, 1, 'የአፍና አፍንጫ መሸፈኛ ማስክ (face mask) አጠቃቀምና እነማን መጠቀም እንዳለባቸው ልብ ይበሉ!', '<p class=\"p1\">የአፍና አፍንጫ መሸፈኛ (face mask) አጠቃቀሙና እነማን መጠቀም እንዳለባቸው በቅጡ ባለመረዳት ሰዎች ለአላስፈላጊ ወጪና እንግልት ሲዳረጉ ይስተዋላል፡፡ ስለሆም ማስክ የሚከተሉት ሰዎች እንዲጠቀሙት ይመከራል፡፡</p>\r\n<p class=\"p2\"> </p>\r\n<p class=\"p1\">1. የአፍና አፍንጫ መሸፈኛ ማስክ መጠቀም የሚያስፈልገን በበሽታው የተያዘ ወይም የተጠረጠረ ሰው አጠገብ ወይም እየተንከባከብን ከሆነ ብቻ፣</p>\r\n<p class=\"p2\"> </p>\r\n<p class=\"p1\">2. ሳልና ትኩሳት ካለብን ለሌላው ጥንቃቄ በማድረግ ስያስለን ወይም ስያስነጠሰን፣ እንዲህ ከሆነ ደግሞ ሌሎች ተጨማሪ ጥንቃቄዎችን ማድረግ ያስፈልጋል ለምሳሌ ሰው የሚበዛበት ቦታ ከመሄድ ራስን መቆጠብ ፣ እጅ በደንብ መታጠብ ፣ መጨባበጥ ማቆም እና ማስኩን በስርዓት ማስወገድ እና ለባለሙያ ማሳወቅ ያስፈልጋል::</p>\r\n<p class=\"p2\"> </p>\r\n<p class=\"p1\">3. የማስክ አጠቃቀምም ውጤታማ የሚሆነው እጅን በንጹህ ውሃና ሳሙና አዘውትሮ መታጠብ ሲቻል እና አወገገዱም ጥንቃቄ የተሞላበት ስሆን ብቻ ነው፡፡ ህብረተሰባችን መረጃዎችን ከአስተማማኝ ምንጮች ብቻ በመቀበል፣ የተሳሳቱ መረጃዎች የሚያስከትሉትን መደናገር እና ፍርሀት እርሶም ይከላከሉ።</p>\r\n<p class=\"p2\"> </p>\r\n<p class=\"p1\">የበለጠ መረጃ ሲያስፈልግ ነጻ በሆነው 8335 የስልክ መስመር ላይ መደወል ይቻላል።</p>\r\n<p class=\"p2\"> </p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, 'b3fe7f1ca28c11b04ba1c66a40bb4db8.jpg', '', '', 16, 0, 0, 0, 0, 0, 0, '1584655054', '2020-03-19 21:57:34', '2373055054', 1, 1),
(44, 3, 'የኮሮና ቫይረስ ተጠቂዎች 9 ደርሰዋል!', '<p>የኮሮና ቫይረስ ተጠቂዎች 9 ደርሰዋል!</p>\r\n<p>የኢትዮጵያ የኮሮና ቫይረስ [COVID-19] ሁኔታን አስመልክቶ በጤና ሚንስቴር በተሰጠ መግለጫ በቫይረሱ የተያዙ ሰዎች ቁጥር 9 ደርሰዋል።</p>\r\n<p>መጋቢት 10 ከተያዙት ውስጥ ፡-</p>\r\n<p>- የ44 ዓመት ጃፓናዊ (ከዚህ ቀደም ከተያዙት ጃፓናዊ ጋር ንክኪ የነበራቸው)</p>\r\n<p>- የ85 ዓመት እድሜ ያላቸው ኢትዮጵያዊ (ከውጪ ከመጡበት ከየካቲት 23/2012 ዓ/ም ጀምሮ ራሳቸውን ለይተው ሲከታተሉ የነበሩ)</p>\r\n<p>- ሶስተኛው የ39 ዓመት ኦስትራዊ ዜጋ ሲሆን በመጋቢት 6/2012 ዓ/ም ወደ ኢትዮጵያ ተገቡ ናቸው።</p>\r\n<p>ሁለቱ ታማሚዎች በጥሩ ጤንነት ላይ ሲሆኑ የ85 ዓመት ዕድሜ ታማሚ ግን #ከባድ የሚባል ህመም ቢኖራቸውም አስፈላገው ክትትል እየተደረገላቸው ነው</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '1a84a823fbd17a0d65540c9f35b42db0.jpg', '', '', 18, 0, 1, 0, 0, 0, 0, '1584689386', '2020-03-20 07:29:46', '2373089386', 1, 1),
(45, 3, 'In California, 40 Million Ordered to Stay Home', '<p>The governor of California banned gatherings and nonessential businesses closed. In Texas, the authorities closed schools and banned dining at restaurants.</p>\r\n<p class=\"css-exrw3m evys1bk0\">America’s most populous state is ordering its residents to stay at home.</p>\r\n<p class=\"css-exrw3m evys1bk0\">Gov. Gavin Newsom of California on Thursday ordered Californians — all 40 million of them — to stay at home as much as possible in the coming weeks as the state confronts the escalating coronavirus outbreak. The order represents the most drastic measure any governor has taken to control the virus, and a decision that Governor Andrew Cuomo of New York, which has far more cases than in California, has resisted taking.</p>\r\n<p class=\"css-exrw3m evys1bk0\">Mr. Newsom made the announcement from the state’s emergency operations center in Sacramento, normally a place where emergency workers coordinate responses to wildfires and earthquake, and spoke in stark terms of the risk the virus poses to the population.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 4, 5, '57141a61d67d3aceccc1d7683f2ecb19.jpg', 'https://www.bbc.com/news/world-us-canada-51970815', '', 16, 0, 1, 0, 0, 0, 0, '1584693279', '2020-03-20 08:34:39', '2373093279', 1, 1),
(46, 3, 'እንዲህ ክሪኤቲቭ መሆንም ይቻላል!', '<p>እንዲህ ክሪኤቲቭ መሆንም ይቻላል!</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, '936cebac13b56cdb577a2dcb1bb8310c.jpg', '', '', 19, 0, 1, 0, 0, 0, 0, '1584697360', '2020-03-20 09:42:40', '2373097360', 1, 1),
(47, 3, 'ቻይና የጸረ ኮሮና ቫይረስ ክትባት የመጀመርያ ደረጃ ሙከራ መጀመሯን አስታውቃለች', '<p>ቻይና የጸረ ኮሮና ቫይረስ ክትባት የመጀመርያ ደረጃ ሙከራ መጀመሯን አስታውቃለች። ቻይና ይህን ያስታወቀችው አሜሪካ ተመሳሳይ የክትባት ሙከራ ውጤታማነቱን በሲአትል ግዛት በሰዎች ላይ ከጀመረች በኋላ ነው።</p>\r\n<p>በዓለም አቀፍ ደረጃ በዘርፉ በምርምር ስራ ላይ የተሰማሩ ሳይንትስቶች ገዳዩን ቫይረሱን ለመከላከል ብርቱ ምርምር በማድረግ መሆናቸውንም የፈረንሳዩ የዜና ወኪል አጃንስ ፍራንስ ፕረስ ዘግቧል።</p>\r\n<p>ቻይና ሙከራዋ እንደጎርጎርሳዊያኑ አቆጣጠር እስከ ዓመቱ መጨረሻ ሊዘልቅ እንደሚችል አስታውቃለች። በዚህም የኮቪድ 19 ክትባት የመጀመርያው ምዕራፍ ሙከራ ተሳታፊ በጎ ፈቃደኞች ክትባቱን መውሰድ ጀምረዋል።</p>\r\n<p>በጎ ዕድሜአቸው ከ18-60 ባለው ውስጥ የተካተተቱ 108 በጎ ፈቃደኞች በፕሮጀክቱ ውስጥ ተሳታፊ እየሆኑ ናቸው። በጎ ፈቃደኞቹ ሁለም የኮሮና ተሕዋሲ መጀመርያ ከተቀሰቀሰባት ማዕከላዊ የሕዋን ከተማ መሆናቸውን ዘገባው አመልክቷል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '137fdb0ba7e17964497e65545b47ca78.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1584951766', '2020-03-23 08:22:46', '2373351766', 1, 1),
(48, 3, 'አሜሪካ በኮሮና ቫይረስ [COVID-19] እየታመሰች ነው', '<p>አሜሪካ በኮሮና ቫይረስ [COVID-19] እየታመሰች ነው። በኮሮና ቫይረስ የተጠቁ ሰዎች ቁጥር 32,356 ደርሷል። የሚገርመው 8,114 ኬዝ የተመዘገበው በ24 ሰዓት ነው። በቫይረሱ የሞቱት ሰዎች ቁጥርም 414 ደርሰዋል።</p>\r\n<p>የአለም ሀገራት መሪ ነኝ ምትለዋ ፣ በሀብት ቁጥር አንዷ፣ በሁሉ ነገር ቀዳሚ ነኝ ፣ በቴክኖሎጂው ፣ በህክምናዬ ሁሉ ነገሬ የዘመነ ነው የምትለው አሜሪካ ለኮሮና ቫይረስ ተንበርክካለች። የተጠቂዎች ቁጥር ከዛሬ ነገ ይገታል ሲባል እየጨመረ ነው።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'b6bf8f41f73ee95df4983c41d0258990.jpg', '', '', 3, 0, 1, 0, 0, 0, 0, '1584951912', '2020-03-23 08:25:12', '2373351912', 1, 1),
(49, 3, 'ሩስያ ለጣሊያን ድጋፍ አደረገች', '<p>ሩስያ በኮሮና ቫይረስ [COVID-19] ወረርሽኝ በብርቱ እየተጠቃች ያለችውን ጣልያንን ለመደገፍ ሐኪሞችን እና የህክምና ቁሳቁስ እየላከች መሆኗን አስታውቃለች።</p>\r\n<p>ሩስያ በወረርሽኙ ክፉኛ የተጠቃችዉን ጣልያንን ለመደገፍ በዘጠኝ የጭነት አውሮፕላኖች የሕክምና ባለሞያዎች እና ቁሳቁስ ወደስፍራው ለማጓጓዝ በችካሎቭስኪ ወታደራዊ ሰፈር ዝግጅት እየተደረገ መሆኑን ገልጻለች።</p>\r\n<p>በተልዕኮው ስምንት (8) ተንቀሳቃሽ የሕክምና ቡድኖችን ጨምሮ የሕክምና ቁሳቁስ እና የጸረ ቫይረስ [COVID-19] ርጭት ተሽከርካሪዎች ያካተተ መሆኑን ተገልጿል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '593c75d339c5e6715986a77877f5b301.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1584952443', '2020-03-23 08:34:03', '2373352443', 1, 1),
(50, 3, 'WHO Director-General\'s opening remarks at the media briefing on COVID-19 - 20 March 2020', '<div class=\"row sf-detail-content\" data-sf-element=\"Row\">\r\n<div id=\"PageContent_T0643CD2A004_Col00\" class=\"sf_colsIn col-md-8\" data-sf-element=\"Column 1\" data-placeholder-label=\"Item header\">\r\n<div class=\"sf-item-header-wrapper\">\r\n<h1>WHO Director-General\'s opening remarks at the media briefing on COVID-19 - 20 March 2020</h1>\r\n<div class=\"date\"><span class=\"timestamp\">20 March 2020</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row sf-detail-content\" data-sf-element=\"Row\">\r\n<div id=\"PageContent_T0643CD2A003_Col00\" class=\"sf_colsIn col-md-8\" data-sf-element=\"Column 1\" data-placeholder-label=\"Body\">\r\n<article class=\"sf-detail-body-wrapper\">\r\n<div>\r\n<p>Good morning, good afternoon and good evening, wherever you are.</p>\r\n<p>Every day, COVID-19 seems to reach a new and tragic milestone.</p>\r\n<p>More than 210,000 cases have now been reported to WHO, and more than 9,000 people have lost their lives.</p>\r\n<p>Every loss of life is a tragedy. It’s also motivation to double down and do everything we can to stop transmission and save lives.</p>\r\n<p>We also need to celebrate our successes. Yesterday, Wuhan reported no new cases for the first time since the outbreak started.</p>\r\n<p>Wuhan provides hope for the rest of the world, that even the most severe situation can be turned around.</p>\r\n<p>Of course, we must exercise caution – the situation can reverse. But the experience of cities and countries that have pushed back this virus give hope and courage to the rest of the world.</p>\r\n<p>Every day, we are learning more about this virus and the disease it causes.</p>\r\n<p>One of the things we are learning is that although older people are the hardest hit, younger people are not spared.</p>\r\n<p>Data from many countries clearly show that people under 50 make up a significant proportion of patients requiring hospitalization.</p>\r\n<p>Today, I have a message for young people: you are not invincible. This virus could put you in hospital for weeks, or even kill you.</p>\r\n<p>Even if you don’t get sick, the choices you make about where you go could be the difference between life and death for someone else.</p>\r\n<p>I’m grateful that so many young people are spreading the word and not the virus.</p>\r\n<p>As I keep saying, solidarity is the key to defeating COVID-19 - solidarity between countries, but also between age groups.</p>\r\n<p>Thank you for heeding our call for solidarity, solidarity, solidarity.</p>\r\n</div>\r\n</article>\r\n</div>\r\n</div>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 4, 5, '4e062a86256e68bffca517186da20f64.jpg', '', '', 0, 0, 1, 0, 0, 0, 0, '1584953115', '2020-03-23 08:45:15', '2373353115', 1, 1),
(51, 3, 'የቱርክ አየር መንገድ', '<p>የቱርክ አየር መንገድ በኮሮና ቫይረስ [COVID-19] ወረርሽኝ ምክንያት ኢትዮጵያን ጨምሮ ከ5 አገሮች በስተቀር ዓለም አቀፍ በረራዎችን እ.ኤ.አ ከመጋቢት 27 ቀን 2020 ጀምሮ እንደሚያቆም አስታውቋል።</p>\r\n<p>ወደ ሆንግ ኮንግ፣ ሞስኮ ፣ አዲስ አበባ፣ ኒው ዮርክ እና ዋሽንግተን ዲሲ የሚያደርገው በረራ እንደማይቋረጥ የአየር መንገዱ ዋና ሥራ አስፈጻሚ ቢላል ኢክሲ አስታውቀዋል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'a523eab98906b8914b2a9fd6f70ce1d6.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1584953924', '2020-03-23 08:58:44', '2373353924', 1, 1),
(53, 3, 'ስለ ኮሮናቫይረስ በሽታ (COVID-19)', '<p>ስለ ኮሮናቫይረስ በሽታ (COVID-19) በአዲሱ ቫይረስ ምክንያት የሚመጣ ተላላፊ በሽታ ነው። በሽታው እንደ ሳል ፣ ትኩሳት ያሉ ከባድ የመተንፈሻ አካላት ምልክቶች ያሉ የመተንፈሻ አካላት በሽታ ያስከትላል ፡፡ ፊትዎን ከመንካት በመቆጠብ ፣ እና ከታመሙ ሰዎች ጋር (1 ሜትር ወይም 3 ጫማ) እጆችዎን ደጋግመው በመታጠብ እራስዎን መጠበቅ ይችላሉ ፡፡ እንዴት እንደሚሰራ የኮርኔቫቫይረስ በሽታ በዋነኝነት የሚተላለፈው በበሽታው ከተያዘው ሰው በሚነኩበት ወይም በሚያስነጥሱበት ጊዜ ነው ፡፡ እንዲሁም አንድ ሰው ቫይረሱ ያለበትበትን ወለል ወይም ነገር ሲነካ ዓይኖቹን ፣ አፍንጫቸውን ወይም አፋቸውን ሲነካ ይተላለፋል ፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, '7d9a7f136f27d69cd44f194f28b9f71b.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1584954810', '2020-03-23 09:13:30', '2373354810', 1, 1),
(54, 3, 'የ COVID-19 ምልክቶች ምንድ ናቸው?', '<h2>የ COVID-19 ምልክቶች ምንድ ናቸው?</h2>\r\n<h3>በጣም የተለመዱት COVID-19 ምልክቶች <strong>ትኩሳት</strong> ፣ <strong>ድካም</strong> እና <strong>ደረቅ ሳል</strong> ናቸው ፡፡ አንዳንድ ሕመምተኞች ህመም እና ህመም ፣ የአፍንጫ መታፈን ፣ የአፍንጫ ፍሳሽ ፣ የጉሮሮ ወይም ተቅማጥ ሊኖራቸው ይችላል ፡፡ እነዚህ ምልክቶች ብዙውን ጊዜ መለስተኛ እና ቀስ በቀስ ይጀምራሉ ፡፡ አንዳንድ ሰዎች በበሽታው ይያዛሉ ነገር ግን ምንም ምልክት አያሳዩም እንዲሁም ህመም አይሰማቸውም። ብዙ ሰዎች (80% ገደማ የሚሆኑት) ልዩ ህክምና ሳያስፈልጋቸው ከበሽታው ያገግማሉ ፡፡ ከ CIDID-19 ከተያዙ ከስድስቱ ሰዎች ውስጥ አንድ ሰው በጠና ታመሙና የመተንፈስ ችግር ያዳብራሉ ፡፡ አዛውንቶች ፣ እና እንደ የደም ግፊት ፣ የልብ ችግር ወይም የስኳር ህመም ያሉ መሰረታዊ ችግሮች ያሉባቸው ሰዎች ከባድ በሽታ የመያዝ ዕድላቸው ከፍተኛ ነው ፡፡ ትኩሳት ፣ ሳል እና የመተንፈስ ችግር ያለባቸው ሰዎች የሕክምና ክትትል ማግኘት አለባቸው ፡፡</h3>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, 'fb28a949771c0123d2a7b64bcd311061.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1584955264', '2020-03-23 09:21:04', '2373355264', 1, 1),
(55, 3, 'አዲስ አበባ ሳይንስና ቴክኖሎጅ ዩኒቨርሲቲ', '<p>በአዲስ አበባ ሳይንስና ቴክኖሎጅ ዩኒቨርሲቲ የእጅ መታጠቢያ ቧንቧዎችን በእግር ፔዳል በእግር ፔዳል የሚሰራ የእጅ መታጠቢያ የቴክኖሎጅ ማሻሻያ በዩኒቨርስቲው ግቢ ውስጥ ስራ ላይ ማዋሉን ሰምተናል፡፡ በሴነስር እና ከጎን በጉልበት ወይንም በሌሎች የሰውነት ክፍሎች የሚከፈቱ የአካል ጉዳተኞችን ታሳቢ ያደረጉ ማሻሻያዎች በተካላ ሂደት ላይ ናቸውም ነው የተባለው፡፡</p>\r\n<p>የቴክኖሎጅ ማሻሻያው በዩኒቨርሲቲው የሜካኒካል ትምህርት ክፍል መምህርና የሶስተኛ ዲግሪ ተማሪ ዮሃንስ ረጋሳ የተሰራ ሲሆን ቴክኖሎጅው አገልግሎት ላይ የዋለውን ውሃ ሰብስቦ በማጣራት ወደ አካቢው ለመልቀቅ የሚያስችል ታንክር የሚገጠምለትና እና ክብክለት የጸዳ መሆኑንም ነው መምህሩ የተናገሩት፡፡</p>\r\n<p>ቴክኖሎጂውን በአካባቢው ሰዎች በብዛት በሚኖሩባቸው ኮንዶሚኒየሞች እና ሌሎች አከባቢዎች ለማስፋፋት ፍላጎት ያላቸው መምህር ዮሃንስ ይህን ለማደረግ ግን የፋይናንስ ድጋፍ እንደደሚያስፈልጋቸው አስረድተዋል፡፡<br>መምህር ዮሃንስ እነዚህ ስራዎችን ወደ ተግባር ለመቀየር ከኪሳቸው ገንዘብ ወጭ በማድረግ የመስሪያ መሳሪዎችን መግዛታቸውንም ጠቁመዋል፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '53489cc7ef47e8f9972275542416a5fa.jpg', '', '', 0, 0, 1, 0, 0, 0, 0, '1584962009', '2020-03-23 11:13:29', '2373362009', 1, 1),
(56, 3, 'ዩኒቨርሲቲው የኮሮና ቫይረስ ወረርሽኝን ለመከላከል በዛሬው ዕለት ተጨማሪ ውሳኔዎች አስተላልፏል', '<p>ዩኒቨርሲቲው የኮሮና ቫይረስ ወረርሽኝን ለመከላከል በዛሬው ዕለት ተጨማሪ ውሳኔዎች አስተላልፏል፡፡ በዚሁ መሰረት:-</p>\r\n<p>1ኛ. የዩኒቨርሲቲው ቋሚና ጊዜያዊ ሰራተኞች ከተመረጡ የጤና ባለሙያዎች፣ የምድር ግቢ ሠራተኞች፣ የምግብ ቤት ሰራተኞች፣ የካፍቴርያ ሰራተኞች እና የጽዳት ሰራተኞች በተዘጋጀላቸው ማረፍያ(መኝታ) ክፍል እየተጠቀሙ ተማሪዎችን እንዲያገለግሉ ውሳኔ ተላልፏል። ሌሎች ከ6 ሺህ የሚበልጡ የተቋሙ ሰራተኞች የቫይረሱን ስርጭት ለመከላከልና ለመቆጣጠር ሲባል ላልተወሰነ ጊዜ በቤታቸው እንዲቆዩ ተወስኗል።</p>\r\n<p>2ኛ.ማንኛውም ተማሪ ከዩኒቨርሲቲው ቅጥር ግቢ ሳይወጣ ተጨማሪ ማስፋፍያ ተደርጎላቸው በተቋቋሙ ካፍቴርያዎች፣ ሱቆች፣ ጸጉር ቤቶች እና መሰል መገልገያ ቤቶች እየተጠቀመ እራሱን ከቫይረሱ እንዲጠብቅ ውሳኔ ተሰጥቷል።</p>\r\n<p>3ኛ.በተለያዩ ምክንያቶች ተቋሙን ለቅቀው የሄዱ ተማሪዎች ዩኒቨርሲቲው በውስጥ ማስታወቂያ መመለሻቸውን እስከሚያሳውቅበት ጊዜ ባሉበት ራሳቸውን እየጠበቁ እንዲቆዩ ውሳኔ ተላልፏል።</p>\r\n<p>4ኛ.ማንኛውም ተማሪ ማምህራኖቹ በኢንተርኔት በመታገዝ የሚሰጡ ትምህርቶችን በመከታተል፤ በተለያዩ ቦታወች በተዘጋጁ መጸዳጃዎች በመጠቀም ራሱንም ሆነ ሌሎችን ከቫይረሱ እንዲጠብቅ የጥንቃቄ መልእክት ተላልፏል።</p>\r\n<p>5ኛ.ከዩኒቨርሲቲው እውቅና ውጭ ወደ ቤተሰብ የሄዱ ተማሪዎችን በተመለከተ፤ ተማሪዎቹ በማንኛውም ሁኔታ ተመልሰው መጥተው ተቋሙን መቀላቀል እንደማይች ተወስኗል።</p>\r\n<p>6ኛ. የተማሪዎች ሕብረት አደረጃጀት በተለያዩ መልኩ ተማሪዎችን በጥንቃቄ ለማገልገል እንዲቻል በተዋቀሩ አደረጃጀቶች በንቃት በመሳተፍ የዜግነት ግዴታቸድን በኃላፊነት መንፈስ እንዲወጡም ተወስኗል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, 'cb9f1c89307f102541141eb67b672d83.jpg', '', '', 0, 0, 1, 0, 0, 0, 0, '1584962338', '2020-03-23 11:18:58', '2373362338', 1, 1),
(57, 3, 'ጠ/ሚር ዐብይ አህመድ የሚከተሉት እርምጃዎች እንደሚተገበሩ ዛሬ ይፋ አድርገዋል', '<p>ጠ/ሚር ዐብይ አህመድ የሚከተሉት እርምጃዎች እንደሚተገበሩ ዛሬ ይፋ አድርገዋል:</p>\r\n<p>1. ከዛሬ መጋቢት 14 ቀን አንስቶ የደህንነት ዘርፉ በቁጥር የበዛ ሰው የሚሳተፍባቸውን ስብሰባዎች የሚያስቆም እና ማሕበራዊ ርቀትን መጠበቅን የሚያስተገብር ይሆናል።</p>\r\n<p>2. የፖለቲካ ፓርቲዎችን ጨምሮ የመንግሥት ተቋማት ርቀትን ተፈጻሚ ማድረግ እና ስብሰባን ሲያካሂዱ ቫይረሱን የመከላከል ቅድመ ጥንቃቄዎችን ተፈጻሚ ማድረግ አለባቸው።</p>\r\n<p>3. የመንግሥት ተቋማት የተቀጣሪዎቻቸውን ሁኔታ በማጣራት እንደየሁኔታው አንዳንዶች በቤታቸው ሆነው የሚሰሩበትን መንገድ ማመቻቸት።</p>\r\n<p>4. የሕዝብ መጓጓዣ አገልግሎት ሰጪዎች አጨናንቆ ተሳፋሪዎችን መጫን የማይችሉ ሲሆን ይህን ማድረጋቸው በትራፊክ ፖሊስ እና በበጎ ፈቃደኞች አማካኝነት ቁጥጥር የሚደረግበት ይሆናል።</p>\r\n<p>5. ብሔራዊ የመከላከያ ሠራዊት እና ፖሊስ ውስጣዊ ቅድመ ዝግጀት በማካሄድ በሀገር አቀፍ ደረጃ የቫይረሱን ስርጭት የመከላከል ሥራን ለማስፈጸም መዘጋጀት።</p>\r\n<p>6. በተጠቃሚው ማኅበረሰብ ላይ ሕገ ወጥ የዋጋ ጭማሪን የሚያደርጉ ተቋማት ላይ የሚወሰዱ እርምጃዎች የሚቀጥሉ ይሆናል።</p>\r\n<p>7. መገናኛ ብዙሀን በትኩረት በየደረጃው ግንዛቤን የማሳደግ ሚና መጫወት ይጠበቅባቸዋል።</p>\r\n<p>8. ብሔራዊ የመከላከያ ሠራዊት በድንበር አካባቢ የሚደረጉ እንቅስቃሴዎችን በሙሉ ይገታል። ይህ እርምጃ ወደ ሀገሪቱ የሚገቡ ሸቀጦችና አስፈላጊ መገልገያዎችን አይጨምርም።</p>\r\n<p>በተጨማሪም ቫይረሱ በፍጥነት ቢዛመት ክልሎች ለይቶ ማቆያና ማከሚያ እንዲሁም የሕክምና ባለሙያዎቻቸውን እያዘጋጁ መሆኑን ገልጸዋል። አክለውም፣ ፌደራል መንግሥት የኮቪድ19ን የመከላከል ሥራን ለመሥራት 5 ቢሊየን ብር መመደቡን አስታውቀዋል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, 'c193ec65d1dcb0df46fa593973b0f2e9.jpg', '', '', 0, 0, 1, 0, 0, 0, 0, '1584963240', '2020-03-23 11:34:00', '2373363240', 1, 1),
(58, 3, 'ኢትዮጵያ ድንበሮቿን ለሰዎች ዝውውር ዝግ አደረገች!', '<p>ኢትዮጵያ ድንበሮቿን ለሰዎች ዝውውር ዝግ አደረገች!</p>\r\n<p>የኮሮና ቫይረስ ስርጭትን ለመግታት በአገሪቱ የሚገኙ ሁሉም ድንበሮች ለሰዎች ዝውውር ዝግ መደረጋቸውን ጠቅላይ ሚኒስትር ዐቢይ አህመድ አስታውቀዋል።</p>\r\n<p>ወረርሽኙን ለመከላከልም መንግስት አምስት ቢሊዮን ብር መበጀቱንም ነው ጠቅላይ ሚኒስትሩ ያስታወቁት።</p>\r\n<p>በአውሮፕላን ከውጭ በሚገቡ መንገደኞች ላይ ለ14 ቀናት ተለይው እንዲያቆዩ የሚያስገድደው ውሳኔም ከዛሬ ጀምሮ በመተግበር ላይ ነው።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '861bb6b081a9250e9f1024cd984ce863.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1584966348', '2020-03-23 12:25:48', '2373366348', 1, 1),
(59, 3, 'አርባ ምንጭ ዩኒቨርሲቲ ለተማሪዎቹ ያመቻቸው E-Learning', '<p>አርባ ምንጭ ዩኒቨርሲቲ ለተማሪዎቹ ያመቻቸው E-Learning</p>\r\n<p>በኮሮና ቫይረስ ስርጭት ስጋት ምክንያት የተቋረጠውን መደበኛው የትምህርት አሰጣጥ ሂደት በመቀየር መምህራን ኮርሱን በ online E-Course በማድረግ የመጀመሪያዎቹን ሁለት ምዕራፎች የሚያስተምሩ ይሆናል፡፡</p>\r\n<p>ከ10 የሚያዘውን የመጀመሪያ ምዘናም የሚያካሂዱ ስለሆነ ʻE-learning.amu.edu.etʼ ላይ በመግባት ኮርሶቻችሁን ለመከታተል እንድትችሉ ʻusernameʼ እና ʻpasswordʼ ከId /መታወቂያ/ እና ስማችሁ ጋር ተያይዞ የተሠራ መሆኑን ዩኒቨርሲቲው አስታውቋል፡፡</p>\r\n<p>ለምሳሌ አንዲት ተማሪ ያላት መታወቂያ RBE/113/11 Selam Tesfaye ቢሆን የተማሪዋ መረጃ እንደሚከተለው ይሞላል ( Username- rbe.113.11 , Password-selam@2020 ) የይለፍ ቃሉ ላይ የሚፃፍበት ስም መታወቂያችሁ ላይ ካለውና እና በSMIS ከምትጠቀሙት ጋር መመሳሰል የሚገባው ሲሆን በተጨማሪም ከገባችሁ በኋላ የይለፍ ቃሉን (Password) መቀየር ይቻላል፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '51279adf41359ad1e1aaea639e8915cf.jpg', '', '', 4, 0, 1, 0, 0, 0, 0, '1585053741', '2020-03-24 12:42:21', '2373453741', 1, 1),
(60, 3, 'ዩንቨርሲቲዎች ተማሪዎቻቸውን እንዲያሰናብቱ መወሰኑን የሳይንስ እና የከፍተኛ ትምህርት ሚኒስቴር አስታውቋል ሲል ኢትዮ ኤፍ ኤም ዘግቧል።', '<p>ዩንቨርሲቲዎች ተማሪዎቻቸውን እንዲያሰናብቱ መወሰኑን የሳይንስ እና የከፍተኛ ትምህርት ሚኒስቴር አስታውቋል ሲል ኢትዮ ኤፍ ኤም ዘግቧል።</p>\r\n<p>ዩንቨርሲቲዎች ተማሪዎቻቸውን በራሳቸው ትራንስፖርት ወጪ አጓጉዘው ጭምር ወደ የቤተሰቦቻቸው አንዲያደርሱ መወሰኑን በሚኒስቴሩ የኮሙኑኬሽን ጉዳዮች ዳይሬክተር የሆኑት አቶ ደቻሳ ጉርሙ ተናግረዋል።</p>\r\n<p>አሁን ላይም በርካታ ዩንቨርሲቲዎች ተማሪዎቻቸውን ለማጓጓዝ እንዲያመች በሚል ተማሪዎቹ አድራሻዎቻቸውን እንዲሞሉ በማድረግ ላይ መሆናቸውን ኢትዮ ኤፍ ኤም ከዩንቨርሲቲዎች አረጋግጧል።</p>\r\n<p>ምንጭ፡- ኢትዮ ኤፍ ኤም</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '56ecdaf101a097309471be54d472a207.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1585063190', '2020-03-24 15:19:50', '2373463190', 1, 1),
(61, 3, 'እንዲህም እየሆነ ነው', '<p>እንዲህም እየሆነ ነው...</p>\r\n<p>ከዚህ ቀደም ቻይና ውስጥ የኮሮና ቫይረስ ወረርሽኝ ክፉኛ ሲስፋፋ በርካታ ሀገራት በቻይና የሚማሩ ዜጎቻቸውን ሲያስወጡ ነበር ፣ በቻይና የሚማሩ ተማሪዎችም ወደቤታችን እንሂድ ሲሉ እንደነበር አይዘነጋም።</p>\r\n<p>አሁን ሁኔታዎችን ተቀይረዋል ከቻይና ውጭ በተለያዩ ሀገራት በዩኒቨርሲቲዎች ውስጥ የሚማሩ ተማሪዎች ወደ ቻይና እየተመለሱ ነው። በርካቶችም ወደ ሀገራቸው ለመመለስ ጥያቄ እያቀረቡ ነው።</p>\r\n<p>ማን ይህን ጠብቆ ነበር?</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '948862cb6254f7ffb71dcd13f50cb745.jpg', '', '', 3, 0, 1, 0, 0, 0, 0, '1585122649', '2020-03-25 07:50:49', '2373522649', 1, 1),
(62, 3, 'ከኢንጂነር ታከለ ኡማ የተላለፈ መልእክት', '<p>ከኢንጂነር ታከለ ኡማ የተላለፈ መልእክት ፦</p>\r\n<p>ለሁሉም ጊዜ አለው።</p>\r\n<p>ለመሰብሰብ ፣ በጋራ ለመዝናናት ፣ በቡድን እራት ለመገባበዝ ፣ ለሃይማኖታዊ ሥርዓት አባቶች ካስተላለፉት ትዕዛዝ ወጥቶ ባልተገባ ቁጥር እና አኳኋን አንድላይ መሰብሰብና ይቆየን የተባለ ድርጊት ማከናወን፣ በቸልተኝነትና በእንዝላልነት ለዜጎች ጥንቃቄ አለማድረግ .... ወገኖቼ ላለንበት ወቅት እነዚህ ሁሉ ጊዜያቸው አይደለም።</p>\r\n<p>ለራሳችን ለወገኖቻችን እንጠንቀቅ።</p>\r\n<p>ጥንቃቄ ይጠብቅሃል፥ ማስተዋልም ይጋርድሃል፥ ተብሎ ቀድሞ ተነገሯልና።</p>\r\n<p>መልካም ቀን ለሁላችን!!</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, '24306552a1772a0989d9057a6ba5b89f.jpg', '', '', 6, 0, 1, 0, 0, 0, 0, '1585122912', '2020-03-25 07:55:12', '2373522912', 1, 1),
(63, 3, 'በሳይንስና ከፍተኛ ትምህርት ሚኒስቴር የሚከተሉት አቅጣጫዎች ተሰጥተዋል', '<p>በሳይንስና ከፍተኛ ትምህርት ሚኒስቴር የሚከተሉት አቅጣጫዎች ተሰጥተዋል፡-</p>\r\n<p>• ሚኒስቴር መስሪያ ቤቱ ከፌደራል ትራንስፖርት ባለስልጣን ጋር በመተባበር ጉዞውን እንዲያስተባብር</p>\r\n<p>• ዩኒቨርስቲዎች ተማሪዎቻቸውን ወደ ዋና ዋና ከተሞች ድረስ እንዲሸኟቸው</p>\r\n<p>• ዩኒቨርስቲዎች አቅም ለሌላቸው ተማሪዎች የትራንስፖርት ወጪ ድጋፍ እንዲያደርጉ</p>\r\n<p>• ዩኒቨርስቲዎች በቀጣይ እንደአገር ሊደረግ ለሚችለው አገራዊ ጥሪ ዝግጁ ሆነው እንዲጠብቁ በተለይ የህክምና ተማሪዎች ያሏቸው ዩኒቨርስቲዎች ዝግጁ ሆነው እንዲጠብቁ፤ በተጨማሪም የትምህርት ተቋማቱ ባሉበት ክልል ለሚደረግላቸው ማንኛውም ጥሪ መድረስ እንዲችሉ ዝግጅታቸውን አጠናክረው እንዲቀጥሉ</p>\r\n<p>• እጅግ ከዓቅም በላይ በሆነ ምክንያት ከዩኒቨርስቲዎች ወጥተው መሄድ ለማይችሉ ተማሪዎች ዩኒቨርስቲዎች እንደየራሳቸው ተጨባጭ ሁኔታ የምግብ ቤት ሠራተኞችን አስገብተው እንዲያስተናግዱ እና</p>\r\n<p>• በጉዞ ወቅት መኪኖችን ከማፅዳት ጀምሮ ከፍተኛ ጥንቃቄ እንዲኖርና ዩኒቨርስቲዎች በቅንጅት እንዲሰሩ አቅጣጫ ተሰጥቷል፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, 'd56caf26833bfd3373f35cec22e75f23.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1585130476', '2020-03-25 10:01:16', '2373530476', 1, 1),
(64, 3, 'በዩጋንዳ የ8 ወር ህፃን በኮቪድ-19 ተጠቅቷል!', '<p>በዩጋንዳ የ8 ወር ህፃን በኮቪድ-19 ተጠቅቷል!</p>\r\n<p>ዩጋንዳ ተጨማሪ 5 የኮሮና ቫይረስ [ኮቪድ-19] ተጠቂዎችን ሪፖርት አድርጋለች አጠቃላይ የቫይረሱ ተጠቂዎች ቁጥርም 14 ደርሷል። የሀገሪቱ ጤና ሚኒስቴር ከቫይረሱ ተጠቂዎች መካከል የ8 ወር ህፃን እንደሚገኝበት ገልጿል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, 'b2e1aa9cd3112616cf4889f12e77a4ab.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1585142713', '2020-03-25 13:25:13', '2373542713', 1, 1),
(65, 3, 'ኮሮና ቫይረስን ምርመራ ውጤት በ15 ደቂቃ የሚነግር መሳርያ በብሪታንያ ሊከፋፈል ነው', '<p>ኮሮና ቫይረስን ምርመራ ውጤት በ15 ደቂቃ የሚነግር መሳርያ በብሪታንያ ሊከፋፈል ነው</p>\r\n<p>ብሪታንያ ሰዎች ከቤታቸው ሆነው ደማቸውን ብልቃጥ ላይ ጠብ አርገው ኮሮና ቫይረስ በእራሳቸው የሚመረምሩበት ውጤቱንም በ15 ደቂቃ የሚያውቁበት የምርመራ መሳርያ ለገበያ በቅርብ ሳምንት ለማቅረብ እየሰራው ነው ብላለች መሳርያውም ለህዝቡ በስፋት ይሰራጫል ሲል የእንግሊዝ ህብረተሰብ ጤና ዳይሬክተር ነግረውኛል ሲል ኢንዲፔንዳንት ጋዜጣ ፅፏል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '2db47f272d5d41a87ae3ef577f671719.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1585215885', '2020-03-26 09:44:45', '2373615885', 1, 1),
(66, 3, 'በስፔን በኮሮና ቫይረስ ምክንያት የሞቱ ሰዎች ቁጥር ከቻይና መብለጡ ተነገረ።', '<p>????COVID19‼️</p>\r\n<p>በስፔን በኮሮና ቫይረስ ምክንያት የሞቱ ሰዎች ቁጥር ከቻይና መብለጡ ተነገረ።</p>\r\n<p>የስፔን ጤና ጥበቃ ሚንስቴር ከደቂቃዎች በፊት ባወጣው አሃዝ መሠረት የሞቱ ሰዎች ቁጥር 3434 ደርሷል።ባለፉት 24 ሰዓታት በስፔን በቫይረሱ የሞቱ ሰዎች ቁጥርን 738 መሆኑም ተነግሯል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'c4766fa9ee0a062351f4f0de1ec508e0.jpg', '', '', 0, 0, 1, 0, 0, 0, 0, '1585216049', '2020-03-26 09:47:29', '2373616049', 1, 1),
(67, 3, 'የእንግሊዙ ልዑል በኮሮናቫይረስ ተያዙ!!', '<p>የእንግሊዙ ልዑል በኮሮናቫይረስ ተያዙ!!</p>\r\n<p>የ71 ዓመቱ ልዑል ቻርልስ በኮሮናቫይረስ መያዛቸው ተገለጠ።የእንግሊዙ ዘውድ ወራሽ የሆኑት ልዑል ቻርልስ በኮሮናቫይረስ መያዛቸውንና መጠነኛ ምልክት እንደታየባቸው ከቤተ መንግሥቱ የወጣው መረጃ ያስረዳል።</p>\r\n<p>ባለቤታቸውም ምርመራ የተደረገላቸው ቢሆንም ከቫይረሱ ነፃ ሆነው ተገኝተዋል።ልዑሉ ቫይረሱ ከማን እንደያዛቸው እንደማይታወቅና ከቅርብ ሳምንታት ወዲህ በርካታ ኃላፊነቶችን ሲወጡ እንደነበር ተገልጿል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'f5e1acd994755a4a9d7cf6e9ece4b6ba.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1585216238', '2020-03-26 09:50:38', '2373616238', 1, 1),
(68, 3, 'ዶክተር ሊያ ታደሰ', '<p>ዶክተር ሊያ ታደሰ፦</p>\r\n<p>\"የኮሮና ቫይረስ ሥርጭትን ለመግታት የሚደረገውን ጥረት ለማገዝ የኢንፎርሜሽን መረብ ደህንነት ኤጀንሲ ባዘጋጀው የኢትዮጵያ የተቀናጀ የኮሮና ቫይረስ (ኮቪድ19) መከታተያና መቆጣጠሪያ መረብ ሲስተም ላይ በትናንትናው እለት በሀገራችን የኮሮና ቫይረስ የተገኘባቸው ሰዎች ቁጥር 20 ተብሎ የተጠቀሰው በስህተት መሆኑን እያሳወቅን በአሁኑ ጊዜ በኢትዮጵያ የኮሮና ቫይረስ የተገኘባቸው ሰዎች ቁጥር 12 መሆኑን እናረገግጣለን።\"</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, 'bb57bcad9d9d972e52d40130cd7ffe72.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1585218481', '2020-03-26 10:28:01', '2373618481', 1, 1),
(69, 3, 'የኮቪድ-19 በሽታን አስመልክቶ ጥቆማ ለመስጠት', '<p>የኮቪድ-19 በሽታን አስመልክቶ ጥቆማ ለመስጠት፦</p>\r\n<p>ለኦሮሚያ ክልል - 6955<br>ለትግራይ ክልል - 6244<br>ለአማራ ክልል - 6981<br>ለሱማሌ ክልል - 6599<br>ለድሬዳዋ ከተማ - 6407<br>ለደቡብ ክልል - 6929</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '317809455513320e53eb9c439d0ab96b.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1585219493', '2020-03-26 10:44:53', '2373619493', 1, 1),
(70, 3, 'የኮሮና ቫይረስ ስርጭትን ለመግታት እንዲረዳ ራይድ', '<p>የኮሮና ቫይረስ ስርጭትን ለመግታት እንዲረዳ ራይድ ለትራፊክ ፖሊሶችና ለታክሲ አሽከርካሪዎች ጭንብሎችን፣ ጓንቶችና ሳኒታይዘሮችን አከፋፍሏል!</p>\r\n<p>የድርጅቱ ባለቤት ወ/ሪት ሳምራዊት ፍቅሩ እንደተናገረችው \"ችግሩ እንደ ሃገር የተጋረጠብን ነው ስለዚህ ከራሳችን አሽከርካሪዎች ውጪ ላሉ ለላዳ ታክሲ አሽከርካሪዎች፣ ለቢጫ ታክሲዎችና ለትራፊክ ፖሊስ አባላትም ሰጥተናል\" ብላላለች። በሌሎች ከተሞችም ተመሳሳይ ድጋፍ በመጪው ቅዳሜ እንደሚደረግ ገልፃለች።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '087f1ad9071533dbed7f8686d7ee8bc2.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1585221765', '2020-03-26 11:22:45', '2373621765', 1, 1),
(74, 3, 'ኮሮና ቫይረስ ለተራራ ጎሪላዎች ሕይወት አስጊ ሆኗል!', '<p>ኮሮና ቫይረስ ለተራራ ጎሪላዎች ሕይወት አስጊ ሆኗል!</p>\r\n<p>የኮሮና ቫይረስ አስጊነት ተከትሎ የኮንጎ ዲሞክራሲያዊት ሪፐብሊክ ቨሩንጋ ብሔራዊ ፓርኳን እስከ ወርኃ ጁን ለቱሪስት ዘግታለች።</p>\r\n<p>ሩዋንዳም በተመሳሳይ ሶስት ብሄራዊ ፓርኮችን ለቱሪስቶች እንዲሁም ለጥናት ስራዎች ዘግታለች። ኡጋንዳ ግን እንደ ሩዋንዳ እና ዲሞክራቲክ ሪፐብሊክ ኮንጎ ተመሳሳይ እርምጃ አልወሰደችም።</p>\r\n<p>በኡጋንዳ ፣ ሩዋንዳና ኮንጎ ጥበቃ በሚደረግላቸው ሥፍራዎች የሚገኙት የተራራ ጎሪላዎቹ ቁጥር ከ1,000 ያልበለጠ ነው።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '753bb83356c091180bbe222b81dc2548.jpg', '', '', 2, 0, 1, 0, 0, 0, 0, '1585226378', '2020-03-26 12:39:38', '2373626378', 1, 1),
(75, 3, 'የአሜሪካ ኤምባሲ ላልተወሰነ ጊዜ ተዘጋ!', '<p>የአሜሪካ ኤምባሲ ላልተወሰነ ጊዜ ተዘጋ!</p>\r\n<p>በአዲስ አበባ የሚገኘው የአሜሪካ ኤምባሲ በኮሮናቫይረስ ስርጭት ምክንያት ላልተወሰ ጊዜ ዝግ መደረጉን ቢቢሲ ዘግቧል።</p>\r\n<p>ኤምባሲው ዛሬ ባወጣው መግለጫ ከቫይረሱ ስርጭት እና የኢትዮጵያ መንግሥት ስርጩቱን ለመግታት ከሚያደርገው ጥረት አንጻር ኤምባሲውን በጊዜያዊነት መዝጋት አስፈልጓል ብሏል።</p>\r\n<p>ኤምባሲው ለዜጎቹ ጭምር ያደረግ የነበረውን የፓስፖርት እድሳት፣ ከአገር ውጪ የወሊድ እና የሞት ምዝገባን ጨምሮ ሌሎች አገልግሎቶችን እንደማይሰጥ አስታውቋል።</p>\r\n<p>ምንጭ፦ ቢቢሲ</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '5568a4255b4fff1b4e018933749fba94.jpg', '', '', 3, 0, 1, 0, 0, 0, 0, '1585231602', '2020-03-26 14:06:42', '2373631602', 1, 1),
(76, 3, 'ይህ ፎቶ ሚሊኒየም አዳራሽ ነው ?', '<p>ይህ ፎቶ ሚሊኒየም አዳራሽ ነው ?</p>\r\n<p>በእርግጥ የጤና ሚኒስቴር \'ሚሊኒየም አዳራሽን\' የጤና አገልግሎት መስጫ አድርጎ ለመጠቀም ዝግጅት እየተደረገ እንደሆነ ገልጿል። ነገር ግን ከላይ የምትመለከቱት ፎቶ ከስፔን የተወሰደ እንጂ አሁን በሚሊኒየም አዳራሽ ያለውን ገፅታ የሚያስይ አይደለም።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '30f1f01c33fdfd66aeaadd6846053a6e.jpg', '', '', 4, 0, 1, 0, 0, 0, 0, '1585232625', '2020-03-26 14:23:45', '2373632625', 1, 1),
(77, 3, 'አዲስ አበባ ዩኒቨርሲቲ በኮቪድ-19 ላይ ጥናት ለማካሄድ 10 ሚሊየን ብር መደበ', '<p>አዲስ አበባ ዩኒቨርሲቲ በኮቪድ-19 ላይ ጥናት ለማካሄድ 10 ሚሊየን ብር መደበ፡፡ በዛሬው እለት በኮቪድ-19 ላይ ጥናት የሚያኪያሂድ የጥናት ቡድን የተቋቋመ ሲሆን ቡድኑ ጥናቱን ለመጀመር ይችል ዘንድ ከተመደበው አጠቃላይ ፈንድ ውስጥ አንድ ሚሊየን ብር ወጪ ሆኖ ተሰጥቶታል፡፡ </p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '60ac935876503017512aba421ec7bb62.jpg', '', '', 4, 0, 1, 0, 0, 0, 0, '1585232753', '2020-03-26 14:25:53', '2373632753', 1, 1),
(78, 3, 'በአፍሪካ በኮሮና ቫይረስ የተያዙ ሰዎች ቁጥር አንድ ሺህ ስምንት መቶ ስምንት ደረሰ', '<p>በአፍሪካ በኮሮና ቫይረስ የተያዙ ሰዎች ቁጥር አንድ ሺህ ስምንት መቶ ስምንት መድረሱን የዓለም የጤና ድርጅት የአፍሪካ ቅርንጫፍ ይፋ አድርጓል፡፡</p>\r\n<p>ባለፉት ሃያ አራት ሰዓታት በ15 ሀገራት ውስጥ ሁለት መቶ አስራ ስድስት አዲስ ታማሚዎች መመዝገባቸው ተገልጿል፡፡</p>\r\n<p>ኮሮና ቫይረስ ጊኒ ቢሳዎ እና ማሊ ለመጀመሪያ ጊዜ መግባቱ እና እያንዳንዳቸው አንድ ታማሚ ማግኘታቸውም ተገልጿል፡፡</p>\r\n<p>#WHO #AfricaCDC #etv</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '93f29a6eff0c5b165f569709706dfa68.jpg', '', '', 5, 0, 1, 0, 0, 0, 0, '1585232931', '2020-03-26 14:28:51', '2373632931', 1, 1),
(80, 3, 'በአዳማ ከተማ አንድ በኮሮና ቫይረስ የተያዘ ሰው ተገኘ!', '<p>በአዳማ ከተማ አንድ በኮሮና ቫይረስ የተያዘ ሰው ተገኘ!</p>\r\n<p>በኦሮሚያ ክልል አዳማ ከተማ አንድ በኮሮና ቫይረስ የተያዘ ሰው መገኘቱን በክልሉ የኮሮና ቫይረስን ለመከላከል የተቋቋመው ግብረ ሃይል ገለጸ፡፡</p>\r\n<p>ከግለሰቡ ጋር ንክኪ የነበራቸው 24 ሰዎች ተለይተዋልም ነው የተባለው። ግብረ ሃይሉ በህብረተሰቡና በተቋማት የሚታየው ቸልተኝነት አሁንም አሳሳቢ ነው ብሏል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '57ed2f842c38cd2e54a4320044814b77.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1585299681', '2020-03-27 09:01:21', '2373699681', 1, 1),
(81, 3, 'ማስታወቂያ/ ማሳሰቢያ', '<p>ማስታወቂያ/ ማሳሰቢያ</p>\r\n<p>- እጃችሁን በውሃና በሳሙና አዘውትራችሁ ታጠቡ ወይም አልኮል ባለው የጀርም ማጽጃ /ሳኒታይዘር/ እጃችሁን አፅዱ፤</p>\r\n<p>- ሳል እና ማስነጠስ ካለባቸው ሰዎች ቢያንስ በ2 ሜትር ወይም በ2 እርምጃ ራቁ፤</p>\r\n<p>- እጃችሁን ሳይታጠቡ አይናችሁን ፣ አፋችሁን እና አፍንጫችሁን አትንኩ፤</p>\r\n<p>- ሰዎች በሚበዙባቸው ቦታዎች አትሂዱ፤</p>\r\n<p>- በእጅ መጨባበጥ አቁሙ፤</p>\r\n<p>- ማህበራዊ ርቀታችሁን ጠብቁ፤</p>\r\n<p>- አስፈላጊ ካልሆነ በቀር ከቤታችሁ አትውጡ፤</p>\r\n<p>- ወጣቶች እየተሰባሰባችሁ አትዋሉ፤</p>\r\n<p>- ወቅቱ የምንዝናናበት አይደለም ተቆጠቡ፤</p>\r\n<p>- ያልበሰሉ የእንስሳትና የአሳ ምግቦችን አትመገቡ፤</p>\r\n<p>- ከምንም በላይ የጤና ባለሞያዎችን ምክር አዳምጡ፤ ተግብሩ፤</p>\r\n<p>ረጅም እድሜን ከጤና ጋር እንመኝላችኃለን!<br>ሰላም እደሩ!</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, 'e457c60dff554913fdfe515db1e1d054.jpg', '', '', 5, 0, 1, 0, 0, 0, 0, '1585300200', '2020-03-27 09:10:00', '2373700200', 1, 1),
(82, 3, 'በኢትዮጵያ የኮቪድ-19 ተጠቂዎች 16 ደረሰዋል!', '<p>በኢትዮጵያ የኮቪድ-19 ተጠቂዎች 16 ደረሰዋል!</p>\r\n<p>የታማሚዎች ዝርዝር ሁኔታ፡-</p>\r\n<p>ታማሚ 1 ፦</p>\r\n<p>የ72 ዓመት ሞሪሸሳዊ ሲሆኑ መጋቢት 5 ቀን 2012 ዓ.ም ከኮንጎ ብራዛቪል የተመለሱ ናቸው፡፡ መጋቢት 13፣2012 ዓ.ም ወደ ጤና ተቋም የሄዱ ሲሆን ተቋሙም ለኢትዮጵያ የህብረተሰብ ጤና ኢንስቲትዩት ሪፖርት በማደረጉ በተደረገላቸው የላብራቶሪ ምርመራ በቫይረሱ መያዛቸው ተረጋግጧል፡፡ ታማሚውም በለይቶ ማከሚያ ውስጥ የህክምና ክትትል እየተደረገላቸው ይገኛል፡፡ ከዚሁ ጋር በተያያዘ ከታማሚው ጋር ግንኙነት የነበራቸው 6 ሰዎች በክትትል ላይ የሚገኙ ሲሆን ከነሱ ጋር ግንኙነት የነበራቸው ሌሎች ሰዎችን የማጣራት ሂደት እየተከናወነ ይገኛል፡፡</p>\r\n<p>ታማሚ 2፦</p>\r\n<p>የ61 ዓመት የአዳማ ከተማ ነዋሪ የሆኑ ኢትዮጵያዊ ናቸው፡፡ በተገኘው መረጃ መሠረት ግለሰቡ የውጭ የጉዞ ታሪክ ባይኖራቸውም በስራ ባህሪያቸው ምክንያት ከአንድ የውጭ ሀገር ዜጋ ጋር ግንኙነት ነበራቸዉ፡፡</p>\r\n<p>ታማሚው ግለሰብ መጋቢት 9 ቀን 2012 ዓ.ም የህመም ስሜት ሲሰማቸው ራሳቻውን አግልለው እንደቆዩና መጋቢት 16፣ 2012 ዓ.ም ወደ ጤና ተቋም የሄዱ ሲሆን ተቋሙም ሪፖርት ባደረገው መሰረት በላብራቶሪ ምርመራ በቫይረሱ መያዛቸው ተረጋግጧል፡፡ በአሁኑ ወቅት ታማሚው በለይቶ ማከሚያ ውስጥ የህክምና ክትትል እየተደረገላቸው ይገኛል፡፡ ከዚሁ ጋር በተያያዘ ከታማሚው ጋር ግንኙነት የነበራቸው 24 ሰዎች በክትትል ላይ የሚገኙ ሲሆን ከነሱ ጋር ግንኙነት የነበራቸው ሌሎች ሰዎችን የማጣራት ሂደት እየተከናወነ ይገኛል፡፡</p>\r\n<p>ታማሚ 3 ፦</p>\r\n<p>የ28 ዓመት ኢትዮጵያዊት ስትሆን የመጨረሻ ጉዞዋም መጋቢት 12፣ 2012 ዓ.ም እስራኤል ሀገር ደርሳ የተመለሰች ናት፡፡ ግለሰቧም በቀን 16፣ 2012 ዓ.ም በኢትዮጵያ የህብረተሰብ ጤና ኢንስቲትዩት<br>በተደረገላት የላብራቶሪ ምርመራ በቫይረሱ መያዙዋ ተረጋግጧል፡፡ በአሁኑ ወቅት ታማሚዋ በለይቶ ማከሚያ ውስጥ የህክምና ክትትል እየተደረገላት ይገኛል፡፡ ከታማሚዋ ጋር ግንኙነት የነበራቸው 7 ሰዎች በክትትል ላይ የሚገኙ ሲሆን ከነሱ ጋር ግንኙነት የነበራቸው ሌሎች ሰዎችን ማጣራት ሂደት<br>እየተከናወነ ይገኛል፡፡</p>\r\n<p>ታማሚ 4 ፦</p>\r\n<p>የ24 ዓመት ኢትዮጵያዊት ስትሆን የውጭ ሀገር የጉዞ ታሪክ የሌላት ቢሆንም የበሽታው ምልክት ከታየባቸው ሰዎች ጋር የነበራት ግንኙነት እየተጣራ መሆኑ እና ግለሰቧም በቀን 17፣ 2012 ዓ.ም በኢትዮጵያ የህብረተሰብ ጤና ኢንስቲትዩት በተደረገላት የላብራቶሪ ምርመራ በቫይረሱ መያዙዋ ተረጋግጧል፡ በአሁኑ ወቅት ታማሚዋ በለይቶ ማከሚያ ውስጥ የህክምና ክትትል እየተደረገላት ይገኛል፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '06e94c7985d930f9a8579676a39c859d.jpg', '', '', 3, 0, 1, 0, 0, 0, 0, '1585301052', '2020-03-27 09:24:12', '2373701052', 1, 1),
(83, 3, 'በኬንያ የመጀመሪያው የኮቪድ-19 ሞት ተመዘገበ!', '<p>በኬንያ የመጀመሪያው የኮቪድ-19 ሞት ተመዘገበ!</p>\r\n<p>የኬንያ ጤና ሚኒስቴር እንዳስታወቀው ዛሬ ከሰዓት በኮሮና ቫይረስ [ኮቪድ-19] የተጠቃ አንድ 66 ዓመት ኬንያዊ ዜጋ ህይወቱ አልፏል።</p>\r\n<p>ምንጭ፦ የኬንያ ጤና ሚኒስቴር</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '86156e43d05743fc0390118ebf2e7a96.jpg', '', '', 3, 0, 1, 0, 0, 0, 0, '1585301355', '2020-03-27 09:29:15', '2373701355', 1, 1),
(84, 3, 'በጣልያን ተጨማሪ 662 ሰዎች ሞቱ!', '<p>በጣልያን ተጨማሪ 662 ሰዎች ሞቱ!</p>\r\n<p>ጣልያን ውስጥ በ24 ሰዓት ተጨማሪ 662 ሰዎች በኮሮና ቫይረስ [ኮቪድ-19] ሞተዋል። ከትላንትናው ሪፖርትም መቀነስ አሳይቷል። አጠቃላይ የሟቾች ቁጥርም 8,165 ደርሷል። በሀገሪቱ በቫይረሱ የተጠቁ ሰዎች ቁጥርም 80,539 የደረሱ ሲሆን ከነዚህም ውስጥ 6,153 ኬዝ በ24 ሰዓት ነው የተመዘገበው።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '6174de95ebeb614aae029c6a9cba36cf.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1585301465', '2020-03-27 09:31:05', '2373701465', 1, 1),
(85, 3, 'In Iran, false belief a poison fights virus kills hundreds', '<p><br><strong>In Iran, false belief a poison fights virus kills hundreds</strong><br>TEHRAN, Iran (AP) — Standing over the still body of an intubated 5-year-old boy wearing nothing but a plastic diaper, an Iranian health care worker in a hazmat suit and mask begged the public for...</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 4, 5, '936b1314c922d22e5ce8ec5425c8599a.jpg', 'https://apnews.com/6e04783f95139b5f87a5febe28d72015?utm_campaign=SocialFlow&utm_source=Twitter&utm_medium=AP', '', 4, 0, 1, 0, 0, 0, 0, '1585301991', '2020-03-27 09:39:51', '2373701991', 1, 1),
(86, 3, 'እባካችሁ እንቅስቃሴ ቀንሱ፤ ተለመኑን!', '<p>ዛሬ ሪፖርት ከተደረጉት ኬዞች ውስጥ ታማሚ 3 እና ታማሚ 4 የ28 ዓመት እንዲሁም የ24 ዓመት ወጣቶች ናቸው። ቫይረሱ ወጣቶችን አይዝም በሚል የተሳሳተ አመለካከት የራሳችሁን እንዲሁም የምትወዷቸውን ሰዎች ህይወት አደጋ ላይ እንዳትጥሉ፤ እራሳችሁን ጠብቁ!</p>\r\n<p>እባካችሁ እንቅስቃሴ ቀንሱ፤ ተለመኑን!</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, '82b74f927384c57acecd43b20e5960cd.jpg', '', '', 3, 0, 1, 0, 0, 0, 0, '1585302237', '2020-03-27 09:43:57', '2373702237', 1, 1),
(87, 3, 'ብሄራዊ ግዳጅ!', '<p>ብሄራዊ ግዳጅ!</p>\r\n<p>ሁኔታው ተጨማሪ ድጋፍን የሚጠይቅ ከሆነ ሁሉም ጡረታ የወጡ እንዲሁም በትምሕርት ላይ ያሉ የጤና ባለሙያዎች ለብሔራዊ ግዳጅ እንዲዘጋጁ ጥሪ ቀርቦላቸዋል፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, 'cbfdeeddd80c148850665b65faea5e18.jpg', '', '', 1, 0, 1, 0, 0, 0, 0, '1585304820', '2020-03-27 10:27:00', '2373704820', 1, 1),
(88, 3, 'ተጨማሪ እርምጃዎች፦', '<p>ተጨማሪ እርምጃዎች፦</p>\r\n<p>1. ከዛሬ ከሰዓት ጀምሮ ወደ አዲስ አበባ የሚደርሱ እና ለለይቶ መከታተያ በተዘጋጁት ሆቴሎች ለመቆየት አቅም የሌላቸው መንገደኞች ወደ አዳማ ሳይንስ እና ቴክኖሎጂ ዩኒቨርስቲ ተዛውረው ከውጪ ወደ ኢትዮጵያ የሚመጡ መንገደኞች ለ15 ቀናት ተለይተው እንዲቆዩ የወጣውን መመሪያ ተግባራዊ የሚያደርጉ ይሆናል፡፡</p>\r\n<p>2. ከዛሬ አንስቶ ለተጨማሪ ሁለት ሳምንታት ከፍተኛ የትምሕርት ተቋማትን ጨምሮ፣ ትምህርት ቤቶች ተዘግተው የሚቆዩ ይሆናል፡፡</p>\r\n<p>3. በገበያ ስፍራዎች እና በሀይማኖት ተቋማት ውስጥ ማኅበራዊ ርቀትን መጠበቅ በጥብቅ ተፈጻሚ ሊደረጉ ያስፈልጋል፡፡ የፌደራል መንግሥት አስከፊ ብሔራዊ አደጋ በሚከሰት ጊዜ ሀይማኖታዊ ስብሰባዎች እንዲቋረጡ የማድረግ ሕገመንግሥታዊ መብት አለው፡፡ ሆኖም፣ በሕገ መንግሥቱ የተደነገጉትን እርምጃዎች ተግባራዊ ከመደረጋቸው በፊት፣ ዜጎች የማኅበራዊ ርቀት መመሪያን ተግባራዊ እንዲያደርጉ በድጋሚ ጥሪውን ያቀርባል፡፡</p>\r\n<p>4. ሁኔታው ተጨማሪ ድጋፍን የሚጠይቅ ከሆነ ሁሉም ጡረታ የወጡ እንዲሁም በትምሕርት ላይ ያሉ የሕክምና ባለሙያዎች ለብሔራዊ ግዳጅ እንዲዘጋጁ ጥሪ ቀርቦላቸዋል፡፡</p>\r\n<p>5. የተለያየ መጠን እና ዓይነት ያላቸው መገልገያዎችን የያዙ ከ134 በላይ ተቋማት ለለይቶ መከታተያ፣ ለይቶ ማቆያ እና ሕክምና እንዲሆኑ ተለይተዋል፡፡ ስለዚህ፣ መንግሥት ሁሉም ዜጎች እንደ አልጋዎች፣ ፍራሾች፣ አንሶላዎች፣ የመተንፈሻ ቬንትሌተሮች እና ሌሎች ከሕክምና ጋር ተያያዥነት ያላቸው እና የሌላቸው መገልገያዎችን ለማሰባሰብ በመሥራት ላይ የሚገኘውን የብሔራዊ ድጋፍ አሰባሳቢ ኮሚቴ ጥረት እንዲደግፉ ጥሪ ያቀርባል፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 1, 1, 5, 'c53d965c6cdf44725c958fff652ae0c8.jpg', '', '', 8, 0, 1, 0, 0, 0, 0, '1585305095', '2020-03-27 10:31:35', '2373705095', 1, 1),
(89, 3, 'የብሪታኒያው ጠቅላይ ሚኒስትር ቦሪስ ጆንሰን በኮሮና ቫይረስ [COVID-19] መጠቃታቸው ተረጋገጠ።', '<p>የብሪታኒያው ጠቅላይ ሚኒስትር ቦሪስ ጆንሰን በኮሮና ቫይረስ [COVID-19] መጠቃታቸው ተረጋገጠ። </p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'de6c9d00905813855f58a2171d5fac63.jpg', '', '', 8, 0, 1, 0, 0, 0, 0, '1585308928', '2020-03-27 11:35:28', '2373708928', 1, 1),
(90, 3, 'በስፔን በ24 ሰዓት ውስጥ 769 ሰዎች በኮሮና ቫይረስ መሞታቸው ተሰምቷል። አጠቃላይ የሟቾች ቁጥር 4,858 ደርሷል።', '<p>በስፔን በ24 ሰዓት ውስጥ 769 ሰዎች በኮሮና ቫይረስ መሞታቸው ተሰምቷል። አጠቃላይ የሟቾች ቁጥር 4,858 ደርሷል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, 'd901aa3b14b790a3a591cf54afa83cde.jpg', '', '', 12, 0, 1, 0, 0, 0, 0, '1585309037', '2020-03-27 11:37:17', '2373709037', 1, 1),
(91, 3, 'ፌደራል ፖሊስ ከዛሬ ጀምሮ እርምጃ እወስዳለሁ ብሏል!', '<p>ፌደራል ፖሊስ ከዛሬ ጀምሮ እርምጃ እወስዳለሁ ብሏል!</p>\r\n<p>የኮሮና ቫይረስ ወረርሽኝ ስርጭትን ለመከላከል መንግስት ያወጣቸውን መመሪያዎች በአግባቡ በማይተገብሩ ዜጎች ላይ የፌደራል ፖሊስ ተገቢውን ህጋዊ እርምጃ ከዛሬ ጀምሮ መውሰድ እንደሚጀምር ገልጿል።</p>\r\n<p>በተጨማሪም በማኅበራዊ ሚዲያዎች ሐሰተኛ መረጃዎችን የሚያሰራጩ ግለሰቦች ላይ ከዛሬ ጀምሮ እርምጃ መውሰድ መጀመሩን አስታውቋል።</p>\r\n<p>ምንጭ፦ ኤፍ ቢ ሲ</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 8, 1, 5, '39d13d1db81731322abce2ff6b99f539.jpg', '', '', 6, 0, 1, 0, 0, 0, 0, '1585310922', '2020-03-27 12:08:42', '2373710922', 1, 1),
(92, 3, 'DO THE FIVE Help stop coronavirus', '<div class=\"WEmQFe\">\r\n<div class=\"cu62s\"><strong>1</strong>. <strong><span class=\"V4tsWe\">HANDS</span></strong><span class=\"V4tsWe\"> </span><span class=\"aeYe9b\">Wash them often</span></div>\r\n</div>\r\n<div class=\"WEmQFe\">\r\n<div class=\"cu62s\"><strong>2. <span class=\"V4tsWe\">ELBOW </span></strong><span class=\"aeYe9b\">Cough into it</span></div>\r\n</div>\r\n<div class=\"WEmQFe\">\r\n<div class=\"cu62s\"><strong>3. <span class=\"V4tsWe\">FACE </span></strong><span class=\"aeYe9b\">Don\'t touch it</span></div>\r\n</div>\r\n<div class=\"WEmQFe\">\r\n<div class=\"cu62s\"><strong>4.</strong> <strong><span class=\"V4tsWe\">SPACE </span></strong><span class=\"aeYe9b\">Keep safe distance</span></div>\r\n</div>\r\n<div class=\"WEmQFe\">\r\n<div class=\"cu62s\"><strong>5.</strong> <strong><span class=\"V4tsWe\">HOME </span></strong><span class=\"aeYe9b\">Stay if you can</span></div>\r\n</div>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '36c161d521caea4e02aa8e87e8224ee6.gif', '', '', 3, 0, 0, 0, 0, 0, 0, '1585556759', '2020-03-30 08:25:59', '2373956759', 1, 1),
(93, 3, 'አምሰቱ covid-19 መከላከያ መንገዶች', '<div class=\"WEmQFe\">\r\n<div class=\"cu62s\"><strong>1. በተደጋጋሚ</strong> <strong>እጅዎን</strong> ይታጠቡ</div>\r\n</div>\r\n<div class=\"WEmQFe\">\r\n<div class=\"cu62s\"><strong>2. በሚያሰልዎ ጊዜ</strong> በክንድዎ ይሸፈኑ</div>\r\n</div>\r\n<div class=\"WEmQFe\">\r\n<div class=\"cu62s\"><strong>3. ፊትዎን</strong> በፍፁም አይንኩ</div>\r\n</div>\r\n<div class=\"WEmQFe\">\r\n<div class=\"cu62s\"><strong>4. ማህበራዊ ርቀትዎን</strong> ይጠብቁ</div>\r\n</div>\r\n<div class=\"WEmQFe\">\r\n<div class=\"cu62s\"><strong>5. ከቤትዎ</strong> ከቻሉ አይውጡ</div>\r\n</div>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, '0a01b2ca90cd4b6d3953c889624624a9.gif', '', '', 4, 0, 0, 0, 0, 0, 0, '1585559449', '2020-03-30 09:10:49', '2373959449', 1, 1),
(95, 3, 'Novel coronavirus (2019-nCoV)', '', '', '', '', '', 'p1', 'p2', 1, 0, 1, 4, 1, 25, 4, 5, '5d4eacf86f25c72e4fc0ef57a0fe09b6.jpg', 'mOV1aBVYKGA', '04:48', 6, 0, 0, 0, 0, 0, 0, '1585561238', '2020-03-30 09:40:38', '2373961238', 1, 1),
(96, 3, 'Seven steps to prevent the spread of the virus', '', '', '', '', '', 'p1', 'p2', 1, 0, 1, 4, 1, 3, 4, 5, 'ca209a0b3cfdfd10d829d1e872286007.jpg', '8c_UJwLq8PI', '00:30', 11, 0, 0, 0, 0, 0, 0, '1585562447', '2020-03-30 10:00:47', '2373962447', 1, 1),
(97, 3, 'How to protect yourself against COVID-19', '', '', '', '', '', 'p1', 'p2', 1, 0, 1, 4, 1, 3, 4, 5, 'afb571723545ed6df6503d9f5e86c9f5.png', '1APwq1df6Mw', '01:30', 3, 0, 0, 0, 0, 0, 0, '1585563241', '2020-03-30 10:14:01', '2373963241', 1, 1),
(98, 3, 'ሊከተሉት የሚገባው የእጅ መታጠብ ስርአት', '<p>ጠ/ሚ ዶ/ር ዐቢይ አህመድ ዜጎች የኮሮናቫይረስ ስርጭትን ለመከላከል ሊከተሉት የሚገባውን የእጅ መታጠብ ሂደት አሳይተዋል</p>', '', '', '', '', 'p1', 'p2', 1, 0, 1, 4, 1, 3, 1, 5, '6b336ab7bdf291b358c795dc0eb79b3b.jpg', 'VSfwpT57w9E', '02:14', 5, 0, 0, 0, 0, 0, 0, '1585565261', '2020-03-30 10:47:41', '2373965261', 1, 1),
(99, 3, 'ሊከተሉት የሚገባው የእጅ መታጠብ ስርአት', '<p>ጠ/ሚ ዶ/ር ዐቢይ አህመድ ዜጎች የኮሮናቫይረስ ስርጭትን ለመከላከል ሊከተሉት የሚገባውን የእጅ መታጠብ ሂደት አሳይተዋል</p>', '', '', '', '', 'p1', 'p2', 1, 0, 1, 4, 1, 7, 1, 5, '2a04dd87ab2db8749304ec3b20a608b6.jpg', 'VSfwpT57w9E', '02:14', 2, 0, 0, 0, 0, 0, 0, '1585566382', '2020-03-30 11:06:22', '2373966382', 1, 1),
(100, 3, 'ኮሮና ቫይረስን አስመልክቶ ጥቆማ ለመስጠት እና መረጃ ለማግኘት', '', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '8982cf66660ab5c88ea2a2fcd8bf7921.jpg', '', '', 1, 0, 0, 0, 0, 0, 0, '1585567151', '2020-03-30 11:19:11', '2373967151', 1, 1),
(101, 3, 'በኢትዮጺያ በኮሮና ቫይረስ ተጠቂ ቁጥር 5 ጨመረ', '<p>በኢትዮጺያ በኮሮና ቫይረስ ተጠቂ ቁጥር 21 ደረሰ</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 7, 1, 5, '1e4e1631b1623205ac1528c3ec1d04b9.jpg', '', '', 2, 0, 0, 0, 0, 0, 0, '1585567555', '2020-03-30 11:25:55', '2373967555', 1, 1),
(103, 3, 'Tips for prevention 1', '<p><strong>Follow the guidelines to help protect yourself from catching, carrying and passing on Covid-19.</strong></p>\r\n<ol>\r\n<li><strong>Wash your hands frequently and carefully</strong></li>\r\n</ol>\r\n<p>Use warm water and soap and rub your hands for at least 20 seconds. Work the lather to your wrists, between your fingers, and under your fingernails.</p>\r\n<p>You can also use an antibacterial and antiviral soap. Use hand sanitizer when you can not wash your hands properly. Rewash your hands several times a day, especially after touching anything including your phone or laptop.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '971fdc37cddf0005e085a06785775b9e.jpg', '', '', 6, 0, 0, 0, 0, 0, 0, '1585574842', '2020-03-30 13:27:22', '2373974842', 1, 1);
INSERT INTO `content_table` (`content_id`, `content_user_id`, `content_title`, `content_description`, `content_phone`, `content_email`, `content_latitude`, `content_longitude`, `content_property1`, `content_property2`, `content_orientation`, `content_price`, `content_type_id`, `content_player_type_id`, `content_access`, `content_category_id`, `content_language_id`, `content_user_role_id`, `content_image`, `content_url`, `content_duration`, `content_viewed`, `content_liked`, `content_featured`, `content_special`, `content_cached`, `content_rating_average`, `content_rating_count`, `content_publish_date`, `content_publish_timestamp`, `content_expired_date`, `content_order`, `content_status`) VALUES
(104, 3, 'Tips for prevention 2', '<ol start=\"2\">\r\n<li><strong> Avoid touching your face</strong></li>\r\n</ol>\r\n<p>Covid-19  can live on hard surfaces for up to 72 hours. You can get the virus on your hands if you touch a surface like a doorknob or your cell phone.</p>\r\n<p>Avoid touching any part of your face or head including your mouth, nose, and eyes. Also avoid biting your fingernails. This can give Covid-19  a chance to go from your hands into your body.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '7c44d3414f0a96abb1b5868a7d9211bf.jpg', '', '', 3, 0, 0, 0, 0, 0, 0, '1585575600', '2020-03-30 13:40:00', '2373975600', 1, 1),
(105, 3, 'Tips for prevention 3', '<ol start=\"3\">\r\n<li><strong> Stop shaking hands and hugging people — for now</strong></li>\r\n</ol>\r\n<p>Similarly, avoid touching other people. Skin to skin contact can pass Covid-19   from one person to another.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '21d0c02d0e99e597852c11934a0a4b7a.jpg', '', '', 2, 0, 0, 0, 0, 0, 0, '1585575747', '2020-03-30 13:42:27', '2373975747', 1, 1),
(106, 3, 'Tips for prevention 4', '<ol start=\"4\">\r\n<li><strong> Don’t share personal items</strong></li>\r\n</ol>\r\n<p>Do not share personal items like phones, makeup, or pen. It’s also important not to share eating utensils and straws. Teach children to recognize their reusable cup, straw, and other dishes for their own use only.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '643c0ab7b86f59ecf379dd34edded5ff.jpg', '', '', 1, 0, 0, 0, 0, 0, 0, '1585575839', '2020-03-30 13:43:59', '2373975839', 1, 1),
(107, 3, 'Tips for prevention 5', '<ol start=\"5\">\r\n<li><strong> Cover your mouth and nose when you cough and sneeze</strong></li>\r\n</ol>\r\n<p>Covid-19 is found in high amounts in the nose and mouth. This means it can be carried by air droplets to other people when you cough or sneeze. It can also land on hard surfaces and stay there for up to 3 days.</p>\r\n<p>Use a tissue or sneeze into your elbow to keep your hands as clean as possible. Wash your hands carefully after you sneeze or cough, regardless.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '73821c004976bee9c4c71cdb7a4534dc.jpg', '', '', 3, 0, 0, 0, 0, 0, 0, '1585575939', '2020-03-30 13:45:39', '2373975939', 1, 1),
(108, 3, 'Tips for prevention 6', '<ol start=\"6\">\r\n<li><strong> Clean and disinfect surfaces</strong></li>\r\n</ol>\r\n<p>Use alcohol-based disinfectants to clean hard surfaces in your home like countertops, door handles, furniture, and toys. Also clean your phone, laptop, and anything else you use regularly several times a day.</p>\r\n<p>Disinfect areas after you bring groceries or packages into your home. Use white vinegar or hydrogen peroxide solutions for general cleaning in between disinfecting surfaces.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '53ac0992d04e29178777001971ab4cc5.jpg', '', '', 2, 0, 0, 0, 0, 0, 0, '1585576096', '2020-03-30 13:48:16', '2373976096', 1, 1),
(109, 3, 'Tips for prevention 7', '<ol start=\"7\">\r\n<li><strong> Take social distancing seriously</strong></li>\r\n</ol>\r\n<p>If the person is carrying the virus, it will be found in high amounts in his spit (sputum). This can happen even if he do not have symptoms.</p>\r\n<p>social distancing means staying home and working remotely when possible. If you must go out for necessities, keep a distance of 6 feet from other people. He can transmit the virus by speaking to someone in close contact to him.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '1f88302d96d97e4961ea1dc2eda5959f.jpg', '', '', 2, 0, 0, 0, 0, 0, 0, '1585576187', '2020-03-30 13:49:47', '2373976187', 1, 1),
(110, 3, 'Tips for prevention 8', '<ol start=\"8\">\r\n<li><strong> Do not gather in groups</strong></li>\r\n</ol>\r\n<p>Being in a group or gathering makes it more likely that you will be in close contact with someone. This includes avoiding all religious places of worship, as you may have to sit or stand too close to another congregant. It also includes congregating at parks or beaches.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, 'df4cb98456cce40e619d8a975e94c804.jpg', '', '', 3, 0, 0, 0, 0, 0, 0, '1585576268', '2020-03-30 13:51:08', '2373976268', 1, 1),
(111, 3, 'Tips for prevention 9', '<ol start=\"9\">\r\n<li><strong> Avoid eating or drinking in public places</strong></li>\r\n</ol>\r\n<p>Now is not the time to go out to eat. This means avoiding restaurants, coffee shops, bars, and other eateries. The virus can be transmitted through food, utensils, dishes, and cups. It may also be airborne from other people in the venue.</p>\r\n<p>You can still get delivery or takeaway food. Choose foods that are thoroughly cooked and can be reheated. High heat (at least <a href=\"https://www.medrxiv.org/content/10.1101/2020.03.12.20034231v1\">132°F/56°C</a>, according to one recent, not-yet-peer-reviewed lab study) helps to kill coronaviruses. This means it may be best to avoid cold foods from restaurants and all food from buffets and salads.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '63719b65787c87ac40a498f3ee022cd5.jpg', '', '', 2, 0, 0, 0, 0, 0, 0, '1585576363', '2020-03-30 13:52:43', '2373976363', 1, 1),
(112, 3, 'Tips for prevention 10', '<ol start=\"10\">\r\n<li><strong> Wash fresh groceries</strong></li>\r\n</ol>\r\n<p>Soak all raw, whole fruits and vegetables in a solution of food-grade hydrogen peroxide or white vinegar. Let dry before putting them away in your fridge and cupboards. You can also use vegetable antibacterial wash to clean produce. Wash your hands before and after handling fresh produce.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '4f1ca6d45b3b1546523f07a0048d0dc9.jpg', '', '', 4, 0, 0, 0, 0, 0, 0, '1585576494', '2020-03-30 13:54:54', '2373976494', 1, 1),
(113, 3, 'Tips for prevention 11', '<p><strong>Follow the guidelines to help protect yourself from catching, carrying and passing on Covid-19.</strong></p>\r\n<ol start=\"11\">\r\n<li><strong> Self-quarantine if sick</strong></li>\r\n</ol>\r\n<p>Call your doctor if you have any symptoms. Stay home until you recover. Avoid sitting, sleeping, or eating with your loved ones even if live in the same home.</p>\r\n<p>Wear a mask and wash your hands as much as possible. If you need urgent medical care, wear a mask and let them know you may have COVID-19.</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 25, 4, 5, '43f53974b18c6b33643ae03183b31447.jpg', '', '', 7, 0, 0, 0, 0, 0, 0, '1585576623', '2020-03-30 13:57:03', '2373976623', 1, 1),
(115, 3, 'Covid-19 የመከላከያ ምክሮች 1', '<p><strong>እራዎ ከመያዝ እና ማስተላለፍ ለመጠበቅ መመሪያዎቹን ይከተሉ፡፡</strong></p>\r\n<p><strong>1. እጅዎን ደጋግመው በጥንቃቄ ይታጠቡ</strong></p>\r\n<p>ውሃ እና ሳሙና ይጠቀሙ እና እጆችዎን ቢያንስ ለ 20 ሰከንዶች ይታጠቡ። የእጅ አንጓዎችን በእጅዎ ፣ በጣቶችዎ እና በጣትዎ ስር በደንብ ይታጠቡ፡፡በተጨማሪም ፀረ-ባክቴሪያ እና ፀረ-ቫይረስ ሳሙና መጠቀም ይችላሉ፡፡ እጆችዎን በትክክል መታጠብ በማይችሉበት ጊዜ የእጅ ማፅጃን ይጠቀሙ፡፡ በተለይም ስልክዎን ወይም ላፕቶፕዎን ጨምሮ ማንኛውንም ነገር ከነኩ በኋላ እጅዎን በሚገባ ይታጠቡ፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, '4e2bad0b8920a50c8f5e8470f8f9027a.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1585744556', '2020-04-01 12:35:56', '2374144556', 1, 1),
(116, 3, 'Covid-19 የመከላከያ ምክሮች 2', '<ol start=\"2\">\r\n<li><strong>ፊትዎን በፍፁም አይንኩ</strong></li>\r\n</ol>\r\n<p>COVID-19 ጠንካራ ወለል ላይ እስከ 72 ሰዓታት ድረስ መኖር ይችላል ፡፡ እንደ በሮች ወይም የሞባይል ስልክዎን ወለል ከነኩ በእጃችሁ ላይ ቫይረሱ ሊገኝ ይችላል፡፡</p>\r\n<p>አፍዎን ፣ አፍንጫዎን እና አይኖችዎን ጨምሮ ማንኛውንም የፊትዎ ወይም የጭንቅላትዎን ክፍል በፍፁም አይንኩ፡፡ እንዲሁም ጥፍሮችዎን እንዳያነክሱ ያስወግዱ። ይህ ከእጆችዎ ወደ ሰውነትዎ እንዲሄድ ለCOVID-19  እድል ይሰጣል ፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, '022d079e13b8ea9b8a865a5b78bb36d3.jpg', '', '', 1, 0, 0, 0, 0, 0, 0, '1585744627', '2020-04-01 12:37:07', '2374144627', 1, 1),
(117, 3, 'Covid-19 የመከላከያ ምክሮች 3', '<ol start=\"3\">\r\n<li><strong>ሰዎችን መጨበጥ እና ማቀፍ ያቁሙ</strong></li>\r\n</ol>\r\n<p>በተመሳሳይም ሌሎች ሰዎችን ከመንካት ይቆጠቡ፡፡ ከቆዳ ወደ ቆዳ ንኪኪ COVID-19 ከአንድ ሰው ወደ ሌላው ሊተላለፍ ይችላል፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, 'c78144c429ad71031cc9b578c0f1b3ba.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1585744742', '2020-04-01 12:39:02', '2374144742', 1, 1),
(118, 3, 'Covid-19 የመከላከያ ምክሮች 4', '<ol start=\"4\">\r\n<li><strong>የግል መገልገያ እቃዎን አያጋሩ</strong></li>\r\n</ol>\r\n<p>እንደ ስልኮች ፣ ሜካፕ ፣ ወይም እስክሪብቶ ያሉ የግል መገልገያ እቃዎችን ለሌላ ሰው አይስጡ፡፡ እንዲሁም የመመገቢያ ቁሳቁሶችን እና ዉሃ መጠጫ ፕላስቲኮችን ላለመጋራት ይሞክሩ። ምክኛቱም ቫይረሱ በእንደነዚህ አይነት ቁሳቁሶች ላይ ለረጅም ጊዜ ይቆያል፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, '8ec51f70ed0836f6d0d8391923727545.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1585745230', '2020-04-01 12:47:10', '2374145230', 1, 1),
(119, 3, 'Covid-19 የመከላከያ ምክሮች 5', '<ol start=\"5\">\r\n<li><strong>በሚያስሉ እና በሚያስነጥሱበት ጊዜ አፍ እና አፍንጫዎን ይሸፍኑ</strong></li>\r\n</ol>\r\n<p><br> COVID-19 በአፍንጫ እና በአፍ ውስጥ በከፍተኛ መጠን ይገኛል፡፡ ይህ ማለት በሚያስሉ ወይም በሚያስነጥሱበት ጊዜ ከአየር ጋር ተቀላቅሎ ሌሎች ሰዎች ሊስቡት ይችላሉ፡፡ እንዲሁም መሬት ላይ ሊወርድ እና እስከ 3 ቀናት ሊቆይ ይችላል።</p>\r\n<p>በሚያስሉ ወይም በሚያስነጥሱበት ጊዜ ሶፍት ወይም መሃረብ ይጠቀሙ ወይም እጅዎን አጥፈው ክንድዎን ይጠቀሙ። ካስነጠሱ ወይም ከሳልዎት በኋላ እጅዎን በጥንቃቄ ይታጠቡ፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, 'c6dbe1e52a6257ce812c58645fd744e4.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1585745339', '2020-04-01 12:48:59', '2374145339', 1, 1),
(120, 3, 'Covid-19 የመከላከያ ምክሮች 6', '<ol start=\"6\">\r\n<li><strong>ፅዳት</strong></li>\r\n</ol>\r\n<p>እንደ መደርደሪያዎች ፣ የበር እጀታዎች ፣ የቤት እቃዎች እና መጫወቻዎች ያሉ በቤትዎ ውስጥ ያሉ ጠንካራ እቃዎችን ለማፅዳት በአልኮል ላይ የተመሰረቱ ፀረ-ተባይ መድኃኒቶችን ይጠቀሙ፡፡ እንዲሁም ስልክዎን ፣ ላፕቶፕዎን እና በቀን ውስጥ ብዙ ጊዜ የሚጠቀሙትን ማንኛውንም ነገር በየቀኑ ያፅዱ፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, 'c3dba0c580da560b7a7b88afab6823b4.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1585745428', '2020-04-01 12:50:28', '2374145428', 1, 1),
(121, 3, 'Covid-19 የመከላከያ ምክሮች 7', '<ol start=\"7\">\r\n<li><strong>ማህበራዊ ርቀትን በቁም ነገር ይያዙ</strong></li>\r\n</ol>\r\n<p> ቫይረሱ ያለበት ሰው በአካባቢዎ ቢኖር ምንም እንኳን የበሽታውን ምልክቶች ባያሳይም በሽታው በንክኪ ወይም በትንፋሽ ይተላለፋል፡፡</p>\r\n<p>ማህበራዊ ርቀትን ማለት በሚቻልበት ጊዜ ቤት መቆየት እና በርቀት መስራት ማለት ነው ፡፡ ግዴታ መውጣት ካለብዎ ከሌሎች ሰዎች የ 2 እርምጃ ርቀት ይራቁ ፡፡ ቫይረሱ ያለበት ሰው በሚናገርበትም ጊዜ ሊያስተላልፍ ይችላል።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, '1a7e36cfd25400b9f9dde07dbc475499.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1585745533', '2020-04-01 12:52:13', '2374145533', 1, 1),
(122, 3, 'Covid-19 የመከላከያ ምክሮች 8', '<ol start=\"8\">\r\n<li><strong>በቡድን አይሰብሰቡ</strong></li>\r\n</ol>\r\n<p>በቡድን መሆን ወይም መሰብሰብ ከአንድ ሰው ጋር ቅርብ ግንኙነት የመፍጠር እድሉ ሰፊ ነው፡፡ ይህ ማለት ደግሞ ቫይረሱ ከአንድ ሰው ወደ ሌላ ሰው እንዲተላለፍ ትልቅ እድል ይፈጥራል፡፡  ይህ ሁሉንም ሃይማኖታዊ የአምልኮ ቦታዎችን ማስወገድን ያካትታል ፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, '56a0f4bfcd3ff90462b80ddb6f5b9291.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1585745630', '2020-04-01 12:53:50', '2374145630', 1, 1),
(123, 3, 'Covid-19 የመከላከያ ምክሮች 9', '<ol start=\"9\">\r\n<li><strong>በሕዝብ ቦታዎች ከመብላትና ከመጠጣት ይቆጠቡ</strong></li>\r\n</ol>\r\n<p>አሁን ለመብላት የምንወጣበት ጊዜ አይደለም፡፡ ይህ ማለት ምግብ ቤቶችን ፣ የቡና ሱቆችን ፣ ቡና ቤቶችን እና ሌሎች የምግብ አዳራሾችን ማስቀረት ማለት ነው፡፡ ቫይረሱ በምግብ ፣ በመገልገያ ፣ በመጠጫ ብርጭቆዎች እና በመመገቢያ እቃዎች ሊተላለፍ ይችላል፡፡</p>\r\n<p>በደንብ የበሰለ እና ሊሞቁ የሚችሉ ምግቦችን ይመገቡ። ከፍተኛ ሙቀት Covid-19ን ለመግደል ይረዳል (ቢያንስ <a href=\"https://www.medrxiv.org/content/10.1101/2020.03.12.20034231v1\">132°F/56°C</a>)፡፡ ይህ ማለት ምግብ ቤቶችን ፣ ቀዝቃዛ ምግብን እና ሰላጣን ማስወገድ ጥሩ ነው ማለት ነው ፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, '453646f4ce8ecb57b399ff3c25601106.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, '1585745637', '2020-04-01 12:53:57', '2374145637', 1, 1),
(124, 3, 'Covid-19 የመከላከያ ምክሮች 10', '<ol start=\"10\">\r\n<li><strong>አትክልት እና ፍራፍሬዎችን ይጠቡ</strong></li>\r\n</ol>\r\n<p> ፍራፍሬዎችን እና አትክልቶችን በነጭ ኮምጣጤ ይ ጠቡ፡፡ በማቀዝቀዣዎ እና በኩሽናዎ ውስጥ ከማስቀመጥዎ ይድርቁት፡፡ እንዲሁም አትክልቶችን ለማፅዳት የአትክልት ፀረ-ባክቴሪያን መጠቀም ይችላሉ፡፡ ፍራፍሬዎችን እና አትክልቶችን ከመያዝዎ በፊት እና በኋላ እጅዎን ይታጠቡ፡፡</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, '2821e9b43bca433f9d88554e799f480f.jpg', '', '', 1, 0, 0, 0, 0, 0, 0, '1585745827', '2020-04-01 12:57:07', '2374145827', 1, 1),
(125, 3, 'Covid-19 የመከላከያ ምክሮች 11', '<p><strong>እራዎ ከመያዝ እና ማስተላለፍ ለመጠበቅ መመሪያዎቹን ይከተሉ፡፡</strong></p>\r\n<ol start=\"11\">\r\n<li><strong>ከታመሙ ራስዎን ያግልሉ</strong></li>\r\n</ol>\r\n<p>ምንም ዓይነት የሕመም ምልክት ካለብዎ በአፋጣኝ ለሐኪምዎ ይደውሉ፡፡ እስከዚያው ድረስ ግን ቤት ይቆዩ፡፡ ምንም እንኳን በተመሳሳይ ቤት ውስጥ ቢኖሩም ቤት ውስጥ ካሉ ሰዎች ጋር ከመቀመጥ ፣ ከመተኛት ወይም ከመብላት ተቆጠብ፡፡ የአፍ እና አፍንጫ መሸፈኛ ጭምብል ይልበሱ  እጅዎን በተቻለ መጠን ቶሎቶሎ ይታጠቡ።</p>', '', '', '', '', 'p1', 'p2', 1, 0, 4, 1, 1, 3, 1, 5, '503adea4340998561991a91db60d3aec.jpg', '', '', 4, 0, 0, 0, 0, 0, 0, '1585745929', '2020-04-01 12:58:49', '2374145929', 1, 1),
(128, 3, 'How to protect yourself against COVID-19', '', '', '', '', '', 'p1', 'p2', 1, 0, 1, 4, 1, 25, 4, 5, '180dfb3b4306018867e7051f489f7de5.png', '1APwq1df6Mw', '01:30', 1, 0, 0, 0, 0, 0, 0, '1585761846', '2020-04-01 17:24:06', '2374161846', 1, 1),
(129, 3, 'Seven steps to prevent the spread of the virus', '', '', '', '', '', 'p1', 'p2', 1, 0, 1, 4, 1, 25, 4, 5, 'c26f05a9d15f383e9be0e2994e0362c0.jpg', '8c_UJwLq8PI', '00:30', 2, 0, 0, 0, 0, 0, 0, '1585761970', '2020-04-01 17:26:10', '2374161970', 1, 1);

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
(1, 'mail', 465, 'mi3-sr13.supercp.com', 'info@covid19.addistopic.com', 'VWdQZgVxVWJdYAQ0VDhUQVQ1AHpVdghgV2sOYwdpD2YDd1soBTILPAc7', 'tls', 'CoronaVirus', 'info@covid19.addistopic.com', '', 'Best Regards,<br>\r\ninfo@covid19.addistopic.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `Id` int(11) NOT NULL,
  `language_types` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`Id`, `language_types`) VALUES
(0, 'language not set'),
(1, 'Amharic'),
(2, 'Affan Oromo'),
(3, 'Tigrinya'),
(4, 'English');

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
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `Id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_notifications`
--

INSERT INTO `push_notifications` (`Id`, `title`, `message`, `url`) VALUES
(1, 'title 1', 'adsfdsfdsf', ''),
(2, 'title 1', 'adsfdsfdsf', ''),
(3, 'title 3', 'dkntፈገቸደሀሰደወሰ', 'http://addistopic.com/dashboard/Settings/push_notification'),
(4, 'test', 'This is test message', '');

-- --------------------------------------------------------

--
-- Table structure for table `report_table`
--

CREATE TABLE `report_table` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `occupation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` int(11) NOT NULL,
  `fever` int(11) NOT NULL,
  `cough` int(11) NOT NULL,
  `shortness_of_breath` int(11) NOT NULL,
  `red_eyes` int(11) NOT NULL,
  `travel_history` int(11) NOT NULL,
  `contacted_with_pt_having_ssx` int(11) NOT NULL,
  `Worked_or_visited_with_animal_market` int(11) NOT NULL,
  `worked_or_visited_HF_where_ads_cared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_table`
--

INSERT INTO `report_table` (`id`, `firstname`, `lastname`, `phone`, `city`, `area`, `sex`, `age`, `occupation`, `person`, `fever`, `cough`, `shortness_of_breath`, `red_eyes`, `travel_history`, `contacted_with_pt_having_ssx`, `Worked_or_visited_with_animal_market`, `worked_or_visited_HF_where_ads_cared`) VALUES
(2, 'ju', 'ju', 913609212, 'addis ', 'bole ', '1', 23, '', 1, 1, 0, 0, 0, 0, 0, 0, 0),
(3, 'ddd', 'dff', 555, 'gff', 'cff', '1', 554, '', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'ggh', 'yyy', 445, 'jjh', 'hhh', '2', 558, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'አአከ', 'ኘነነነ', 55888, 'ጸኸጰጨ', 'ጨአአአ', '2', 744, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'sdg', 'yhh', 5666, 'aa', 'bb', '1', 59, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'rtt', 'vgh', 913609212, 'aa', 'gg', '1', 25, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'gg', 'bh', 913609212, 'hhv', 'vff', '2', 56, '', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'kakal', 'hsbsb', 913609212, 'aa', 'bole', '1', 55, '', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'abenezer ', 'gebrewold', 912283636, 'Addis Ababa ', 'bole', '1', 27, '', 0, 1, 0, 0, 0, 1, 0, 0, 0),
(11, 'abeni', 'G', 913609212, 'addis', 'bole', '1', 76, '', 1, 0, 0, 1, 0, 0, 0, 0, 1),
(12, 'hbbh', 'jgg', 936648501, 'yhh', 'hhu', '2', 55, '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'yy', 'ff', 913609212, 'vvg', 'vbb', '1', 58, '', 0, 0, 0, 0, 1, 0, 0, 0, 0),
(14, 'kaleb', 'Giram', 913609212, 'addis ababa', 'bole', '1', 27, '', 0, 0, 0, 0, 0, 0, 1, 0, 0),
(15, 'gh', 'hg', 961181414, 'aa', 'bb', '2', 58, '', 1, 1, 0, 0, 0, 0, 0, 1, 0),
(16, 'kaleb', 'girma', 913609212, 'aa', 'bole', '1', 25, '', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(17, 'hehdh', 'hshd', 911882549, 'hdhdh', 'sbsbd', '1', 32, '', 0, 0, 0, 0, 0, 1, 0, 0, 0),
(18, '\'asrfe\'', '\'ere\'', 9, 'addis', 'asdf', '2', 563, 'asdf', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'kaleb', 'g', 913609212, 'አዲስ አበባ', 'bole', '1', 34, 'ሌላ ዘርፍ', 0, 1, 1, 1, 1, 1, 1, 1, 1),
(20, 'test', 'one', 912283636, 'አዲስ አበባ', 'bole', '1', 23, 'የእንስ ሳት ነጋጼ', 0, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'wodne', 'bool', 913609212, 'አዲስ አበባ', 'bole', '1', 56, 'የኤርፖርት ሰራተኛ', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(22, 'kaleb', 'Girma', 913609212, 'አዲስ አበባ', 'bole', '1', 22, 'የጤና ባለሞያ', 0, 1, 1, 1, 1, 1, 1, 0, 0),
(23, 'kaleb', 'girma', 913609212, 'አዲስ አበባ', 'bole', '1', 25, 'የጤና ባለሞያ', 0, 1, 1, 1, 1, 0, 0, 0, 0),
(24, 'kaleb', 'girmq', 913609212, 'አዲስ አበባ', 'bole', '1', 22, 'ሌላ ዘርፍ', 0, 1, 1, 1, 1, 1, 0, 0, 0),
(25, 'ew', 'wew', 961181414, 'አዲስ አበባ', 'ad', '1', 121, 'የጤና ባለሞያ', 0, 1, 1, 1, 1, 1, 0, 1, 0),
(26, 'test', 'test', 913609212, 'Addis Ababa', 'bole', '1', 25, 'Student', 0, 1, 1, 1, 1, 1, 1, 0, 0),
(27, 'test one', 'test last', 913609212, 'Addis Ababa', 'bole', '1', 45, 'A health professional', 1, 1, 1, 1, 1, 1, 0, 0, 1),
(28, 'kalsb', 'ndnfnf', 913609212, 'አዲስ አበባ', 'kdhdh', '1', 58, 'የጤና ባለሞያ', 0, 1, 1, 1, 1, 1, 1, 1, 0),
(29, 'gdbd', 'hdbdd', 913609212, 'አዲስ አበባ', 'jxjfn', '1', 16, 'የጤና ባለሞያ', 0, 1, 1, 1, 1, 0, 1, 0, 1),
(30, 'a', 'd', 912283636, 'አዲስ አበባ', 'b', '1', 58, 'የጤና ባለሞያ', 0, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'kaleb', 'girma', 913609212, 'አዲስ አበባ', 'bole', '1', 25, 'የጤና ባለሞያ', 0, 1, 1, 1, 1, 1, 1, 1, 1),
(32, 'try_name', 'try_last', 0, 'addis', 'bole', 'M', 111, '1', 1, 1, 0, 0, 1, 1, 0, 1, 1);

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
  `reward_coin_new_registeration` int(11) NOT NULL DEFAULT '10',
  `reward_coin_withdrawal_coin_minimum_req` int(11) NOT NULL DEFAULT '1000' COMMENT 'Minimum number of coins to withdraw from the account',
  `reward_coin_price_of_each_coin` float NOT NULL DEFAULT '0.01' COMMENT 'The price of each coin. For example 1000 coins * 0.01 = 10 USD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reward Coin Table';

--
-- Dumping data for table `reward_coin_table`
--

INSERT INTO `reward_coin_table` (`reward_coin_id`, `reward_coin_banner_ad_exp`, `reward_coin_interstitial_ad_exp`, `reward_coin_rewarded_ad_exp`, `reward_coin_native_ad_exp`, `reward_coin_play_game_exp`, `reward_coin_watching_video_exp`, `reward_coin_banner_ad_coin_req`, `reward_coin_interstitial_ad_coin_req`, `reward_coin_rewarded_ad_coin_req`, `reward_coin_native_ad_coin_req`, `reward_coin_vip_user_coin_req`, `reward_coin_banner_ad_click`, `reward_coin_interstitial_ad_click`, `reward_coin_rewarded_ad_click`, `reward_coin_native_ad_click`, `reward_coin_write_review`, `reward_coin_play_game`, `reward_coin_watching_video`, `reward_coin_referral_user`, `reward_coin_referral_friend`, `reward_coin_publish_game`, `reward_coin_new_registeration`, `reward_coin_withdrawal_coin_minimum_req`, `reward_coin_price_of_each_coin`) VALUES
(1, 21600000, 21600000, 21600, 21600, 3600, 21600000, 100000, 100000, 1000, 1000, 200000, 0, 0, 2, 2, 0, 1, 0, 0, 0, 50, 10, 100000, 0.001);

-- --------------------------------------------------------

--
-- Table structure for table `selfdiagnosed_table`
--

CREATE TABLE `selfdiagnosed_table` (
  `Id` int(11) NOT NULL,
  `received` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `selfdiagnosed_table`
--

INSERT INTO `selfdiagnosed_table` (`Id`, `received`) VALUES
(1, 'pass'),
(2, 'pass'),
(3, 'pass'),
(4, 'pass'),
(5, 'pass'),
(6, 'pass'),
(7, 'pass'),
(8, 'pass'),
(9, 'pass'),
(10, 'pass'),
(11, 'pass'),
(12, 'pass'),
(13, 'pass'),
(14, 'pass'),
(15, 'pass'),
(16, 'pass'),
(17, 'pass'),
(18, 'pass'),
(19, 'pass'),
(20, 'pass'),
(21, 'pass'),
(22, 'pass'),
(23, 'pass'),
(24, 'pass'),
(25, 'pass'),
(26, 'pass'),
(27, 'pass');

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
  `setting_emergency_call` varchar(15) NOT NULL DEFAULT '911',
  `setting_default_country` varchar(50) NOT NULL DEFAULT 'Ethiopia',
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
  `setting_mobile_verification` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0: No Need | Need To Verify ',
  `setting_email_verification` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0: No Need | Need To Verify ',
  `setting_document_verification` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0: No Need | Need To Verify '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Setting Table';

--
-- Dumping data for table `setting_table`
--

INSERT INTO `setting_table` (`setting_id`, `setting_app_name`, `setting_app_desc`, `setting_website`, `setting_email`, `setting_phone1`, `setting_phone2`, `setting_phone3`, `setting_emergency_call`, `setting_default_country`, `setting_sms_no`, `setting_address`, `setting_logo`, `setting_favicon`, `setting_version_code`, `setting_version_string`, `setting_skype`, `setting_telegram`, `setting_whatsapp`, `setting_instagram`, `setting_facebook`, `setting_twiiter`, `setting_custom1`, `setting_custom2`, `setting_one_signal_app_id`, `setting_one_signal_rest_api_key`, `setting_youtube_api_key`, `setting_text_maintenance`, `setting_site_maintenance`, `setting_android_maintenance`, `setting_ios_maintenance`, `setting_other_maintenance`, `setting_disable_registration`, `setting_checking`, `setting_pc`, `setting_mobile_verification`, `setting_email_verification`, `setting_document_verification`) VALUES
(1, 'Covid19-ET', 'New CoronaVirus Disease  statistics and reporting(COVID-19)', 'http://addistopic.com', 'kalebgirma@gmail.com', '', '', '', '911', 'Ethiopia', '', '', '3367c92b81dbb6ac1a4b020e59967165.jpg', '', 1, '1.0.0', '1', '2', '3', '4', '5', '6', '7', '8', 'UTFXbwViBz1eNgE5UDFUMAQ9ByECZ1g9UmcNN1Z8DzFfPVo.VDEMeQhhWGNTNwBtDXlVZAdhVzAFZgU2ADcPN1VhCWEDMFo2Bz4-', 'UjICFgdBVENcNAJOA2QDHwlxBEJYdAtbV3MKSQZGWAtebQwfVGkJYVU0UUcAVVBbXDABTAQFBjtSOVYEA2cJUQcjWhkGRQtpBGlaXQMQW05SMwIWB29UR1x9AkwDEgMACWA-', '1AIzaSyCCxY5_HruHuLNQBgPogey_OKj8dhjfB6w', 'We are under maintenance mode. Please try again later.', 1, 0, 1, 1, 1, 1, 1, 0, 0, 0);

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
  `slider_content_id` int(11) DEFAULT '0',
  `slider_status` tinyint(1) NOT NULL COMMENT '0: Inactive | 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='Slider Table';

--
-- Dumping data for table `slider_table`
--

INSERT INTO `slider_table` (`slider_id`, `slider_category_id`, `slider_title`, `slider_description`, `slider_url`, `slider_image`, `slider_content_id`, `slider_status`) VALUES
(1, 0, 'CoronaVirus 2019', 'CoronaVirus 2019', '', 'def77208579cdaf783f0747132316a5c.png', 1, 0);

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
  `user_role_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Active | 2: Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Role Table';

--
-- Dumping data for table `user_role_table`
--

INSERT INTO `user_role_table` (`user_role_id`, `user_type_id`, `user_role_title`, `user_role_price`, `user_role_permission`, `user_role_status`) VALUES
(1, 1, 'Super Admin', 0, 'No need to set permission for Super Admin.', 1),
(2, 1, 'Admin', 0, 'index users_list show_user add_user delete_user users_role delete_role general_settings email_settings sliders delete_slider edit_slider pages add_page delete_page edit_page users_activity categories edit_category delete_category content_list add_content edit_content delete_content push_notification admob_settings api_key', 1),
(3, 1, 'Employee', 0, 'index users_list show_user add_user delete_user users_role delete_role general_settings email_settings sliders delete_slider edit_slider pages add_page delete_page edit_page users_activity categories edit_category delete_category content_list add_content edit_content delete_content push_notification', 1),
(5, 2, 'Regular', 0, 'index', 1);

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
  `user_credit` float DEFAULT '0',
  `user_coin` int(11) NOT NULL DEFAULT '0',
  `user_type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1: Staff | 2: User | 3: Guest',
  `user_role_id` smallint(6) NOT NULL DEFAULT '5',
  `user_duration` int(11) DEFAULT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_mobile` varchar(15) DEFAULT NULL,
  `user_phone` varchar(15) DEFAULT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: Deactive | 1: Active',
  `user_reg_date` varchar(12) NOT NULL,
  `user_last_login` varchar(12) DEFAULT NULL,
  `user_device_type_id` tinyint(2) NOT NULL,
  `user_note` text,
  `user_referral` int(11) NOT NULL,
  `user_mobile_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: No| 1: Yes',
  `user_mobile_verification_code` varchar(100) DEFAULT NULL,
  `user_email_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: No| 1: Yes',
  `user_email_verification_code` varchar(100) DEFAULT NULL,
  `user_document_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: No| 1: Yes',
  `user_online` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Offline | 1: Online',
  `user_onesignal_player_id` varchar(100) NOT NULL DEFAULT 'Not set yet.',
  `user_hide_banner_ad` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Disable | 1: Enable (Hide)',
  `user_hide_interstitial_ad` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Disable | 1: Enable (Hide)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Table';

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_username`, `user_firstname`, `user_lastname`, `user_image`, `user_credit`, `user_coin`, `user_type`, `user_role_id`, `user_duration`, `user_email`, `user_password`, `user_mobile`, `user_phone`, `user_status`, `user_reg_date`, `user_last_login`, `user_device_type_id`, `user_note`, `user_referral`, `user_mobile_verified`, `user_mobile_verification_code`, `user_email_verified`, `user_email_verification_code`, `user_document_verified`, `user_online`, `user_onesignal_player_id`, `user_hide_banner_ad`, `user_hide_interstitial_ad`) VALUES
(1, 'admin', 'Super', 'Admin', '7e1ff1a1033dc605f8b2ab7a2cca5ef6.png', 0, 1, 1, 1, 0, 'kalebgirma@gmail.com', 'd34b2af38357fff854636ca678b1373c1cf732d5', '+251913609212', '', 1, '1575811526', '', 4, 'Website: www.AquilaIct.com', 0, 1, '', 1, '', 1, 0, 'Not set yet.', 0, 0),
(2, 'kzone', 'kaleb', 'Girma', 'avatar.png', 0, 0, 2, 5, NULL, 'geekytouchestech@gmail.com', 'a489d79929a17bf51f39dd50d0df734eaa000d1d', 'kzone', NULL, 1, '1584295579', NULL, 2, NULL, 0, 0, NULL, 0, 'Bm4EaFFhXzcBblVg', 0, 0, 'ecdd4fdd-a781-4772-94a5-002d2a58c6f5', 0, 0),
(3, 'AmanD', 'Aman', 'D', 'avatar.png', 0, 0, 1, 1, NULL, 'robgod5555@gmail.com', 'd21933a6ee50e4dcaa8424f85582c3f51abf6379', '911', '', 1, '1584345210', NULL, 4, '', 2, 0, NULL, 0, NULL, 0, 0, 'Not set yet.', 0, 0),
(4, 'kzone101', 'kaleb', 'gir', 'avatar.png', 0, 0, 2, 5, NULL, 'kaleb@aquilaict.com', 'd21933a6ee50e4dcaa8424f85582c3f51abf6379', 'kzone101', NULL, 1, '1584439961', NULL, 2, NULL, 0, 0, NULL, 0, 'BGQAbFNoAmgKawA4', 0, 0, 'ecdd4fdd-a781-4772-94a5-002d2a58c6f5', 0, 0),
(5, 'newaaa', NULL, NULL, 'avatar.png', 0, 0, 1, 1, NULL, 'e@email.com', 'd21933a6ee50e4dcaa8424f85582c3f51abf6379', NULL, NULL, 1, '1585307596', NULL, 4, NULL, 1, 0, NULL, 0, NULL, 0, 0, 'Not set yet.', 0, 0);

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
(1, 'Staff');

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
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`Id`);

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
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `report_table`
--
ALTER TABLE `report_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_coin_table`
--
ALTER TABLE `reward_coin_table`
  ADD PRIMARY KEY (`reward_coin_id`);

--
-- Indexes for table `selfdiagnosed_table`
--
ALTER TABLE `selfdiagnosed_table`
  ADD PRIMARY KEY (`Id`);

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
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `comment_table`
--
ALTER TABLE `comment_table`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_table`
--
ALTER TABLE `content_table`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

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
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `report_table`
--
ALTER TABLE `report_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `reward_coin_table`
--
ALTER TABLE `reward_coin_table`
  MODIFY `reward_coin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `selfdiagnosed_table`
--
ALTER TABLE `selfdiagnosed_table`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `user_role_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_type_table`
--
ALTER TABLE `user_type_table`
  MODIFY `user_type_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '1: Staff | 2: User | 3: Guest', AUTO_INCREMENT=2;

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
