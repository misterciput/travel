-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2016 at 07:07 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
`id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_code`, `country_name`, `active`) VALUES
(1, 'AF', 'Afghanistan', 0),
(2, 'AL', 'Albania', 0),
(3, 'DZ', 'Algeria', 0),
(4, 'DS', 'American Samoa', 0),
(5, 'AD', 'Andorra', 0),
(6, 'AO', 'Angola', 0),
(7, 'AI', 'Anguilla', 0),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua and Barbuda', 0),
(10, 'AR', 'Argentina', 0),
(11, 'AM', 'Armenia', 0),
(12, 'AW', 'Aruba', 0),
(13, 'AU', 'Australia', 0),
(14, 'AT', 'Austria', 0),
(15, 'AZ', 'Azerbaijan', 0),
(16, 'BS', 'Bahamas', 0),
(17, 'BH', 'Bahrain', 0),
(18, 'BD', 'Bangladesh', 0),
(19, 'BB', 'Barbados', 0),
(20, 'BY', 'Belarus', 0),
(21, 'BE', 'Belgium', 0),
(22, 'BZ', 'Belize', 0),
(23, 'BJ', 'Benin', 0),
(24, 'BM', 'Bermuda', 0),
(25, 'BT', 'Bhutan', 0),
(26, 'BO', 'Bolivia', 0),
(27, 'BA', 'Bosnia and Herzegovina', 0),
(28, 'BW', 'Botswana', 0),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 0),
(31, 'IO', 'British Indian Ocean Territory', 0),
(32, 'BN', 'Brunei Darussalam', 0),
(33, 'BG', 'Bulgaria', 0),
(34, 'BF', 'Burkina Faso', 0),
(35, 'BI', 'Burundi', 0),
(36, 'KH', 'Cambodia', 0),
(37, 'CM', 'Cameroon', 0),
(38, 'CA', 'Canada', 0),
(39, 'CV', 'Cape Verde', 0),
(40, 'KY', 'Cayman Islands', 0),
(41, 'CF', 'Central African Republic', 0),
(42, 'TD', 'Chad', 0),
(43, 'CL', 'Chile', 0),
(44, 'CN', 'China', 0),
(45, 'CX', 'Christmas Island', 0),
(46, 'CC', 'Cocos (Keeling) Islands', 0),
(47, 'CO', 'Colombia', 0),
(48, 'KM', 'Comoros', 0),
(49, 'CG', 'Congo', 0),
(50, 'CK', 'Cook Islands', 0),
(51, 'CR', 'Costa Rica', 0),
(52, 'HR', 'Croatia (Hrvatska)', 0),
(53, 'CU', 'Cuba', 0),
(54, 'CY', 'Cyprus', 0),
(55, 'CZ', 'Czech Republic', 0),
(56, 'DK', 'Denmark', 0),
(57, 'DJ', 'Djibouti', 0),
(58, 'DM', 'Dominica', 0),
(59, 'DO', 'Dominican Republic', 0),
(60, 'TP', 'East Timor', 0),
(61, 'EC', 'Ecuador', 0),
(62, 'EG', 'Egypt', 0),
(63, 'SV', 'El Salvador', 0),
(64, 'GQ', 'Equatorial Guinea', 0),
(65, 'ER', 'Eritrea', 0),
(66, 'EE', 'Estonia', 0),
(67, 'ET', 'Ethiopia', 0),
(68, 'FK', 'Falkland Islands (Malvinas)', 0),
(69, 'FO', 'Faroe Islands', 0),
(70, 'FJ', 'Fiji', 0),
(71, 'FI', 'Finland', 0),
(72, 'FR', 'France', 1),
(73, 'FX', 'France, Metropolitan', 0),
(74, 'GF', 'French Guiana', 0),
(75, 'PF', 'French Polynesia', 0),
(76, 'TF', 'French Southern Territories', 0),
(77, 'GA', 'Gabon', 0),
(78, 'GM', 'Gambia', 0),
(79, 'GE', 'Georgia', 0),
(80, 'DE', 'Germany', 0),
(81, 'GH', 'Ghana', 0),
(82, 'GI', 'Gibraltar', 0),
(83, 'GK', 'Guernsey', 0),
(84, 'GR', 'Greece', 0),
(85, 'GL', 'Greenland', 0),
(86, 'GD', 'Grenada', 0),
(87, 'GP', 'Guadeloupe', 0),
(88, 'GU', 'Guam', 0),
(89, 'GT', 'Guatemala', 0),
(90, 'GN', 'Guinea', 0),
(91, 'GW', 'Guinea-Bissau', 0),
(92, 'GY', 'Guyana', 0),
(93, 'HT', 'Haiti', 0),
(94, 'HM', 'Heard and Mc Donald Islands', 0),
(95, 'HN', 'Honduras', 0),
(96, 'HK', 'Hong Kong', 1),
(97, 'HU', 'Hungary', 0),
(98, 'IS', 'Iceland', 0),
(99, 'IN', 'India', 0),
(100, 'IM', 'Isle of Man', 0),
(101, 'ID', 'Indonesia', 0),
(102, 'IR', 'Iran (Islamic Republic of)', 0),
(103, 'IQ', 'Iraq', 0),
(104, 'IE', 'Ireland', 0),
(105, 'IL', 'Israel', 0),
(106, 'IT', 'Italy', 0),
(107, 'CI', 'Ivory Coast', 0),
(108, 'JE', 'Jersey', 0),
(109, 'JM', 'Jamaica', 0),
(110, 'JP', 'Japan', 1),
(111, 'JO', 'Jordan', 0),
(112, 'KZ', 'Kazakhstan', 0),
(113, 'KE', 'Kenya', 0),
(114, 'KI', 'Kiribati', 0),
(115, 'KP', 'Korea, Democratic People''s Republic of', 0),
(116, 'KR', 'Korea, Republic of', 0),
(117, 'XK', 'Kosovo', 0),
(118, 'KW', 'Kuwait', 0),
(119, 'KG', 'Kyrgyzstan', 0),
(120, 'LA', 'Lao People''s Democratic Republic', 0),
(121, 'LV', 'Latvia', 0),
(122, 'LB', 'Lebanon', 0),
(123, 'LS', 'Lesotho', 0),
(124, 'LR', 'Liberia', 0),
(125, 'LY', 'Libyan Arab Jamahiriya', 0),
(126, 'LI', 'Liechtenstein', 0),
(127, 'LT', 'Lithuania', 0),
(128, 'LU', 'Luxembourg', 0),
(129, 'MO', 'Macau', 0),
(130, 'MK', 'Macedonia', 0),
(131, 'MG', 'Madagascar', 0),
(132, 'MW', 'Malawi', 0),
(133, 'MY', 'Malaysia', 0),
(134, 'MV', 'Maldives', 0),
(135, 'ML', 'Mali', 0),
(136, 'MT', 'Malta', 0),
(137, 'MH', 'Marshall Islands', 0),
(138, 'MQ', 'Martinique', 0),
(139, 'MR', 'Mauritania', 0),
(140, 'MU', 'Mauritius', 0),
(141, 'TY', 'Mayotte', 0),
(142, 'MX', 'Mexico', 0),
(143, 'FM', 'Micronesia, Federated States of', 0),
(144, 'MD', 'Moldova, Republic of', 0),
(145, 'MC', 'Monaco', 0),
(146, 'MN', 'Mongolia', 0),
(147, 'ME', 'Montenegro', 0),
(148, 'MS', 'Montserrat', 0),
(149, 'MA', 'Morocco', 0),
(150, 'MZ', 'Mozambique', 0),
(151, 'MM', 'Myanmar', 0),
(152, 'NA', 'Namibia', 0),
(153, 'NR', 'Nauru', 0),
(154, 'NP', 'Nepal', 0),
(155, 'NL', 'Netherlands', 0),
(156, 'AN', 'Netherlands Antilles', 0),
(157, 'NC', 'New Caledonia', 0),
(158, 'NZ', 'New Zealand', 0),
(159, 'NI', 'Nicaragua', 0),
(160, 'NE', 'Niger', 0),
(161, 'NG', 'Nigeria', 0),
(162, 'NU', 'Niue', 0),
(163, 'NF', 'Norfolk Island', 0),
(164, 'MP', 'Northern Mariana Islands', 0),
(165, 'NO', 'Norway', 0),
(166, 'OM', 'Oman', 0),
(167, 'PK', 'Pakistan', 0),
(168, 'PW', 'Palau', 0),
(169, 'PS', 'Palestine', 0),
(170, 'PA', 'Panama', 0),
(171, 'PG', 'Papua New Guinea', 0),
(172, 'PY', 'Paraguay', 0),
(173, 'PE', 'Peru', 0),
(174, 'PH', 'Philippines', 0),
(175, 'PN', 'Pitcairn', 0),
(176, 'PL', 'Poland', 0),
(177, 'PT', 'Portugal', 0),
(178, 'PR', 'Puerto Rico', 0),
(179, 'QA', 'Qatar', 0),
(180, 'RE', 'Reunion', 0),
(181, 'RO', 'Romania', 0),
(182, 'RU', 'Russian Federation', 0),
(183, 'RW', 'Rwanda', 0),
(184, 'KN', 'Saint Kitts and Nevis', 0),
(185, 'LC', 'Saint Lucia', 0),
(186, 'VC', 'Saint Vincent and the Grenadines', 0),
(187, 'WS', 'Samoa', 0),
(188, 'SM', 'San Marino', 0),
(189, 'ST', 'Sao Tome and Principe', 0),
(190, 'SA', 'Saudi Arabia', 0),
(191, 'SN', 'Senegal', 0),
(192, 'RS', 'Serbia', 0),
(193, 'SC', 'Seychelles', 0),
(194, 'SL', 'Sierra Leone', 0),
(195, 'SG', 'Singapore', 0),
(196, 'SK', 'Slovakia', 0),
(197, 'SI', 'Slovenia', 0),
(198, 'SB', 'Solomon Islands', 0),
(199, 'SO', 'Somalia', 0),
(200, 'ZA', 'South Africa', 0),
(201, 'GS', 'South Georgia South Sandwich Islands', 0),
(202, 'ES', 'Spain', 0),
(203, 'LK', 'Sri Lanka', 0),
(204, 'SH', 'St. Helena', 0),
(205, 'PM', 'St. Pierre and Miquelon', 0),
(206, 'SD', 'Sudan', 0),
(207, 'SR', 'Suriname', 0),
(208, 'SJ', 'Svalbard and Jan Mayen Islands', 0),
(209, 'SZ', 'Swaziland', 0),
(210, 'SE', 'Sweden', 0),
(211, 'CH', 'Switzerland', 0),
(212, 'SY', 'Syrian Arab Republic', 0),
(213, 'TW', 'Taiwan', 0),
(214, 'TJ', 'Tajikistan', 0),
(215, 'TZ', 'Tanzania, United Republic of', 0),
(216, 'TH', 'Thailand', 0),
(217, 'TG', 'Togo', 0),
(218, 'TK', 'Tokelau', 0),
(219, 'TO', 'Tonga', 0),
(220, 'TT', 'Trinidad and Tobago', 0),
(221, 'TN', 'Tunisia', 0),
(222, 'TR', 'Turkey', 0),
(223, 'TM', 'Turkmenistan', 0),
(224, 'TC', 'Turks and Caicos Islands', 0),
(225, 'TV', 'Tuvalu', 0),
(226, 'UG', 'Uganda', 0),
(227, 'UA', 'Ukraine', 0),
(228, 'AE', 'United Arab Emirates', 0),
(229, 'GB', 'United Kingdom', 0),
(230, 'US', 'United States', 0),
(231, 'UM', 'United States minor outlying islands', 0),
(232, 'UY', 'Uruguay', 0),
(233, 'UZ', 'Uzbekistan', 0),
(234, 'VU', 'Vanuatu', 0),
(235, 'VA', 'Vatican City State', 0),
(236, 'VE', 'Venezuela', 0),
(237, 'VN', 'Vietnam', 0),
(238, 'VG', 'Virgin Islands (British)', 0),
(239, 'VI', 'Virgin Islands (U.S.)', 0),
(240, 'WF', 'Wallis and Futuna Islands', 0),
(241, 'EH', 'Western Sahara', 0),
(242, 'YE', 'Yemen', 0),
(243, 'YU', 'Yugoslavia', 0),
(244, 'ZR', 'Zaire', 0),
(245, 'ZM', 'Zambia', 0),
(246, 'ZW', 'Zimbabwe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
`id` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `pict` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `id_paket`, `pict`) VALUES
(1, 2, '3a83c11727ce6c7c149b3ac4a9c73264.jpg'),
(5, 2, 'e3c7267415ed047f979a2d5724ed65a8.jpg'),
(6, 3, '72df6087031e96b429e89369e7a51365.jpg'),
(7, 3, '6b5961552744ef6d6e2c8cc7885a3b2c.jpg'),
(8, 4, 'ff811e7ec0ac73dfa41ad7b0cea20958.jpg'),
(9, 4, '381d7fdf59cf032a2e5ea146027c8a5c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
`id` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `status` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `id_paket`, `item_name`, `status`) VALUES
(1, 2, 'Pre Breakfast', 'EXCLUDE');

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE IF NOT EXISTS `itinerary` (
`id` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itinerary`
--

INSERT INTO `itinerary` (`id`, `id_paket`, `sequence`, `title`, `detail`) VALUES
(1, 2, 1, 'Hari Pertama', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `id_provinsi` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama`, `id_provinsi`, `active`) VALUES
(2, 'ACEH SELATAN', 1, 0),
(269, 'ACEH TENGGARA', 1, 0),
(671, 'ACEH TIMUR', 1, 0),
(1207, 'ACEH TENGAH', 1, 0),
(1492, 'ACEH BARAT', 1, 0),
(1824, 'ACEH BESAR', 1, 0),
(2452, 'PIDIE', 1, 0),
(3205, 'ACEH UTARA', 1, 0),
(4086, 'SIMEULUE', 1, 0),
(4233, 'ACEH SINGKIL', 1, 0),
(4362, 'BIREUEN', 1, 0),
(4989, 'ACEH BARAT DAYA', 1, 0),
(5138, 'GAYO LUES', 1, 0),
(5286, 'ACEH JAYA', 1, 0),
(5463, 'NAGAN RAYA', 1, 0),
(5694, 'ACEH TAMIANG', 1, 0),
(5920, 'BENER MERIAH', 1, 0),
(6166, 'PIDIE JAYA', 1, 0),
(6397, 'KOTA BANDA ACEH', 1, 0),
(6497, 'KOTA SABANG', 1, 0),
(6518, 'KOTA LHOKSEUMAWE', 1, 0),
(6591, 'KOTA LANGSA', 1, 0),
(6648, 'KOTA SUBULUSSALAM', 1, 0),
(6729, 'LABUHANBATU SELATAN', 6728, 0),
(6789, 'LABUHANBATU UTARA', 6728, 0),
(6888, 'NIAS UTARA', 6728, 0),
(7013, 'NIAS BARAT', 6728, 0),
(7132, 'KOTA GUNUNGSITOLI', 6728, 0),
(7240, 'TAPANULI TENGAH', 6728, 0),
(7438, 'TAPANULI UTARA', 6728, 0),
(7697, 'TAPANULI SELATAN', 6728, 0),
(7960, 'NIAS', 6728, 0),
(8094, 'LANGKAT', 6728, 0),
(8408, 'KARO', 6728, 0),
(8688, 'DELI SERDANG', 6728, 0),
(9114, 'SIMALUNGUN', 6728, 0),
(9497, 'ASAHAN', 6728, 0),
(9727, 'LABUHANBATU', 6728, 0),
(9835, 'DAIRI', 6728, 0),
(10020, 'TOBA SAMOSIR', 6728, 0),
(10227, 'MANDAILING NATAL', 6728, 0),
(10646, 'NIAS SELATAN', 6728, 0),
(11022, 'PAKPAK BHARAT', 6728, 0),
(11083, 'HUMBANG HASUNDUTAN', 6728, 0),
(11247, 'SAMOSIR', 6728, 0),
(11374, 'SERDANG BEDAGAI', 6728, 0),
(11635, 'BATU BARA', 6728, 0),
(11743, 'KOTA MEDAN', 6728, 0),
(11916, 'KOTA PEMATANGSIANTAR', 6728, 0),
(11978, 'KOTA SIBOLGA', 6728, 0),
(12000, 'KOTA TANJUNG BALAI', 6728, 0),
(12038, 'KOTA BINJAI', 6728, 0),
(12081, 'KOTA TEBING TINGGI', 6728, 0),
(12122, 'KOTA PADANG SIDIMPUAN', 6728, 0),
(12208, 'PADANG LAWAS UTARA', 6728, 0),
(12606, 'PADANG LAWAS', 6728, 0),
(12921, 'PESISIR SELATAN', 12920, 0),
(13010, 'SOLOK', 12920, 0),
(13099, 'SIJUNJUNG', 12920, 0),
(13163, 'TANAH DATAR', 12920, 0),
(13253, 'PADANG PARIAMAN', 12920, 0),
(13317, 'AGAM', 12920, 0),
(13416, 'LIMA PULUH KOTA', 12920, 0),
(13509, 'PASAMAN', 12920, 0),
(13554, 'KEPULAUAN MENTAWAI', 12920, 0),
(13608, 'DHARMASRAYA', 12920, 0),
(13634, 'SOLOK SELATAN', 12920, 0),
(13681, 'PASAMAN BARAT', 12920, 0),
(13712, 'KOTA PADANG', 12920, 0),
(13828, 'KOTA SOLOK', 12920, 0),
(13844, 'KOTA SAWAHLUNTO', 12920, 0),
(13886, 'KOTA PADANG PANJANG', 12920, 0),
(13905, 'KOTA BUKITTINGGI', 12920, 0),
(13933, 'KOTA PAYAKUMBUH', 12920, 0),
(14010, 'KOTA PARIAMAN', 12920, 0),
(14087, 'KEPULAUAN MERANTI', 14086, 0),
(14166, 'KAMPAR', 14086, 0),
(14414, 'INDRAGIRI HULU', 14086, 0),
(14630, 'BENGKALIS', 14086, 0),
(14741, 'INDRAGIRI HILIR', 14086, 0),
(14955, 'PELALAWAN', 14086, 0),
(15087, 'ROKAN HULU', 14086, 0),
(15254, 'ROKAN HILIR', 14086, 0),
(15412, 'SIAK', 14086, 0),
(15553, 'KUANTAN SINGINGI', 14086, 0),
(15775, 'KOTA PEKANBARU', 14086, 0),
(15846, 'KOTA DUMAI', 14086, 0),
(15886, 'KOTA SUNGAI PENUH', 15885, 0),
(15961, 'KERINCI', 15885, 0),
(16183, 'MERANGIN', 15885, 0),
(16420, 'SAROLANGUN', 15885, 0),
(16576, 'BATANGHARI', 15885, 0),
(16699, 'MUARO JAMBI', 15885, 0),
(16862, 'TANJUNG JABUNG BARAT', 15885, 0),
(16946, 'TANJUNG JABUNG TIMUR', 15885, 0),
(17051, 'BUNGO', 15885, 0),
(17215, 'TEBO', 15885, 0),
(17333, 'KOTA JAMBI', 15885, 0),
(17405, 'OGAN KOMERING ULU', 17404, 0),
(17570, 'OGAN KOMERING ILIR', 17404, 0),
(17895, 'MUARA ENIM', 17404, 0),
(18244, 'LAHAT', 17404, 0),
(18643, 'MUSI RAWAS', 17404, 0),
(18942, 'MUSI BANYUASIN', 17404, 0),
(19172, 'BANYUASIN', 17404, 0),
(19492, 'OGAN KOMERING ULU TIMUR', 17404, 0),
(19808, 'OGAN KOMERING ULU SELATAN', 17404, 0),
(20087, 'OGAN ILIR', 17404, 0),
(20345, 'EMPAT LAWANG', 17404, 0),
(20512, 'KOTA PALEMBANG', 17404, 0),
(20636, 'KOTA PAGAR ALAM', 17404, 0),
(20677, 'KOTA LUBUKLINGGAU', 17404, 0),
(20758, 'KOTA PRABUMULIH', 17404, 0),
(20803, 'BENGKULU TENGAH', 20802, 0),
(20923, 'BENGKULU SELATAN', 20802, 0),
(21093, 'REJANG LEBONG', 20802, 0),
(21265, 'BENGKULU UTARA', 20802, 0),
(21492, 'KAUR', 20802, 0),
(21702, 'SELUMA', 20802, 0),
(21885, 'MUKOMUKO', 20802, 0),
(22052, 'LEBONG', 20802, 0),
(22135, 'KEPAHIANG', 20802, 0),
(22252, 'KOTA BENGKULU', 20802, 0),
(22329, 'PRINGSEWU', 22328, 0),
(22439, 'MESUJI', 22328, 0),
(22522, 'TULANG BAWANG BARAT', 22328, 0),
(22605, 'LAMPUNG SELATAN', 22328, 0),
(22875, 'LAMPUNG TENGAH', 22328, 0),
(23189, 'LAMPUNG UTARA', 22328, 0),
(23460, 'LAMPUNG BARAT', 22328, 0),
(23737, 'TULANG BAWANG', 22328, 0),
(23903, 'TANGGAMUS', 22328, 0),
(24202, 'LAMPUNG TIMUR', 22328, 0),
(24484, 'WAY KANAN', 22328, 0),
(24709, 'KOTA BANDAR LAMPUNG', 22328, 0),
(24822, 'KOTA METRO', 22328, 0),
(24850, 'PESAWARAN', 22328, 0),
(24994, 'BANGKA', 24993, 0),
(25072, 'BELITUNG', 24993, 0),
(25120, 'BANGKA SELATAN', 24993, 0),
(25181, 'BANGKA TENGAH', 24993, 0),
(25245, 'BANGKA BARAT', 24993, 0),
(25316, 'BELITUNG TIMUR', 24993, 0),
(25363, 'KOTA PANGKALPINANG', 24993, 0),
(25406, 'KOTA TANJUNGPINANG', 25405, 0),
(25429, 'KEPULAUAN ANAMBAS', 25405, 0),
(25471, 'BINTAN', 25405, 0),
(25533, 'KARIMUN', 25405, 0),
(25597, 'NATUNA', 25405, 0),
(25683, 'LINGGA', 25405, 0),
(25746, 'KOTA BATAM', 25405, 0),
(25824, 'KEPULAUAN SERIBU', 25823, 0),
(25833, 'JAKARTA PUSAT', 25823, 0),
(25886, 'JAKARTA UTARA', 25823, 0),
(25924, 'JAKARTA BARAT', 25823, 0),
(25989, 'JAKARTA SELATAN', 25823, 0),
(26065, 'JAKARTA TIMUR', 25823, 0),
(26142, 'BOGOR', 26141, 1),
(26611, 'SUKABUMI', 26141, 0),
(27026, 'CIANJUR', 26141, 0),
(27407, 'BANDUNG', 26141, 1),
(27714, 'GARUT', 26141, 0),
(28182, 'TASIKMALAYA', 26141, 1),
(28573, 'CIAMIS', 26141, 0),
(28960, 'KUNINGAN', 26141, 0),
(29369, 'CIREBON', 26141, 0),
(29834, 'MAJALENGKA', 26141, 0),
(30197, 'SUMEDANG', 26141, 0),
(30503, 'INDRAMAYU', 26141, 0),
(30851, 'SUBANG', 26141, 0),
(31135, 'PURWAKARTA', 26141, 0),
(31345, 'KARAWANG', 26141, 0),
(31685, 'BEKASI', 26141, 0),
(31896, 'BANDUNG BARAT', 26141, 0),
(32077, 'KOTA BOGOR', 26141, 0),
(32152, 'KOTA SUKABUMI', 26141, 0),
(32193, 'KOTA BANDUNG', 26141, 0),
(32375, 'KOTA CIREBON', 26141, 0),
(32403, 'KOTA BEKASI', 26141, 0),
(32472, 'KOTA DEPOK', 26141, 0),
(32547, 'KOTA CIMAHI', 26141, 0),
(32566, 'KOTA TASIKMALAYA', 26141, 0),
(32646, 'KOTA BANJAR', 26141, 0),
(32677, 'CILACAP', 32676, 0),
(32986, 'BANYUMAS', 32676, 1),
(33345, 'PURBALINGGA', 32676, 0),
(33603, 'BANJARNEGARA', 32676, 0),
(33902, 'KEBUMEN', 32676, 0),
(34389, 'PURWOREJO', 32676, 0),
(34900, 'WONOSOBO', 32676, 0),
(35181, 'MAGELANG', 32676, 0),
(35575, 'BOYOLALI', 32676, 0),
(35862, 'KLATEN', 32676, 0),
(36290, 'SUKOHARJO', 32676, 0),
(36470, 'WONOGIRI', 32676, 0),
(36790, 'KARANGANYAR', 32676, 0),
(36985, 'SRAGEN', 32676, 0),
(37214, 'GROBOGAN', 32676, 0),
(37514, 'BLORA', 32676, 0),
(37826, 'REMBANG', 32676, 0),
(38136, 'PATI', 32676, 0),
(38564, 'KUDUS', 32676, 1),
(38706, 'JEPARA', 32676, 0),
(38917, 'DEMAK', 32676, 0),
(39181, 'SEMARANG', 32676, 1),
(39436, 'TEMANGGUNG', 32676, 0),
(39746, 'KENDAL', 32676, 0),
(40053, 'BATANG', 32676, 0),
(40317, 'PEKALONGAN', 32676, 0),
(40622, 'PEMALANG', 32676, 0),
(40859, 'TEGAL', 32676, 0),
(41165, 'BREBES', 32676, 0),
(41480, 'KOTA MAGELANG', 32676, 0),
(41501, 'KOTA SURAKARTA', 32676, 0),
(41558, 'KOTA SALATIGA', 32676, 0),
(41585, 'KOTA SEMARANG', 32676, 0),
(41779, 'KOTA PEKALONGAN', 32676, 0),
(41831, 'KOTA TEGAL', 32676, 0),
(41864, 'KULON PROGO', 41863, 0),
(41965, 'BANTUL', 41863, 0),
(42058, 'GUNUNGKIDUL', 41863, 0),
(42221, 'SLEMAN', 41863, 0),
(42325, 'KOTA YOGYAKARTA', 41863, 0),
(42386, 'PACITAN', 42385, 1),
(42570, 'PONOROGO', 42385, 0),
(42897, 'TRENGGALEK', 42385, 0),
(43069, 'TULUNGAGUNG', 42385, 0),
(43360, 'BLITAR', 42385, 0),
(43630, 'KEDIRI', 42385, 0),
(43993, 'MALANG', 42385, 1),
(44417, 'LUMAJANG', 42385, 0),
(44643, 'JEMBER', 42385, 0),
(44923, 'BANYUWANGI', 42385, 0),
(45165, 'BONDOWOSO', 42385, 0),
(45407, 'SITUBONDO', 42385, 0),
(45561, 'PROBOLINGGO', 42385, 0),
(45916, 'PASURUAN', 42385, 1),
(46306, 'SIDOARJO', 42385, 0),
(46678, 'MOJOKERTO', 42385, 0),
(47001, 'JOMBANG', 42385, 0),
(47329, 'NGANJUK', 42385, 0),
(47634, 'MADIUN', 42385, 0),
(47856, 'MAGETAN', 42385, 0),
(48110, 'NGAWI', 42385, 0),
(48347, 'BOJONEGORO', 42385, 0),
(48805, 'TUBAN', 42385, 0),
(49154, 'LAMONGAN', 42385, 0),
(49656, 'GRESIK', 42385, 0),
(50031, 'BANGKALAN', 42385, 0),
(50331, 'SAMPANG', 42385, 0),
(50532, 'PAMEKASAN', 42385, 0),
(50735, 'SUMENEP', 42385, 0),
(51095, 'KOTA KEDIRI', 42385, 0),
(51145, 'KOTA BLITAR', 42385, 0),
(51170, 'KOTA MALANG', 42385, 0),
(51233, 'KOTA PROBOLINGGO', 42385, 0),
(51268, 'KOTA PASURUAN', 42385, 0),
(51306, 'KOTA MOJOKERTO', 42385, 0),
(51327, 'KOTA MADIUN', 42385, 0),
(51358, 'KOTA SURABAYA', 42385, 0),
(51550, 'KOTA BATU', 42385, 0),
(51579, 'PANDEGLANG', 51578, 0),
(51913, 'LEBAK', 51578, 0),
(52287, 'TANGERANG', 51578, 0),
(52593, 'SERANG', 51578, 0),
(52936, 'KOTA TANGERANG', 51578, 0),
(53054, 'KOTA CILEGON', 51578, 0),
(53106, 'KOTA SERANG', 51578, 0),
(53179, 'KOTA TANGERANG SELATAN', 51578, 0),
(53242, 'JEMBRANA', 53241, 0),
(53299, 'TABANAN', 53241, 0),
(53439, 'BADUNG', 53241, 0),
(53508, 'GIANYAR', 53241, 0),
(53586, 'KLUNGKUNG', 53241, 0),
(53650, 'BANGLI', 53241, 0),
(53727, 'KARANGASEM', 53241, 0),
(53814, 'BULELENG', 53241, 0),
(53972, 'KOTA DENPASAR', 53241, 0),
(54021, 'LOMBOK BARAT', 54020, 0),
(54123, 'LOMBOK TENGAH', 54020, 0),
(54260, 'LOMBOK TIMUR', 54020, 0),
(54400, 'SUMBAWA', 54020, 0),
(54590, 'DOMPU', 54020, 0),
(54666, 'BIMA', 54020, 0),
(54853, 'SUMBAWA BARAT', 54020, 0),
(54925, 'KOTA MATARAM', 54020, 0),
(54982, 'KOTA BIMA', 54020, 0),
(55026, 'LOMBOK UTARA', 54020, 0),
(55066, 'KUPANG', 55065, 0),
(55347, 'TIMOR TENGAH SELATAN', 55065, 0),
(55620, 'TIMOR TENGAH UTARA', 55065, 0),
(55819, 'BELU', 55065, 0),
(56051, 'ALOR', 55065, 0),
(56244, 'FLORES TIMUR', 55065, 0),
(56489, 'SIKKA', 55065, 0),
(56671, 'ENDE', 55065, 0),
(56904, 'NGADA', 55065, 0),
(57008, 'MANGGARAI', 55065, 0),
(57167, 'SUMBA TIMUR', 55065, 0),
(57346, 'SUMBA BARAT', 55065, 0),
(57406, 'LEMBATA', 55065, 0),
(57560, 'ROTE NDAO', 55065, 0),
(57649, 'MANGGARAI BARAT', 55065, 0),
(57778, 'NAGEKEO', 55065, 0),
(57886, 'SUMBA TENGAH', 55065, 0),
(57935, 'SUMBA BARAT DAYA', 55065, 0),
(58040, 'KOTA KUPANG', 55065, 0),
(58098, 'MANGGARAI TIMUR', 55065, 0),
(58219, 'SABU RAIJUA', 55065, 0),
(58286, 'SAMBAS', 58285, 0),
(58490, 'PONTIANAK', 58285, 0),
(58567, 'SANGGAU', 58285, 0),
(58749, 'KETAPANG', 58285, 0),
(59018, 'SINTANG', 58285, 0),
(59320, 'KAPUAS HULU', 58285, 0),
(59557, 'BENGKAYANG', 58285, 0),
(59699, 'LANDAK', 58285, 0),
(59869, 'SEKADAU', 58285, 0),
(59953, 'MELAWI', 58285, 0),
(60134, 'KAYONG UTARA', 58285, 0),
(60183, 'KOTA PONTIANAK', 58285, 0),
(60223, 'KOTA SINGKAWANG', 58285, 0),
(60255, 'KUBU RAYA', 58285, 0),
(60372, 'KOTAWARINGIN BARAT', 60371, 0),
(60468, 'KOTAWARINGIN TIMUR', 60371, 0),
(60653, 'KAPUAS', 60371, 0),
(60867, 'BARITO SELATAN', 60371, 0),
(60967, 'BARITO UTARA', 60371, 0),
(61077, 'KATINGAN', 60371, 0),
(61251, 'SERUYAN', 60371, 0),
(61362, 'SUKAMARA', 60371, 0),
(61400, 'LAMANDAU', 60371, 0),
(61492, 'GUNUNG MAS', 60371, 0),
(61614, 'PULANG PISAU', 60371, 0),
(61711, 'MURUNG RAYA', 60371, 0),
(61846, 'BARITO TIMUR', 60371, 0),
(61929, 'KOTA PALANGKARAYA', 60371, 0),
(61966, 'TANAH LAUT', 61965, 0),
(62112, 'KOTABARU', 61965, 0),
(62333, 'BANJAR', 61965, 0),
(62643, 'BARITO KUALA', 61965, 0),
(62861, 'TAPIN', 61965, 0),
(63007, 'HULU SUNGAI SELATAN', 61965, 0),
(63167, 'HULU SUNGAI TENGAH', 61965, 0),
(63348, 'HULU SUNGAI UTARA', 61965, 0),
(63578, 'TABALONG', 61965, 0),
(63722, 'TANAH BUMBU', 61965, 0),
(63866, 'BALANGAN', 61965, 0),
(64027, 'KOTA BANJARMASIN', 61965, 0),
(64085, 'KOTA BANJARBARU', 61965, 0),
(64112, 'PASER', 64111, 0),
(64248, 'KUTAI KARTANEGARA', 64111, 0),
(64496, 'BERAU', 64111, 0),
(64617, 'BULUNGAN', 64111, 0),
(64709, 'NUNUKAN', 64111, 0),
(64949, 'MALINAU', 64111, 0),
(65069, 'KUTAI BARAT', 64111, 0),
(65315, 'KUTAI TIMUR', 64111, 0),
(65469, 'PENAJAM PASER UTARA', 64111, 0),
(65528, 'KOTA BALIKPAPAN', 64111, 0),
(65567, 'KOTA SAMARINDA', 64111, 0),
(65631, 'KOTA TARAKAN', 64111, 0),
(65656, 'KOTA BONTANG', 64111, 0),
(65675, 'TANA TIDUNG', 64111, 0),
(65703, 'BOLAANG MONGONDOW TIMUR', 65702, 0),
(65760, 'BOLAANG MONGONDOW SELATAN', 65702, 0),
(65822, 'BOLAANG MONGONDOW', 65702, 0),
(65974, 'MINAHASA', 65702, 0),
(66188, 'KEPULAUAN SANGIHE', 65702, 0),
(66371, 'KEPULAUAN TALAUD', 65702, 0),
(66544, 'MINAHASA SELATAN', 65702, 0),
(66718, 'MINAHASA UTARA', 65702, 0),
(66853, 'MINAHASA TENGGARA', 65702, 0),
(66936, 'BOLAANG MONGONDOW UTARA', 65702, 0),
(67035, 'KEP. SIAU TAGULANDANG BIARO', 65702, 0),
(67130, 'KOTA MANADO', 65702, 0),
(67227, 'KOTA BITUNG', 65702, 0),
(67305, 'KOTA TOMOHON', 65702, 0),
(67355, 'KOTA KOTAMOBAGU', 65702, 0),
(67394, 'SIGI', 67393, 0),
(67558, 'BANGGAI', 67393, 0),
(67866, 'POSO', 67393, 0),
(68041, 'DONGGALA', 67393, 0),
(68206, 'TOLITOLI', 67393, 0),
(68309, 'BUOL', 67393, 0),
(68428, 'MOROWALI', 67393, 0),
(68681, 'BANGGAI KEPULAUAN', 67393, 0),
(68887, 'PARIGI MOUTONG', 67393, 0),
(69089, 'TOJO UNA-UNA', 67393, 0),
(69220, 'KOTA PALU', 67393, 0),
(69269, 'TORAJA UTARA', 69268, 0),
(69442, 'KEPULAUAN SELAYAR', 69268, 0),
(69531, 'BULUKUMBA', 69268, 0),
(69668, 'BANTAENG', 69268, 0),
(69744, 'JENEPONTO', 69268, 0),
(69869, 'TAKALAR', 69268, 0),
(69962, 'GOWA', 69268, 0),
(70149, 'SINJAI', 69268, 0),
(70239, 'BONE', 69268, 0),
(70639, 'MAROS', 69268, 0),
(70757, 'PANGKAJENE DAN KEPULAUAN', 69268, 0),
(70873, 'BARRU', 69268, 0),
(70935, 'SOPPENG', 69268, 0),
(71014, 'WAJO', 69268, 0),
(71209, 'SIDENRENG RAPPANG', 69268, 0),
(71327, 'PINRANG', 69268, 0),
(71437, 'ENREKANG', 69268, 0),
(71579, 'LUWU', 69268, 0),
(71828, 'TANA TORAJA', 69268, 0),
(72007, 'LUWU UTARA', 69268, 0),
(72190, 'LUWU TIMUR', 69268, 0),
(72309, 'KOTA MAKASSAR', 69268, 0),
(72467, 'KOTA PARE PARE', 69268, 0),
(72493, 'KOTA PALOPO', 69268, 0),
(72552, 'KOLAKA', 72551, 0),
(72786, 'KONAWE', 72551, 0),
(73150, 'MUNA', 72551, 0),
(73420, 'BUTON', 72551, 0),
(73650, 'KONAWE SELATAN', 72551, 0),
(74018, 'BOMBANA', 72551, 0),
(74179, 'WAKATOBI', 72551, 0),
(74288, 'KOLAKA UTARA', 72551, 0),
(74437, 'KONAWE UTARA', 72551, 0),
(74525, 'BUTON UTARA', 72551, 0),
(74590, 'KOTA KENDARI', 72551, 0),
(74665, 'KOTA BAU BAU', 72551, 0),
(74717, 'GORONTALO', 74716, 0),
(74941, 'BOALEMO', 74716, 0),
(75031, 'BONE BOLANGO', 74716, 0),
(75183, 'PAHUWATO', 74716, 0),
(75301, 'GORONTALO UTARA', 74716, 0),
(75365, 'KOTA GORONTALO', 74716, 0),
(75426, 'MAMUJU UTARA', 75425, 0),
(75502, 'MAMUJU', 75425, 0),
(75670, 'MAMASA', 75425, 0),
(75863, 'POLEWALI MANDAR', 75425, 0),
(76047, 'MAJENE', 75425, 0),
(76097, 'MALUKU BARAT DAYA', 76096, 0),
(76223, 'BURU SELATAN', 76096, 0),
(76284, 'MALUKU TENGAH', 76096, 0),
(76470, 'MALUKU TENGGARA', 76096, 0),
(76568, 'MALUKU TENGGARA BARAT', 76096, 0),
(76651, 'BURU', 76096, 0),
(76708, 'SERAM BAGIAN TIMUR', 76096, 0),
(76771, 'SERAM BAGIAN BARAT', 76096, 0),
(76868, 'KEPULAUAN ARU', 76096, 0),
(76995, 'KOTA AMBON', 76096, 0),
(77051, 'KOTA TUAL', 76096, 0),
(77086, 'PULAU MOROTAI', 77085, 0),
(77155, 'HALMAHERA BARAT', 77085, 0),
(77311, 'HALMAHERA TENGAH', 77085, 0),
(77364, 'HALMAHERA UTARA', 77085, 0),
(77578, 'HALMAHERA SELATAN', 77085, 0),
(77858, 'KEPULAUAN SULA', 77085, 0),
(77956, 'HALMAHERA TIMUR', 77085, 0),
(78040, 'KOTA TERNATE', 77085, 0),
(78122, 'KOTA TIDORE KEPULAUAN', 77085, 0),
(78204, 'INTAN JAYA', 78203, 0),
(78289, 'DEIYAI', 78203, 0),
(78324, 'TOLIKARA', 78203, 0),
(78862, 'WAROPEN', 78203, 0),
(78927, 'BOVEN DIGOEL', 78203, 0),
(79019, 'MAPPI', 78203, 0),
(79163, 'ASMAT', 78203, 0),
(79310, 'SUPIORI', 78203, 0),
(79354, 'MAMBERAMO RAYA', 78203, 0),
(79421, 'KOTA JAYAPURA', 78203, 0),
(79466, 'MAMBERAMO TENGAH', 78203, 0),
(79531, 'YALIMO', 78203, 0),
(79564, 'LANNY JAYA', 78203, 0),
(79629, 'NDUGA', 78203, 0),
(79663, 'PUNCAK', 78203, 0),
(79752, 'DOGIYAI', 78203, 0),
(79826, 'MERAUKE', 78203, 0),
(80015, 'JAYAWIJAYA', 78203, 0),
(80144, 'JAYAPURA', 78203, 0),
(80309, 'NABIRE', 78203, 0),
(80402, 'KEPULAUAN YAPEN', 78203, 0),
(80526, 'BIAK NUMFOR', 78203, 0),
(80724, 'PUNCAK JAYA', 78203, 0),
(80851, 'PANIAI', 78203, 0),
(81007, 'MIMIKA', 78203, 0),
(81104, 'SARMI', 78203, 0),
(81192, 'KEEROM', 78203, 0),
(81261, 'PEGUNUNGAN BINTANG', 78203, 0),
(81357, 'YAHUKIMO', 78203, 0),
(81878, 'MAYBRAT', 81877, 0),
(81992, 'TAMBRAUW', 81877, 0),
(82022, 'SORONG', 81877, 0),
(82154, 'MANOKWARI', 81877, 0),
(82605, 'FAKFAK', 81877, 0),
(82724, 'SORONG SELATAN', 81877, 0),
(82850, 'RAJA AMPAT', 81877, 0),
(82965, 'TELUK BINTUNI', 81877, 0),
(83107, 'TELUK WONDAMA', 81877, 0),
(83194, 'KAIMANA', 81877, 0),
(83289, 'KOTA SORONG', 81877, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_group`
--

CREATE TABLE IF NOT EXISTS `menu_group` (
`id` int(11) NOT NULL,
  `code` varchar(16) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_group`
--

INSERT INTO `menu_group` (`id`, `code`, `name`) VALUES
(1, 'IDN', 'INDONESIA'),
(2, 'INT', 'INTERNASIONAL'),
(3, 'UMH', 'UMROH & HAJI'),
(4, 'SPT', 'SPECIAL TRIP');

-- --------------------------------------------------------

--
-- Table structure for table `other`
--

CREATE TABLE IF NOT EXISTS `other` (
`id` int(11) NOT NULL,
  `id_other` varchar(16) NOT NULL,
  `nama_other` varchar(64) NOT NULL,
  `code` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other`
--

INSERT INTO `other` (`id`, `id_other`, `nama_other`, `code`) VALUES
(1, 'UMR', 'UMROH', 'UMH'),
(2, 'HAJ', 'HAJI', 'UMH'),
(3, 'HLD', 'HOLY LAND', 'UMH'),
(4, 'DIV', 'DIVING', 'SPT'),
(5, 'ADV', 'ADVENTURES', 'SPT'),
(6, 'CRU', 'CRUISE', 'SPT'),
(7, 'HIN', 'HONEYMOON', 'SPT'),
(8, 'PIL', 'PILGRIMAGE', 'SPT'),
(9, 'SAL', 'SAILINGS', 'SPT');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE IF NOT EXISTS `paket` (
`id` int(11) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `nama_paket` varchar(64) NOT NULL,
  `menu_group` varchar(16) NOT NULL,
  `country_province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `person` int(11) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `package` text NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `currency` varchar(8) NOT NULL DEFAULT 'IDR'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id`, `timestamp`, `nama_paket`, `menu_group`, `country_province`, `city`, `price`, `person`, `description`, `package`, `is_active`, `currency`) VALUES
(2, '2016-06-10 11:13:57', 'Paket Haji Plus Plus', 'UMH', 'HAJ', NULL, '6000.00', 2, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 'USD'),
(3, '2016-06-18 05:57:53', 'My Trip My Adventure', 'SPT', 'ADV', NULL, '2000.00', 5, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 'USD'),
(4, '2016-06-18 06:01:52', 'Beautiful Japan', 'INT', 'JP', NULL, '1500.00', 5, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama`, `active`) VALUES
(1, 'ACEH', 0),
(6728, 'SUMATERA UTARA', 0),
(12920, 'SUMATERA BARAT', 0),
(14086, 'RIAU', 0),
(15885, 'JAMBI', 0),
(17404, 'SUMATERA SELATAN', 0),
(20802, 'BENGKULU', 0),
(22328, 'LAMPUNG', 0),
(24993, 'KEPULAUAN BANGKA BELITUNG', 0),
(25405, 'KEPULAUAN RIAU', 0),
(25823, 'DKI JAKARTA', 0),
(26141, 'JAWA BARAT', 1),
(32676, 'JAWA TENGAH', 1),
(41863, 'DAERAH ISTIMEWA YOGYAKARTA', 0),
(42385, 'JAWA TIMUR', 1),
(51578, 'BANTEN', 0),
(53241, 'BALI', 0),
(54020, 'NUSA TENGGARA BARAT', 0),
(55065, 'NUSA TENGGARA TIMUR', 0),
(58285, 'KALIMANTAN BARAT', 0),
(60371, 'KALIMANTAN TENGAH', 0),
(61965, 'KALIMANTAN SELATAN', 0),
(64111, 'KALIMANTAN TIMUR', 0),
(65702, 'SULAWESI UTARA', 0),
(67393, 'SULAWESI TENGAH', 0),
(69268, 'SULAWESI SELATAN', 0),
(72551, 'SULAWESI TENGGARA', 0),
(74716, 'GORONTALO', 0),
(75425, 'SULAWESI BARAT', 0),
(76096, 'MALUKU', 0),
(77085, 'MALUKU UTARA', 0),
(78203, 'PAPUA', 0),
(81877, 'PAPUA BARAT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` text NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `email`, `type`) VALUES
(1, 'adminsuper', 'e00b29d5b34c3f78df09d45921c9ec47', 'The Amazing Super Admin', 'fitoplankton@yahoo.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_paket_gallery` (`id_paket`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_item` (`id_paket`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_paket_itinerary` (`id_paket`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
 ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `menu_group`
--
ALTER TABLE `menu_group`
 ADD PRIMARY KEY (`id`), ADD KEY `code` (`code`);

--
-- Indexes for table `other`
--
ALTER TABLE `other`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
 ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_group`
--
ALTER TABLE `menu_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `other`
--
ALTER TABLE `other`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
ADD CONSTRAINT `fk_paket_gallery` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
ADD CONSTRAINT `fk_item` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `itinerary`
--
ALTER TABLE `itinerary`
ADD CONSTRAINT `fk_paket_itinerary` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
