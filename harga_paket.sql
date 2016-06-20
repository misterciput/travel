-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2016 at 04:20 PM
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
-- Table structure for table `harga_paket`
--

CREATE TABLE IF NOT EXISTS `harga_paket` (
`id_harga` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `hotel` varchar(50) DEFAULT NULL,
  `pax_min` int(11) DEFAULT NULL,
  `pax_max` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harga_paket`
--

INSERT INTO `harga_paket` (`id_harga`, `id_paket`, `hotel`, `pax_min`, `pax_max`, `price`) VALUES
(17, 12, 'Shangri La', 1, 5, 1000),
(18, 12, 'Shen Long', 6, 10, 1500),
(19, 12, 'Guan Yu', 11, 20, 500),
(20, 12, '', 0, 0, 0),
(21, 12, '', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `harga_paket`
--
ALTER TABLE `harga_paket`
 ADD PRIMARY KEY (`id_harga`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `harga_paket`
--
ALTER TABLE `harga_paket`
MODIFY `id_harga` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
