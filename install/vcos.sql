-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2025 at 03:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vcos`
--

-- --------------------------------------------------------

--
-- Table structure for table `rms_sync_record`
--

CREATE TABLE `rms_sync_record` (
  `id` int(11) NOT NULL,
  `sync_name` varchar(100) NOT NULL,
  `sync_time` datetime NOT NULL,
  `result` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rms_sync_record`
--

INSERT INTO `rms_sync_record` (`id`, `sync_name`, `sync_time`, `result`) VALUES
(1, 'personal', '2025-07-22 14:50:20', 'ok'),
(2, 'personal', '2025-07-22 14:50:42', 'ok'),
(3, 'personal', '2025-07-22 18:58:51', 'ok'),
(4, 'personal', '2025-07-22 19:02:04', 'ok'),
(5, 'personal', '2025-07-22 19:02:23', 'ok'),
(6, 'personal', '2025-07-22 19:02:47', 'ok'),
(7, 'personal', '2025-07-22 19:03:46', 'ok'),
(8, 'personal', '2025-07-22 19:04:56', 'ok'),
(9, 'personal', '2025-07-22 19:05:12', 'ok'),
(10, 'personal', '2025-07-22 19:05:35', 'ok'),
(11, 'personal', '2025-07-22 19:06:21', 'ok'),
(12, 'personal', '2025-07-22 19:06:54', 'ok'),
(13, 'personal', '2025-07-22 19:09:12', 'ok'),
(14, 'personal', '2025-07-22 19:09:57', 'ok'),
(15, 'personal', '2025-07-22 19:10:12', 'ok'),
(16, 'personal', '2025-07-22 19:11:27', 'ok'),
(17, 'personal', '2025-07-22 19:18:31', 'ok'),
(18, 'personal', '2025-07-22 19:27:11', 'ok'),
(19, 'personal', '2025-07-22 19:28:53', 'ok'),
(20, 'personal', '2025-07-22 19:29:17', 'ok'),
(21, 'personal', '2025-07-22 19:30:59', 'ok'),
(22, 'personal', '2025-07-22 19:32:36', 'ok'),
(23, 'personal', '2025-07-22 19:38:43', 'ok'),
(24, 'personal', '2025-07-22 19:49:23', 'ok'),
(25, 'personal', '2025-07-22 19:49:40', 'ok'),
(26, 'personal', '2025-07-22 19:57:14', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE `system_config` (
  `id` varchar(32) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`id`, `value`) VALUES
('rms_url', 'https://rms.rvc.ac.th'),
('systemName', 'Vocational college OS'),
('systemSubName', 'VCOS'),
('systemThaiName', 'ระบบจัดการเว็บไซต์สำหรับอาชีวศึกษา');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `citizen_id` varchar(13) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `user_type_id` int(11) NOT NULL DEFAULT 2,
  `picture` varchar(100) DEFAULT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `citizen_id`, `username`, `password`, `email`, `name`, `surname`, `user_type_id`, `picture`, `active`) VALUES
