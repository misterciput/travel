-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2016 at 08:16 AM
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
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People''s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People''s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'YU', 'Yugoslavia'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
`id` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `pict` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `id_paket`, `pict`) VALUES
(1, 2, '3a83c11727ce6c7c149b3ac4a9c73264.jpg'),
(5, 2, 'e3c7267415ed047f979a2d5724ed65a8.jpg');

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
  `id_provinsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama`, `id_provinsi`) VALUES
(2, 'ACEH SELATAN', 1),
(269, 'ACEH TENGGARA', 1),
(671, 'ACEH TIMUR', 1),
(1207, 'ACEH TENGAH', 1),
(1492, 'ACEH BARAT', 1),
(1824, 'ACEH BESAR', 1),
(2452, 'PIDIE', 1),
(3205, 'ACEH UTARA', 1),
(4086, 'SIMEULUE', 1),
(4233, 'ACEH SINGKIL', 1),
(4362, 'BIREUEN', 1),
(4989, 'ACEH BARAT DAYA', 1),
(5138, 'GAYO LUES', 1),
(5286, 'ACEH JAYA', 1),
(5463, 'NAGAN RAYA', 1),
(5694, 'ACEH TAMIANG', 1),
(5920, 'BENER MERIAH', 1),
(6166, 'PIDIE JAYA', 1),
(6397, 'KOTA BANDA ACEH', 1),
(6497, 'KOTA SABANG', 1),
(6518, 'KOTA LHOKSEUMAWE', 1),
(6591, 'KOTA LANGSA', 1),
(6648, 'KOTA SUBULUSSALAM', 1),
(6729, 'LABUHANBATU SELATAN', 6728),
(6789, 'LABUHANBATU UTARA', 6728),
(6888, 'NIAS UTARA', 6728),
(7013, 'NIAS BARAT', 6728),
(7132, 'KOTA GUNUNGSITOLI', 6728),
(7240, 'TAPANULI TENGAH', 6728),
(7438, 'TAPANULI UTARA', 6728),
(7697, 'TAPANULI SELATAN', 6728),
(7960, 'NIAS', 6728),
(8094, 'LANGKAT', 6728),
(8408, 'KARO', 6728),
(8688, 'DELI SERDANG', 6728),
(9114, 'SIMALUNGUN', 6728),
(9497, 'ASAHAN', 6728),
(9727, 'LABUHANBATU', 6728),
(9835, 'DAIRI', 6728),
(10020, 'TOBA SAMOSIR', 6728),
(10227, 'MANDAILING NATAL', 6728),
(10646, 'NIAS SELATAN', 6728),
(11022, 'PAKPAK BHARAT', 6728),
(11083, 'HUMBANG HASUNDUTAN', 6728),
(11247, 'SAMOSIR', 6728),
(11374, 'SERDANG BEDAGAI', 6728),
(11635, 'BATU BARA', 6728),
(11743, 'KOTA MEDAN', 6728),
(11916, 'KOTA PEMATANGSIANTAR', 6728),
(11978, 'KOTA SIBOLGA', 6728),
(12000, 'KOTA TANJUNG BALAI', 6728),
(12038, 'KOTA BINJAI', 6728),
(12081, 'KOTA TEBING TINGGI', 6728),
(12122, 'KOTA PADANG SIDIMPUAN', 6728),
(12208, 'PADANG LAWAS UTARA', 6728),
(12606, 'PADANG LAWAS', 6728),
(12921, 'PESISIR SELATAN', 12920),
(13010, 'SOLOK', 12920),
(13099, 'SIJUNJUNG', 12920),
(13163, 'TANAH DATAR', 12920),
(13253, 'PADANG PARIAMAN', 12920),
(13317, 'AGAM', 12920),
(13416, 'LIMA PULUH KOTA', 12920),
(13509, 'PASAMAN', 12920),
(13554, 'KEPULAUAN MENTAWAI', 12920),
(13608, 'DHARMASRAYA', 12920),
(13634, 'SOLOK SELATAN', 12920),
(13681, 'PASAMAN BARAT', 12920),
(13712, 'KOTA PADANG', 12920),
(13828, 'KOTA SOLOK', 12920),
(13844, 'KOTA SAWAHLUNTO', 12920),
(13886, 'KOTA PADANG PANJANG', 12920),
(13905, 'KOTA BUKITTINGGI', 12920),
(13933, 'KOTA PAYAKUMBUH', 12920),
(14010, 'KOTA PARIAMAN', 12920),
(14087, 'KEPULAUAN MERANTI', 14086),
(14166, 'KAMPAR', 14086),
(14414, 'INDRAGIRI HULU', 14086),
(14630, 'BENGKALIS', 14086),
(14741, 'INDRAGIRI HILIR', 14086),
(14955, 'PELALAWAN', 14086),
(15087, 'ROKAN HULU', 14086),
(15254, 'ROKAN HILIR', 14086),
(15412, 'SIAK', 14086),
(15553, 'KUANTAN SINGINGI', 14086),
(15775, 'KOTA PEKANBARU', 14086),
(15846, 'KOTA DUMAI', 14086),
(15886, 'KOTA SUNGAI PENUH', 15885),
(15961, 'KERINCI', 15885),
(16183, 'MERANGIN', 15885),
(16420, 'SAROLANGUN', 15885),
(16576, 'BATANGHARI', 15885),
(16699, 'MUARO JAMBI', 15885),
(16862, 'TANJUNG JABUNG BARAT', 15885),
(16946, 'TANJUNG JABUNG TIMUR', 15885),
(17051, 'BUNGO', 15885),
(17215, 'TEBO', 15885),
(17333, 'KOTA JAMBI', 15885),
(17405, 'OGAN KOMERING ULU', 17404),
(17570, 'OGAN KOMERING ILIR', 17404),
(17895, 'MUARA ENIM', 17404),
(18244, 'LAHAT', 17404),
(18643, 'MUSI RAWAS', 17404),
(18942, 'MUSI BANYUASIN', 17404),
(19172, 'BANYUASIN', 17404),
(19492, 'OGAN KOMERING ULU TIMUR', 17404),
(19808, 'OGAN KOMERING ULU SELATAN', 17404),
(20087, 'OGAN ILIR', 17404),
(20345, 'EMPAT LAWANG', 17404),
(20512, 'KOTA PALEMBANG', 17404),
(20636, 'KOTA PAGAR ALAM', 17404),
(20677, 'KOTA LUBUKLINGGAU', 17404),
(20758, 'KOTA PRABUMULIH', 17404),
(20803, 'BENGKULU TENGAH', 20802),
(20923, 'BENGKULU SELATAN', 20802),
(21093, 'REJANG LEBONG', 20802),
(21265, 'BENGKULU UTARA', 20802),
(21492, 'KAUR', 20802),
(21702, 'SELUMA', 20802),
(21885, 'MUKOMUKO', 20802),
(22052, 'LEBONG', 20802),
(22135, 'KEPAHIANG', 20802),
(22252, 'KOTA BENGKULU', 20802),
(22329, 'PRINGSEWU', 22328),
(22439, 'MESUJI', 22328),
(22522, 'TULANG BAWANG BARAT', 22328),
(22605, 'LAMPUNG SELATAN', 22328),
(22875, 'LAMPUNG TENGAH', 22328),
(23189, 'LAMPUNG UTARA', 22328),
(23460, 'LAMPUNG BARAT', 22328),
(23737, 'TULANG BAWANG', 22328),
(23903, 'TANGGAMUS', 22328),
(24202, 'LAMPUNG TIMUR', 22328),
(24484, 'WAY KANAN', 22328),
(24709, 'KOTA BANDAR LAMPUNG', 22328),
(24822, 'KOTA METRO', 22328),
(24850, 'PESAWARAN', 22328),
(24994, 'BANGKA', 24993),
(25072, 'BELITUNG', 24993),
(25120, 'BANGKA SELATAN', 24993),
(25181, 'BANGKA TENGAH', 24993),
(25245, 'BANGKA BARAT', 24993),
(25316, 'BELITUNG TIMUR', 24993),
(25363, 'KOTA PANGKALPINANG', 24993),
(25406, 'KOTA TANJUNGPINANG', 25405),
(25429, 'KEPULAUAN ANAMBAS', 25405),
(25471, 'BINTAN', 25405),
(25533, 'KARIMUN', 25405),
(25597, 'NATUNA', 25405),
(25683, 'LINGGA', 25405),
(25746, 'KOTA BATAM', 25405),
(25824, 'KEPULAUAN SERIBU', 25823),
(25833, 'JAKARTA PUSAT', 25823),
(25886, 'JAKARTA UTARA', 25823),
(25924, 'JAKARTA BARAT', 25823),
(25989, 'JAKARTA SELATAN', 25823),
(26065, 'JAKARTA TIMUR', 25823),
(26142, 'BOGOR', 26141),
(26611, 'SUKABUMI', 26141),
(27026, 'CIANJUR', 26141),
(27407, 'BANDUNG', 26141),
(27714, 'GARUT', 26141),
(28182, 'TASIKMALAYA', 26141),
(28573, 'CIAMIS', 26141),
(28960, 'KUNINGAN', 26141),
(29369, 'CIREBON', 26141),
(29834, 'MAJALENGKA', 26141),
(30197, 'SUMEDANG', 26141),
(30503, 'INDRAMAYU', 26141),
(30851, 'SUBANG', 26141),
(31135, 'PURWAKARTA', 26141),
(31345, 'KARAWANG', 26141),
(31685, 'BEKASI', 26141),
(31896, 'BANDUNG BARAT', 26141),
(32077, 'KOTA BOGOR', 26141),
(32152, 'KOTA SUKABUMI', 26141),
(32193, 'KOTA BANDUNG', 26141),
(32375, 'KOTA CIREBON', 26141),
(32403, 'KOTA BEKASI', 26141),
(32472, 'KOTA DEPOK', 26141),
(32547, 'KOTA CIMAHI', 26141),
(32566, 'KOTA TASIKMALAYA', 26141),
(32646, 'KOTA BANJAR', 26141),
(32677, 'CILACAP', 32676),
(32986, 'BANYUMAS', 32676),
(33345, 'PURBALINGGA', 32676),
(33603, 'BANJARNEGARA', 32676),
(33902, 'KEBUMEN', 32676),
(34389, 'PURWOREJO', 32676),
(34900, 'WONOSOBO', 32676),
(35181, 'MAGELANG', 32676),
(35575, 'BOYOLALI', 32676),
(35862, 'KLATEN', 32676),
(36290, 'SUKOHARJO', 32676),
(36470, 'WONOGIRI', 32676),
(36790, 'KARANGANYAR', 32676),
(36985, 'SRAGEN', 32676),
(37214, 'GROBOGAN', 32676),
(37514, 'BLORA', 32676),
(37826, 'REMBANG', 32676),
(38136, 'PATI', 32676),
(38564, 'KUDUS', 32676),
(38706, 'JEPARA', 32676),
(38917, 'DEMAK', 32676),
(39181, 'SEMARANG', 32676),
(39436, 'TEMANGGUNG', 32676),
(39746, 'KENDAL', 32676),
(40053, 'BATANG', 32676),
(40317, 'PEKALONGAN', 32676),
(40622, 'PEMALANG', 32676),
(40859, 'TEGAL', 32676),
(41165, 'BREBES', 32676),
(41480, 'KOTA MAGELANG', 32676),
(41501, 'KOTA SURAKARTA', 32676),
(41558, 'KOTA SALATIGA', 32676),
(41585, 'KOTA SEMARANG', 32676),
(41779, 'KOTA PEKALONGAN', 32676),
(41831, 'KOTA TEGAL', 32676),
(41864, 'KULON PROGO', 41863),
(41965, 'BANTUL', 41863),
(42058, 'GUNUNGKIDUL', 41863),
(42221, 'SLEMAN', 41863),
(42325, 'KOTA YOGYAKARTA', 41863),
(42386, 'PACITAN', 42385),
(42570, 'PONOROGO', 42385),
(42897, 'TRENGGALEK', 42385),
(43069, 'TULUNGAGUNG', 42385),
(43360, 'BLITAR', 42385),
(43630, 'KEDIRI', 42385),
(43993, 'MALANG', 42385),
(44417, 'LUMAJANG', 42385),
(44643, 'JEMBER', 42385),
(44923, 'BANYUWANGI', 42385),
(45165, 'BONDOWOSO', 42385),
(45407, 'SITUBONDO', 42385),
(45561, 'PROBOLINGGO', 42385),
(45916, 'PASURUAN', 42385),
(46306, 'SIDOARJO', 42385),
(46678, 'MOJOKERTO', 42385),
(47001, 'JOMBANG', 42385),
(47329, 'NGANJUK', 42385),
(47634, 'MADIUN', 42385),
(47856, 'MAGETAN', 42385),
(48110, 'NGAWI', 42385),
(48347, 'BOJONEGORO', 42385),
(48805, 'TUBAN', 42385),
(49154, 'LAMONGAN', 42385),
(49656, 'GRESIK', 42385),
(50031, 'BANGKALAN', 42385),
(50331, 'SAMPANG', 42385),
(50532, 'PAMEKASAN', 42385),
(50735, 'SUMENEP', 42385),
(51095, 'KOTA KEDIRI', 42385),
(51145, 'KOTA BLITAR', 42385),
(51170, 'KOTA MALANG', 42385),
(51233, 'KOTA PROBOLINGGO', 42385),
(51268, 'KOTA PASURUAN', 42385),
(51306, 'KOTA MOJOKERTO', 42385),
(51327, 'KOTA MADIUN', 42385),
(51358, 'KOTA SURABAYA', 42385),
(51550, 'KOTA BATU', 42385),
(51579, 'PANDEGLANG', 51578),
(51913, 'LEBAK', 51578),
(52287, 'TANGERANG', 51578),
(52593, 'SERANG', 51578),
(52936, 'KOTA TANGERANG', 51578),
(53054, 'KOTA CILEGON', 51578),
(53106, 'KOTA SERANG', 51578),
(53179, 'KOTA TANGERANG SELATAN', 51578),
(53242, 'JEMBRANA', 53241),
(53299, 'TABANAN', 53241),
(53439, 'BADUNG', 53241),
(53508, 'GIANYAR', 53241),
(53586, 'KLUNGKUNG', 53241),
(53650, 'BANGLI', 53241),
(53727, 'KARANGASEM', 53241),
(53814, 'BULELENG', 53241),
(53972, 'KOTA DENPASAR', 53241),
(54021, 'LOMBOK BARAT', 54020),
(54123, 'LOMBOK TENGAH', 54020),
(54260, 'LOMBOK TIMUR', 54020),
(54400, 'SUMBAWA', 54020),
(54590, 'DOMPU', 54020),
(54666, 'BIMA', 54020),
(54853, 'SUMBAWA BARAT', 54020),
(54925, 'KOTA MATARAM', 54020),
(54982, 'KOTA BIMA', 54020),
(55026, 'LOMBOK UTARA', 54020),
(55066, 'KUPANG', 55065),
(55347, 'TIMOR TENGAH SELATAN', 55065),
(55620, 'TIMOR TENGAH UTARA', 55065),
(55819, 'BELU', 55065),
(56051, 'ALOR', 55065),
(56244, 'FLORES TIMUR', 55065),
(56489, 'SIKKA', 55065),
(56671, 'ENDE', 55065),
(56904, 'NGADA', 55065),
(57008, 'MANGGARAI', 55065),
(57167, 'SUMBA TIMUR', 55065),
(57346, 'SUMBA BARAT', 55065),
(57406, 'LEMBATA', 55065),
(57560, 'ROTE NDAO', 55065),
(57649, 'MANGGARAI BARAT', 55065),
(57778, 'NAGEKEO', 55065),
(57886, 'SUMBA TENGAH', 55065),
(57935, 'SUMBA BARAT DAYA', 55065),
(58040, 'KOTA KUPANG', 55065),
(58098, 'MANGGARAI TIMUR', 55065),
(58219, 'SABU RAIJUA', 55065),
(58286, 'SAMBAS', 58285),
(58490, 'PONTIANAK', 58285),
(58567, 'SANGGAU', 58285),
(58749, 'KETAPANG', 58285),
(59018, 'SINTANG', 58285),
(59320, 'KAPUAS HULU', 58285),
(59557, 'BENGKAYANG', 58285),
(59699, 'LANDAK', 58285),
(59869, 'SEKADAU', 58285),
(59953, 'MELAWI', 58285),
(60134, 'KAYONG UTARA', 58285),
(60183, 'KOTA PONTIANAK', 58285),
(60223, 'KOTA SINGKAWANG', 58285),
(60255, 'KUBU RAYA', 58285),
(60372, 'KOTAWARINGIN BARAT', 60371),
(60468, 'KOTAWARINGIN TIMUR', 60371),
(60653, 'KAPUAS', 60371),
(60867, 'BARITO SELATAN', 60371),
(60967, 'BARITO UTARA', 60371),
(61077, 'KATINGAN', 60371),
(61251, 'SERUYAN', 60371),
(61362, 'SUKAMARA', 60371),
(61400, 'LAMANDAU', 60371),
(61492, 'GUNUNG MAS', 60371),
(61614, 'PULANG PISAU', 60371),
(61711, 'MURUNG RAYA', 60371),
(61846, 'BARITO TIMUR', 60371),
(61929, 'KOTA PALANGKARAYA', 60371),
(61966, 'TANAH LAUT', 61965),
(62112, 'KOTABARU', 61965),
(62333, 'BANJAR', 61965),
(62643, 'BARITO KUALA', 61965),
(62861, 'TAPIN', 61965),
(63007, 'HULU SUNGAI SELATAN', 61965),
(63167, 'HULU SUNGAI TENGAH', 61965),
(63348, 'HULU SUNGAI UTARA', 61965),
(63578, 'TABALONG', 61965),
(63722, 'TANAH BUMBU', 61965),
(63866, 'BALANGAN', 61965),
(64027, 'KOTA BANJARMASIN', 61965),
(64085, 'KOTA BANJARBARU', 61965),
(64112, 'PASER', 64111),
(64248, 'KUTAI KARTANEGARA', 64111),
(64496, 'BERAU', 64111),
(64617, 'BULUNGAN', 64111),
(64709, 'NUNUKAN', 64111),
(64949, 'MALINAU', 64111),
(65069, 'KUTAI BARAT', 64111),
(65315, 'KUTAI TIMUR', 64111),
(65469, 'PENAJAM PASER UTARA', 64111),
(65528, 'KOTA BALIKPAPAN', 64111),
(65567, 'KOTA SAMARINDA', 64111),
(65631, 'KOTA TARAKAN', 64111),
(65656, 'KOTA BONTANG', 64111),
(65675, 'TANA TIDUNG', 64111),
(65703, 'BOLAANG MONGONDOW TIMUR', 65702),
(65760, 'BOLAANG MONGONDOW SELATAN', 65702),
(65822, 'BOLAANG MONGONDOW', 65702),
(65974, 'MINAHASA', 65702),
(66188, 'KEPULAUAN SANGIHE', 65702),
(66371, 'KEPULAUAN TALAUD', 65702),
(66544, 'MINAHASA SELATAN', 65702),
(66718, 'MINAHASA UTARA', 65702),
(66853, 'MINAHASA TENGGARA', 65702),
(66936, 'BOLAANG MONGONDOW UTARA', 65702),
(67035, 'KEP. SIAU TAGULANDANG BIARO', 65702),
(67130, 'KOTA MANADO', 65702),
(67227, 'KOTA BITUNG', 65702),
(67305, 'KOTA TOMOHON', 65702),
(67355, 'KOTA KOTAMOBAGU', 65702),
(67394, 'SIGI', 67393),
(67558, 'BANGGAI', 67393),
(67866, 'POSO', 67393),
(68041, 'DONGGALA', 67393),
(68206, 'TOLITOLI', 67393),
(68309, 'BUOL', 67393),
(68428, 'MOROWALI', 67393),
(68681, 'BANGGAI KEPULAUAN', 67393),
(68887, 'PARIGI MOUTONG', 67393),
(69089, 'TOJO UNA-UNA', 67393),
(69220, 'KOTA PALU', 67393),
(69269, 'TORAJA UTARA', 69268),
(69442, 'KEPULAUAN SELAYAR', 69268),
(69531, 'BULUKUMBA', 69268),
(69668, 'BANTAENG', 69268),
(69744, 'JENEPONTO', 69268),
(69869, 'TAKALAR', 69268),
(69962, 'GOWA', 69268),
(70149, 'SINJAI', 69268),
(70239, 'BONE', 69268),
(70639, 'MAROS', 69268),
(70757, 'PANGKAJENE DAN KEPULAUAN', 69268),
(70873, 'BARRU', 69268),
(70935, 'SOPPENG', 69268),
(71014, 'WAJO', 69268),
(71209, 'SIDENRENG RAPPANG', 69268),
(71327, 'PINRANG', 69268),
(71437, 'ENREKANG', 69268),
(71579, 'LUWU', 69268),
(71828, 'TANA TORAJA', 69268),
(72007, 'LUWU UTARA', 69268),
(72190, 'LUWU TIMUR', 69268),
(72309, 'KOTA MAKASSAR', 69268),
(72467, 'KOTA PARE PARE', 69268),
(72493, 'KOTA PALOPO', 69268),
(72552, 'KOLAKA', 72551),
(72786, 'KONAWE', 72551),
(73150, 'MUNA', 72551),
(73420, 'BUTON', 72551),
(73650, 'KONAWE SELATAN', 72551),
(74018, 'BOMBANA', 72551),
(74179, 'WAKATOBI', 72551),
(74288, 'KOLAKA UTARA', 72551),
(74437, 'KONAWE UTARA', 72551),
(74525, 'BUTON UTARA', 72551),
(74590, 'KOTA KENDARI', 72551),
(74665, 'KOTA BAU BAU', 72551),
(74717, 'GORONTALO', 74716),
(74941, 'BOALEMO', 74716),
(75031, 'BONE BOLANGO', 74716),
(75183, 'PAHUWATO', 74716),
(75301, 'GORONTALO UTARA', 74716),
(75365, 'KOTA GORONTALO', 74716),
(75426, 'MAMUJU UTARA', 75425),
(75502, 'MAMUJU', 75425),
(75670, 'MAMASA', 75425),
(75863, 'POLEWALI MANDAR', 75425),
(76047, 'MAJENE', 75425),
(76097, 'MALUKU BARAT DAYA', 76096),
(76223, 'BURU SELATAN', 76096),
(76284, 'MALUKU TENGAH', 76096),
(76470, 'MALUKU TENGGARA', 76096),
(76568, 'MALUKU TENGGARA BARAT', 76096),
(76651, 'BURU', 76096),
(76708, 'SERAM BAGIAN TIMUR', 76096),
(76771, 'SERAM BAGIAN BARAT', 76096),
(76868, 'KEPULAUAN ARU', 76096),
(76995, 'KOTA AMBON', 76096),
(77051, 'KOTA TUAL', 76096),
(77086, 'PULAU MOROTAI', 77085),
(77155, 'HALMAHERA BARAT', 77085),
(77311, 'HALMAHERA TENGAH', 77085),
(77364, 'HALMAHERA UTARA', 77085),
(77578, 'HALMAHERA SELATAN', 77085),
(77858, 'KEPULAUAN SULA', 77085),
(77956, 'HALMAHERA TIMUR', 77085),
(78040, 'KOTA TERNATE', 77085),
(78122, 'KOTA TIDORE KEPULAUAN', 77085),
(78204, 'INTAN JAYA', 78203),
(78289, 'DEIYAI', 78203),
(78324, 'TOLIKARA', 78203),
(78862, 'WAROPEN', 78203),
(78927, 'BOVEN DIGOEL', 78203),
(79019, 'MAPPI', 78203),
(79163, 'ASMAT', 78203),
(79310, 'SUPIORI', 78203),
(79354, 'MAMBERAMO RAYA', 78203),
(79421, 'KOTA JAYAPURA', 78203),
(79466, 'MAMBERAMO TENGAH', 78203),
(79531, 'YALIMO', 78203),
(79564, 'LANNY JAYA', 78203),
(79629, 'NDUGA', 78203),
(79663, 'PUNCAK', 78203),
(79752, 'DOGIYAI', 78203),
(79826, 'MERAUKE', 78203),
(80015, 'JAYAWIJAYA', 78203),
(80144, 'JAYAPURA', 78203),
(80309, 'NABIRE', 78203),
(80402, 'KEPULAUAN YAPEN', 78203),
(80526, 'BIAK NUMFOR', 78203),
(80724, 'PUNCAK JAYA', 78203),
(80851, 'PANIAI', 78203),
(81007, 'MIMIKA', 78203),
(81104, 'SARMI', 78203),
(81192, 'KEEROM', 78203),
(81261, 'PEGUNUNGAN BINTANG', 78203),
(81357, 'YAHUKIMO', 78203),
(81878, 'MAYBRAT', 81877),
(81992, 'TAMBRAUW', 81877),
(82022, 'SORONG', 81877),
(82154, 'MANOKWARI', 81877),
(82605, 'FAKFAK', 81877),
(82724, 'SORONG SELATAN', 81877),
(82850, 'RAJA AMPAT', 81877),
(82965, 'TELUK BINTUNI', 81877),
(83107, 'TELUK WONDAMA', 81877),
(83194, 'KAIMANA', 81877),
(83289, 'KOTA SORONG', 81877);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id`, `timestamp`, `nama_paket`, `menu_group`, `country_province`, `city`, `price`, `person`, `description`, `package`, `is_active`, `currency`) VALUES
(2, '2016-06-10 11:13:57', 'Paket Haji Plus Plus', 'UMH', '', NULL, '6000.00', 2, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama`) VALUES
(1, 'ACEH'),
(6728, 'SUMATERA UTARA'),
(12920, 'SUMATERA BARAT'),
(14086, 'RIAU'),
(15885, 'JAMBI'),
(17404, 'SUMATERA SELATAN'),
(20802, 'BENGKULU'),
(22328, 'LAMPUNG'),
(24993, 'KEPULAUAN BANGKA BELITUNG'),
(25405, 'KEPULAUAN RIAU'),
(25823, 'DKI JAKARTA'),
(26141, 'JAWA BARAT'),
(32676, 'JAWA TENGAH'),
(41863, 'DAERAH ISTIMEWA YOGYAKARTA'),
(42385, 'JAWA TIMUR'),
(51578, 'BANTEN'),
(53241, 'BALI'),
(54020, 'NUSA TENGGARA BARAT'),
(55065, 'NUSA TENGGARA TIMUR'),
(58285, 'KALIMANTAN BARAT'),
(60371, 'KALIMANTAN TENGAH'),
(61965, 'KALIMANTAN SELATAN'),
(64111, 'KALIMANTAN TIMUR'),
(65702, 'SULAWESI UTARA'),
(67393, 'SULAWESI TENGAH'),
(69268, 'SULAWESI SELATAN'),
(72551, 'SULAWESI TENGGARA'),
(74716, 'GORONTALO'),
(75425, 'SULAWESI BARAT'),
(76096, 'MALUKU'),
(77085, 'MALUKU UTARA'),
(78203, 'PAPUA'),
(81877, 'PAPUA BARAT');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
