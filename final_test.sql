-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 12:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `meter_code` int(11) NOT NULL,
  `bill_date` date DEFAULT NULL,
  `total_bill` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`meter_code`, `bill_date`, `total_bill`, `paid`) VALUES
(1, '2022-01-01', 730, 1),
(1, '2022-02-01', 759, 1),
(1, '2022-03-01', 673, 1),
(1, '2022-04-01', 694, 1),
(1, '2022-05-01', 527, 1),
(1, '2022-06-01', 616, 1),
(1, '2022-07-01', 691, 1),
(1, '2022-08-01', 681, 1),
(1, '2022-09-01', 663, 0),
(1, '2022-10-01', 613, 1),
(1, '2022-11-01', 769, 0),
(1, '2022-12-01', 525, 0),
(2, '2022-01-01', 764, 0),
(2, '2022-02-01', 527, 0),
(2, '2022-03-01', 527, 0),
(2, '2022-04-01', 712, 0),
(2, '2022-05-01', 704, 0),
(2, '2022-06-01', 543, 0),
(2, '2022-07-01', 540, 0),
(2, '2022-08-01', 644, 0),
(2, '2022-09-01', 754, 1),
(2, '2022-10-01', 777, 0),
(2, '2022-11-01', 540, 0),
(2, '2022-12-01', 556, 1),
(3, '2022-01-01', 605, 1),
(3, '2022-02-01', 681, 1),
(3, '2022-03-01', 618, 1),
(3, '2022-04-01', 561, 1),
(3, '2022-05-01', 754, 1),
(3, '2022-06-01', 668, 1),
(3, '2022-07-01', 644, 1),
(3, '2022-08-01', 769, 1),
(3, '2022-09-01', 699, 1),
(3, '2022-10-01', 585, 1),
(3, '2022-11-01', 728, 1),
(3, '2022-12-01', 715, 1),
(4, '2022-01-01', 673, 1),
(4, '2022-02-01', 694, 1),
(4, '2022-03-01', 618, 1),
(4, '2022-04-01', 676, 1),
(4, '2022-05-01', 673, 1),
(4, '2022-06-01', 767, 1),
(4, '2022-07-01', 603, 1),
(4, '2022-08-01', 722, 1),
(4, '2022-09-01', 585, 0),
(4, '2022-10-01', 634, 1),
(4, '2022-11-01', 587, 1),
(4, '2022-12-01', 546, 1),
(5, '2022-01-01', 626, 1),
(5, '2022-02-01', 686, 1),
(5, '2022-03-01', 564, 1),
(5, '2022-04-01', 637, 1),
(5, '2022-05-01', 748, 1),
(5, '2022-06-01', 673, 1),
(5, '2022-07-01', 761, 1),
(5, '2022-08-01', 569, 1),
(5, '2022-09-01', 772, 0),
(5, '2022-10-01', 639, 1),
(5, '2022-11-01', 681, 1),
(5, '2022-12-01', 639, 1),
(6, '2022-01-01', 533, 1),
(6, '2022-02-01', 743, 1),
(6, '2022-03-01', 665, 1),
(6, '2022-04-01', 527, 1),
(6, '2022-05-01', 577, 1),
(6, '2022-06-01', 551, 1),
(6, '2022-07-01', 553, 1),
(6, '2022-08-01', 712, 1),
(6, '2022-09-01', 689, 0),
(6, '2022-10-01', 634, 1),
(6, '2022-11-01', 728, 1),
(6, '2022-12-01', 686, 1),
(7, '2022-01-01', 618, 1),
(7, '2022-02-01', 618, 1),
(7, '2022-03-01', 769, 1),
(7, '2022-04-01', 730, 1),
(7, '2022-05-01', 629, 1),
(7, '2022-06-01', 592, 1),
(7, '2022-07-01', 564, 1),
(7, '2022-08-01', 582, 1),
(7, '2022-09-01', 702, 0),
(7, '2022-10-01', 746, 1),
(7, '2022-11-01', 577, 1),
(7, '2022-12-01', 660, 1),
(8, '2022-01-01', 546, 1),
(8, '2022-02-01', 634, 1),
(8, '2022-03-01', 572, 1),
(8, '2022-04-01', 522, 1),
(8, '2022-05-01', 663, 1),
(8, '2022-06-01', 564, 1),
(8, '2022-07-01', 585, 1),
(8, '2022-08-01', 738, 1),
(8, '2022-09-01', 754, 0),
(8, '2022-10-01', 715, 1),
(8, '2022-11-01', 551, 1),
(8, '2022-12-01', 741, 1),
(9, '2022-01-01', 572, 1),
(9, '2022-02-01', 769, 1),
(9, '2022-03-01', 756, 1),
(9, '2022-04-01', 772, 1),
(9, '2022-05-01', 577, 1),
(9, '2022-06-01', 629, 1),
(9, '2022-07-01', 631, 1),
(9, '2022-08-01', 767, 1),
(9, '2022-09-01', 577, 0),
(9, '2022-10-01', 585, 1),
(9, '2022-11-01', 777, 1),
(9, '2022-12-01', 720, 1),
(10, '2022-01-01', 572, 1),
(10, '2022-02-01', 686, 1),
(10, '2022-03-01', 579, 1),
(10, '2022-04-01', 520, 1),
(10, '2022-05-01', 741, 1),
(10, '2022-06-01', 650, 1),
(10, '2022-07-01', 569, 1),
(10, '2022-08-01', 600, 1),
(10, '2022-09-01', 707, 0),
(10, '2022-10-01', 689, 1),
(10, '2022-11-01', 741, 1),
(10, '2022-12-01', 582, 1),
(11, '2022-01-01', 553, 1),
(11, '2022-02-01', 702, 1),
(11, '2022-03-01', 751, 1),
(11, '2022-04-01', 720, 1),
(11, '2022-05-01', 561, 1),
(11, '2022-06-01', 761, 1),
(11, '2022-07-01', 694, 1),
(11, '2022-08-01', 637, 1),
(11, '2022-09-01', 574, 1),
(11, '2022-10-01', 660, 1),
(11, '2022-11-01', 608, 1),
(11, '2022-12-01', 696, 1),
(12, '2022-01-01', 647, 1),
(12, '2022-02-01', 527, 1),
(12, '2022-03-01', 665, 1),
(12, '2022-04-01', 603, 1),
(12, '2022-05-01', 650, 1),
(12, '2022-06-01', 655, 1),
(12, '2022-07-01', 738, 1),
(12, '2022-08-01', 670, 1),
(12, '2022-09-01', 730, 1),
(12, '2022-10-01', 702, 1),
(12, '2022-11-01', 525, 1),
(12, '2022-12-01', 530, 1),
(13, '2022-01-01', 535, 1),
(13, '2022-02-01', 678, 1),
(13, '2022-03-01', 631, 1),
(13, '2022-04-01', 572, 1),
(13, '2022-05-01', 626, 1),
(13, '2022-06-01', 551, 1),
(13, '2022-07-01', 741, 1),
(13, '2022-08-01', 644, 1),
(13, '2022-09-01', 754, 1),
(13, '2022-10-01', 761, 1),
(13, '2022-11-01', 631, 1),
(13, '2022-12-01', 704, 1),
(14, '2022-01-01', 598, 1),
(14, '2022-02-01', 559, 1),
(14, '2022-03-01', 699, 1),
(14, '2022-04-01', 522, 1),
(14, '2022-05-01', 540, 1),
(14, '2022-06-01', 603, 1),
(14, '2022-07-01', 613, 1),
(14, '2022-08-01', 608, 1),
(14, '2022-09-01', 559, 0),
(14, '2022-10-01', 712, 1),
(14, '2022-11-01', 691, 1),
(14, '2022-12-01', 595, 1),
(1, '2023-01-06', 300, 1),
(12, '2022-09-09', 33, 0),
(1, '2022-12-17', 450, 0),
(12, '2022-12-17', 390, 0),
(12, '2022-12-17', 4079, 0),
(1, '2022-12-17', 450, 0),
(1, '2022-12-18', 477, 1),
(12, '2022-12-20', 390, 0);

