-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 19, 2026 lúc 03:33 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project-tl-kr`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_stroke_data`
--

CREATE TABLE `admin_stroke_data` (
  `id` bigint(20) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` enum('FLAGGED','MISSING','PENDING','VERIFIED') DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `char_id` bigint(20) DEFAULT NULL,
  `active_public_id` varchar(255) DEFAULT NULL,
  `active_url` varchar(255) DEFAULT NULL,
  `pending_public_id` varchar(255) DEFAULT NULL,
  `pending_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_stroke_data`
--

INSERT INTO `admin_stroke_data` (`id`, `note`, `status`, `updated_at`, `char_id`, `active_public_id`, `active_url`, `pending_public_id`, `pending_url`) VALUES
(4, NULL, 'VERIFIED', '2026-11-01', 1, 'strokes/active/a_1793516860686', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1793516861/strokes/active/a_1793516860686.svg', NULL, NULL),
(6, NULL, 'VERIFIED', '2026-09-30', 2, 'strokes/active/ya_1790777808815', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790777810/strokes/active/ya_1790777808815.svg', NULL, NULL),
(7, NULL, 'VERIFIED', '2026-10-13', 4, 'strokes/active/yeo_1791898194526', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791898195/strokes/active/yeo_1791898194526.svg', NULL, NULL),
(8, NULL, 'VERIFIED', '2026-10-01', 3, 'strokes/active/eo_1790827806338', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790827807/strokes/active/eo_1790827806338.svg', NULL, NULL),
(9, NULL, 'VERIFIED', '2026-10-01', 5, 'strokes/active/o_1790827999488', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790828000/strokes/active/o_1790827999488.svg', NULL, NULL),
(10, NULL, 'VERIFIED', '2026-10-01', 6, 'strokes/active/yo_1790852446994', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852448/strokes/active/yo_1790852446994.svg', NULL, NULL),
(11, NULL, 'VERIFIED', '2026-10-13', 7, 'strokes/active/u_1791898137710', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791898138/strokes/active/u_1791898137710.svg', NULL, NULL),
(12, NULL, 'VERIFIED', '2026-10-01', 8, 'strokes/active/yu_1790852482679', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852483/strokes/active/yu_1790852482679.svg', NULL, NULL),
(13, NULL, 'VERIFIED', '2026-10-01', 9, 'strokes/active/eu_1790852506579', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852507/strokes/active/eu_1790852506579.svg', NULL, NULL),
(14, NULL, 'VERIFIED', '2026-10-01', 10, 'strokes/active/i_1790852520744', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852521/strokes/active/i_1790852520744.svg', NULL, NULL),
(15, NULL, 'VERIFIED', '2026-10-17', 11, 'strokes/active/ae_1792240768349', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1792240769/strokes/active/ae_1792240768349.svg', NULL, NULL),
(16, NULL, 'VERIFIED', '2026-10-01', 12, 'strokes/active/yae_1790852589276', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852590/strokes/active/yae_1790852589276.svg', NULL, NULL),
(17, NULL, 'VERIFIED', '2026-10-01', 13, 'strokes/active/e_1790852605945', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852606/strokes/active/e_1790852605945.svg', NULL, NULL),
(18, NULL, 'VERIFIED', '2026-10-01', 14, 'strokes/active/ye_1790852639568', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852640/strokes/active/ye_1790852639568.svg', NULL, NULL),
(19, NULL, 'VERIFIED', '2026-10-01', 15, 'strokes/active/wa_1790852658678', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852659/strokes/active/wa_1790852658678.svg', NULL, NULL),
(20, NULL, 'VERIFIED', '2026-10-01', 16, 'strokes/active/wae_1790852667108', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852668/strokes/active/wae_1790852667108.svg', NULL, NULL),
(21, NULL, 'VERIFIED', '2026-10-01', 17, 'strokes/active/oe_1790852676720', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852677/strokes/active/oe_1790852676720.svg', NULL, NULL),
(22, NULL, 'VERIFIED', '2026-10-01', 18, 'strokes/active/wo_1790852689159', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852690/strokes/active/wo_1790852689159.svg', NULL, NULL),
(23, NULL, 'VERIFIED', '2026-10-01', 19, 'strokes/active/we_1790852698629', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852699/strokes/active/we_1790852698629.svg', NULL, NULL),
(24, NULL, 'VERIFIED', '2026-10-01', 20, 'strokes/active/wi_1790852715052', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852715/strokes/active/wi_1790852715052.svg', NULL, NULL),
(25, NULL, 'VERIFIED', '2026-10-01', 21, 'strokes/active/ui_1790852724339', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852725/strokes/active/ui_1790852724339.svg', NULL, NULL),
(26, NULL, 'VERIFIED', '2026-10-01', 22, 'strokes/active/g_1790852732414', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852733/strokes/active/g_1790852732414.svg', NULL, NULL),
(27, NULL, 'VERIFIED', '2026-10-01', 23, 'strokes/active/n_1790852740478', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852741/strokes/active/n_1790852740478.svg', NULL, NULL),
(28, NULL, 'VERIFIED', '2026-10-01', 24, 'strokes/active/d_1790852748342', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852749/strokes/active/d_1790852748342.svg', NULL, NULL),
(29, NULL, 'VERIFIED', '2026-10-01', 25, 'strokes/active/r_1790852759097', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852760/strokes/active/r_1790852759097.svg', NULL, NULL),
(30, NULL, 'VERIFIED', '2026-10-01', 26, 'strokes/active/m_1790852776468', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852777/strokes/active/m_1790852776468.svg', NULL, NULL),
(31, NULL, 'VERIFIED', '2026-10-01', 27, 'strokes/active/b_1790852889697', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852890/strokes/active/b_1790852889697.svg', NULL, NULL),
(32, NULL, 'VERIFIED', '2026-10-01', 28, 'strokes/active/s_1790852902069', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852902/strokes/active/s_1790852902069.svg', NULL, NULL),
(33, NULL, 'VERIFIED', '2026-10-01', 29, 'strokes/active/ng_1790852915772', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852916/strokes/active/ng_1790852915772.svg', NULL, NULL),
(34, NULL, 'VERIFIED', '2026-10-01', 30, 'strokes/active/j_1790852923449', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852924/strokes/active/j_1790852923449.svg', NULL, NULL),
(35, NULL, 'VERIFIED', '2026-10-01', 31, 'strokes/active/ch_1790852932166', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852933/strokes/active/ch_1790852932166.svg', NULL, NULL),
(36, NULL, 'VERIFIED', '2026-10-01', 32, 'strokes/active/k_1790852941524', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852942/strokes/active/k_1790852941524.svg', NULL, NULL),
(37, NULL, 'VERIFIED', '2026-10-01', 33, 'strokes/active/t_1790852957645', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852958/strokes/active/t_1790852957645.svg', NULL, NULL),
(38, NULL, 'VERIFIED', '2026-10-01', 34, 'strokes/active/p_1790852978351', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852979/strokes/active/p_1790852978351.svg', NULL, NULL),
(39, NULL, 'VERIFIED', '2026-10-01', 35, 'strokes/active/h_1790852987807', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1790852988/strokes/active/h_1790852987807.svg', NULL, NULL),
(40, NULL, 'VERIFIED', '2026-10-12', 36, 'strokes/active/gg_1791817551769', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791817552/strokes/active/gg_1791817551769.svg', NULL, NULL),
(41, NULL, 'VERIFIED', '2026-10-12', 38, 'strokes/active/bb_1791818611525', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791818612/strokes/active/bb_1791818611525.svg', NULL, NULL),
(42, NULL, 'VERIFIED', '2026-10-13', 39, 'strokes/active/ss_1791850197705', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791850198/strokes/active/ss_1791850197705.svg', NULL, NULL),
(43, NULL, 'VERIFIED', '2026-10-13', 40, 'strokes/active/jj_1791850219238', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791850220/strokes/active/jj_1791850219238.svg', NULL, NULL),
(44, NULL, 'VERIFIED', '2026-10-13', 37, 'strokes/active/dd_1791865039856', 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791865040/strokes/active/dd_1791865039856.svg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_temp_data`
--

CREATE TABLE `admin_temp_data` (
  `id` bigint(20) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `char_id` bigint(20) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `public_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_temp_data`
--

INSERT INTO `admin_temp_data` (`id`, `image_url`, `char_id`, `updated_at`, `public_id`) VALUES
(17, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427787/temp/a_1791427786840.jpg', 1, '2026-10-08', 'temp/a_1791427786840'),
(18, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427795/temp/a_1791427794460.jpg', 1, '2026-10-08', 'temp/a_1791427794460'),
(20, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427825/temp/ya_1791427824196.jpg', 2, '2026-10-08', 'temp/ya_1791427824196'),
(21, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427844/temp/ya_1791427843664.jpg', 2, '2026-10-08', 'temp/ya_1791427843664'),
(22, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427850/temp/ya_1791427849673.jpg', 2, '2026-10-08', 'temp/ya_1791427849673'),
(24, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427881/temp/eo_1791427880795.jpg', 3, '2026-10-08', 'temp/eo_1791427880795'),
(25, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427889/temp/eo_1791427888531.jpg', 3, '2026-10-08', 'temp/eo_1791427888531'),
(26, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427895/temp/eo_1791427894332.jpg', 3, '2026-10-08', 'temp/eo_1791427894332'),
(27, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427907/temp/yeo_1791427906204.jpg', 4, '2026-10-08', 'temp/yeo_1791427906204'),
(28, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427914/temp/yeo_1791427913289.jpg', 4, '2026-10-08', 'temp/yeo_1791427913289'),
(29, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427921/temp/yeo_1791427920525.jpg', 4, '2026-10-08', 'temp/yeo_1791427920525'),
(30, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427925/temp/o_1791427925070.jpg', 5, '2026-10-08', 'temp/o_1791427925070'),
(31, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427930/temp/o_1791427929681.jpg', 5, '2026-10-08', 'temp/o_1791427929681'),
(32, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427934/temp/o_1791427934108.jpg', 5, '2026-10-08', 'temp/o_1791427934108'),
(33, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427941/temp/yo_1791427940954.jpg', 6, '2026-10-08', 'temp/yo_1791427940954'),
(34, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427948/temp/yo_1791427947835.jpg', 6, '2026-10-08', 'temp/yo_1791427947835'),
(35, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427956/temp/yo_1791427955545.jpg', 6, '2026-10-08', 'temp/yo_1791427955545'),
(36, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427961/temp/u_1791427960282.jpg', 7, '2026-10-08', 'temp/u_1791427960282'),
(37, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427966/temp/u_1791427965201.jpg', 7, '2026-10-08', 'temp/u_1791427965201'),
(38, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427971/temp/u_1791427970605.jpg', 7, '2026-10-08', 'temp/u_1791427970605'),
(39, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427978/temp/yu_1791427977915.jpg', 8, '2026-10-08', 'temp/yu_1791427977915'),
(40, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427983/temp/yu_1791427982860.jpg', 8, '2026-10-08', 'temp/yu_1791427982860'),
(41, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427987/temp/yu_1791427987040.jpg', 8, '2026-10-08', 'temp/yu_1791427987040'),
(42, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791427998/temp/eu_1791427997680.jpg', 9, '2026-10-08', 'temp/eu_1791427997680'),
(43, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428003/temp/eu_1791428003127.jpg', 9, '2026-10-08', 'temp/eu_1791428003127'),
(44, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428011/temp/eu_1791428010751.jpg', 9, '2026-10-08', 'temp/eu_1791428010751'),
(45, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428016/temp/i_1791428015652.jpg', 10, '2026-10-08', 'temp/i_1791428015652'),
(46, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428023/temp/i_1791428022461.jpg', 10, '2026-10-08', 'temp/i_1791428022461'),
(47, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428027/temp/i_1791428026891.jpg', 10, '2026-10-08', 'temp/i_1791428026891'),
(48, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428033/temp/ae_1791428032751.jpg', 11, '2026-10-08', 'temp/ae_1791428032751'),
(49, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428037/temp/ae_1791428036945.jpg', 11, '2026-10-08', 'temp/ae_1791428036945'),
(50, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428041/temp/ae_1791428040842.jpg', 11, '2026-10-08', 'temp/ae_1791428040842'),
(51, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428047/temp/yae_1791428046955.jpg', 12, '2026-10-08', 'temp/yae_1791428046955'),
(52, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428053/temp/yae_1791428052214.jpg', 12, '2026-10-08', 'temp/yae_1791428052214'),
(53, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428058/temp/yae_1791428057919.jpg', 12, '2026-10-08', 'temp/yae_1791428057919'),
(54, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428062/temp/e_1791428061940.jpg', 13, '2026-10-08', 'temp/e_1791428061940'),
(55, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428067/temp/e_1791428066256.jpg', 13, '2026-10-08', 'temp/e_1791428066256'),
(56, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428075/temp/e_1791428074190.jpg', 13, '2026-10-08', 'temp/e_1791428074190'),
(57, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428082/temp/ye_1791428082075.jpg', 14, '2026-10-08', 'temp/ye_1791428082075'),
(58, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428087/temp/ye_1791428086582.jpg', 14, '2026-10-08', 'temp/ye_1791428086582'),
(59, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428091/temp/ye_1791428091000.jpg', 14, '2026-10-08', 'temp/ye_1791428091000'),
(60, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428098/temp/wa_1791428097895.jpg', 15, '2026-10-08', 'temp/wa_1791428097895'),
(61, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428104/temp/wa_1791428103344.jpg', 15, '2026-10-08', 'temp/wa_1791428103344'),
(62, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428109/temp/wa_1791428108669.jpg', 15, '2026-10-08', 'temp/wa_1791428108669'),
(63, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428116/temp/wae_1791428115148.jpg', 16, '2026-10-08', 'temp/wae_1791428115148'),
(64, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428122/temp/wae_1791428121342.jpg', 16, '2026-10-08', 'temp/wae_1791428121342'),
(65, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428128/temp/wae_1791428127495.jpg', 16, '2026-10-08', 'temp/wae_1791428127495'),
(66, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428135/temp/oe_1791428135026.jpg', 17, '2026-10-08', 'temp/oe_1791428135026'),
(67, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428140/temp/oe_1791428140067.jpg', 17, '2026-10-08', 'temp/oe_1791428140067'),
(68, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428146/temp/oe_1791428145572.jpg', 17, '2026-10-08', 'temp/oe_1791428145572'),
(69, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428156/temp/wo_1791428155920.jpg', 18, '2026-10-08', 'temp/wo_1791428155920'),
(70, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428162/temp/wo_1791428161563.jpg', 18, '2026-10-08', 'temp/wo_1791428161563'),
(71, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428170/temp/wo_1791428169390.jpg', 18, '2026-10-08', 'temp/wo_1791428169390'),
(72, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428178/temp/we_1791428178191.jpg', 19, '2026-10-08', 'temp/we_1791428178191'),
(73, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428184/temp/we_1791428183294.jpg', 19, '2026-10-08', 'temp/we_1791428183294'),
(74, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428192/temp/we_1791428191393.jpg', 19, '2026-10-08', 'temp/we_1791428191393'),
(75, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428198/temp/wi_1791428197384.jpg', 20, '2026-10-08', 'temp/wi_1791428197384'),
(76, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428203/temp/wi_1791428202660.jpg', 20, '2026-10-08', 'temp/wi_1791428202660'),
(77, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428210/temp/wi_1791428209965.jpg', 20, '2026-10-08', 'temp/wi_1791428209965'),
(78, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428216/temp/ui_1791428215619.jpg', 21, '2026-10-08', 'temp/ui_1791428215619'),
(79, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428221/temp/ui_1791428220734.jpg', 21, '2026-10-08', 'temp/ui_1791428220734'),
(80, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428226/temp/ui_1791428225483.jpg', 21, '2026-10-08', 'temp/ui_1791428225483'),
(81, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428231/temp/g_1791428231025.jpg', 22, '2026-10-08', 'temp/g_1791428231025'),
(82, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428236/temp/g_1791428235827.jpg', 22, '2026-10-08', 'temp/g_1791428235827'),
(83, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428241/temp/g_1791428240596.jpg', 22, '2026-10-08', 'temp/g_1791428240596'),
(84, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428245/temp/n_1791428244820.jpg', 23, '2026-10-08', 'temp/n_1791428244820'),
(85, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428249/temp/n_1791428248732.jpg', 23, '2026-10-08', 'temp/n_1791428248732'),
(86, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428254/temp/n_1791428253658.jpg', 23, '2026-10-08', 'temp/n_1791428253658'),
(87, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428258/temp/d_1791428257796.jpg', 24, '2026-10-08', 'temp/d_1791428257796'),
(88, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428263/temp/d_1791428262662.jpg', 24, '2026-10-08', 'temp/d_1791428262662'),
(89, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428268/temp/d_1791428267418.jpg', 24, '2026-10-08', 'temp/d_1791428267418'),
(90, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428272/temp/r_1791428271558.jpg', 25, '2026-10-08', 'temp/r_1791428271558'),
(91, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428277/temp/r_1791428276768.jpg', 25, '2026-10-08', 'temp/r_1791428276768'),
(92, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428282/temp/r_1791428281519.jpg', 25, '2026-10-08', 'temp/r_1791428281519'),
(93, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428286/temp/m_1791428285873.jpg', 26, '2026-10-08', 'temp/m_1791428285873'),
(94, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428291/temp/m_1791428290530.jpg', 26, '2026-10-08', 'temp/m_1791428290530'),
(95, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428295/temp/m_1791428294548.jpg', 26, '2026-10-08', 'temp/m_1791428294548'),
(96, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428300/temp/b_1791428299511.jpg', 27, '2026-10-08', 'temp/b_1791428299511'),
(97, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428304/temp/b_1791428303213.jpg', 27, '2026-10-08', 'temp/b_1791428303213'),
(98, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428308/temp/b_1791428307880.jpg', 27, '2026-10-08', 'temp/b_1791428307880'),
(99, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428312/temp/s_1791428311319.jpg', 28, '2026-10-08', 'temp/s_1791428311319'),
(100, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428316/temp/s_1791428315456.jpg', 28, '2026-10-08', 'temp/s_1791428315456'),
(101, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428320/temp/s_1791428319852.jpg', 28, '2026-10-08', 'temp/s_1791428319852'),
(102, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428326/temp/ng_1791428325794.jpg', 29, '2026-10-08', 'temp/ng_1791428325794'),
(103, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428331/temp/ng_1791428330288.jpg', 29, '2026-10-08', 'temp/ng_1791428330288'),
(104, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428336/temp/ng_1791428335226.jpg', 29, '2026-10-08', 'temp/ng_1791428335226'),
(105, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428340/temp/j_1791428339923.jpg', 30, '2026-10-08', 'temp/j_1791428339923'),
(106, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428344/temp/j_1791428344141.jpg', 30, '2026-10-08', 'temp/j_1791428344141'),
(107, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428348/temp/j_1791428347865.jpg', 30, '2026-10-08', 'temp/j_1791428347865'),
(108, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428352/temp/ch_1791428352076.jpg', 31, '2026-10-08', 'temp/ch_1791428352076'),
(109, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428357/temp/ch_1791428356436.jpg', 31, '2026-10-08', 'temp/ch_1791428356436'),
(110, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428361/temp/ch_1791428360341.jpg', 31, '2026-10-08', 'temp/ch_1791428360341'),
(111, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428365/temp/k_1791428364393.jpg', 32, '2026-10-08', 'temp/k_1791428364393'),
(112, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428369/temp/k_1791428368319.jpg', 32, '2026-10-08', 'temp/k_1791428368319'),
(113, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428372/temp/k_1791428371900.jpg', 32, '2026-10-08', 'temp/k_1791428371900'),
(114, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428376/temp/t_1791428375727.jpg', 33, '2026-10-08', 'temp/t_1791428375727'),
(115, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428380/temp/t_1791428379949.jpg', 33, '2026-10-08', 'temp/t_1791428379949'),
(116, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428384/temp/t_1791428384125.jpg', 33, '2026-10-08', 'temp/t_1791428384125'),
(117, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428388/temp/p_1791428388072.jpg', 34, '2026-10-08', 'temp/p_1791428388072'),
(118, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428393/temp/p_1791428392589.jpg', 34, '2026-10-08', 'temp/p_1791428392589'),
(119, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428399/temp/p_1791428398605.jpg', 34, '2026-10-08', 'temp/p_1791428398605'),
(120, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428556/temp/h_1791428556004.jpg', 35, '2026-10-08', 'temp/h_1791428556004'),
(121, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428561/temp/h_1791428560423.jpg', 35, '2026-10-08', 'temp/h_1791428560423'),
(122, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428565/temp/h_1791428565130.jpg', 35, '2026-10-08', 'temp/h_1791428565130'),
(123, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428569/temp/gg_1791428569091.jpg', 36, '2026-10-08', 'temp/gg_1791428569091'),
(124, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428574/temp/gg_1791428573331.jpg', 36, '2026-10-08', 'temp/gg_1791428573331'),
(125, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428578/temp/gg_1791428577333.jpg', 36, '2026-10-08', 'temp/gg_1791428577333'),
(126, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428583/temp/dd_1791428582799.jpg', 37, '2026-10-08', 'temp/dd_1791428582799'),
(127, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428587/temp/dd_1791428587032.jpg', 37, '2026-10-08', 'temp/dd_1791428587032'),
(128, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428593/temp/dd_1791428592152.jpg', 37, '2026-10-08', 'temp/dd_1791428592152'),
(129, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428598/temp/bb_1791428598026.jpg', 38, '2026-10-08', 'temp/bb_1791428598026'),
(130, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428603/temp/bb_1791428602262.jpg', 38, '2026-10-08', 'temp/bb_1791428602262'),
(131, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428606/temp/bb_1791428605718.jpg', 38, '2026-10-08', 'temp/bb_1791428605718'),
(132, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428610/temp/ss_1791428609318.jpg', 39, '2026-10-08', 'temp/ss_1791428609318'),
(133, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428614/temp/ss_1791428613689.jpg', 39, '2026-10-08', 'temp/ss_1791428613689'),
(134, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428618/temp/ss_1791428617874.jpg', 39, '2026-10-08', 'temp/ss_1791428617874'),
(135, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428622/temp/jj_1791428621377.jpg', 40, '2026-10-08', 'temp/jj_1791428621377'),
(136, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428626/temp/jj_1791428625553.jpg', 40, '2026-10-08', 'temp/jj_1791428625553'),
(137, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1791428630/temp/jj_1791428629544.jpg', 40, '2026-10-08', 'temp/jj_1791428629544'),
(140, 'https://res.cloudinary.com/dqzuuzi8z/image/upload/v1793456769/temp/a_1793456768291.jpg', 1, '2026-10-31', 'temp/a_1793456768291');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auths`
--

CREATE TABLE `auths` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','USER') DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `is_google` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auths`
--

INSERT INTO `auths` (`id`, `email`, `password`, `role`, `created_at`, `enabled`, `is_google`) VALUES
(22, 'minh@123', '$2a$10$SHg/6xIYKQEMq/HISJwusuYMzFWi3C4Ys9xTsmfbYNWUt3QMy77ZG', 'USER', '2026-08-05 15:27:52.000000', b'1', b'0'),
(32, 'minhadmin@123', '$2a$10$cb9vcxE0CWx0XVYeg8tLUOnA.uSSZO7jmkn/xanQ/nGn8C5DfpuxO', 'ADMIN', '2026-08-25 14:47:37.000000', b'1', b'0'),
(35, '123', '$2a$10$JsLYlM7qJsgNuPkhYNuy2uoIeYbf96PA5CB7XauWQ.FMt.cPfsBUK', 'ADMIN', '2026-08-30 03:47:34.000000', b'0', b'0'),
(39, 'minh@1213123123', '$2a$10$0fPibhVbb2vK1GMJOj7mteFUX8Rsoy2jhi/xV7LgkrBV0O4XFYRVG', 'ADMIN', '2026-09-03 13:56:18.000000', b'1', b'0'),
(40, 'tranminh@1234', '$2a$10$aNN2HbdxWnx0qITLwbSD.uK5W7Oxp4pEtRKugc9H6qxneh3VRFrEq', 'USER', '2026-10-17 02:26:21.000000', b'1', b'0'),
(41, '123@12', '$2a$10$A2uQ3lkEmtrLmu0clSNt4u.Bm2KHu1WVliHbOmJtSYrzEp1OfxK/.', 'USER', '2026-10-17 03:26:06.000000', b'1', b'0'),
(42, 'quoc@123', '$2a$10$7oQe0yAQmOLQo7Ue2kJB.ujdKak2y4wqOdm80/n050B4ZHfPlbzOy', 'USER', '2026-10-23 03:28:08.000000', b'0', b'0'),
(55, 'minh@111', '$2a$10$jogPktv8tmRUSmGtFhp5uuJWnhgGaqW22tQ5pyq/i5S4xLBbL0HXG', 'USER', '2026-10-23 07:28:26.000000', b'0', b'0'),
(56, 'tranquocminh15981@gmail.com', '$2a$10$u.Deu24ys3HCiF97qyrBe.I74vCa63FCCWbUgb3dnDYgsncA6WML6', 'USER', '2026-10-23 12:15:28.000000', b'1', b'1'),
(57, 'minh@ke', '$2a$10$O4NaeiaoDsIf0IqYpseXLuUpEWEyfzs3t5jNMqBusVMSvW8TSDDcW', 'USER', '2026-10-30 14:05:17.000000', b'1', b'0'),
(60, 'thu@123', '$2a$10$szUE9DPzoJXLkKfvr/p9tu72GtlR4qtZt6q58RNePvrjoZc7WAiSm', 'USER', '2026-11-03 11:54:09.000000', b'1', b'0'),
(61, 'minh@345', '$2a$10$a7gPl0dxtTFp27iyVh8xTeX9lJd6MknTPF5jF3WR/g.AYdVYG750y', 'USER', '2026-11-11 00:53:56.000000', b'1', b'0'),
(62, '21130446@st.hcmuaf.edu.vn', '$2a$10$Q8QQZy84rI5IXT1XkdiGweAqx1WhWrTfnAZt014TQegNnBXQWpqwO', 'USER', '2026-11-12 14:18:17.000000', b'0', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `characters`
--

CREATE TABLE `characters` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `stroke_count` int(11) DEFAULT NULL,
  `transcription` varchar(255) DEFAULT NULL,
  `type` enum('CONSONANT','VOWEL') DEFAULT NULL,
  `is_double` bit(1) NOT NULL,
  `audio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `characters`
--

INSERT INTO `characters` (`id`, `name`, `stroke_count`, `transcription`, `type`, `is_double`, `audio`) VALUES
(1, 'ㅏ', 2, 'a', 'VOWEL', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/a_audio_bmca4o.m4a'),
(2, 'ㅑ', 3, 'ya', 'VOWEL', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791309/ya_audio_yzprkm.mp3'),
(3, 'ㅓ', 2, 'eo', 'VOWEL', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/eo_audio_cxmz20.mp3'),
(4, 'ㅕ', 3, 'yeo', 'VOWEL', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791310/yeo_audio_emfo1m.mp3'),
(5, 'ㅗ', 2, 'o', 'VOWEL', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/o_audio_lwtbp0.mp3'),
(6, 'ㅛ', 3, 'yo', 'VOWEL', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791310/yo_audio_k5rojw.mp3'),
(7, 'ㅜ', 2, 'u', 'VOWEL', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791308/u_audio_gespko.mp3'),
(8, 'ㅠ', 3, 'yu', 'VOWEL', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791310/yu_audio_tko8wb.mp3'),
(9, 'ㅡ', 1, 'eu', 'VOWEL', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/eu_audio_ndasgt.mp3'),
(10, 'ㅣ', 1, 'i', 'VOWEL', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/i_audio_vur92w.mp3'),
(11, 'ㅐ', 3, 'ae', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/ae_audio_wfgxbq.mp3'),
(12, 'ㅒ', 4, 'yae', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791309/yae_audio_relrf4.mp3'),
(13, 'ㅔ', 3, 'e', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/e_audio_gjfjtm.mp3'),
(14, 'ㅖ', 4, 'ye', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791310/ye_audio_xsm3kf.mp3'),
(15, 'ㅘ', 4, 'wa', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791309/wa_audio_p6q1iu.mp3'),
(16, 'ㅙ', 5, 'wae', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791309/wae_audio_esfwid.mp3'),
(17, 'ㅚ', 3, 'oe', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791289/oe_audio_kbuhjn.mp3'),
(18, 'ㅝ', 4, 'wo', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791309/wo_audio_qzpju3.mp3'),
(19, 'ㅞ', 5, 'we', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791309/we_audio_lhzmnf.mp3'),
(20, 'ㅟ', 3, 'wi', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791309/wi_audio_dozjpv.mp3'),
(21, 'ㅢ', 2, 'ui', 'VOWEL', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791308/ui_audio_msunnq.mp3'),
(22, 'ㄱ', 1, 'g', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794073/g_audio_bdo1gs.mp3'),
(23, 'ㄴ', 1, 'n', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794082/n_audio_pw2yc7.mp3'),
(24, 'ㄷ', 2, 'd', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794071/d_audio_btwtzt.mp3'),
(25, 'ㄹ', 3, 'r', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794085/r_audio_jxclot.mp3'),
(26, 'ㅁ', 3, 'm', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794079/m_audio_stlal6.mp3'),
(27, 'ㅂ', 4, 'b', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794069/b_audio_sbxye4.mp3'),
(28, 'ㅅ', 2, 's', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794086/s_audio_ktvazy.mp3'),
(29, 'ㅇ', 1, 'ng', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794082/ng_audio_ydi0dt.mp3'),
(30, 'ㅈ', 2, 'j', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794077/j_audio_uol9fc.mp3'),
(31, 'ㅊ', 3, 'ch', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794070/ch_audio_saf2rp.mp3'),
(32, 'ㅋ', 2, 'k', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794079/k_audio_hcblwq.mp3'),
(33, 'ㅌ', 3, 't', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794088/t_audio_leuju0.mp3'),
(34, 'ㅍ', 4, 'p', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794083/p_audio_o6q1fb.mp3'),
(35, 'ㅎ', 3, 'h', 'CONSONANT', b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794075/h_audio_vfq9lc.mp3'),
(36, 'ㄲ', 2, 'gg', 'CONSONANT', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794074/gg_audio_iorkm6.mp3'),
(37, 'ㄸ', 2, 'dd', 'CONSONANT', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794073/dd_audio_suqbgm.mp3'),
(38, 'ㅃ', 8, 'bb', 'CONSONANT', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794070/bb_audio_j3hf1u.mp3'),
(39, 'ㅆ', 4, 'ss', 'CONSONANT', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794087/ss_audio_zedlpm.mp3'),
(40, 'ㅉ', 4, 'jj', 'CONSONANT', b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788794078/jj_audio_imcis5.mp3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_config`
--

CREATE TABLE `exam_config` (
  `id` bigint(20) NOT NULL,
  `number_of_consonant` int(11) DEFAULT NULL,
  `number_of_vowel` int(11) DEFAULT NULL,
  `pass_percent` int(11) DEFAULT NULL,
  `time_limit_sec` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `exam_config`
--

INSERT INTO `exam_config` (`id`, `number_of_consonant`, `number_of_vowel`, `pass_percent`, `time_limit_sec`) VALUES
(1, 3, 3, 80, 600);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lesson_category_route`
--

CREATE TABLE `lesson_category_route` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_index` int(11) DEFAULT NULL,
  `active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lesson_category_route`
--

INSERT INTO `lesson_category_route` (`id`, `description`, `name`, `order_index`, `active`) VALUES
(1, 'Giới thiệu về Hàn Quốc và Hangul', 'Giới thiệu', 1, b'0'),
(2, '21 nguyên âm trong tiếng Hàn.', 'Nguyên âm cơ bản', 2, b'1'),
(3, '19 phụ âm trong tiếng Hàn.', 'Phụ âm cơ bản', 3, b'1'),
(4, 'Kiểm tra kiến thức.', 'Ôn tập', 4, b'1'),
(5, 'Kết hợp phụ âm và nguyên âm.', 'Âm tiết ghép', 5, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lesson_content`
--

CREATE TABLE `lesson_content` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lesson_route_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lesson_content`
--

INSERT INTO `lesson_content` (`id`, `description`, `name`, `lesson_route_id`) VALUES
(1, NULL, NULL, 3),
(2, NULL, NULL, 4),
(3, NULL, NULL, 5),
(4, NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lesson_route`
--

CREATE TABLE `lesson_route` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_index` int(11) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `youtube_id` varchar(255) DEFAULT NULL,
  `cate_route_id` bigint(20) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `quiz_id` bigint(20) DEFAULT NULL,
  `des_finish` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lesson_route`
--

INSERT INTO `lesson_route` (`id`, `created_at`, `description`, `is_active`, `name`, `order_index`, `updated_at`, `youtube_id`, `cate_route_id`, `duration`, `quiz_id`, `des_finish`) VALUES
(1, NULL, 'Hangul là một hệ thống chữ viết mang tính khoa học cao.\r\n- Khả năng kết hợp phong phú: Từ 24 chữ cái cơ bản gồm nguyên âm và phụ âm, Hangul có thể kết hợp tạo thành 11.172 ký tự/âm tiết khác nhau, thể hiện được quy luật vũ trụ và ghi lại hầu hết các âm thanh trong tự nhiên.\r\n- Hình dạng chữ gắn liền với cơ quan phát âm: Hình dáng các ký tự phụ âm mô phỏng trực quan cơ quan phát âm và luồng hơi khi phát âm. Nhờ tính logic này, người học rất dễ ghi nhớ; người nước ngoài thậm chí chỉ mất khoảng một giờ để nắm được nguyên lý. Sách cổ Huấn dân chính âm giải lệ từng ghi: người thông minh học chưa xong buổi sáng đã hiểu, người chậm hiểu cũng chỉ mất mười ngày là nắm được.\r\n- Ưu thế khi nhập liệu kỹ thuật số: Hangul có thể gõ trực tiếp theo âm đọc cực kỳ nhanh và chuẩn xác. Không giống tiếng Trung hay tiếng Nhật phải gõ ký tự La-tinh trung gian rồi mới chuyển đổi sang Hán tự/Kana, việc nhập liệu chữ Hàn giúp tiết kiệm thời gian và thuận tiện hơn rất nhiều.', b'0', 'Giới thiệu về Hangul', 2, '2026-11-03 13:49:42.000000', 'hK6CjDwQGgA', 1, '4:07', NULL, 'Người xem hiểu rằng Hangul không đơn thuần chỉ là một công cụ ngôn ngữ, mà còn là niềm tự hào dân tộc giúp người Hàn có chữ viết độc lập của riêng mình, đồng thời là minh chứng tiêu biểu cho tình thương và sự trăn trở của vua Sejong đối với đời sống của người dân nghèo.'),
(2, NULL, 'Hàn Quốc nằm ở khu vực Đông Á, chiếm nửa phía nam của bán đảo Triều Tiên. Thủ đô là Seoul – một đô thị hiện đại, nhịp sống sôi động và là điểm đến du lịch hàng đầu châu Á.\r\n1. Bức tranh ẩm thực truyền thống:\r\n- Kimchi: Món ăn \"quốc hồn quốc túy\" làm từ cải thảo ủ muối cùng các loại gia vị, mang ý nghĩa biểu tượng sâu sắc trong văn hóa ăn uống thường nhật.\r\n- Gimbap: Cơm cuộn rong biển truyền thống quen thuộc, phổ biến khắp thế giới và được xem như phiên bản sushi kiểu Hàn.\r\n- Bibimbap: Cơm trộn nhiều màu sắc kết hợp hài hòa rau củ, thịt, trứng và sốt ớt đặc trưng, mang lại giá trị dinh dưỡng cân bằng.\r\n2. Âm nhạc K-Pop: Nền công nghiệp âm nhạc bùng nổ thành hiện tượng toàn cầu với những nhóm nhạc thần tượng tiêu biểu như BTS và Blackpink.', b'0', 'Tìm hiểu và khám phá đất nước Hàn Quốc', 1, '2026-10-19 14:32:46.000000', 'Eg-s6_Hlt_U', 1, '3:40', NULL, 'Bức tranh nhập môn về văn hóa Hàn Quốc: Nắm được những \"từ khóa\" nền tảng nhất định hình nên bản sắc xứ sở kim chi (từ địa danh lịch sử, món ăn đường phố đến trang phục truyền thống).'),
(3, NULL, 'Tổng quan về chữ Hangeul và quy tắc tạo hình:\r\n- Hệ thống chữ viết tiếng Hàn gồm 40 ký tự (21 nguyên âm và 19 phụ âm).\r\n- Cấu tạo hình học đơn giản, chủ yếu kết hợp từ 3 nét cơ bản: nét ngang, nét dọc và nét tròn.\r\n- Quy tắc bút thuận bất biến: viết từ trên xuống dưới, từ trái sang phải.\r\n- 14 nguyên âm cơ bản và 7 nguyên âm ghép.\r\n- Hướng dẫn chi tiết về cách phát âm.', b'1', 'Nguyên âm', 1, '2026-10-01 08:22:18.000000', 'ItM3ri4dIEQ', 2, '12:06', 1, 'Nắm trọn vẹn 21 nguyên âm tiếng Hàn: Phân biệt rõ cấu trúc giữa 14 nguyên âm cơ bản và 7 nguyên âm ghép:\r\n- Mẹo phát âm các âm khó (âm kép chứa bán nguyên âm y/w): Hiểu được bản chất âm vị học – các âm như ya, yeo, yo, yu là sự trượt nhanh từ âm /i/ sang nguyên âm đích, giúp phát âm chuẩn xác tự nhiên mà không bị gượng gạo.\r\n- Gỡ bỏ khúc mắc về các âm đồng âm: Biết trước rằng bộ ba ㅙ - ㅚ - ㅞ đọc giống hệt nhau (/uê/), tránh bối rối hoặc cố phân tách âm thanh khi nghe người bản xứ giao tiếp thực tế.\r\n- Chuẩn hóa kỹ thuật viết chữ Hangeul (Bút thuận): Nắm vững tư duy dựng khối chữ Hàn (từ trên xuống dưới, từ trái sang phải, viết phụ âm tròn trước nguyên âm). Điều này tạo nền tảng chính xác để sau này học tiếp 19 phụ âm và ghép thành âm tiết hoàn chỉnh.'),
(4, NULL, '\r\n1. Quy tắc ghép âm cơ bản trong tiếng Hàn:\r\n- Hướng dẫn nguyên lý kết hợp giữa phụ âm và nguyên âm để tạo thành một khối chữ âm tiết hoàn chỉnh (phụ âm đứng đầu kết hợp cùng nguyên âm đứng bên phải hoặc bên dưới).\r\n2. Cấu trúc bảng 19 phụ âm tiếng Hàn thành các nhóm rõ ràng để người học dễ phân biệt tính chất âm.\r\n3. Thứ tự nét viết và luyện tập:\r\n- Thị phạm chi tiết bút thuận từng phụ âm theo nguyên tắc từ trên xuống dưới, từ trái sang phải.\r\n- Bài tập thực hành ghép các phụ âm vừa học với các nguyên âm đã học ở Bài 1 để tạo thành các khối chữ hoàn chỉnh và hướng dẫn đọc thành tiếng.', b'1', 'Phụ âm', 1, '2026-10-16 05:12:26.000000', 'rB4GLu0zjSc', 3, '14:08', 2, 'Hoàn thiện bảng chữ cái Hangeul cơ bản: \r\n- Nắm trọn vẹn 19 phụ âm, kết hợp cùng 21 nguyên âm để làm chủ toàn bộ 40 ký tự nền tảng của tiếng Hàn.\r\n- Sẵn sàng để đọc và ghép từ cơ bản: Tự tin ghép các âm tiết đơn giản (như 가, 나, 다, 라...) và chuẩn bị tiền đề quan trọng nhất để bước vào bài học tiếp theo về phụ âm cuối (Patchim).'),
(5, NULL, '\r\n1. Quy tắc ghép khối chữ trong tiếng Hàn:\r\n- Nguyên tắc đọc & viết chung: Luôn tuân theo chiều từ trái sang phải và từ trên xuống dưới.\r\n- Dạng khối chữ với nguyên âm đứng: Phụ âm đầu đặt bên trái, nguyên âm đặt bên phải; Patchim (nếu có) nằm ở phía dưới cùng (Cấu trúc ngang).\r\n- Dạng khối chữ với nguyên âm nằm ngang: Phụ âm đầu ở trên, nguyên âm ở giữa; Patchim nằm ở dưới cùng (Cấu trúc dọc).\r\n2. Khái niệm và số lượng Patchim:\r\n- Patchim chính là phụ âm cuối đứng ở đáy khối chữ.\r\n- Tiếng Hàn có tổng cộng 27 Patchim (gồm 16 Patchim đơn và 11 Patchim ghép).\r\n- Dù có 27 Patchim, khi phát âm chúng chỉ quy về 7 âm phát âm cơ bản.', b'1', 'Patchim và Quy tắc ghép chữ trong tiếng Hàn', 1, '2026-08-30 13:41:51.000000', 'xXC_bRdDPVg', 5, '10:23', 3, '\r\nHiểu bản chất khối âm tiết tiếng Hàn: Biết cách sắp xếp bố cục chữ (khối chữ dạng ngang hay khối chữ dạng dọc tùy thuộc nguyên âm đứng hay nguyên âm nằm) để viết đúng ô vuông chuẩn tiếng Hàn.\r\n- Quy luật thu gọn 7 âm phát âm chuẩn: Nhận ra không cần phải học 27 cách phát âm Patchim riêng biệt; thực chất toàn bộ hệ thống Patchim chỉ đổ về 7 âm đích đại diện: [ㄱ, ㄴ, ㄷ, ㄹ, ㅁ, ㅂ, ㅇ].\r\n- Tư duy phân biệt âm thanh và chính tả: Nhận thức rõ ràng việc hai từ có Patchim phát âm giống hệt nhau không có nghĩa là viết thay thế cho nhau được; viết sai Patchim sẽ làm đổi nghĩa hoặc sai chính tả.\r\n- Tự tin ghép vần và đọc trôi chảy từ vựng căn bản: Kết hợp phụ âm đầu + nguyên âm + phụ âm cuối để đọc chuẩn xác bất kỳ từ đơn âm hay đa âm nào trong tiếng Hàn.'),
(6, NULL, 'Tổng quan và ôn tập kiến thức:\n- Ôn lại cấu trúc ghép chữ và quy tắc phát âm của 16 Patchim đơn đã học ở bài trước (quy về 7 âm đích đại diện).\n- Khái niệm về Patchim ghép (kép): Là vị trí phụ âm cuối được tạo thành từ 2 phụ âm khác nhau đứng cạnh nhau ở đáy khối chữ.\n- Quy tắc phân loại và phát âm 11 Patchim ghép thành 2 nhóm quy tắc cực kỳ trực quan dựa trên vị trí ưu tiên.\nLuyện tập đọc từ vựng thực tế:\n- Thực hành đọc các từ chứa patchim ghép thông dụng trong đời sống.', b'1', '11 patchim ghép - Quy tắc ghép chữ trong tiếng Hàn', 2, '2026-10-19 14:35:44.000000', 'guCcnxHv5yo', 5, '4:57', 4, 'Nắm trọn \"công thức vàng\" để nhớ 11 Patchim ghép:\r\n- Thay vì học vẹt 11 trường hợp riêng lẻ, chỉ cần nhớ quy tắc loại trừ: \"Hầu hết đọc theo âm bên TRÁI, chỉ có 3 trường hợp đọc theo âm bên PHẢI là ㄺ, ㄻ, ㄿ\" (mẹo nhớ: Gà - Luộc - Phở / K - M - P).\r\n- Khắc phục lỗi phát âm sai phổ biến nhất:Từ kinh điển như 닭 (con gà) thường bị người mới bắt đầu đọc nhầm thành /dal/, qua bài học sẽ nhớ chắc chắn phải phát âm là [닥] (dak).\r\n- Hoàn thiện 100% nền tảng chữ viết Hangeul, bạn đã đi qua toàn bộ các yếu tố cấu thành chữ viết tiếng Hàn: Nguyên âm, Phụ âm, Patchim đơn, Patchim ghép.Tự tin đọc chuẩn xác bất kỳ văn bản tiếng Hàn nào dù chưa cần biết nghĩa của từ.'),
(29, NULL, 'Tổng quan và ôn tập kiến thức', b'1', 'Ôn tập', 1, '2026-11-03 13:58:03.000000', NULL, 4, '123', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `level-exam`
--

CREATE TABLE `level-exam` (
  `id` bigint(20) NOT NULL,
  `completed` date DEFAULT NULL,
  `correct` int(11) DEFAULT NULL,
  `passed` bit(1) NOT NULL,
  `percent` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `level-exam`
--

INSERT INTO `level-exam` (`id`, `completed`, `correct`, `passed`, `percent`, `total`, `user_id`) VALUES
(9, '2026-10-23', 0, b'0', 0, 9, 40),
(10, '2026-10-23', 0, b'0', 0, 9, 40),
(11, '2026-10-23', 0, b'0', 0, 9, 40),
(12, '2026-10-23', 0, b'0', 0, 9, 40),
(13, '2026-10-23', 5, b'0', 56, 9, 40),
(20, '2026-11-03', 1, b'0', 11, 9, 45),
(21, '2026-11-03', 0, b'0', 0, 9, 45),
(22, '2026-11-03', 0, b'0', 0, 9, 45),
(23, '2026-11-03', 0, b'0', 0, 9, 45),
(24, '2026-11-03', 1, b'0', 11, 9, 45),
(25, '2026-11-03', 3, b'0', 33, 9, 45),
(26, '2026-11-03', 0, b'0', 0, 9, 45),
(27, '2026-11-03', 0, b'0', 0, 9, 45),
(28, '2026-11-03', 0, b'0', 0, 10, 45),
(29, '2026-11-03', 0, b'0', 0, 10, 45),
(30, '2026-11-03', 0, b'0', 0, 6, 45),
(31, '2026-11-04', 0, b'0', 0, 6, 45),
(32, '2026-11-04', 0, b'0', 0, 6, 45),
(33, '2026-11-04', 0, b'0', 0, 6, 45),
(34, '2026-11-09', 0, b'0', 0, 6, 41),
(35, '2026-11-09', 1, b'0', 100, 1, 41),
(36, '2026-11-09', 0, b'0', 0, 6, 41),
(37, '2026-11-11', 0, b'0', 0, 6, 46),
(38, '2026-11-11', 4, b'0', 67, 6, 46),
(39, '2026-11-11', 3, b'0', 50, 6, 46),
(40, '2026-11-11', 4, b'0', 67, 6, 46),
(41, '2026-11-11', 5, b'1', 83, 6, 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` bigint(20) NOT NULL,
  `is_correct` bit(1) NOT NULL,
  `option_text` varchar(255) DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `is_correct`, `option_text`, `question_id`) VALUES
(1, b'1', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/eo_audio_cxmz20.mp3', 1),
(2, b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791309/ya_audio_yzprkm.mp3', 1),
(3, b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791309/yae_audio_relrf4.mp3', 1),
(4, b'0', 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/ae_audio_wfgxbq.mp3', 1),
(5, b'0', 'ㅕ', 2),
(6, b'1', 'ㅓ', 2),
(7, b'0', 'ㅑ', 2),
(8, b'0', 'ㅛ', 2),
(9, b'0', 'ㅡ', 3),
(10, b'0', 'ㅣ', 3),
(11, b'1', 'ㅜ', 3),
(12, b'0', 'ㅠ', 3),
(13, b'1', 'ㅛ', 4),
(14, b'0', 'ㅗ', 4),
(15, b'0', 'ㅠ', 4),
(16, b'0', 'ㅜ', 4),
(17, b'1', '1 nét', 5),
(18, b'0', '2 nét', 5),
(19, b'0', '3 nét', 5),
(20, b'0', '4 nét', 5),
(21, b'0', 'ㄱ', 6),
(22, b'1', 'ㄴ', 6),
(23, b'0', 'ㄷ', 6),
(24, b'0', 'ㄹ', 6),
(25, b'0', 'ㄹ', 7),
(26, b'0', 'ㅂ', 7),
(27, b'1', 'ㅁ', 7),
(28, b'0', 'ㅅ', 7),
(29, b'1', '1 nét', 8),
(30, b'0', '2 nét', 8),
(31, b'0', '3 nét', 8),
(32, b'0', '4 nét', 8),
(33, b'1', 'ㄷ', 9),
(34, b'0', 'ㄴ', 9),
(35, b'0', 'ㄹ', 9),
(36, b'0', 'ㅌ', 9),
(37, b'1', '밥', 10),
(38, b'0', '바', 10),
(39, b'0', '발', 10),
(40, b'0', '방', 10),
(41, b'0', '고', 11),
(42, b'1', '곰', 11),
(43, b'0', '공', 11),
(44, b'0', '골', 11),
(45, b'0', '지', 12),
(46, b'1', '집', 12),
(47, b'0', '진', 12),
(48, b'0', '직', 12),
(49, b'1', '산', 13),
(50, b'0', '사', 13),
(51, b'0', '살', 13),
(52, b'0', '상', 13),
(53, b'1', 'ㅂ + ㅏ + ㅂ (patchim)', 14),
(54, b'0', 'ㅂ + ㅏ (không patchim)', 14),
(55, b'0', 'ㅁ + ㅏ + ㅂ (patchim)', 14),
(56, b'0', 'ㅂ + ㅓ + ㅂ (patchim)', 14),
(57, b'1', '닭', 15),
(58, b'0', '다', 15),
(59, b'0', '달', 15),
(60, b'0', '당', 15),
(61, b'0', '가', 16),
(62, b'1', '갑', 16),
(63, b'0', '값', 16),
(64, b'0', '강', 16),
(65, b'0', '안', 17),
(66, b'1', '앉', 17),
(67, b'0', '앙', 17),
(68, b'0', '아', 17),
(69, b'1', '많', 18),
(70, b'0', '만', 18),
(71, b'0', '망', 18),
(72, b'0', '마', 18),
(73, b'1', 'ㅅ + ㅏ + ㄻ (patchim đôi)', 19),
(74, b'0', 'ㅅ + ㅏ + ㅁ (patchim đơn)', 19),
(75, b'0', 'ㅅ + ㅏ (không patchim)', 19),
(76, b'0', 'ㅅ + ㅓ + ㄻ (patchim đôi)', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `practices`
--

CREATE TABLE `practices` (
  `id` bigint(20) NOT NULL,
  `character_id` bigint(20) DEFAULT NULL,
  `confidence` double DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `is_passed` bit(1) DEFAULT NULL,
  `predicted_label` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `practices`
--

INSERT INTO `practices` (`id`, `character_id`, `confidence`, `created_at`, `is_passed`, `predicted_label`, `score`, `user_id`) VALUES
(63, 8, 1, '2026-10-17 03:25:40.000000', b'1', 'ㅠ', 60, 25),
(64, 5, 1, '2026-10-17 03:35:42.000000', b'0', 'ㅗ', 18, 25),
(67, 5, 1, '2026-10-19 01:19:19.000000', b'0', 'ㅗ', 19, 25),
(68, 9, 1, '2026-10-19 01:20:18.000000', b'1', 'ㅡ', 56, 25),
(69, 9, 1, '2026-10-19 01:36:16.000000', b'1', 'ㅡ', 77, 25),
(73, 1, 1, '2026-10-29 05:30:34.000000', b'0', 'ㅏ', 25, 41),
(74, 1, 0.998, '2026-10-29 05:33:04.000000', b'0', 'ㅏ', 19, 41),
(75, 7, 1, '2026-10-29 05:38:19.000000', b'0', 'ㅜ', 44, 41),
(76, 5, 1, '2026-10-29 05:38:25.000000', b'0', 'ㅗ', 16, 41),
(77, 6, 1, '2026-10-29 05:38:31.000000', b'0', 'ㅛ', 42, 41),
(78, 21, 0.761, '2026-10-29 05:38:40.000000', b'1', 'ㅢ', 71, 41),
(79, 32, 1, '2026-10-29 05:38:45.000000', b'0', 'ㅋ', 47, 41),
(80, 13, 0.793, '2026-10-29 06:32:14.000000', b'0', 'ㅔ', 45, 41),
(81, 13, 1, '2026-10-29 06:57:13.000000', b'1', 'ㅔ', 54, 41),
(82, 21, 1, '2026-10-29 06:57:17.000000', b'1', 'ㅢ', 53, 41),
(83, 11, 1, '2026-10-29 06:57:21.000000', b'1', 'ㅐ', 57, 41),
(84, 12, 0.966, '2026-10-29 06:58:02.000000', b'1', 'ㅒ', 58, 41),
(85, 12, 0.882, '2026-10-29 06:58:12.000000', b'1', 'ㅒ', 62, 41),
(86, 13, 0.927, '2026-10-29 06:59:03.000000', b'0', 'ㅔ', 37, 41),
(87, 16, 1, '2026-10-29 07:00:44.000000', b'1', 'ㅙ', 79, 41),
(88, 29, 1, '2026-10-29 07:02:43.000000', b'1', 'ㅇ', 69, 41),
(89, 33, 0.993, '2026-10-29 07:03:43.000000', b'1', 'ㅌ', 72, 41),
(90, 39, 1, '2026-10-29 07:05:22.000000', b'1', 'ㅆ', 57, 41),
(91, 38, 1, '2026-10-29 07:05:27.000000', b'1', 'ㅃ', 64, 41),
(92, 36, 0.992, '2026-10-29 07:06:21.000000', b'0', 'ㄲ', 40, 41),
(93, 35, 1, '2026-10-29 07:06:28.000000', b'1', 'ㅎ', 58, 41),
(94, 25, 1, '2026-10-29 07:06:35.000000', b'1', 'ㄹ', 53, 41),
(95, 17, 1, '2026-10-29 07:10:01.000000', b'1', 'ㅚ', 63, 41),
(96, 12, 0.989, '2026-10-29 07:10:14.000000', b'1', 'ㅒ', 59, 41),
(97, 13, 1, '2026-10-29 07:10:34.000000', b'0', 'ㅔ', 47, 41),
(98, 13, 0.994, '2026-10-29 07:10:39.000000', b'0', 'ㅔ', 43, 41),
(99, 1, 1, '2026-10-29 07:20:09.000000', b'0', 'ㅏ', 36, 41),
(100, 1, 1, '2026-10-29 07:20:19.000000', b'0', 'ㅏ', 37, 41),
(101, 1, 1, '2026-10-29 07:20:20.000000', b'0', 'ㅏ', 37, 41),
(102, 1, 1, '2026-10-29 07:20:22.000000', b'0', 'ㅏ', 34, 41),
(103, 1, 0.999, '2026-10-29 07:20:25.000000', b'0', 'ㅏ', 23, 41),
(104, 1, 1, '2026-10-29 07:20:28.000000', b'0', 'ㅏ', 43, 41),
(105, 1, 1, '2026-10-29 07:20:31.000000', b'1', 'ㅏ', 51, 41),
(106, 1, 1, '2026-10-29 07:20:34.000000', b'1', 'ㅏ', 61, 41),
(107, 1, 1, '2026-10-29 07:20:37.000000', b'1', 'ㅏ', 52, 41),
(108, 1, 0.966, '2026-10-29 07:20:40.000000', b'0', 'ㅏ', 43, 41),
(109, 1, 1, '2026-10-29 07:20:43.000000', b'0', 'ㅏ', 46, 41),
(110, 1, 1, '2026-10-29 07:20:46.000000', b'1', 'ㅏ', 51, 41),
(111, 1, 1, '2026-10-29 07:20:48.000000', b'1', 'ㅏ', 60, 41),
(112, 1, 1, '2026-10-29 07:20:54.000000', b'1', 'ㅏ', 60, 41),
(113, 1, 1, '2026-10-29 07:21:03.000000', b'1', 'ㅏ', 64, 41),
(114, 1, 1, '2026-10-29 07:21:06.000000', b'1', 'ㅏ', 57, 41),
(115, 1, 1, '2026-10-29 07:21:08.000000', b'0', 'ㅏ', 45, 41),
(116, 1, 1, '2026-10-29 07:21:11.000000', b'1', 'ㅏ', 56, 41),
(117, 1, 1, '2026-10-29 07:21:21.000000', b'1', 'ㅏ', 52, 41),
(118, 1, 1, '2026-10-29 07:21:41.000000', b'1', 'ㅏ', 59, 41),
(119, 1, 1, '2026-10-29 07:21:47.000000', b'1', 'ㅏ', 60, 41),
(120, 2, 0.991, '2026-10-29 07:21:53.000000', b'1', 'ㅑ', 56, 41),
(121, 2, 1, '2026-10-29 07:22:00.000000', b'1', 'ㅑ', 57, 41),
(122, 2, 0.988, '2026-10-29 07:22:05.000000', b'1', 'ㅑ', 65, 41),
(123, 3, 1, '2026-10-29 07:22:13.000000', b'0', 'ㅓ', 15, 41),
(124, 3, 1, '2026-10-29 07:22:20.000000', b'0', 'ㅓ', 10, 41),
(125, 3, 0.939, '2026-10-29 07:22:26.000000', b'0', 'ㅓ', 43, 41),
(126, 3, 1, '2026-10-29 07:22:28.000000', b'0', 'ㅓ', 15, 41),
(127, 3, 0.971, '2026-10-29 07:22:31.000000', b'0', 'ㅓ', 22, 41),
(128, 3, 1, '2026-10-29 07:22:37.000000', b'0', 'ㅓ', 15, 41),
(129, 3, 0.998, '2026-10-29 07:22:43.000000', b'0', 'ㅓ', 15, 41),
(130, 3, 1, '2026-10-29 07:22:46.000000', b'0', 'ㅓ', 14, 41),
(131, 3, 0.872, '2026-10-29 07:22:49.000000', b'0', 'ㅓ', 12, 41),
(132, 3, 1, '2026-10-29 07:22:51.000000', b'0', 'ㅓ', 16, 41),
(133, 3, 1, '2026-10-29 07:22:56.000000', b'0', 'ㅓ', 14, 41),
(134, 3, 0.999, '2026-10-29 07:23:00.000000', b'0', 'ㅓ', 14, 41),
(135, 3, 1, '2026-10-29 07:23:09.000000', b'0', 'ㅓ', 15, 41),
(136, 3, 0.974, '2026-10-29 07:23:22.000000', b'0', 'ㅓ', 19, 41),
(137, 3, 1, '2026-10-29 07:23:25.000000', b'0', 'ㅓ', 17, 41),
(138, 3, 1, '2026-10-29 07:23:34.000000', b'0', 'ㅓ', 14, 41),
(139, 3, 0.999, '2026-10-29 07:23:37.000000', b'0', 'ㅓ', 15, 41),
(140, 3, 0.999, '2026-10-29 07:23:43.000000', b'0', 'ㅓ', 13, 41),
(141, 3, 1, '2026-10-29 07:23:49.000000', b'0', 'ㅓ', 16, 41),
(142, 4, 0.998, '2026-10-29 07:24:03.000000', b'1', 'ㅕ', 60, 41),
(143, 4, 0.95, '2026-10-29 07:24:18.000000', b'0', 'ㅕ', 49, 41),
(144, 4, 0.665, '2026-10-29 07:24:41.000000', b'1', 'ㅕ', 51, 41),
(145, 5, 1, '2026-10-29 07:24:46.000000', b'0', 'ㅗ', 13, 41),
(146, 5, 1, '2026-10-29 07:24:55.000000', b'0', 'ㅗ', 14, 41),
(147, 5, 1, '2026-10-29 07:25:03.000000', b'0', 'ㅗ', 13, 41),
(148, 6, 0.998, '2026-10-29 07:25:10.000000', b'0', 'ㅛ', 37, 41),
(149, 6, 1, '2026-10-30 03:40:19.000000', b'1', 'ㅛ', 50, 41),
(150, 6, 0.984, '2026-10-30 03:40:33.000000', b'0', 'ㅛ', 38, 41),
(151, 7, 1, '2026-10-30 03:41:14.000000', b'1', 'ㅜ', 61, 41),
(152, 7, 1, '2026-10-30 03:41:34.000000', b'1', 'ㅜ', 70, 41),
(153, 7, 1, '2026-10-30 03:41:40.000000', b'1', 'ㅜ', 52, 41),
(154, 8, 0.991, '2026-10-30 03:41:46.000000', b'0', 'ㅠ', 48, 41),
(155, 8, 1, '2026-10-30 03:41:53.000000', b'0', 'ㅠ', 46, 41),
(156, 8, 1, '2026-10-30 03:41:59.000000', b'1', 'ㅠ', 52, 41),
(157, 9, 1, '2026-10-30 03:42:05.000000', b'1', 'ㅡ', 73, 41),
(158, 9, 1, '2026-10-30 03:42:09.000000', b'1', 'ㅡ', 71, 41),
(159, 9, 1, '2026-10-30 03:42:11.000000', b'1', 'ㅡ', 72, 41),
(160, 9, 1, '2026-10-30 03:42:15.000000', b'1', 'ㅡ', 72, 41),
(161, 9, 1, '2026-10-30 03:42:18.000000', b'1', 'ㅡ', 73, 41),
(162, 10, 1, '2026-10-30 03:42:22.000000', b'1', 'ㅣ', 71, 41),
(163, 10, 1, '2026-10-30 03:42:26.000000', b'1', 'ㅣ', 65, 41),
(164, 10, 1, '2026-10-30 03:42:30.000000', b'1', 'ㅣ', 74, 41),
(165, 11, 1, '2026-10-30 03:42:38.000000', b'1', 'ㅐ', 57, 41),
(166, 11, 0.804, '2026-10-30 03:42:43.000000', b'1', 'ㅐ', 52, 41),
(167, 11, 1, '2026-10-30 03:42:50.000000', b'1', 'ㅐ', 59, 41),
(168, 12, 0.746, '2026-10-30 03:42:56.000000', b'1', 'ㅒ', 65, 41),
(169, 12, 1, '2026-10-30 03:43:01.000000', b'1', 'ㅒ', 53, 41),
(170, 12, 0.942, '2026-10-30 03:43:05.000000', b'1', 'ㅒ', 56, 41),
(171, 13, 0.584, '2026-10-30 03:43:12.000000', b'0', 'ㅔ', 40, 41),
(172, 13, 0.932, '2026-10-30 03:43:17.000000', b'0', 'ㅔ', 39, 41),
(173, 13, 1, '2026-10-30 03:43:21.000000', b'1', 'ㅔ', 52, 41),
(174, 14, 0.88, '2026-10-30 03:43:34.000000', b'1', 'ㅖ', 52, 41),
(175, 14, 0.97, '2026-10-30 03:43:43.000000', b'1', 'ㅖ', 52, 41),
(176, 14, 0.534, '2026-10-30 03:43:52.000000', b'1', 'ㅖ', 51, 41),
(177, 15, 1, '2026-10-30 03:44:01.000000', b'1', 'ㅘ', 57, 41),
(178, 15, 0.999, '2026-10-30 03:44:21.000000', b'1', 'ㅘ', 67, 41),
(179, 15, 0.923, '2026-10-30 03:44:34.000000', b'0', 'ㅘ', 49, 41),
(180, 16, 0.884, '2026-10-30 03:45:27.000000', b'1', 'ㅙ', 72, 41),
(181, 16, 1, '2026-10-30 03:45:49.000000', b'1', 'ㅙ', 70, 41),
(182, 16, 0.999, '2026-10-30 03:45:55.000000', b'1', 'ㅙ', 68, 41),
(183, 17, 0.996, '2026-10-30 03:46:00.000000', b'1', 'ㅚ', 71, 41),
(184, 17, 0.85, '2026-10-30 03:46:10.000000', b'1', 'ㅚ', 66, 41),
(185, 17, 0.85, '2026-10-30 03:46:10.000000', b'1', 'ㅚ', 66, 41),
(186, 17, 0.999, '2026-10-30 03:46:18.000000', b'1', 'ㅚ', 53, 41),
(187, 18, 0.619, '2026-10-30 03:46:33.000000', b'1', 'ㅝ', 62, 41),
(188, 18, 1, '2026-10-30 03:46:39.000000', b'1', 'ㅝ', 70, 41),
(189, 18, 0.972, '2026-10-30 03:47:03.000000', b'1', 'ㅝ', 62, 41),
(190, 18, 0.978, '2026-10-30 03:49:39.000000', b'1', 'ㅝ', 68, 41),
(191, 17, 1, '2026-10-30 03:49:43.000000', b'1', 'ㅚ', 57, 41),
(192, 16, 0.981, '2026-10-30 03:49:50.000000', b'1', 'ㅙ', 71, 41),
(193, 15, 1, '2026-10-30 03:50:02.000000', b'1', 'ㅘ', 56, 41),
(194, 14, 0.938, '2026-10-30 03:50:32.000000', b'1', 'ㅖ', 57, 41),
(195, 14, 0.372, '2026-10-30 03:50:56.000000', b'1', 'ㅖ', 50, 41),
(196, 13, 0.709, '2026-10-30 03:51:05.000000', b'0', 'ㅔ', 44, 41),
(197, 21, 1, '2026-10-30 03:52:29.000000', b'1', 'ㅢ', 63, 41),
(198, 21, 0.991, '2026-10-30 03:52:31.000000', b'1', 'ㅢ', 54, 41),
(199, 21, 0.707, '2026-10-30 03:52:36.000000', b'1', 'ㅢ', 51, 41),
(200, 21, 1, '2026-10-30 03:52:42.000000', b'1', 'ㅢ', 58, 41),
(201, 22, 1, '2026-10-30 03:52:47.000000', b'0', 'ㄱ', 45, 41),
(202, 22, 1, '2026-10-30 03:52:53.000000', b'0', 'ㄱ', 47, 41),
(203, 22, 0.983, '2026-10-30 03:53:02.000000', b'0', 'ㄱ', 45, 41),
(204, 23, 1, '2026-10-30 03:53:07.000000', b'1', 'ㄴ', 53, 41),
(205, 23, 1, '2026-10-30 03:53:11.000000', b'1', 'ㄴ', 60, 41),
(206, 23, 1, '2026-10-30 03:53:15.000000', b'1', 'ㄴ', 67, 41),
(207, 24, 1, '2026-10-30 03:53:18.000000', b'0', 'ㄷ', 40, 41),
(208, 24, 1, '2026-10-30 03:53:22.000000', b'1', 'ㄷ', 51, 41),
(209, 24, 1, '2026-10-30 03:53:26.000000', b'0', 'ㄷ', 42, 41),
(210, 25, 1, '2026-10-30 03:53:30.000000', b'1', 'ㄹ', 60, 41),
(211, 25, 1, '2026-10-30 03:53:34.000000', b'1', 'ㄹ', 68, 41),
(212, 25, 0.997, '2026-10-30 03:53:38.000000', b'1', 'ㄹ', 60, 41),
(213, 26, 1, '2026-10-30 03:53:42.000000', b'1', 'ㅁ', 59, 41),
(214, 26, 1, '2026-10-30 03:53:46.000000', b'1', 'ㅁ', 57, 41),
(215, 26, 0.991, '2026-10-30 03:53:51.000000', b'1', 'ㅁ', 56, 41),
(216, 27, 1, '2026-10-30 03:53:56.000000', b'1', 'ㅂ', 51, 41),
(217, 27, 1, '2026-10-30 03:54:00.000000', b'0', 'ㅂ', 46, 41),
(218, 27, 1, '2026-10-30 03:54:05.000000', b'0', 'ㅂ', 47, 41),
(219, 28, 1, '2026-10-30 03:54:09.000000', b'0', 'ㅅ', 37, 41),
(220, 28, 0.923, '2026-10-30 03:54:14.000000', b'0', 'ㅅ', 18, 41),
(221, 28, 1, '2026-10-30 03:54:15.000000', b'0', 'ㅅ', 37, 41),
(222, 28, 1, '2026-10-30 03:54:19.000000', b'1', 'ㅅ', 66, 41),
(223, 29, 1, '2026-10-30 03:54:27.000000', b'1', 'ㅇ', 62, 41),
(224, 29, 1, '2026-10-30 03:54:30.000000', b'1', 'ㅇ', 52, 41),
(225, 29, 0.949, '2026-10-30 03:54:34.000000', b'1', 'ㅇ', 62, 41),
(226, 30, 1, '2026-10-30 03:54:39.000000', b'1', 'ㅈ', 52, 41),
(227, 30, 1, '2026-10-30 03:54:43.000000', b'1', 'ㅈ', 60, 41),
(228, 30, 1, '2026-10-30 03:54:47.000000', b'1', 'ㅈ', 58, 41),
(229, 31, 0.882, '2026-10-30 03:54:52.000000', b'0', 'ㅊ', 45, 41),
(230, 31, 0.964, '2026-10-30 03:54:55.000000', b'1', 'ㅊ', 51, 41),
(231, 32, 1, '2026-10-30 03:55:18.000000', b'0', 'ㅋ', 37, 41),
(232, 32, 0.583, '2026-10-30 03:55:22.000000', b'0', 'ㅋ', 40, 41),
(233, 32, 1, '2026-10-30 03:55:27.000000', b'1', 'ㅋ', 52, 41),
(234, 33, 0.837, '2026-10-30 03:55:31.000000', b'0', 'ㅌ', 45, 41),
(235, 33, 0.999, '2026-10-30 03:55:35.000000', b'1', 'ㅌ', 68, 41),
(236, 33, 0.554, '2026-10-30 03:55:41.000000', b'0', 'ㅌ', 46, 41),
(237, 34, 0.924, '2026-10-30 03:55:49.000000', b'0', 'ㅍ', 43, 41),
(238, 34, 0.997, '2026-10-30 03:55:54.000000', b'0', 'ㅍ', 45, 41),
(239, 35, 1, '2026-10-30 03:56:11.000000', b'1', 'ㅎ', 51, 41),
(240, 35, 1, '2026-10-30 03:56:15.000000', b'0', 'ㅎ', 48, 41),
(241, 35, 1, '2026-10-30 03:56:24.000000', b'0', 'ㅎ', 43, 41),
(242, 36, 0.691, '2026-10-30 03:56:30.000000', b'0', 'ㄲ', 37, 41),
(243, 36, 1, '2026-10-30 03:56:38.000000', b'1', 'ㄲ', 59, 41),
(244, 36, 1, '2026-10-30 03:56:42.000000', b'0', 'ㄲ', 49, 41),
(245, 38, 1, '2026-10-30 03:57:05.000000', b'1', 'ㅃ', 58, 41),
(246, 38, 0.997, '2026-10-30 03:57:12.000000', b'1', 'ㅃ', 61, 41),
(247, 38, 0.927, '2026-10-30 03:57:20.000000', b'1', 'ㅃ', 60, 41),
(248, 39, 1, '2026-10-30 03:57:25.000000', b'1', 'ㅆ', 63, 41),
(249, 39, 1, '2026-10-30 03:57:29.000000', b'1', 'ㅆ', 54, 41),
(250, 39, 1, '2026-10-30 03:57:34.000000', b'1', 'ㅆ', 58, 41),
(251, 40, 0.678, '2026-10-30 07:10:21.000000', b'0', 'ㅉ', 49, 41),
(252, 40, 0.383, '2026-10-30 07:10:41.000000', b'0', 'ㅉ', 46, 41),
(253, 40, 0.745, '2026-10-30 07:10:51.000000', b'0', 'ㅉ', 43, 41),
(254, 1, 1, '2026-10-31 03:25:04.000000', b'0', 'ㅏ', 40, 42),
(255, 1, 1, '2026-11-03 11:22:02.000000', b'0', 'ㅏ', 38, 42),
(256, 1, 1, '2026-11-03 11:55:16.000000', b'0', 'ㅏ', 44, 45),
(257, 6, 1, '2026-11-03 11:55:48.000000', b'0', 'ㅛ', 43, 45),
(258, 32, 1, '2026-11-03 11:55:53.000000', b'1', 'ㅋ', 70, 45),
(259, 7, 1, '2026-11-03 12:52:32.000000', b'1', 'ㅜ', 52, 45),
(260, 7, 1, '2026-11-07 07:10:01.000000', b'0', 'ㅜ', 33, 41),
(261, 8, 1, '2026-11-07 13:54:50.000000', b'1', 'ㅠ', 53, 41),
(262, 7, 1, '2026-11-11 02:57:56.000000', b'1', 'ㅜ', 63, 46),
(263, 5, 1, '2026-11-13 02:59:40.000000', b'0', 'ㅗ', 16, 41),
(264, 7, 1, '2026-11-13 03:25:34.000000', b'1', 'ㅜ', 51, 41),
(265, 5, 1, '2026-11-15 09:09:04.000000', b'0', 'ㅗ', 14, 41),
(266, 5, 1, '2026-11-15 09:10:09.000000', b'0', 'ㅗ', 21, 41),
(267, 5, 1, '2026-11-15 09:10:40.000000', b'0', 'ㅗ', 16, 41),
(268, 5, 1, '2026-11-15 09:10:47.000000', b'0', 'ㅗ', 14, 41),
(269, 5, 1, '2026-11-15 09:10:57.000000', b'0', 'ㅗ', 16, 41),
(270, 5, 0.802, '2026-11-15 09:11:10.000000', b'0', 'ㅗ', 21, 41),
(271, 5, 1, '2026-11-15 09:11:26.000000', b'0', 'ㅗ', 16, 41),
(272, 5, 0.684, '2026-11-15 09:11:49.000000', b'0', 'ㅗ', 32, 41),
(273, 5, 1, '2026-11-15 09:12:01.000000', b'0', 'ㅗ', 12, 41),
(274, 5, 1, '2026-11-15 09:12:17.000000', b'0', 'ㅗ', 14, 41),
(275, 5, 1, '2026-11-16 03:54:05.000000', b'0', 'ㅗ', 13, 41),
(276, 5, 1, '2026-11-16 03:55:35.000000', b'0', 'ㅗ', 13, 41),
(277, 5, 1, '2026-11-16 03:56:01.000000', b'0', 'ㅗ', 18, 41),
(278, 5, 1, '2026-11-16 04:03:31.000000', b'0', 'ㅗ', 15, 41),
(279, 7, 1, '2026-11-17 08:19:42.000000', b'1', 'ㅜ', 67, 41);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) NOT NULL,
  `media_url` varchar(255) DEFAULT NULL,
  `question_text` varchar(255) DEFAULT NULL,
  `quiz_id` bigint(20) DEFAULT NULL,
  `is_audio` bit(1) NOT NULL,
  `is_question_audio` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `media_url`, `question_text`, `quiz_id`, `is_audio`, `is_question_audio`) VALUES
(1, 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/a_audio_bmca4o.m4a', 'Chữ \'ㅏ\' phát âm là gì?', 1, b'1', b'0'),
(2, 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791262/eo_audio_cxmz20.mp3', 'Đâu là nguyên âm đọc là \'eo\'?', 1, b'0', b'1'),
(3, 'https://res.cloudinary.com/dqzuuzi8z/video/upload/v1788791308/u_audio_gespko.mp3', 'Đâu là nguyên âm đọc là \'u\'?', 1, b'0', b'1'),
(4, NULL, 'Đâu là nguyên âm đọc là \'yo\'?', 1, b'0', b'0'),
(5, NULL, 'Nguyên âm \'ㅣ\' có bao nhiêu nét viết?', 1, b'0', b'0'),
(6, NULL, 'Đâu là phụ âm đọc là \'n\'?', 2, b'0', b'0'),
(7, NULL, 'Đâu là phụ âm đọc là \'m\'?', 2, b'0', b'0'),
(8, NULL, 'Phụ âm \'ㄱ\' có bao nhiêu nét viết?', 2, b'0', b'0'),
(9, NULL, 'Đâu là phụ âm đọc là \'d\'?', 2, b'0', b'0'),
(10, NULL, 'ㅂ + ㅏ + ㅂ (patchim) ghép thành chữ nào?', 3, b'0', b'0'),
(11, NULL, 'ㄱ + ㅗ + ㅁ (patchim) ghép thành chữ nào?', 3, b'0', b'0'),
(12, NULL, 'ㅈ + ㅣ + ㅂ (patchim) ghép thành chữ nào?', 3, b'0', b'0'),
(13, NULL, 'ㅅ + ㅏ + ㄴ (patchim) ghép thành chữ nào?', 3, b'0', b'0'),
(14, NULL, 'Chữ \'밥\' (cơm) được ghép từ những thành phần nào?', 3, b'0', b'0'),
(15, NULL, 'ㄷ + ㅏ + ㄺ (patchim đôi) ghép thành chữ nào?', 4, b'0', b'0'),
(16, NULL, 'ㄱ + ㅏ + ㅄ (patchim đôi) ghép thành chữ nào?', 4, b'0', b'0'),
(17, NULL, 'ㅇ + ㅏ + ㄵ (patchim đôi) ghép thành chữ nào?', 4, b'0', b'0'),
(18, NULL, 'ㅁ + ㅏ + ㄶ (patchim đôi) ghép thành chữ nào?', 4, b'0', b'0'),
(19, NULL, 'Chữ \'삶\' (cuộc sống) được ghép từ những thành phần nào?', 4, b'0', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quizzes`
--

INSERT INTO `quizzes` (`id`, `description`, `title`) VALUES
(1, NULL, 'Trắc nghiệm nguyên âm cơ bản'),
(2, NULL, 'Trắc nghiệm phụ âm cơ bản'),
(3, NULL, 'Trắc nghiệm âm ghép với patchim đơn'),
(4, NULL, 'Trắc nghiệm âm ghép với patchim đôi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quiz_attempts`
--

CREATE TABLE `quiz_attempts` (
  `id` bigint(20) NOT NULL,
  `completed_date` date DEFAULT NULL,
  `score` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `quiz_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quiz_attempts`
--

INSERT INTO `quiz_attempts` (`id`, `completed_date`, `score`, `total_questions`, `quiz_id`, `user_id`) VALUES
(44, '2026-10-23', 3, 5, 1, 41),
(45, '2026-11-03', 3, 6, 1, 45);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reset_pass`
--

CREATE TABLE `reset_pass` (
  `id` bigint(20) NOT NULL,
  `expired_at` datetime(6) DEFAULT NULL,
  `auth_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reset_pass`
--

INSERT INTO `reset_pass` (`id`, `expired_at`, `auth_id`) VALUES
(8, '2026-08-01 05:15:09.000000', 22),
(9, '2026-08-07 05:22:02.000000', 22),
(14, '2026-09-17 13:00:18.000000', 22),
(15, '2026-10-17 02:31:47.000000', 40),
(16, '2026-10-30 14:16:33.000000', 57),
(17, '2026-10-30 14:24:29.000000', 57),
(18, '2026-10-30 14:31:26.000000', 57),
(19, '2026-11-03 07:02:41.000000', 57),
(20, '2026-11-03 11:59:31.000000', 60),
(21, '2026-11-12 14:53:58.000000', 22),
(22, '2026-11-12 14:56:53.000000', 22),
(23, '2026-11-12 14:58:59.000000', 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `number_phone` varchar(255) DEFAULT NULL,
  `auth_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `number_phone`, `auth_id`) VALUES
(1, 'Tran Minh', '1234', 22),
(11, 'minhadmin', NULL, 26),
(17, 'minh', '123', 32),
(20, 'minh', '123', 35),
(24, 'minh', '12', 39),
(25, 'Tran Minh', '999234567890', 40),
(26, '123', '123456', 41),
(27, 'minhquoc', NULL, 42),
(40, 'minh', NULL, 55),
(41, 'Minh Trần', NULL, 56),
(42, 'minh quoc', NULL, 57),
(45, 'nguyen thu', NULL, 60),
(46, 'minh', NULL, 61),
(47, 'minh quoc', NULL, 62);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_lesson_progress`
--

CREATE TABLE `user_lesson_progress` (
  `id` bigint(20) NOT NULL,
  `completed_at` datetime(6) DEFAULT NULL,
  `is_learned` bit(1) NOT NULL,
  `lesson_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_lesson_progress`
--

INSERT INTO `user_lesson_progress` (`id`, `completed_at`, `is_learned`, `lesson_id`, `user_id`) VALUES
(13, NULL, b'1', 6, NULL),
(14, NULL, b'1', 6, NULL),
(15, NULL, b'1', 6, NULL),
(16, NULL, b'1', 1, NULL),
(17, NULL, b'1', 1, NULL),
(18, NULL, b'1', 1, NULL),
(19, NULL, b'1', 2, NULL),
(20, NULL, b'1', 4, NULL),
(21, NULL, b'1', 4, NULL),
(22, NULL, b'1', 4, NULL),
(23, NULL, b'1', 5, NULL),
(24, NULL, b'1', 5, NULL),
(25, NULL, b'0', 5, NULL),
(26, NULL, b'0', 5, NULL),
(27, NULL, b'0', 6, NULL),
(34, NULL, b'0', 1, 24),
(35, NULL, b'0', 2, 24),
(36, NULL, b'0', 3, 24),
(37, NULL, b'0', 4, 24),
(38, NULL, b'0', 5, 24),
(39, NULL, b'0', 6, 24),
(82, NULL, b'0', 1, 41),
(83, NULL, b'0', 2, 41),
(84, '2026-10-23 12:16:02.000000', b'1', 3, 41),
(85, '2026-10-23 12:31:56.000000', b'1', 4, 41),
(86, '2026-10-31 12:54:27.000000', b'1', 5, 41),
(87, NULL, b'0', 6, 41),
(88, '2026-11-09 12:45:32.000000', b'1', 29, 41),
(96, NULL, b'0', 1, 42),
(97, NULL, b'0', 2, 42),
(98, NULL, b'0', 3, 42),
(99, NULL, b'0', 4, 42),
(100, NULL, b'0', 5, 42),
(101, NULL, b'0', 6, 42),
(102, NULL, b'1', 29, 42),
(103, NULL, b'0', 1, 45),
(104, NULL, b'0', 2, 45),
(105, '2026-11-03 11:55:28.000000', b'1', 3, 45),
(106, NULL, b'0', 4, 45),
(107, NULL, b'0', 5, 45),
(108, NULL, b'0', 6, 45),
(109, NULL, b'1', 29, 45),
(110, NULL, b'0', 1, 46),
(111, NULL, b'0', 2, 46),
(112, '2026-11-11 02:13:13.000000', b'1', 3, 46),
(113, '2026-11-11 02:27:06.000000', b'1', 4, 46),
(114, NULL, b'0', 5, 46),
(115, NULL, b'0', 6, 46),
(116, '2026-11-11 02:36:02.000000', b'1', 29, 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_level`
--

CREATE TABLE `user_level` (
  `id` bigint(20) NOT NULL,
  `level` enum('ADVANCED','BEGINNER') DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_level`
--

INSERT INTO `user_level` (`id`, `level`, `user_id`) VALUES
(25, 'BEGINNER', NULL),
(26, 'BEGINNER', NULL),
(27, 'BEGINNER', NULL),
(28, 'BEGINNER', 40),
(29, 'ADVANCED', 41),
(30, 'BEGINNER', 42),
(31, 'BEGINNER', 45),
(32, 'ADVANCED', 46),
(33, 'BEGINNER', 47);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_streaks`
--

CREATE TABLE `user_streaks` (
  `id` bigint(20) NOT NULL,
  `current_streak` int(11) NOT NULL,
  `last_check_in_date` date DEFAULT NULL,
  `longest_streak` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_streaks`
--

INSERT INTO `user_streaks` (`id`, `current_streak`, `last_check_in_date`, `longest_streak`, `user_id`) VALUES
(1, 1, '2026-09-13', 4, 24),
(4, 2, '2026-10-18', 2, 25),
(7, 1, '2026-10-23', 1, 40),
(8, 1, '2026-11-13', 3, 41),
(9, 2, '2026-11-04', 2, 45);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `verify`
--

CREATE TABLE `verify` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `expired_at` datetime(6) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `auth_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `verify`
--

INSERT INTO `verify` (`id`, `code`, `expired_at`, `status`, `auth_id`) VALUES
(28, '$2a$10$sXv/ZoB4BccTZ9G/jZJOFONnitnsm0VH/fuIX8ETC4yKJpZNd7pr6', '2026-08-05 15:32:52.000000', b'1', 22),
(29, '$2a$10$J89G8xKnkfWm0D3zirhoLO4AgodPytGYs6obBB56PKuntyAlLJhim', '2026-08-18 09:53:20.000000', b'1', 26),
(33, '$2a$10$dby/Etp/iGMm8J.Y9aOYAu0fAV9fUjKsqhB/ALPS09z4uw6SQpxfK', '2026-10-17 02:31:21.000000', b'1', 40),
(34, '$2a$10$RAXMw9uZkIn7b01vKNgUwOA2Fz5Gj6BCePozWnSq/wsPc6ryFvQQa', '2026-10-23 03:33:08.000000', b'0', 42),
(37, '$2a$10$4O.5u.B.vaOAWwqk40MMXul1a34S2uXrYFO2eCVLvSr3fVNNu1Nhq', '2026-10-23 07:33:26.000000', b'1', 55),
(38, '$2a$10$5t39y7ixzrA7lp16plwVvOAUX3JSz6WxAqSfdOrGDRGCy.e6TH0Ce', '2026-10-30 14:10:17.000000', b'1', 57),
(39, '$2a$10$ell6HrmnRdqY5fYU5dZ3bOEBayjQI4w7i7HkyP2LxZtgxpu27bHAG', '2026-10-31 05:47:10.000000', b'0', 57),
(40, '$2a$10$bMX9dSKOoIXpyOKfe4svT.BT/bWWRUsJ..aNRo0hw/MUzo1czkWoS', '2026-10-31 05:48:38.000000', b'0', 57),
(41, '$2a$10$bInWkDfvhH/pW1/fRwAGceDrcdYZjK3ufhprvBGg.CJb5ggUQjagy', '2026-11-03 11:59:09.000000', b'1', 60),
(42, '$2a$10$X88WOSHItz/.D/hcSxKKuuvQxp2fNVhpG0e51dw7UPKlHnc2DX2YK', '2026-11-11 00:58:56.000000', b'1', 61),
(43, '$2a$10$ZXF.NYdBtyXUMpWGmie4yOK8YpAMGgd.2pqAJ1Ls2V4ujNID4x1dy', '2026-11-12 14:23:17.000000', b'0', 62),
(44, '$2a$10$ozsNAzzN1f450hCO2j5zTO2r/XQjGJpLXlVGsm7nvzLVr73bMp/ii', '2026-11-12 14:24:37.000000', b'0', 62);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_stroke_data`
--
ALTER TABLE `admin_stroke_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkxr9wqxmyxkdk6v790yhpjng4` (`char_id`);

--
-- Chỉ mục cho bảng `admin_temp_data`
--
ALTER TABLE `admin_temp_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3dbx6v2ujiilrvghf7pus2wqq` (`char_id`);

--
-- Chỉ mục cho bảng `auths`
--
ALTER TABLE `auths`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exam_config`
--
ALTER TABLE `exam_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lesson_category_route`
--
ALTER TABLE `lesson_category_route`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lesson_content`
--
ALTER TABLE `lesson_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhquy5iu3fl7bpdr1e89pkvnp9` (`lesson_route_id`);

--
-- Chỉ mục cho bảng `lesson_route`
--
ALTER TABLE `lesson_route`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKetyv7lndiv7259sphwjxk3ko9` (`quiz_id`),
  ADD KEY `FKe7otwp9pvfoedgk91ry5kgubi` (`cate_route_id`);

--
-- Chỉ mục cho bảng `level-exam`
--
ALTER TABLE `level-exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8ja842kb4giwsi2nkvw4yre6c` (`user_id`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5bmv46so2y5igt9o9n9w4fh6y` (`question_id`);

--
-- Chỉ mục cho bảng `practices`
--
ALTER TABLE `practices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpvmtnkwl53nj25kdv5wrhoycm` (`user_id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn3gvco4b0kewxc0bywf1igfms` (`quiz_id`);

--
-- Chỉ mục cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfwipvfipnnwsoacoyv5k7fbxc` (`quiz_id`),
  ADD KEY `FKpj4a9hw0iv1mo1ut6rppg594u` (`user_id`);

--
-- Chỉ mục cho bảng `reset_pass`
--
ALTER TABLE `reset_pass`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqw55ybhn6nhln6omvo3er8b4w` (`auth_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKbptc7wc5t9qe57nk56riv5hal` (`auth_id`);

--
-- Chỉ mục cho bảng `user_lesson_progress`
--
ALTER TABLE `user_lesson_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgxrqg983ts83f3b8fpa5rq47p` (`lesson_id`),
  ADD KEY `FK15tdn9l75kjm9imsarb223k9q` (`user_id`);

--
-- Chỉ mục cho bảng `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKrun6cjl0mj7l0exyt363br0oo` (`user_id`);

--
-- Chỉ mục cho bảng `user_streaks`
--
ALTER TABLE `user_streaks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKohm7b8slvdgmrmgisi5sg2uye` (`user_id`);

--
-- Chỉ mục cho bảng `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1okiqbcop59v54lcgickivml9` (`auth_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_stroke_data`
--
ALTER TABLE `admin_stroke_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `admin_temp_data`
--
ALTER TABLE `admin_temp_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `auths`
--
ALTER TABLE `auths`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `characters`
--
ALTER TABLE `characters`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `exam_config`
--
ALTER TABLE `exam_config`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `lesson_category_route`
--
ALTER TABLE `lesson_category_route`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `lesson_content`
--
ALTER TABLE `lesson_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `lesson_route`
--
ALTER TABLE `lesson_route`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `level-exam`
--
ALTER TABLE `level-exam`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT cho bảng `practices`
--
ALTER TABLE `practices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `reset_pass`
--
ALTER TABLE `reset_pass`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `user_lesson_progress`
--
ALTER TABLE `user_lesson_progress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `user_streaks`
--
ALTER TABLE `user_streaks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `verify`
--
ALTER TABLE `verify`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin_stroke_data`
--
ALTER TABLE `admin_stroke_data`
  ADD CONSTRAINT `FKkxr9wqxmyxkdk6v790yhpjng4` FOREIGN KEY (`char_id`) REFERENCES `characters` (`id`);

--
-- Các ràng buộc cho bảng `admin_temp_data`
--
ALTER TABLE `admin_temp_data`
  ADD CONSTRAINT `FK3dbx6v2ujiilrvghf7pus2wqq` FOREIGN KEY (`char_id`) REFERENCES `characters` (`id`);

--
-- Các ràng buộc cho bảng `lesson_content`
--
ALTER TABLE `lesson_content`
  ADD CONSTRAINT `FKhquy5iu3fl7bpdr1e89pkvnp9` FOREIGN KEY (`lesson_route_id`) REFERENCES `lesson_route` (`id`);

--
-- Các ràng buộc cho bảng `lesson_route`
--
ALTER TABLE `lesson_route`
  ADD CONSTRAINT `FK8oj16qoond3d2mxldb3l40t0h` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`),
  ADD CONSTRAINT `FKe7otwp9pvfoedgk91ry5kgubi` FOREIGN KEY (`cate_route_id`) REFERENCES `lesson_category_route` (`id`);

--
-- Các ràng buộc cho bảng `level-exam`
--
ALTER TABLE `level-exam`
  ADD CONSTRAINT `FK8ja842kb4giwsi2nkvw4yre6c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `FK5bmv46so2y5igt9o9n9w4fh6y` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Các ràng buộc cho bảng `practices`
--
ALTER TABLE `practices`
  ADD CONSTRAINT `FKpvmtnkwl53nj25kdv5wrhoycm` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FKn3gvco4b0kewxc0bywf1igfms` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Các ràng buộc cho bảng `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD CONSTRAINT `FKfwipvfipnnwsoacoyv5k7fbxc` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`),
  ADD CONSTRAINT `FKpj4a9hw0iv1mo1ut6rppg594u` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `reset_pass`
--
ALTER TABLE `reset_pass`
  ADD CONSTRAINT `FKqw55ybhn6nhln6omvo3er8b4w` FOREIGN KEY (`auth_id`) REFERENCES `auths` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FKqc0v7kwyqn2kthnxl5enypu2t` FOREIGN KEY (`auth_id`) REFERENCES `auths` (`id`);

--
-- Các ràng buộc cho bảng `user_lesson_progress`
--
ALTER TABLE `user_lesson_progress`
  ADD CONSTRAINT `FK15tdn9l75kjm9imsarb223k9q` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKgxrqg983ts83f3b8fpa5rq47p` FOREIGN KEY (`lesson_id`) REFERENCES `lesson_route` (`id`);

--
-- Các ràng buộc cho bảng `user_level`
--
ALTER TABLE `user_level`
  ADD CONSTRAINT `FKc01x4qr4bey54ybtjj6f9qinn` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `user_streaks`
--
ALTER TABLE `user_streaks`
  ADD CONSTRAINT `FKheh91lxslxss2h8mhvtsp0aog` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `verify`
--
ALTER TABLE `verify`
  ADD CONSTRAINT `FK1okiqbcop59v54lcgickivml9` FOREIGN KEY (`auth_id`) REFERENCES `auths` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