(1, NULL, 'dev', '81dc9bdb52d04dc20036dbd8313ed055', 'noppol.ins@gmail.com', 'นพพล', 'อินศร', 1, 'ZGV2.jpg', '1'),
(918, '9999999999999', 'admin', 'ed0d88669a24ceefa42dbf329f20a81b', '', 'นายผู้ดูแลระบบ', 'วิทยาลัย', 4, '', '0'),
(919, '3451400598282', '3451400598282', '761ce41252fa5bc2356b2e177bff6186', 'surachai@rvc.ac.th', 'นายสุระชัย', 'วิเศษโวหาร', 4, 'https://rms.rvc.ac.th/files/98282_24080617171916.jpg', '0'),
(920, '5440600024871', '5440600024871', '7b03ced178ecc07321d4909aeffd3c80', 'chaow101@hotmail.com', 'นายเชาวฤทธิ์', 'ลำพาย', 4, 'https://rms.rvc.ac.th/files/24871_21112320203355.jpg', '0'),
(921, '3451000208622', '3451000208622', 'b57968025aae3b10b900a85b6948b5cd', 'kamonwan.p@ovec.moe.go.th', 'นางกมลวันท์', 'ปริเตนัง', 4, 'https://rms.rvc.ac.th/files/08622_25051820201909.jpeg', '0'),
(922, '3459900079095', '3459900079095', '974bad4128f48779f3e871dcab5b0ee6', 'rain.teeradet@gmail.com', 'นายอดิศักดิ์', 'สาสีเสาร์', 4, 'https://rms.rvc.ac.th/files/79095_2111240775710.jpg', '0'),
(923, '3450900375893', '3450900375893', '76dcdfc23a66a80e8714ab86ecfdfd82', 'wipawadee.plo@rvc.ac.th', 'นางสาววิภาวดี', 'โพธิ์ละเดา', 4, 'https://rms.rvc.ac.th/files/75893_25051414141151.pdf', '0'),
(924, '3320500445143', '3320500445143', 'c854799ab7ee513e5aeba9557668878b', 'mansmily@rvc.ac.th', 'นายมานพ', 'รำจวน', 4, '', '0'),
(925, '3330100065769', '3330100065769', '65c77cfb2987b4bfadb29d774123e3fa', 'aimon0951698839@gmail.com', 'นางเอมอร', 'กุลสุข', 4, 'https://rms.rvc.ac.th/files/65769_21112212125430.jpg', '0'),
(926, '3450300180854', '3450300180854', '19be7006378d7a2af8580568ad41c63f', '', 'นางอาภรณ์', 'ปัตะเวสัง', 4, '', '0'),
(927, '3459900061749', '3459900061749', '19c6aa69c8b4643b3f91d1d384dbff27', 'Krukairvc8@gmail.com', 'นางอัธยา', 'พามนตรี', 4, '', '0'),
(928, '3450100914501', '3450100914501', 'bd7dc459081080fa0c8c5d93e99b567c', 'r.ing@hotmail.com', 'นางสาวอัปศร', 'อุ่นสมัย', 4, 'https://rms.rvc.ac.th/files/14501_2111210993109.jpg', '0'),
(929, '3449900022794', '3449900022794', '7a674153c63cff1ad7f0e261c369ab2c', '', 'นางสาวอังคณา', 'บุญหล้า', 4, 'https://rms.rvc.ac.th/files/22794_21122012121456.jpg', '0'),
(930, '3321200145871', '3321200145871', '4f791cad7940d9cecf1ea4786a33cc57', 'onuma.butr@rvc.ac.th', 'นางสาวอรอุมา', 'บุตรแสง', 4, 'https://rms.rvc.ac.th/files/45871_2501240992212.jpg', '0'),
(931, '3330400152489', '3330400152489', '9587e722b6cad6c6fba6276c69aba39b', '', 'นายอภิชาติ', 'สอนจิตร', 4, 'https://rms.rvc.ac.th/files/52489_21112419192906.jpg', '0'),
(932, '3401800220112', 'Suwimol', '4889cd5b8933c54b24c2748c96f7463d', 'aj.suwimoldk@gmail.com', 'นางสาวสุวิมล', 'เอ็นดู', 4, 'https://rms.rvc.ac.th/files/20112_23031014140358.jpg', '0'),
(933, '3309600100600', '3309600100600', '25d55ad283aa400af464c76d713c07ad', 'Suteek7@gmail.com', 'ผ.ศ.สุธี', 'เกินกลาง', 4, 'https://rms.rvc.ac.th/files/00600_21110815151111.jpg', '0'),
(934, '3459900301839', 'noinoi', '179d93e13272be6e56cc4ad4f2f95873', 'sudsaguansunakarat@gmail.com', 'นางสุดสงวน', 'สุนาคราช', 4, 'https://rms.rvc.ac.th/files/01839_21112213134943.jpeg', '0'),
(935, '3450101404540', '3450101404540', '43f7788e1548092f5e095e3e0411fc10', 'suphawan@rvc.ac.th', 'นางศุภวรรณ', 'เขตเจริญ', 4, 'https://rms.rvc.ac.th/files/04540_21110620203106.png', '0'),
(936, '1450100020733', '1450100020733', 'f11d631569236f3fd26028a1febc3977', 'saksaktony@gmail.com', 'นายศักดิ์ชัย', 'สีหามงคล', 4, 'https://rms.rvc.ac.th/files/20733_21112212121133.jpg', '0'),
(937, '3459900266693', '3459900266693', 'ade9171d8a2cbd7f71ac0c04987e8d5c', 'saranyarvc@ac.th', 'นางศรัญญา', 'ภาษี', 4, 'https://rms.rvc.ac.th/files/66693_22033014140004.jpg', '0'),
(938, '3440100775421', '3440100775421', 'b1c100b27efc7a05820357bb22593731', 'saranyaraksapakdee@gmail.com', 'นางสาวศรัญยา', 'รักษาภักดี', 4, 'https://rms.rvc.ac.th/files/75421_22021910103538.jpg', '0'),
(939, '3450101146265', '3450101146265', 'a20f949740104984d1da8b04a81680c4', 'wimonchansathain@gmail.com', 'นางวิมล', 'วงค์คำแก้ว', 4, '', '0'),
(940, '3450101322691', '3450101322691', '5dab3f4b55cd618a65ba506803de5ebb', 'wiparut34501@gmail.com', 'นางวิภารัตน์', 'หอมอินทร์', 4, 'https://rms.rvc.ac.th/files/22691_2111240775126.jpg', '0'),
(941, '3420400100399', '3420400100399', 'cd8069f43b9a49f3a9a93ee059afbd40', 'nano03012553@gmail.com', 'นายภูมิวดล', 'เต็มสอาด', 4, 'https://rms.rvc.ac.th/files/00399_2507220771919.jpeg', '0'),
(942, '3450101037598', '3450101037598', 'fe41ebb6105da2b34fa054191a3d57ba', '', 'นางมัลลิกา', 'ศรีละมนตรี', 4, '', '0'),
(943, '3450100788255', '3450100788255', '9e6a0105e232cdd14d6f452e91e3eda6', '', 'นางสาวภัทรมาศ', 'สุ่มมาตย์', 4, '', '0'),
(944, '3410400952387', '3410400952387', '8788036c6c58feed3467b2f2a32c86b2', '', 'นายพิชิต', 'แก้วหาดี', 4, '', '0'),
(945, '3450101532807', '3450101532807', 'f70c5c64e9fd5a216ccf2396692c12ab', 'Pronpa2@gmail.com', 'นางพรพิมล', 'ปาปะเก', 4, 'https://rms.rvc.ac.th/files/32807_21110510100616.jpeg', '0'),
(946, '3450100947175', '3450100947175', '54a6b30c986a3971dbda7086a518c2d6', 'pindeedee@rvc.ac.th', 'นางปิ่นฤดี', 'วิเศษสุวรรณ', 4, 'https://rms.rvc.ac.th/files/47175_24121612122822.jpg', '0'),
(947, '3401900043301', '3401900043301', 'dd17844347fe576b3311c7c9a2b4faa9', 'nitiyasriwihyad@gmail.com', 'นางสาวนิติยา', 'ศรีวิหยัด', 4, 'https://rms.rvc.ac.th/files/43301_22033018182019.jpg', '0'),
(948, '3459900211457', '3459900211457', '326342484e2ac08a02e2b74f767e8129', 'naple99@gmail.com', 'นางสาวนชนก', 'ชุปวา', 4, 'https://rms.rvc.ac.th/files/11457_24071712124721.jpg', '0'),
(949, '1450600103212', '1450600103212', '03c61046e22c30b52f093971a30a3a0f', 'thanrada.saka@gmail.com', 'นางสาวธัญรดา', 'สาคำไมย์', 4, 'https://rms.rvc.ac.th/files/03212_23041010100705.jpg', '0'),
(950, '3451100412515', '3451100412515', '20a1f21b0e70ab4e3e59c318a1123fc8', 'danitaa2523@gmail.com', 'นางสาวธัญนรัตน์', 'ธมนต์ทักษ์โภคิน', 4, 'https://rms.rvc.ac.th/files/12515_23020310100204.jpg', '0'),
(951, '3451000362796', '3451000362796', 'fd742dd352bc1d3ed0fb1787cbbe7f19', '', 'นายธรรมนูญ', 'ผันอากาศ', 4, '', '0'),
(952, '3450200134877', 'duangjai', 'e10adc3949ba59abbe56e057f20f883e', '', 'นางดวงใจ', 'สมภักดี', 4, '', '0'),
(953, '5430301061847', '5430301061847', 'e267d07e3b4f3a15323a382cea59e31c', 'arunyasa45@gmail.com', 'นางณชนก', 'แสงวงษ์', 4, 'https://rms.rvc.ac.th/files/61847_21112211114213.jpg', '0'),
(954, '3450100377263', '3450100377263', '707c8d097d2cd42c97c5a18435f17a08', '', 'นางสาวญวนจิต', 'ทุมสิทธิ์', 4, '', '0'),
(955, '3450700284789', 'phenee', '3e687bd57b52523f41746548bce8fca2', 'chaiyaha94@gmail.com  and Phenee9@gmail.com', 'นางสาวจันเพ็ญ', 'ไชยหา', 4, '', '0'),
(956, '3350800685531', '3350800685531', '2836cf566aeae095deaac2273f319ff4', 'kan@rvc.ac.th', 'นางกาญจนา', 'มุทุกัณฑ์', 4, 'https://rms.rvc.ac.th/files/85531_2305030995653.png', '0'),
(957, '3460600105572', '3460600105572', '0c54bb035b7d85b7ae31260aaf70f489', 'kansineeakkati@gmail.com', 'นางสาวกานต์ศิณี', 'อัคติ', 4, 'https://rms.rvc.ac.th/files/05572_2204070775052.jpg', '0'),
(958, '3450100787283', '3450100787283', 'ad5d0d2e217a5985b5c2ef025fa97cc6', '', 'นางสาวสำลี', 'บุญวิเศษ', 4, '', '0'),
(959, '3609800091938', 'chanya', '0342eefbb6769ae678997bdf1113f229', 'chanya.a.2552@gmail.com', 'นางธริจรรยา', 'ศรีสุธัญญาวงศ์', 4, 'https://rms.rvc.ac.th/files/91938_21112316164727.png', '0'),
(960, '1459900387133', '1459900387133', 'afe7678b73293167567c7581f1b3a806', '', 'นางสาวนนิสรา', 'อุดมรักษ์', 4, 'https://rms.rvc.ac.th/files/87133_22110210101153.jpg', '0'),
(961, '5461000007542', '5461000007542', '614d5b67325ea652da625bf9e6768abd', 'Naowartuntarabut@gmail.com', 'นางนรารัตน์', 'อันทรบุตร', 4, 'https://rms.rvc.ac.th/files/07542_25052218182146.jpeg', '0'),
(962, '3100902074834', '3100902074834', '5afbff2ba969055e7e65747c41b6085d', 'mam2512rvc@gmail.com', 'นางสุวรรณา', 'ติขิณัญญากูล', 4, 'https://rms.rvc.ac.th/files/74834_21112213132602.jpg', '0'),
(963, '3450500079588', 'aung', 'a3367d2e87e077ce042aead922748ca7', '', 'นางสาวภคพร', 'รัตนภักดี', 4, 'https://rms.rvc.ac.th/files/79588_22040411115443.jpg', '0'),
(964, '3309900931795', '3309900931795', 'd5a1cd123f1aae4c99fbad74229e1d35', 'Nengnirun25@gmail.com', 'นายนิรันดร์', 'อุดรพรหมราช', 4, '', '0'),
(965, '3450700253620', 'tavon', 'e04528a4203b25d017a124270410c114', 'tavon_w@hotmail.com', 'นายถาวร', 'วงค์คำแก้ว', 4, 'https://rms.rvc.ac.th/files/53620_2111240773237.jpg', '0'),
(966, '1459900125023', '1459900125023', 'b0bbd6d5d12bd9ca8bf1dcdc414805d1', 'kowit.ju@ovec.moe.go.th', 'นายโกวิท', 'จันทะปาละ', 4, 'https://rms.rvc.ac.th/files/25023_2111230995703.jpg', '0'),
(967, '3469900232497', '3469900232497', '25d55ad283aa400af464c76d713c07ad', 'uthaiwan3087@gmail.com', 'นางสาวอุทัยวรรณ', 'จำเริญสรรพ์', 4, 'https://rms.rvc.ac.th/files/32497_2111250882004.jpg', '0'),
(968, '3309901346756', '3309901346756', '5723ebfb75242ad46f44f72bbde1fe1c', 'arnupap432@gmail.com', 'นายอานุภาพ', 'จันทรวิบูลย์', 4, 'https://rms.rvc.ac.th/files/46756_24091814140020.png', '0'),
(969, '3450500955370', '3450500955370', '501d6360a9bec63bece5ac4e3b125d5e', 'kroo.thon143@gmail.com', 'นางชนัญชิดา', 'โมฬา', 4, 'https://rms.rvc.ac.th/files/55370_24112515155149.jpg', '0'),
(970, '1449900233721', '1449900233721', '2652f344430fa0bca2eb2ccc3e80d1ac', 'tong_244@outlook.co.th', 'ว่าที่ร้อยตรีปิยชาติ', 'ทองภูธรณ์', 4, 'https://rms.rvc.ac.th/files/33721_2111290663345.jpeg', '0'),
(971, '1459900410500', '1459900410500', 'd7274b1665caab946ac805dae1f3d46d', '', 'นางสาวนันท์นลิน', 'สวัสดิ์สละ', 4, 'https://rms.rvc.ac.th/files/10500_2111240770403.jpg', '0'),
(972, '1459900669503', '1459900669503', '4a5476bce50e29db9d2c46b0385890e7', 'nitangmo@rvc.ac.th', 'นางสาวนิภาพร', 'พิมภู', 4, 'https://rms.rvc.ac.th/files/69503_2111230990524.jpg', '0'),
(973, '3450500319520', '3450500319520', 'd783959861181721bf1da1d8764dd5db', '', 'นายบุญร่วม', 'ชำนาญเอื้อ', 4, '', '0'),
(974, '1459900661324', '1459900661324', '4e119932b10250a027c560cfbe2076ab', 'Panalee3065@gmail.com', 'นางสาวปณาลี', 'เอกวงษา', 4, 'https://rms.rvc.ac.th/files/61324_23092915154505.jpg', '0'),
(975, '3440800600020', '3440800600020', 'bb78d6e25addc6404a861b61a5a1df85', '', 'นายประสาร', 'เศษไธสง', 4, '', '0'),
(976, '1459900213429', '1459900213429', 'a5214d4584f3810f1dbc980151ace0fc', '', 'นางสาวปวีณา', 'ชาวเกวียน', 4, '', '0'),
(977, '3440300380144', '3440300380144', 'f40a68a450a27e568456c2cfc7b12cfe', '', 'นายภูวดล', 'เหล่าทองสาร', 4, '', '0'),
(978, '3450500422525', '3450500422525', '6e4f95c3df00040d15136aa4ec16f525', '', 'นายมานิต', 'ฤทธิแผลง', 4, '', '0'),
(979, '1450500031228', 'mareephon', '6f0cf0f1c51f8247213ad7d4bbbb7d72', 'mareephon@gmail.com', 'นางสาวมารีย์พร', 'จันทะคัด', 4, 'https://rms.rvc.ac.th/files/31228_24091810100406.jpg', '0'),
(980, '3450500199117', '220422', '6c88e91e9f6dfdf614ad507c69d8ec3c', '', 'นายรังษี', 'หล้าก่ำ', 4, '', '0'),
(981, '3450101286989', '3450101286989', '3afc7cb4c1e58c565c246c974e8575ce', 'gee101n@gmail.com', 'นางรัชนีกร', 'คำสวัสดิ์', 4, '', '0'),
(982, '3410101011157', 'warapron', '819818d8d3c8858dd3d7e2217056f0e4', '3410101011157', 'นางวราภรณ์', 'เม้าศรี', 4, 'https://rms.rvc.ac.th/files/11157_22021820202804.jpeg', '0'),
(983, '3341901432175', '3341901432175', 'f7dff4acdb9aa83ae8405aa8c8d8da20', '', 'นายเวียงชัย', 'เศรษฐมาตย', 4, '', '0'),
(984, '1459900484759', '1459900484759', '844de24ca6960073e7ee56c455fd8c07', 'bellreborn.2759@gmail.com', 'นางสาวสุพรรณิการ์', 'ปาปะไพ', 4, 'https://rms.rvc.ac.th/files/84759_22081114142504.jpg', '0'),
(985, '1459900472815', '1459900472815', '25d55ad283aa400af464c76d713c07ad', 'Supawan1107@gmail.com', 'นางสาวสุภาวรรณ', 'ยานะสิงห์', 4, 'https://rms.rvc.ac.th/files/72815_22120713131558.jpeg', '0'),
(986, '1451600026618', '1451600026618', '304e37478a364065454a2056f4c1e0dc', 'mai.orathai1999@gmail.com', 'นางสาวอรทัย', 'จัตวาชนม์', 4, '', '0'),
(987, '1459900271721', '1459900271721', '87019ff8954f1553a21e55edfc5dae81', 'oilry1122@gmail.com', 'นางสาวอารยา', 'สิทธิรมย์', 4, 'https://rms.rvc.ac.th/files/71721_23050310102759.jpg', '0'),
(988, '1450700116405', '1450700116405', '0fdc813ea06dabda9cc2c67f4ebd55e5', '', 'ว่าที่ร้อยตรีแอนนา', 'เยี่ยมโกศรี', 4, 'https://rms.rvc.ac.th/files/16405_21122216165417.jpg', '0'),
(989, '3330300928698', 'was', '49245bf87c1f64d5724cfc14fd4c7289', '', 'นางวาสนา', 'สระสิงห์', 4, '', '0'),
(990, '3459900155727', '3459900155727', '3576e4fbc1ca682bc1a4176e47e36140', '', 'นางอมร', 'จันทมูล', 4, '', '0'),
(991, '1459900587442', '1459900587442', '2f8176c840d6d1bc8fd2495da1dae827', 'Chal.kornkanok02@gmail.com', 'นางสาวกรกนก', 'ชาลือชัย', 4, 'https://rms.rvc.ac.th/files/87442_2111050994354.jpeg', '0'),
(992, '1459900631131', '1459900631131', '6eeba0f83e939b5283839db1dfddac55', '', 'นายปรเมศ', 'แม่นแท้', 4, '', '0'),
(993, '1459900116474', '1459900116474', 'e38e94f2e8b1c9034dc2770048a4fa49', 'porplamalisorn@gmail.com', 'นางสาวปาริมา', 'แพรสีเขียว', 4, 'https://rms.rvc.ac.th/files/16474_21112211114215.jpg', '0'),
(994, '1451400120581', '1451400120581', '907ee68e550f498a93ec82d228135c00', 'siripakk2533@gmail.com ', 'นางศิริพักตร์', 'คงคาโชติ', 4, 'https://rms.rvc.ac.th/files/20581_22033111113548.png', '0'),
(995, '1430600133111', '1430600133111', 'bc3a0357a45d7a8cf3e39a4d60687954', 'b_boripat@hotmail.com', 'นางสาวสุพิชชา', 'วงศ์เจริญ', 4, 'https://rms.rvc.ac.th/files/33111_25070515151659.jpg', '0'),
(996, '1451400159266', '1451400159266', 'e9fb3470c318fa44fab6a0430e80f0f7', '', 'นายสุริยันต์', 'โพธิโชติ', 4, '', '0'),
(997, '1409901576436', '1409901576436', 'e807f1fcf82d132f9bb018ca6738a19f', 'Keeratifilm16@gmail.com', 'นายกีรติย์', 'กอบกิจกุล', 4, 'https://rms.rvc.ac.th/files/76436_21112017174450.jpeg', '0'),
(998, '1100701056328', '1100701056328', '42a49c0d99ce546229debb9b2b5fac9a', '', 'นายเชาวลิต', 'เวียงสิมา', 4, 'https://rms.rvc.ac.th/files/56328_22032923230942.jpg', '0'),
(999, '1459900785872', '1459900785872', '6e2448f8ec3a55df6d3ad39a6cde6158', '', 'นางสาวอ่อนสวรรค์', 'จอมคำสิงห์', 4, '', '0'),
(1000, '3720200360581', 'wut', '4331d449bd47ed35dd5ee682782819c4', '', 'นายสราวุฒิ', 'น้ำจันทร์', 4, '', '0'),
(1001, '1450400166971', '1450400166971', '406344894c02b621e94506820b102cb3', '626060300334@mail.rmutk.ac.th', 'นายสวินัย', 'ไชยเวช', 4, '', '0'),
(1002, '1400200039355', '1400200039355', 'df9c4be15fc751a27fe8bf3353952e87', '', 'นางสาวพรทิวา', 'หลักคำ', 4, '', '0'),
(1003, '3450101285591', '3450101285591', '1463574a8a6daf4a73f7c1bd1f8ac3ec', '', 'นางธนพร', 'เดชบุรัมย์', 4, '', '0'),
(1004, '1450800005338', '1450800005338', 'f3d0fdef8188a7cef630c79f0181503a', 'matita.t@ovecmoe.go.th', 'นางสาวมุทิตา', 'ทนุวรรณ์', 4, 'https://rms.rvc.ac.th/files/05338_23050214145027.jpeg', '0'),
(1005, '1459900581886', '1459900581886', '6d457afb6e4dae5bfb119aa9a82e1261', 'prawini2310@gmail.com', 'นางสาวปราวิณี', 'จันทะคัด', 4, 'https://rms.rvc.ac.th/files/81886_2205270880401.jpg', '0'),
(1006, '1459900711925', '1459900711925', 'fd85cbef07d61cc62920e941dcea01c2', '', 'นางสาวรุ่งบุษบัน', 'ไชยชาติ', 4, 'https://rms.rvc.ac.th/files/11925_2305030995110.jpeg', '0'),
(1007, '1350100257122', '1350100257122', '3fe8c6579f7f6014134a08f298806db6', '', 'นางสาวภัทริกา', 'แสงพันธุ์', 4, 'https://rms.rvc.ac.th/files/57122_23031013135556.jpg', '0'),
(1008, '1341100111897', '1341100111897', '25d55ad283aa400af464c76d713c07ad', '', 'นางสาวสุรภา', 'ไชยวาน', 4, 'https://rms.rvc.ac.th/files/11897_2306230991711.png', '0'),
(1009, '1459900778329', '1459900778329', '65a938f6dd3e6f1f7de65a6f78a33b30', '', 'นางสาวนันทิพัฒน์', 'มาตย์นอก', 4, 'https://rms.rvc.ac.th/files/78329_23021515152946.jpg', '0'),
(1010, '1440100096241', 'kinoppol', 'fd140ebbb4358e395f5b10c785c271bf', 'noppol@rvc.ac.th', 'นายนพพล', 'อินศร', 4, 'https://rms.rvc.ac.th/files/96241_22100316164823.jpeg', '0'),
(1011, '1459900660417', 'wachirapan', '0a52af088684916d5aa732fe5ccfe324', '', 'นายวชิรพันธ์', 'ลำพาย', 4, 'https://rms.rvc.ac.th/files/60417_24121714144833.jpg', '0'),
(1012, '3450200590309', '3450200590309', '0397fd880fe665cdcfdbdddc3844360c', '', 'นางฐานิตา ', 'ดงยางวัน', 4, '', '0'),
(1013, '1341100336449', '1341100336449', '2b54cf0fd1ac5c63e9f7566e0dea6450', 'Konbuppha@gmail.com', 'นางสาวเจนจิรา ', 'ก้อนบุบผา', 4, '', '0'),
(1014, '3470800060149', '3470800060149', '7c5dd65a04ce0bacd5e0ba2746a59302', '', 'นางสาวรัชญา', 'คนธขจร', 4, '', '0'),
(1015, '1103703294725', '1103703294725', '37753fa33e5917bcfbf1d39af78281b4', '', 'นางสาวนฤมล', 'นำพา', 4, '', '0'),
(1016, '1459900833214', '1459900833214', '1500d2e336459f43099211757dce554d', '', 'นางสาวธีราพร', 'นนวงษ์ษา', 4, '', '0'),
(1017, '1459900782857', '1459900782857', 'b940074e367e4f738e31abdbb7ace52b', '', 'นายวิทยา', 'สาโรจน์', 4, 'https://rms.rvc.ac.th/files/82857_24092011114457.jpg', '0'),
(1018, '3469900220774', '3469900220774', '5f78f38c34b05e85bba163cef6a04be6', '', 'นางสาวมุกดา', 'ดลเจือ', 4, '', '0'),
(1019, '1309902693178', '1309902693178', 'b4f7c37bb2b2407a4afd35fe8341289e', 'supansa4707@gmail.com', 'นางสาวสุพรรษา', 'เหวขุนทด', 4, '', '0'),
(1020, '1450800064407', '1450800064407', 'cd73ef1df809c874f5e2681e3b536f82', '', 'นายจักรกฤษณ์', 'ชูศรีวาสน์', 4, 'https://rms.rvc.ac.th/files/64407_23110110105522.jpeg', '0'),
(1021, '1459900858527', '1459900858527', '17b3e0c9e51de231ccc50bce9cfa12c0', '', 'นางสาวชนิตา ', 'สุริอาจ', 4, '', '0'),
(1022, '3450500971677', '3450500971677', '7206100a40fd38a93851d4e6f718030c', '', 'นางสาวสมร ', 'สัตนาโค', 4, 'https://rms.rvc.ac.th/files/71677_23110110104636.jpeg', '0'),
(1023, '1330800278874', '1330800278874', '7c5a753d253d2d8cbdb27ca7cb198119', '', 'นางสาวกวินทิพย์', 'ไชยนะรา', 4, '', '0'),
(1024, '1451400122974', '1451400122974', '468be10b13bcaadc18a7a96f9ea1e91c', '', 'นางสาวณัฐธิยา', 'หนองหิน', 4, 'https://rms.rvc.ac.th/files/82544_23122814144357.jpg', '0'),
(1025, '1450400173331', '1450400173331', '6db81e7a12726d757f60a9e29b4d7622', '', 'นางสาวปราจรีย์', 'ทุมลา', 4, '', '0'),
(1026, '1459900793239', '1459900793239', '9759db0d58a0f9075b3c89ccfd16723a', '', 'นายภัทรชัย', 'วรรณยศ', 4, '', '0'),
(1027, '1100701183702', 'tapabnum', 'a6af70b1a22a578bc295299fc5a681de', 'krutapabnum@gmail.com', 'นางสาวสุภาดา  ', 'คำตา', 4, 'https://rms.rvc.ac.th/files/82544_24050115153137.jpg', '0'),
(1028, '1451600022922', '1451600022922', '245054109cfea9080495550996f8d275', '', 'นางสาวปิยะนันท์', 'น้อยวิบล', 4, '', '0'),
(1029, '5450400048521', 'mon', '5a3c3114359707b20529cf2865a85630', '', 'นายมนตรี ', 'แสนมาตย์', 4, '', '0'),
(1030, '1499900346381', '1499900346381', '25d55ad283aa400af464c76d713c07ad', 'pichayakorn381@gmail.com', 'นางสาวพิชญากร', 'ทาระขจัด', 4, 'https://rms.rvc.ac.th/files/46381_25052913132542.jpg', '0'),
(1031, '1409900221731', '1409900221731', '80059ca5c396a648f862f932c0fad920', '', 'นางสาวนิษา  ', 'เรืองวงศ์วิทยา', 4, '', '0'),
(1032, '1350100324300', '1350100324300', '75c40787c1d7f5f7aebfef62ceda7d92', 'Sansut.ksd@gmail.com', 'นายกฤษฎา', 'แสนสุทธิ์', 4, 'https://rms.rvc.ac.th/files/tr_1350100324300.jpg', '0'),
(1033, '1459900879206', '1459900879206', 'f9b37d3e1b314f055dae91eacd712f26', 'pimmer2250@gmail.com', 'นางสาวขวัญจิรา', 'โพธิ์ธร', 4, 'https://rms.rvc.ac.th/files/79206_24101520201858.jpg', '0'),
(1034, '1449900296235', 'Penprapa', 'cd05c9714375437ff40f7ef00d304425', 'penprapanov@gmail.com', 'นางสาวเพ็ญประภา', 'ศรีเสน่ห์', 4, 'https://rms.rvc.ac.th/files/96235_2411050884350.png', '0'),
(1035, '5450100013390', '5450100013390', 'f8196e85d579ac57edb1d3ea80e5dc6e', '', 'นางสุพักตร์ ', 'พิมพ์ทอง', 4, '', '0'),
(1036, '1102002777061', '1102002777061', 'e415ab24c90d2a561ed7556595aac76f', '', 'นายสุรศักดิ์', 'เอกเชิดชูศาสน์', 4, '', '0'),
(1037, '1349901032411', '1349901032411', '4511f2cd5518c54610af6a450414e5e2', 'peemtrakan@gmail.com', 'นายสหพัฒ', 'เครืองาม', 4, 'https://rms.rvc.ac.th/files/32411_25011923234428.jpeg', '0'),
(1038, '1350101582558', '1350101582558', '25d55ad283aa400af464c76d713c07ad', '', 'นางสาวพีรประภัส', 'คำเจริญ', 4, '', '0'),
(1039, '1410400276814', '1410400276814', 'd01682582b47f1f4a01c7859ed4cd654', '', 'นางสาวฉัตรทริกา ', 'ก้อนคำ', 4, 'https://rms.rvc.ac.th/files/76814_25031011113910.jpg', '0'),
(1040, '1450701367622', 'tanyalak', 'ad44d902680ceff467598380d7353514', '', 'นางสาวธัญญลักษณ์', 'กลอยกระโทก', 4, '', '0'),
(1041, '1440400102280', '1440400102280', 'c1cee848802bf19fb626d7c0ea8c8f9b', 'krataiperfect26@gmail.com', 'นางสาววลัยลักษณ์', 'แพงคำแสน', 4, '', '0'),
(1042, '1450200243581', '1450200243581', '3024a6e48634b649020b486e37f98d07', 'pattanunsangthong53@gmail.com', 'นายพัทธนันท์', 'แสงทอง', 4, '', '0'),
(1043, '1458700012470', '1458700012470', '5073c8c3ab9ec16efc1f4362b125351a', '', 'นวพล', 'สุจริต', 4, '', '0'),
(1044, '1459900772592', '1459900772592', '35b616f6b68c1780138a31c7499a1fd1', 'sunsk1999@gmail.com', 'นายตะวัน', 'กฤษณา', 4, '', '0'),
(1045, '1459900972133', '1459900972133', '766cc219f090e1f3b942cdb403195ade', '', 'นางสาวฐิติพร', 'บวรโมทย์', 4, '', '0'),
(1046, '3450100562524', '3450100562524', '7726d3ba1542611020f61e0ed28a6923', '', 'นางสาวแววตา', 'บุญเกษม', 4, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(32) NOT NULL,
  `active_menu` text NOT NULL,
  `active_module` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `type_name`, `active_menu`, `active_module`) VALUES
(1, 'developer', 'qa,oqas,developer,admin,user_menu', 'ocd,rms'),
(2, 'admin', 'qa,oqas,adminuser_menu', ''),
(3, 'user', 'qa,oqas,user_menu', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rms_sync_record`
--
ALTER TABLE `rms_sync_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rms_sync_record`
--
ALTER TABLE `rms_sync_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1047;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