-- --------------------------------------------------------

--
-- Table structure for table `complains_details`
--

CREATE TABLE `complains_details` (
  `id` int(11) NOT NULL,
  `meter_code` int(11) NOT NULL,
  `complain_date` date DEFAULT NULL,
  `complain` varchar(300) NOT NULL,
  `c_bill_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complains_details`
--

INSERT INTO `complains_details` (`id`, `meter_code`, `complain_date`, `complain`, `c_bill_date`) VALUES
(1, 1, '2022-12-12', 'i hav bla bla bla', '2022-01-01'),
(2, 2, '2022-12-12', 'i hav bla bla bla', '2022-02-01'),
(3, 3, '2022-12-12', 'i hav bla bla bla', '2022-03-01'),
(4, 4, '2022-12-12', 'i hav bla bla bla', '2022-04-01'),
(5, 5, '2022-12-12', 'i hav bla bla bla', '2022-05-01'),
(6, 6, '2022-12-12', 'i hav bla bla bla', '2022-06-01'),
(7, 7, '2022-12-12', 'i hav bla bla bla', '2022-07-01'),
(8, 8, '2022-12-12', 'i hav bla bla bla', '2022-08-01'),
(9, 9, '2022-12-12', 'i hav bla bla bla', '2022-09-01'),
(10, 10, '2022-12-12', 'i hav bla bla bla', '2022-10-01'),
(11, 11, '2022-12-12', 'i hav bla bla bla', '2022-11-01'),
(12, 12, '2022-12-12', 'i hav bla bla bla', '2022-12-01'),
(13, 1, '2022-12-15', 'i have alot of problems', NULL),
(14, 2, '2022-12-15', 'holllaaaaaaaa', '2022-01-01'),
(15, 2, '2022-12-15', '9594665', '2022-01-01'),
(16, 3, '2022-12-15', 'hkjhjhvknbvhgfcvhbjklmmnjbghjb', '2022-06-01'),
(17, 1, '2022-12-15', 'asasf', '2022-04-01'),
(18, 12, '2022-12-15', 'asdfljlksdhfjkh', '2022-09-01'),
(19, 1, '2022-12-15', 'asdfljlksdhfjkh', '2022-04-01'),
(20, 1, '2022-12-15', 'sfsdf', '2022-04-01'),
(21, 1, '2022-12-15', 'sfsdf', '2022-04-01'),
(22, 12, '2022-12-15', 'jhgjhhjnjmj', NULL),
(23, 1, '2022-12-16', 'askjkjahsdkj', '2022-12-01'),
(24, 3, '2022-12-17', 'asjdlkajkl;sdljk', NULL),
(25, 13, '2022-12-17', 'jkhkhk', NULL),
(26, 12, '2022-12-19', 'PSODKFLKSMFSK;KFDSKOPKSP', '2022-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `username`, `password`, `type`) VALUES
(4, 'omar', '159753', 'operator'),
(5, 'ahmed', '159753', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `meter_reading`
--

CREATE TABLE `meter_reading` (
  `meter_code` int(11) NOT NULL,
  `reading_date` date DEFAULT NULL,
  `reading` int(11) DEFAULT NULL,
  `real_reading` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meter_reading`
--

INSERT INTO `meter_reading` (`meter_code`, `reading_date`, `reading`, `real_reading`) VALUES
(1, '2022-01-01', 281, 274),
(1, '2022-02-01', 292, 295),
(1, '2022-03-01', 259, 256),
(1, '2022-04-01', 267, 276),
(1, '2022-05-01', 203, 198),
(1, '2022-06-01', 237, 229),
(1, '2022-07-01', 266, 259),
(1, '2022-08-01', 262, 264),
(1, '2022-09-01', 255, 246),
(1, '2022-10-01', 236, 236),
(1, '2022-11-01', 296, 289),
(1, '2022-12-01', 202, 207),
(2, '2022-01-01', 294, 302),
(2, '2022-02-01', 203, 203),
(2, '2022-03-01', 203, 203),
(2, '2022-04-01', 274, 276),
(2, '2022-05-01', 271, 278),
(2, '2022-06-01', 209, 207),
(2, '2022-07-01', 208, 211),
(2, '2022-08-01', 248, 253),
(2, '2022-09-01', 290, 295),
(2, '2022-10-01', 299, 293),
(2, '2022-11-01', 208, 207),
(2, '2022-12-01', 214, 213),
(3, '2022-01-01', 233, 226),
(3, '2022-02-01', 262, 263),
(3, '2022-03-01', 238, 237),
(3, '2022-04-01', 216, 218),
(3, '2022-05-01', 290, 290),
(3, '2022-06-01', 257, 256),
(3, '2022-07-01', 248, 242),
(3, '2022-08-01', 296, 298),
(3, '2022-09-01', 269, 261),
(3, '2022-10-01', 225, 227),
(3, '2022-11-01', 280, 288),
(3, '2022-12-01', 275, 268),
(4, '2022-01-01', 259, 254),
(4, '2022-02-01', 267, 258),
(4, '2022-03-01', 238, 243),
(4, '2022-04-01', 260, 252),
(4, '2022-05-01', 259, 267),
(4, '2022-06-01', 295, 298),
(4, '2022-07-01', 232, 232),
(4, '2022-08-01', 278, 279),
(4, '2022-09-01', 225, 232),
(4, '2022-10-01', 244, 235),
(4, '2022-11-01', 226, 220),
(4, '2022-12-01', 210, 216),
(5, '2022-01-01', 241, 249),
(5, '2022-02-01', 264, 263),
(5, '2022-03-01', 217, 217),
(5, '2022-04-01', 245, 249),
(5, '2022-05-01', 288, 288),
(5, '2022-06-01', 259, 254),
(5, '2022-07-01', 293, 292),
(5, '2022-08-01', 219, 228),
(5, '2022-09-01', 297, 291),
(5, '2022-10-01', 246, 237),
(5, '2022-11-01', 262, 265),
(5, '2022-12-01', 246, 249),
(6, '2022-01-01', 205, 198),
(6, '2022-02-01', 286, 290),
(6, '2022-03-01', 256, 258),
(6, '2022-04-01', 203, 200),
(6, '2022-05-01', 222, 228),
(6, '2022-06-01', 212, 204),
(6, '2022-07-01', 213, 204),
(6, '2022-08-01', 274, 270),
(6, '2022-09-01', 265, 273),
(6, '2022-10-01', 244, 240),
(6, '2022-11-01', 280, 285),
(6, '2022-12-01', 264, 255),
(7, '2022-01-01', 238, 246),
(7, '2022-02-01', 238, 235),
(7, '2022-03-01', 296, 294),
(7, '2022-04-01', 281, 287),
(7, '2022-05-01', 242, 236),
(7, '2022-06-01', 228, 229),
(7, '2022-07-01', 217, 221),
(7, '2022-08-01', 224, 225),
(7, '2022-09-01', 270, 262),
(7, '2022-10-01', 287, 283),
(7, '2022-11-01', 222, 229),
(7, '2022-12-01', 254, 258),
(8, '2022-01-01', 210, 206),
(8, '2022-02-01', 244, 242),
(8, '2022-03-01', 220, 225),
(8, '2022-04-01', 201, 203),
(8, '2022-05-01', 255, 260),
(8, '2022-06-01', 217, 212),
(8, '2022-07-01', 225, 227),
(8, '2022-08-01', 284, 284),
(8, '2022-09-01', 290, 281),
(8, '2022-10-01', 275, 267),
(8, '2022-11-01', 212, 220),
(8, '2022-12-01', 285, 276),
(9, '2022-01-01', 220, 225),
(9, '2022-02-01', 296, 304),
(9, '2022-03-01', 291, 296),
(9, '2022-04-01', 297, 302),
(9, '2022-05-01', 222, 218),
(9, '2022-06-01', 242, 247),
(9, '2022-07-01', 243, 242),
(9, '2022-08-01', 295, 300),
(9, '2022-09-01', 222, 220),
(9, '2022-10-01', 225, 231),
(9, '2022-11-01', 299, 299),
(9, '2022-12-01', 277, 274),
(10, '2022-01-01', 220, 219),
(10, '2022-02-01', 264, 265),
(10, '2022-03-01', 223, 228),
(10, '2022-04-01', 200, 192),
(10, '2022-05-01', 285, 292),
(10, '2022-06-01', 250, 254),
(10, '2022-07-01', 219, 218),
(10, '2022-08-01', 231, 239),
(10, '2022-09-01', 272, 281),
(10, '2022-10-01', 265, 264),
(10, '2022-11-01', 285, 290),
(10, '2022-12-01', 224, 221),
(11, '2022-01-01', 213, 207),
(11, '2022-02-01', 270, 279),
(11, '2022-03-01', 289, 285),
(11, '2022-04-01', 277, 280),
(11, '2022-05-01', 216, 209),
(11, '2022-06-01', 293, 287),
(11, '2022-07-01', 267, 264),
(11, '2022-08-01', 245, 238),
(11, '2022-09-01', 221, 222),
(11, '2022-10-01', 254, 261),
(11, '2022-11-01', 234, 226),
(11, '2022-12-01', 268, 264),
(12, '2022-01-01', 249, 243),
(12, '2022-02-01', 203, 203),
(12, '2022-03-01', 256, 248),
(12, '2022-04-01', 232, 238),
(12, '2022-05-01', 250, 249),
(12, '2022-06-01', 252, 252),
(12, '2022-07-01', 284, 291),
(12, '2022-08-01', 258, 255),
(12, '2022-09-01', 281, 289),
(12, '2022-10-01', 270, 267),
(12, '2022-11-01', 202, 198),
(12, '2022-12-01', 204, 196),
(13, '2022-01-01', 206, 211),
(13, '2022-02-01', 261, 253),
(13, '2022-03-01', 243, 243),
(13, '2022-04-01', 220, 212),
(13, '2022-05-01', 241, 237),
(13, '2022-06-01', 212, 205),
(13, '2022-07-01', 285, 290),
(13, '2022-08-01', 248, 239),
(13, '2022-09-01', 290, 288),
(13, '2022-10-01', 293, 288),
(13, '2022-11-01', 243, 240),
(13, '2022-12-01', 271, 276),
(14, '2022-01-01', 230, 224),
(14, '2022-02-01', 215, 213),
(14, '2022-03-01', 269, 276),
(14, '2022-04-01', 201, 204),
(14, '2022-05-01', 208, 213),
(14, '2022-06-01', 232, 226),
(14, '2022-07-01', 236, 227),
(14, '2022-08-01', 234, 240),
(14, '2022-09-01', 215, 213),
(14, '2022-10-01', 274, 274),
(14, '2022-11-01', 266, 267),
(14, '2022-12-01', 229, 228),
(15, '2022-01-01', 275, 284),
(15, '2022-02-01', 288, 292),
(15, '2022-03-01', 250, 247),
(15, '2022-04-01', 208, 213),
(15, '2022-05-01', 282, 278),
(15, '2022-06-01', 224, 228),
(15, '2022-07-01', 279, 280),
(15, '2022-08-01', 205, 198),
(15, '2022-09-01', 244, 248),
(15, '2022-10-01', 250, 248),
(15, '2022-11-01', 246, 243),
(15, '2022-12-01', 227, 220),
(1, '2023-01-06', 100, 109),
(12, '2022-09-09', 13, 11),
(1, '2022-12-17', 150, 150),
(12, '2022-12-17', 150, 152),
(12, '2022-12-17', 1569, 1565),
(1, '2022-12-17', 150, 147),
(1, '2022-12-18', 159, 151),
(12, '2022-12-20', 150, 146);

-- --------------------------------------------------------

--
-- Table structure for table `new_customer`
--

CREATE TABLE `new_customer` (
  `id` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `region` varchar(30) DEFAULT NULL,
  `fname` varchar(10) DEFAULT NULL,
  `lname` varchar(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `contract_link` varchar(60) NOT NULL,
  `registration_date` date NOT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_customer`
--

INSERT INTO `new_customer` (`id`, `city`, `region`, `fname`, `lname`, `phone`, `contract_link`, `registration_date`, `email`) VALUES
(1, 'cairo', 'helwan', 'ahmed', 'esmail', '01220866090', 'http://facebook.com/', '2022-09-08', 'ahmed@gmail.com'),
(2, 'cairo', 'helwan', 'omar', 'esmail', '123456789', 'http', '2022-09-01', 'omar@gemail'),
(3, 'jkahskjdha', 'jkashkjhkjh', 'ahmed', 'aldhkj', 'ajkshckj', 'asjkhkjah', '2022-12-15', 'kjahsjkchk'),
(4, 'cairo', 'helwan', 'omar', 'esmail', '123456789', 'http', '2022-09-01', 'omar@gemail'),
(5, 'cairo', 'helwan', 'omar', 'esmail', '123456789', 'http', '2022-09-01', 'omar@gemail'),
(6, 'cairo', 'helwan', 'omar', 'esmail', '123456789', 'http', '2022-09-01', 'omar@gemail'),
(7, 'cairo', 'helwan', 'omar', 'esmail', '123456789', 'http', '2022-09-01', 'omar@gemail'),
(8, 'cairo', 'helwan', 'omar', 'esmail', '123456789', 'http', '2022-09-01', 'omar@gemail'),
(9, 'cairo', 'helwan', 'omar', 'esmail', '123456789', 'http', '2022-09-01', 'omar@gemail'),
(10, 'cairo', 'helwan', 'omar', 'esmail', '123456789', 'http', '2022-09-01', 'omar@gemail'),
(11, 'lkjslkdjflk', 'jlksjdflk', 'smd.,fm', '.,smd.', 'lksjdlkfj', 'ljslkjfd', '2022-12-15', 'lksjdflkj'),
(12, 'cairo', 'helwan', 'ahmed', 'esmail', '01096466813', 'aslkdj', '2022-12-17', 'ahmed@gmail.com'),
(13, 'jkljsdklfj', 'kljklsjklj', 'ahmed', 'slkdjklf', 'lkjskldj', 'lkjlkajdklsj', '2022-12-20', 'lkjaskldj');

-- --------------------------------------------------------

--
-- Table structure for table `old_customer`
--

CREATE TABLE `old_customer` (
  `meter_code` int(11) NOT NULL,
  `region` varchar(30) DEFAULT NULL,
  `subscription` tinyint(4) DEFAULT 1,
  `email` varchar(30) NOT NULL,
  `tariff` float DEFAULT 2.6
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `old_customer`
--

INSERT INTO `old_customer` (`meter_code`, `region`, `subscription`, `email`, `tariff`) VALUES
(1, 'cairo', 0, 'ahmed5631a@gmail.com', 3.6),
(2, 'Mumbai', 0, 'aes418714@gmail.com', 2.6),
(3, 'Mumbai', 1, 'ahemdsorty@gmail.com', 2.6),
(4, 'Alexandria', 1, 'asorse258@gmail.com', 2.6),
(5, 'Delhi', 1, 'asorce369@gmail.com', 2.6),
(6, 'Delhi', 1, 'keahmed147@gmail.com', 2.6),
(7, 'Delhi', 1, 'ahmedesmail1569984@gmail.com', 2.6),
(8, 'Manila', 1, 'ahmedesa163789@yahoo.com', 2.6),
(9, 'Jakarta', 1, 'ahmedes166456@yahoo.com', 2.6),
(10, 'São Paulo', 1, 'ahmes945549@gmail.com', 2.6),
(11, 'Giza', 1, 'ahmeds9896@yahoo.com', 2.6),
(12, 'Seoul', 1, 'keroahmd@gmail.com', 2.6),
(13, 'Jakarta', 1, 'ahmedolas945489@gmail.com', 2.6),
(14, 'Jakarta', 1, 'akhrk1564@gmail.com', 2.6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complains_details`
--
ALTER TABLE `complains_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_customer`
--
ALTER TABLE `new_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `old_customer`
--
ALTER TABLE `old_customer`
  ADD PRIMARY KEY (`meter_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complains_details`
--
ALTER TABLE `complains_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `new_customer`
--
ALTER TABLE `new_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `old_customer`
--
ALTER TABLE `old_customer`
  MODIFY `meter_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;