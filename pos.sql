-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2025 at 07:12 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `category`, `name`, `price`, `image_path`) VALUES
(2, 'Donates', 'Chocolate - Donets', 70.00, 'uploads/1742452636_chocolate-D-removebg-preview.png'),
(3, 'Donets', 'Vanila - Donets', 60.00, 'uploads/1742452674_download-removebg-preview (1).png'),
(4, 'Cup Cake', 'Cjocolate-Cremy', 40.00, 'uploads/1742452729_chocolate-creamy-cupcake-removebg-preview.png'),
(5, 'Cup Cake', 'Birthday-Special', 60.00, 'uploads/1742452804_bitday-special-removebg-preview.png'),
(6, 'Cup Cake', 'Stobery-Cupcake', 55.00, 'uploads/1742452852_stoberry-cupcake-removebg-preview.png'),
(7, 'Cup Cake', 'vanila-cupcake', 55.00, 'uploads/1742452883_vanila-cup_cake-removebg-preview.png'),
(8, 'Chocolate', 'Cadberry', 260.00, 'uploads/1742452946_cadberry-removebg-preview.png'),
(9, 'Chocolate', 'White chocolate', 100.00, 'uploads/1742452970_white-chocolate_2-removebg-preview.png'),
(10, 'Chocolate', 'Dream-White-Chocolate', 170.00, 'uploads/1742453003_white_chocolate-removebg-preview.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
