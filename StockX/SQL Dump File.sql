-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 30, 2022 at 07:17 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mgt 4058 project`
--

-- --------------------------------------------------------

--
-- Table structure for table `apparel`
--

CREATE TABLE `apparel` (
  `ProductID` int(2) DEFAULT NULL,
  `Season` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apparel`
--

INSERT INTO `apparel` (`ProductID`, `Season`) VALUES
(39, 'Fall'),
(40, 'Fall'),
(41, 'Fall'),
(42, 'Winter'),
(43, 'Fall'),
(44, 'Spring'),
(45, 'Fall'),
(46, 'Summer'),
(47, 'Spring'),
(48, 'Winter'),
(49, 'Winter'),
(50, 'Fall');

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `BuyerID` varchar(6) DEFAULT NULL,
  `SellerID` varchar(6) DEFAULT NULL,
  `ProductID` int(2) DEFAULT NULL,
  `BidDate` date DEFAULT NULL,
  `BidTime` time(6) DEFAULT NULL,
  `BidPrice` int(3) DEFAULT NULL,
  `AskPrice` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auction`
--

INSERT INTO `auction` (`BuyerID`, `SellerID`, `ProductID`, `BidDate`, `BidTime`, `BidPrice`, `AskPrice`) VALUES
('B-9220', 'S-3319', 2, '2022-11-12', '22:03:49.000000', 145, 238),
('B-4413', 'S-8697', 18, '2022-11-25', '09:29:18.000000', 121, 178),
('B-0150', 'S-3319', 9, '2022-11-05', '08:58:45.000000', 322, 322),
('B-8027', 'S-1944', 44, '2022-11-11', '22:34:39.000000', 83, 132),
('B-8322', 'S-2488', 37, '2022-11-25', '06:57:27.000000', 145, 179),
('B-9748', 'S-7929', 10, '2022-11-18', '02:26:06.000000', 174, 245),
('B-5918', 'S-1944', 44, '2022-11-26', '01:51:15.000000', 117, 132),
('B-5763', 'S-7929', 4, '2022-11-30', '20:34:00.000000', 123, 198),
('B-5005', 'S-6313', 31, '2022-11-23', '20:33:43.000000', 247, 294),
('B-9285', 'S-6313', 3, '2022-11-22', '06:12:13.000000', 322, 398),
('B-5918', 'S-8977', 17, '2022-11-08', '11:20:33.000000', 125, 158),
('B-2090', 'S-7929', 10, '2022-11-20', '23:32:43.000000', 172, 245),
('B-0012', 'S-9666', 40, '2022-11-07', '01:00:07.000000', 128, 136),
('B-8873', 'S-3319', 7, '2022-11-23', '21:46:09.000000', 160, 242),
('B-3738', 'S-8395', 28, '2022-11-11', '08:01:45.000000', 258, 392),
('B-3342', 'S-4532', 14, '2022-11-08', '03:44:54.000000', 249, 304),
('B-6867', 'S-2488', 39, '2022-11-06', '23:05:44.000000', 114, 173),
('B-8027', 'S-5420', 47, '2022-11-30', '09:01:38.000000', 113, 143),
('B-7986', 'S-5420', 47, '2022-11-05', '09:07:51.000000', 119, 143),
('B-2696', 'S-6354', 20, '2022-11-19', '21:02:27.000000', 162, 205),
('B-7672', 'S-5420', 50, '2022-11-23', '12:32:44.000000', 109, 146),
('B-3645', 'S-3319', 5, '2022-11-15', '20:11:58.000000', 343, 377),
('B-3645', 'S-8977', 43, '2022-11-21', '20:07:56.000000', 157, 172),
('B-4608', 'S-8977', 17, '2022-11-14', '22:09:32.000000', 146, 158),
('B-7344', 'S-9312', 45, '2022-11-04', '19:09:48.000000', 119, 154),
('B-4499', 'S-7394', 32, '2022-11-15', '20:05:29.000000', 212, 228),
('B-8633', 'S-6354', 16, '2022-11-20', '21:58:25.000000', 300, 319),
('B-6867', 'S-8977', 43, '2022-11-11', '08:30:22.000000', 131, 172),
('B-4499', 'S-9666', 40, '2022-11-26', '12:23:13.000000', 98, 136),
('B-0228', 'S-9666', 40, '2022-11-15', '16:50:29.000000', 98, 136),
('B-3888', 'S-9229', 35, '2022-11-16', '07:41:10.000000', 348, 505),
('B-6542', 'S-4532', 14, '2022-11-10', '21:20:45.000000', 301, 304),
('B-7274', 'S-4532', 48, '2022-11-03', '19:15:34.000000', 100, 108),
('B-0870', 'S-4532', 14, '2022-11-13', '02:35:39.000000', 292, 304),
('B-2907', 'S-4532', 19, '2022-11-16', '10:15:28.000000', 216, 296),
('B-5053', 'S-2488', 21, '2022-11-02', '02:01:58.000000', 195, 246),
('B-2932', 'S-5420', 29, '2022-11-07', '08:26:22.000000', 153, 160),
('B-8692', 'S-6354', 23, '2022-11-14', '11:50:37.000000', 158, 214),
('B-1039', 'S-5393', 33, '2022-11-25', '20:42:30.000000', 115, 171),
('B-7809', 'S-9229', 27, '2022-11-20', '07:37:29.000000', 85, 142),
('B-7255', 'S-9628', 26, '2022-11-13', '11:19:36.000000', 76, 119),
('B-0956', 'S-4532', 14, '2022-11-28', '16:18:01.000000', 192, 304),
('B-5129', 'S-5393', 33, '2022-11-07', '03:58:33.000000', 142, 171),
('B-8692', 'S-7929', 6, '2022-11-25', '15:30:38.000000', 173, 198),
('B-1039', 'S-6313', 42, '2022-11-27', '07:08:28.000000', 145, 159),
('B-2932', 'S-8977', 17, '2022-11-29', '18:11:36.000000', 128, 158),
('B-5812', 'S-1442', 36, '2022-11-15', '21:44:11.000000', 261, 362),
('B-5550', 'S-6313', 8, '2022-11-12', '19:00:23.000000', 123, 164),
('B-0303', 'S-9628', 26, '2022-11-30', '02:18:36.000000', 75, 119),
('B-5550', 'S-7929', 4, '2022-11-02', '14:55:55.000000', 136, 198),
('B-7274', 'S-9229', 35, '2022-11-22', '04:41:55.000000', 338, 505),
('B-3398', 'S-2488', 39, '2022-11-21', '18:06:41.000000', 111, 173),
('B-0592', 'S-5420', 50, '2022-11-03', '19:33:00.000000', 143, 146),
('B-8873', 'S-8977', 43, '2022-11-09', '18:20:18.000000', 122, 172),
('B-1856', 'S-1944', 44, '2022-11-05', '15:57:55.000000', 127, 132),
('B-0592', 'S-9229', 35, '2022-11-28', '00:21:09.000000', 353, 505),
('B-2452', 'S-9666', 40, '2022-11-06', '02:40:59.000000', 122, 136),
('B-0870', 'S-2488', 11, '2022-11-30', '20:31:43.000000', 375, 463),
('B-2014', 'S-3319', 2, '2022-11-09', '02:17:15.000000', 191, 238),
('B-9748', 'S-6313', 31, '2022-11-08', '02:26:37.000000', 241, 294),
('B-8553', 'S-7929', 4, '2022-11-17', '23:33:58.000000', 136, 198),
('B-7809', 'S-1442', 12, '2022-11-03', '04:43:37.000000', 168, 240),
('B-1436', 'S-9229', 27, '2022-11-05', '02:02:50.000000', 92, 142),
('B-8027', 'S-3319', 2, '2022-11-29', '23:53:54.000000', 231, 238),
('B-9321', 'S-9628', 26, '2022-11-05', '15:34:58.000000', 119, 119),
('B-7887', 'S-6354', 23, '2022-11-05', '19:56:03.000000', 150, 214),
('B-3276', 'S-6354', 20, '2022-11-17', '17:17:11.000000', 164, 205),
('B-0664', 'S-7929', 41, '2022-11-22', '09:48:57.000000', 122, 122),
('B-5986', 'S-2850', 24, '2022-11-15', '17:59:06.000000', 182, 267),
('B-7950', 'S-8977', 43, '2022-11-30', '11:27:21.000000', 136, 172),
('B-5005', 'S-5420', 50, '2022-11-08', '00:25:03.000000', 146, 146),
('B-1856', 'S-3319', 5, '2022-11-11', '21:13:07.000000', 317, 377),
('B-5918', 'S-1442', 36, '2022-11-06', '19:11:12.000000', 359, 362),
('B-0303', 'S-9666', 40, '2022-11-11', '09:01:45.000000', 106, 136),
('B-7886', 'S-3319', 7, '2022-11-11', '11:49:21.000000', 160, 242),
('B-4608', 'S-6354', 49, '2022-11-11', '07:50:06.000000', 298, 403),
('B-3342', 'S-9666', 30, '2022-11-28', '11:32:11.000000', 201, 283),
('B-8873', 'S-0108', 22, '2022-11-14', '04:56:43.000000', 218, 363),
('B-7672', 'S-4532', 14, '2022-11-17', '00:32:02.000000', 265, 304),
('B-7301', 'S-0108', 22, '2022-11-24', '15:22:39.000000', 250, 363),
('B-1825', 'S-6313', 31, '2022-11-14', '20:08:45.000000', 259, 294),
('B-9020', 'S-8977', 43, '2022-11-02', '07:32:11.000000', 148, 172),
('B-3943', 'S-7929', 34, '2022-11-06', '17:28:43.000000', 82, 130),
('B-8720', 'S-7929', 4, '2022-11-04', '08:58:11.000000', 133, 198),
('B-2710', 'S-9312', 45, '2022-11-25', '11:34:29.000000', 154, 154),
('B-0312', 'S-2850', 15, '2022-11-19', '18:03:12.000000', 102, 168),
('B-0383', 'S-3319', 9, '2022-11-09', '03:14:39.000000', 315, 322),
('B-5894', 'S-2850', 38, '2022-11-09', '11:13:02.000000', 161, 196),
('B-0312', 'S-5420', 29, '2022-11-29', '01:58:56.000000', 136, 160),
('B-2696', 'S-1442', 46, '2022-11-15', '11:32:12.000000', 68, 108),
('B-0228', 'S-2850', 38, '2022-11-06', '13:13:50.000000', 120, 196),
('B-5550', 'S-8977', 43, '2022-11-25', '08:52:41.000000', 124, 172),
('B-2696', 'S-8977', 43, '2022-11-04', '03:56:45.000000', 143, 172),
('B-8008', 'S-7394', 25, '2022-11-25', '03:38:32.000000', 238, 256),
('B-1825', 'S-6313', 8, '2022-11-19', '18:31:36.000000', 121, 164),
('B-5986', 'S-9229', 35, '2022-11-27', '00:04:20.000000', 308, 505),
('B-2120', 'S-2488', 21, '2022-11-14', '17:18:12.000000', 182, 246),
('B-9098', 'S-5420', 47, '2022-11-24', '01:01:00.000000', 117, 143),
('B-6542', 'S-3319', 2, '2022-11-21', '16:25:30.000000', 203, 238),
('B-4012', 'S-5420', 47, '2022-11-14', '08:08:04.000000', 93, 143),
('B-0179', 'S-7394', 32, '2022-11-08', '20:23:30.000000', 228, 228),
('B-2932', 'S-9666', 40, '2022-11-03', '04:12:14.000000', 120, 136),
('B-1383', 'S-9666', 40, '2022-11-10', '19:01:46.000000', 91, 136),
('B-6867', 'S-8977', 43, '2022-11-15', '00:07:52.000000', 143, 172),
('B-8873', 'S-2488', 39, '2022-11-28', '14:25:46.000000', 147, 173),
('B-1800', 'S-7929', 4, '2022-11-04', '20:18:30.000000', 146, 198),
('B-8703', 'S-6354', 16, '2022-11-13', '02:46:03.000000', 319, 319),
('B-7815', 'S-1944', 44, '2022-11-01', '09:36:38.000000', 109, 132),
('B-8553', 'S-5420', 29, '2022-11-03', '01:52:56.000000', 118, 160),
('B-3987', 'S-7394', 25, '2022-11-21', '18:46:37.000000', 200, 256),
('B-7255', 'S-6313', 3, '2022-11-03', '10:52:26.000000', 243, 398),
('B-2780', 'S-2850', 38, '2022-11-17', '03:59:09.000000', 135, 196),
('B-5812', 'S-2488', 11, '2022-11-10', '21:37:15.000000', 328, 463),
('B-9321', 'S-6313', 42, '2022-11-14', '16:06:34.000000', 125, 159),
('B-9998', 'S-5420', 50, '2022-11-17', '20:06:16.000000', 93, 146),
('B-4384', 'S-3319', 5, '2022-11-25', '03:57:49.000000', 249, 377),
('B-3276', 'S-2850', 15, '2022-11-04', '17:38:14.000000', 107, 168),
('B-3398', 'S-4532', 48, '2022-11-03', '05:59:57.000000', 71, 108),
('B-0664', 'S-4532', 19, '2022-11-25', '04:35:35.000000', 231, 296),
('B-5053', 'S-1442', 12, '2022-11-26', '02:03:26.000000', 221, 240),
('B-7476', 'S-3319', 7, '2022-11-19', '17:54:28.000000', 220, 242),
('B-7255', 'S-9312', 45, '2022-11-19', '22:33:59.000000', 149, 154),
('B-0046', 'S-3319', 5, '2022-11-01', '05:40:55.000000', 275, 377),
('B-5812', 'S-7394', 25, '2022-11-20', '02:57:32.000000', 233, 256),
('B-3398', 'S-6354', 49, '2022-11-10', '12:41:14.000000', 250, 403),
('B-8873', 'S-9666', 30, '2022-11-27', '02:54:16.000000', 224, 283),
('B-0592', 'S-6313', 8, '2022-11-25', '21:25:19.000000', 118, 164),
('B-2090', 'S-2488', 21, '2022-11-28', '17:47:17.000000', 168, 246),
('B-0956', 'S-8697', 18, '2022-11-13', '03:20:42.000000', 139, 178),
('B-9098', 'S-2850', 24, '2022-11-07', '04:12:56.000000', 222, 267),
('B-5918', 'S-6354', 23, '2022-11-18', '17:45:18.000000', 150, 214),
('B-8703', 'S-9229', 27, '2022-11-27', '10:33:53.000000', 94, 142),
('B-2841', 'S-3319', 7, '2022-11-06', '01:13:44.000000', 165, 242),
('B-1800', 'S-8395', 28, '2022-11-23', '07:34:55.000000', 388, 392),
('B-2383', 'S-0108', 22, '2022-11-06', '19:37:02.000000', 363, 363),
('B-1094', 'S-8977', 43, '2022-11-28', '19:54:37.000000', 148, 172),
('B-2841', 'S-2488', 21, '2022-11-21', '20:40:32.000000', 207, 246),
('B-0228', 'S-2488', 37, '2022-11-24', '04:57:01.000000', 127, 179),
('B-1436', 'S-5420', 47, '2022-11-20', '07:03:19.000000', 111, 143),
('B-4656', 'S-6313', 8, '2022-11-08', '10:40:01.000000', 124, 164),
('B-7487', 'S-1442', 36, '2022-11-03', '19:46:41.000000', 297, 362),
('B-9285', 'S-8977', 43, '2022-11-20', '11:36:52.000000', 131, 172),
('B-7476', 'S-6313', 42, '2022-11-13', '04:36:56.000000', 95, 159),
('B-4413', 'S-6354', 16, '2022-11-06', '23:35:10.000000', 306, 319),
('B-5550', 'S-9628', 26, '2022-11-17', '19:40:32.000000', 84, 119),
('B-3990', 'S-7929', 10, '2022-11-15', '09:57:29.000000', 199, 245),
('B-3943', 'S-8697', 18, '2022-11-20', '17:52:24.000000', 153, 178),
('B-8873', 'S-9666', 30, '2022-11-27', '18:35:31.000000', 252, 283),
('B-9949', 'S-5420', 50, '2022-11-16', '22:35:55.000000', 105, 146),
('B-2498', 'S-2488', 39, '2022-11-16', '18:53:49.000000', 121, 173);

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `BuyerID` varchar(6) DEFAULT NULL,
  `BuyerEmail` varchar(25) DEFAULT NULL,
  `BuyerPhoneNumber` varchar(14) DEFAULT NULL,
  `AltPhoneNumber` varchar(14) DEFAULT NULL,
  `Street` varchar(22) DEFAULT NULL,
  `City` varchar(22) DEFAULT NULL,
  `State` varchar(14) DEFAULT NULL,
  `Zip` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`BuyerID`, `BuyerEmail`, `BuyerPhoneNumber`, `AltPhoneNumber`, `Street`, `City`, `State`, `Zip`) VALUES
('B-3398', 'ypugh391@outlook.com', '(603)-120-2578', '', '7090 Hawthorne Lane', 'La Puerta', 'Hawaii', 12425),
('B-6205', 'hrice981@outlook.com', '(848)-045-7970', '', '654 Elm Street', 'Sheboygan', 'Arizona', 30261),
('B-5005', 'cdawson740@outlook.com', '(643)-486-6199', '(643)-749-2300', '1546 Sycamore Drive', 'Elkhart', 'Alaska', 58364),
('B-3888', 'whubbard789@gmail.com', '(813)-996-7920', '', '8577 Valley Road', 'Bismarck', 'North Dakota', 91789),
('B-2696', 'aali121@outlook.com', '(806)-587-0507', '', '3207 Heritage Drive', 'Corrales', 'West Virginia', 68941),
('B-0179', 'gdeleon647@outlook.com', '(627)-115-9918', '', '754 3rd Street East', 'Loomis', 'Ohio', 93105),
('B-7487', 'hdeleon541@att.net', '(862)-257-8987', '', '1529 Eagle Road', 'Payne Springs', 'New York', 41339),
('B-1383', 'ucooper452@yahoo.com', '(915)-342-0114', '', '6332 Summit Avenue', 'Nashville', 'Tennessee', 82362),
('B-5894', 'adeleon717@gmail.com', '(434)-125-4508', '', '9659 Main Street East', 'Waterbury', 'Vermont', 87719),
('B-9748', 'qclarke879@aol.com', '(737)-036-7915', '', '2911 Jefferson Street', 'Tallahassee', 'Florida', 84097),
('B-2027', 'fmunoz901@yahoo.com', '(499)-873-1812', '', '6822 Summit Street', 'Flint', 'Virginia', 64009),
('B-7255', 'nwalls783@yahoo.com', '(677)-084-4103', '', '8277 Prospect Street', 'Freeman', 'Connecticut', 81177),
('B-1856', 'urangel16@yahoo.com', '(732)-949-4457', '', '8659 Cedar Lane', 'Fallon', 'Oklahoma', 82580),
('B-0312', 'crice401@gmail.com', '(779)-226-7571', '(779)-327-4449', '4076 Deerfield Drive', 'Montague', 'South Carolina', 7890),
('B-3507', 'frosario503@yahoo.com', '(888)-382-6569', '', '8131 Shady Lane', 'La Canada Flintridge', 'Utah', 87616),
('B-7002', 'hcooper619@yahoo.com', '(971)-106-0236', '', '4785 Broad Street', 'Saint Rose', 'Tennessee', 89864),
('B-0228', 'jpeck895@gmail.com', '(973)-317-5314', '', '7142 Holly Drive', 'Weatherford', 'Massachusetts', 77226),
('B-8720', 'glass735@gmail.com', '(268)-474-3592', '', '1198 Heather Court', 'Colleyville', 'Alaska', 7448),
('B-4384', 'phurley893@outlook.com', '(470)-317-9676', '', '5667 Hamilton Street', 'Kittery Point', 'Maryland', 66805),
('B-8633', 'thall296@att.net', '(348)-930-6737', '', '7527 Adams Street', 'Upland', 'Idaho', 33991),
('B-7809', 'jwilkins459@yahoo.com', '(372)-322-1114', '', '808 1st Street', 'Mineola', 'Arizona', 14293),
('B-8553', 'ggood24@yahoo.com', '(875)-557-8867', '', '5176 Penn Street', 'Pen Mar', 'Colorado', 77960),
('B-9098', 'zgardner383@aol.com', '(274)-123-3130', '', '2976 East Street', 'Golf', 'Iowa', 7926),
('B-0012', 'lhaas989@yahoo.com', '(709)-481-3907', '', '4249 Bank Street', 'River Bend', 'Minnesota', 17781),
('B-5053', 'baldwin169@yahoo.com', '(160)-938-1394', '', '188 Union Street', 'Merrill', 'Washington', 31643),
('B-1800', 'xsanders483@aol.com', '(755)-483-3900', '(755)-560-1027', '5960 Park Drive', 'Rush City', 'Nevada', 24205),
('B-5986', 'ekaufman231@gmail.com', '(962)-369-9570', '(962)-527-7379', '4284 Virginia Street', 'Clanton', 'Connecticut', 22189),
('B-5479', 'srandom110@aol.com', '(434)-531-4722', '', '5241 12th Street', 'Plympton', 'Nebraska', 41791),
('B-2609', 'nriddle762@gmail.com', '(655)-063-8546', '', '4880 Lakeview Drive', 'Lake Elsinore', 'Pennsylvania', 63918),
('B-8703', 'pgood282@outlook.com', '(814)-872-0594', '', '3029 Canterbury Court', 'Floyd', 'Arkansas', 91357),
('B-1825', 'lowe806@gmail.com', '(912)-559-4480', '', '7761 Main Street North', 'Salt Lake City', 'Utah', 97987),
('B-8220', 'briddle93@outlook.com', '(672)-968-2543', '', '2029 Spruce Street', 'Dumont', 'New Hampshire', 36657),
('B-6186', 'brosario290@yahoo.com', '(212)-087-5113', '', '4556 College Avenue', 'Scotland Neck', 'Utah', 63487),
('B-5401', 'zdeleon46@outlook.com', '(406)-109-4731', '', '8029 Industrial Blvd', 'Helenwood', 'Arizona', 57280),
('B-4608', 'jhall132@yahoo.com', '(118)-934-0220', '', '9572 Broad Street West', 'Friendsville', 'Alaska', 23877),
('B-5918', 'ghaas358@yahoo.com', '(509)-382-6663', '', '1274 Church Road', 'Caseville', 'Alaska', 6065),
('B-3016', 'ksmith712@outlook.com', '(715)-939-7669', '(715)-363-1014', '7905 Fulton Street', 'Signal Hill', 'Nebraska', 38732),
('B-5890', 'vbullock720@att.net', '(735)-577-0882', '', '8824 Grant Street', 'Timberlane', 'Ohio', 19041),
('B-2120', 'hdodson245@outlook.com', '(722)-951-2692', '', '6116 Locust Street', 'Merrill', 'Oregon', 16801),
('B-2498', 'xsmith697@gmail.com', '(322)-517-6747', '(322)-793-3638', '9400 2nd Street West', 'Reedsville', 'Utah', 52281),
('B-4681', 'aclarke776@aol.com', '(535)-641-9474', '', '3129 Lexington Drive', 'Dennehotso', 'Alabama', 75638),
('B-0870', 'wwoods202@gmail.com', '(738)-617-6986', '', '6705 4th Avenue', 'Colleyville', 'California', 47335),
('B-7476', 'jwilcox77@outlook.com', '(489)-942-8004', '', '4307 Clay Street', 'Strasburg', 'Connecticut', 50152),
('B-8008', 'ofakeemail701@gmail.com', '(524)-752-5690', '', '5962 Euclid Avenue', 'Canyon City', 'Rhode Island', 78385),
('B-9244', 'rfakeemail419@gmail.com', '(745)-036-4963', '', '6124 Creekside Drive', 'Augusta', 'Maine', 42941),
('B-1039', 'wpotato160@gmail.com', '(904)-843-8309', '', '1027 Canterbury Court', 'Chetopa', 'Hawaii', 9094),
('B-7886', 'wwalls123@yahoo.com', '(549)-965-8647', '', '2319 Valley View Drive', 'West Falmouth', 'New Hampshire', 28634),
('B-2014', 'umanning705@outlook.com', '(175)-070-4177', '', '6243 Fawn Lane', 'Tangent', 'New Hampshire', 22244),
('B-0187', 'jfischer368@gmail.com', '(874)-686-4011', '', '4987 Piedmont Avenue', 'Fletcher', 'Alabama', 80108),
('B-6525', 'xmiddleton723@gmail.com', '(433)-980-4156', '', '8035 Canterbury Drive', 'Windfall', 'California', 78194),
('B-9618', 'ocooper561@yahoo.com', '(511)-969-1031', '', '5638 Grand Avenue', 'Boise', 'Idaho', 28347),
('B-3276', 'dsaunders762@yahoo.com', '(974)-849-9724', '', '6112 Canterbury Court', 'Tchula', 'New Jersey', 80002),
('B-0956', 'tdawson400@outlook.com', '(190)-856-4240', '', '1975 Monroe Street', 'Nice', 'Michigan', 34215),
('B-7344', 'ekaufman406@gmail.com', '(964)-639-3722', '', '3124 Cleveland Street', 'West Crossett', 'Pennsylvania', 65188),
('B-0383', 'xpineda263@yahoo.com', '(942)-132-8853', '', '5832 Meadow Lane', 'Sequoyah', 'Missouri', 6050),
('B-9949', 'qgood143@gmail.com', '(588)-342-7801', '', '4629 West Avenue', 'Montana City', 'Mississippi', 19711),
('B-1661', 'lmanning707@aol.com', '(961)-039-7511', '', '6551 Hamilton Street', 'Wabash', 'Idaho', 40744),
('B-1954', 'drosario743@yahoo.com', '(746)-256-6974', '', '8295 2nd Avenue', 'Caseville', 'Nebraska', 95340),
('B-0150', 'klowe153@outlook.com', '(569)-607-1301', '', '1911 Oak Lane', 'Scotland Neck', 'Maine', 82026),
('B-0038', 'qguzman802@att.net', '(577)-841-2974', '(577)-201-7435', '2425 Dogwood Lane', 'Lockport', 'Arkansas', 67385),
('B-8825', 'ocalderon936@outlook.com', '(670)-668-9257', '', '5652 Arlington Avenue', 'Boonton', 'Ohio', 42078),
('B-2348', 'spotato305@yahoo.com', '(717)-878-6867', '(717)-493-6964', '9077 William Street', 'Captains Cove', 'Ohio', 57834),
('B-2841', 'dawson523@outlook.com', '(245)-858-3569', '', '6654 Grant Street', 'King City', 'Alabama', 19050),
('B-1436', 'mhaas479@yahoo.com', '(107)-312-9258', '', '6344 Buckingham Drive', 'Reinholds', 'Indiana', 74481),
('B-9998', 'tmarshall359@icloud.com', '(301)-451-6344', '', '9805 Linden Street', 'Ingalls Park', 'Wyoming', 97675),
('B-4413', 'zharris366@yahoo.com', '(916)-566-8759', '', '7654 Pine Street', 'Hackleburg', 'Arizona', 28456),
('B-4205', 'fhuang719@gmail.com', '(537)-450-7169', '(537)-808-8488', '2806 Jackson Street', 'Citrus Hills', 'Rhode Island', 50773),
('B-4524', 'zpoole665@icloud.com', '(347)-669-4569', '', '3377 Meadow Lane', 'Sutherland', 'New Mexico', 37289),
('B-2509', 'burke665@yahoo.com', '(668)-196-8455', '(668)-457-8951', '6234 Virginia Street', 'Orrville', 'Washington', 69358),
('B-1772', 'khamilton938@outlook.com', '(362)-897-6770', '', '1467 Chapel Street', 'Romulus', 'Massachusetts', 42247),
('B-5763', 'hanonymous701@outlook.com', '(276)-324-2429', '(276)-232-1342', '6499 Lincoln Avenue', 'Kirklin', 'Pennsylvania', 63493),
('B-7986', 'pgiles228@yahoo.com', '(111)-860-9975', '', '9369 North Avenue', 'Turbotville', 'Louisiana', 46295),
('B-9664', 'gsanders970@icloud.com', '(138)-048-1378', '', '2580 New Street', 'South Williamson', 'California', 57223),
('B-9752', 'dsellers536@outlook.com', '(961)-364-9981', '', '9044 William Street', 'Denver', 'Colorado', 54449),
('B-0712', 'rcarpenter27@outlook.com', '(126)-496-4738', '', '7805 Euclid Avenue', 'Loomis', 'Colorado', 96143),
('B-0303', 'oali950@gmail.com', '(658)-628-1781', '(658)-109-1682', '541 Sunset Avenue', 'Rensselaer', 'Indiana', 88260),
('B-8322', 'iblackwell396@att.net', '(823)-716-3685', '(823)-330-7289', '7376 Fulton Street', 'Lake Elsinore', 'Indiana', 22208),
('B-3738', 'uguzman174@gmail.com', '(109)-451-0319', '', '7326 Magnolia Avenue', 'Ware Shoals', 'California', 82053),
('B-5341', 'psmith687@gmail.com', '(851)-602-3449', '', '792 Hawthorne Avenue', 'Austin', 'Texas', 5205),
('B-5168', 'bliu698@outlook.com', '(230)-015-5953', '', '8294 2nd Street West', 'Normandy', 'Oklahoma', 10224),
('B-8873', 'euser796@yahoo.com', '(850)-605-2069', '(850)-772-1470', '5908 Ridge Street', 'Richmond', 'Virginia', 54573),
('B-2710', 'ebrandt193@yahoo.com', '(630)-712-7196', '', '7222 7th Street', 'McGehee', 'Arkansas', 62754),
('B-8692', 'wkaufman436@gmail.com', '(983)-800-2067', '', '7965 5th Street North', 'North Providence', 'Michigan', 34400),
('B-9020', 'kzimmerman477@yahoo.com', '(629)-644-2611', '', '349 Rose Street', 'Signal Hill', 'New Jersey', 81638),
('B-2452', 'efakeemail218@outlook.com', '(146)-648-1979', '', '2584 Main Street South', 'Enon', 'New Jersey', 39233),
('B-4499', 'fjuarez340@gmail.com', '(234)-437-8027', '', '6682 Cobblestone Court', 'Lake Andes', 'Minnesota', 2452),
('B-3943', 'brangel863@gmail.com', '(701)-310-2344', '', '6484 Union Street', 'Drayton', 'Maryland', 41591),
('B-2780', 'psanders117@gmail.com', '(706)-260-2557', '', '3682 Prospect Avenue', 'Barnstead', 'Indiana', 59751),
('B-0414', 'wblanchard364@yahoo.com', '(893)-227-3449', '', '3460 Franklin Street', 'Friendsville', 'Oklahoma', 23540),
('B-3990', 'bsloan596@yahoo.com', '(657)-257-3882', '', '3024 Woodland Avenue', 'Carolina Beach', 'Maryland', 8412),
('B-7301', 'nwoods18@gmail.com', '(719)-214-6237', '', '6025 Winding Way', 'Pawlet', 'Mississippi', 59170),
('B-7950', 'kgardner915@outlook.com', '(380)-221-3919', '(380)-312-7467', '7308 Hillside Drive', 'Estelle', 'Oklahoma', 69009),
('B-8027', 'ihaas837@yahoo.com', '(605)-718-4988', '', '5047 Pleasant Street', 'Tampico', 'Oklahoma', 16013),
('B-9321', 'tcline298@yahoo.com', '(160)-557-8174', '', '8780 Surrey Lane', 'Lansing', 'Michigan', 21205),
('B-4115', 'fzimmerman769@gmail.com', '(886)-137-6788', '', '690 Taylor Street', 'Jarales', 'Florida', 8526),
('B-9285', 'kwoods861@gmail.com', '(239)-352-9075', '', '5383 Columbia Street', 'Plaistow', 'Maryland', 57382),
('B-7672', 'umarshall455@yahoo.com', '(883)-010-1175', '', '8032 Jackson Avenue', 'Salem', 'Oregon', 30650),
('B-3987', 'vpark992@gmail.com', '(941)-617-6908', '', '7820 Forest Drive', 'Severn', 'Oregon', 64793),
('B-7274', 'pbonilla746@outlook.com', '(758)-036-4143', '', '9824 Park Drive', 'Society Hill', 'Nevada', 44857),
('B-2383', 'bullock785@yahoo.com', '(634)-998-4486', '(634)-834-1653', '3659 Glenwood Drive', 'Uxbridge', 'Missouri', 79384),
('B-6867', 'fuser195@att.net', '(876)-767-3726', '', '7048 Lake Street', 'Sherburne', 'Utah', 44882),
('B-4656', 'vhancock638@icloud.com', '(766)-102-2779', '', '1010 Linda Lane', 'Richlands', 'North Dakota', 32367),
('B-0046', 'ufakeemail985@gmail.com', '(789)-571-5407', '', '5146 3rd Street West', 'South Hampton', 'Minnesota', 83220),
('B-4776', 'rdixon115@yahoo.com', '(529)-111-2041', '', '4786 Franklin Court', 'Toms River', 'Virginia', 87472),
('B-2932', 'fpugh340@att.net', '(483)-264-3392', '', '124 Poplar Street', 'Richlands', 'Idaho', 57419),
('B-5550', 'ugalloway467@outlook.com', '(444)-879-8392', '', '3161 Chestnut Street', 'Haiku-Pauwela', 'California', 12566),
('B-4012', 'xescobar115@gmail.com', '(643)-390-9525', '', '4050 Edgewood Drive', 'Coventry Lake', 'New Jersey', 43985),
('B-3342', 'bdunlap589@yahoo.com', '(678)-875-4043', '', '474 Ann Street', 'Guthrie', 'Kentucky', 83264),
('B-9220', 'hpark243@gmail.com', '(753)-283-2778', '', '3945 Mechanic Street', 'Friars Point', 'West Virginia', 16523),
('B-0212', 'udixon211@gmail.com', '(859)-081-4119', '', '5528 Locust Street', 'Excel', 'Virginia', 40357),
('B-2925', 'gkim318@gmail.com', '(368)-147-2050', '', '1487 Center Street', 'West Norriton', 'Alabama', 61393),
('B-9200', 'uspears570@gmail.com', '(196)-617-2924', '', '1018 Park Place', 'Chaparral', 'Virginia', 92100),
('B-7508', 'wcooper219@gmail.com', '(248)-880-0739', '', '3569 Redwood Drive', 'Vidor', 'Oklahoma', 38639),
('B-0664', 'rhays49@outlook.com', '(183)-907-4865', '', '620 Harrison Street', 'Belle Chasse', 'Connecticut', 25174),
('B-4966', 'yandrews817@outlook.com', '(237)-182-5988', '', '5292 8th Street West', 'North Judson', 'Kentucky', 18878),
('B-3645', 'esanders274@gmail.com', '(389)-659-9317', '', '5205 Academy Street', 'Port Jefferson Station', 'Wisconsin', 76218),
('B-7322', 'ccunningham105@gmail.com', '(149)-741-3296', '(149)-197-2447', '7712 Edgewood Drive', 'Normandy', 'Ohio', 53269),
('B-2090', 'aanonymous830@outlook.com', '(573)-892-3727', '', '8569 Buckingham Drive', 'Lyme Town Offices', 'South Dakota', 69034),
('B-9165', 'nmarshall157@gmail.com', '(971)-554-8426', '(971)-595-7824', '2343 Prospect Street', 'Golinda', 'Georgia', 9350),
('B-5129', 'lsaunders585@gmail.com', '(567)-294-6588', '', '6092 Division Street', 'Ola', 'Montana', 94392),
('B-5812', 'ovelazquez944@yahoo.com', '(126)-408-9087', '', '3252 Virginia Avenue', 'Hamel', 'Pennsylvania', 89911),
('B-8433', 'rfaulkner108@yahoo.com', '(150)-168-5162', '', '6831 Dogwood Drive', 'Pocomoke City', 'Louisiana', 38539),
('B-6542', 'mevans872@outlook.com', '(893)-438-8163', '', '5434 Holly Court', 'Dilkon', 'Florida', 71520),
('B-7815', 'uvega894@outlook.com', '(600)-187-9808', '(600)-537-9127', '684 3rd Street West', 'Jackson', 'Mississippi', 49651),
('B-1094', 'cochran370@gmail.com', '(252)-823-8052', '', '5069 John Street', 'Lonaconing', 'North Carolina', 70640),
('B-0592', 'bcastillo334@yahoo.com', '(373)-730-7043', '', '7461 Front Street', 'Alleghenyville', 'South Dakota', 94316),
('B-2907', 'lperez172@gmail.com', '(868)-928-4892', '', '3257 Washington Avenue', 'Grandview Plaza', 'Utah', 19011),
('B-6817', 'iuser429@outlook.com', '(131)-310-6029', '', '3999 Howell Mill Road', 'Shady Spring', 'West Virginia', 39818),
('B-7887', 'rclarke20@aol.com', '(926)-442-0385', '', '9880 Oak Lane', 'Tesuque', 'Montana', 83036),
('B-4251', 'qbullock966@gmail.com', '(997)-781-7429', '', '8727 Jackson Avenue', 'Loup City', 'Texas', 15178);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `SellerID` varchar(6) DEFAULT NULL,
  `ProductID` int(2) DEFAULT NULL,
  `ItemID` int(2) DEFAULT NULL,
  `Size` varchar(3) DEFAULT NULL,
  `OrderID` varchar(12) DEFAULT NULL,
  `FinalSellPrice` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`SellerID`, `ProductID`, `ItemID`, `Size`, `OrderID`, `FinalSellPrice`) VALUES
('S-1442', 36, 54, '7', 'Nov2022-8713', 359),
('S-5393', 33, 49, '4', 'Nov2022-9931', 142),
('S-9229', 35, 73, '7', 'Nov2022-4071', 353),
('S-4532', 19, 7, '4', 'Nov2022-5527', 231),
('S-6313', 8, 94, '12', 'Nov2022-1330', 124),
('S-9628', 26, 29, '11', 'Nov2022-7691', 119),
('S-9628', 36, 10, '11', '', 0),
('S-7394', 32, 41, '4', 'Nov2022-4292', 228),
('S-7394', 25, 13, '6', 'Nov2022-4307', 238),
('S-9312', 32, 60, '8', '', 0),
('S-9312', 45, 5, 'M', 'Nov2022-8323', 154),
('S-9666', 40, 75, 'M', 'Nov2022-8144', 128),
('S-9666', 8, 17, '4', '', 0),
('S-1944', 44, 97, 'L', 'Nov2022-1576', 127),
('S-1944', 19, 96, '4', '', 0),
('S-1944', 19, 77, '9', '', 0),
('S-5420', 29, 62, '8', 'Nov2022-2784', 153),
('S-5420', 47, 29, 'L', 'Nov2022-2629', 119),
('S-5420', 50, 22, 'M', 'Nov2022-8932', 146),
('S-2488', 21, 67, '10', 'Nov2022-8512', 207),
('S-2488', 11, 8, '4', 'Nov2022-1938', 375),
('S-2488', 37, 84, '11', 'Nov2022-4512', 145),
('S-8395', 28, 46, '6', 'Nov2022-1365', 388),
('S-8395', 26, 22, '4', '', 0),
('S-8395', 33, 93, '12', '', 0),
('S-8697', 11, 65, '6', '', 0),
('S-8697', 26, 36, '12', '', 0),
('S-8697', 18, 3, '10', 'Nov2022-9498', 153),
('S-8697', 25, 82, '9', '', 0),
('S-6354', 23, 7, '7', 'Nov2022-4627', 158),
('S-6354', 16, 88, '8', 'Nov2022-5058', 319),
('S-6354', 49, 10, 'L', 'Nov2022-3629', 298),
('S-6354', 20, 52, '7', 'Nov2022-8911', 164),
('S-7929', 4, 81, '6', 'Nov2022-1365', 146),
('S-7929', 34, 54, '9', '', 0),
('S-7929', 6, 84, '8', '', 0),
('S-7929', 33, 43, '11', '', 0),
('S-0108', 25, 34, '6', '', 0),
('S-0108', 32, 42, '4', '', 0),
('S-0108', 21, 39, '7', '', 0),
('S-0108', 22, 23, '6', 'Nov2022-4123', 363),
('S-0108', 23, 27, '9', '', 0),
('S-2850', 15, 38, '9', 'Nov2022-8911', 107),
('S-2850', 36, 45, '6', '', 0),
('S-2850', 24, 48, '9', 'Nov2022-6886', 222),
('S-2850', 44, 41, 'XXL', '', 0),
('S-2850', 38, 29, '10', 'Nov2022-7735', 161),
('S-3319', 37, 94, '9', '', 0),
('S-3319', 13, 23, '9', '', 0),
('S-3319', 9, 25, '8', 'Nov2022-3763', 322),
('S-3319', 21, 40, '12', '', 0),
('S-3319', 16, 27, '5', '', 0),
('S-3319', 2, 38, '10', 'Nov2022-6793', 231),
('S-8977', 23, 68, '9', '', 0),
('S-8977', 47, 66, 'M', '', 0),
('S-8977', 43, 77, 'S', 'Nov2022-5170', 157),
('S-8977', 45, 15, 'M', '', 0),
('S-8977', 1, 62, '5', '', 0),
('S-8977', 24, 3, '8', '', 0),
('S-8977', 44, 99, 'S', '', 0),
('S-6313', 3, 3, '6', 'Nov2022-2716', 322),
('S-3319', 5, 11, '9', 'Nov2022-5170', 343),
('S-3319', 7, 27, '12', 'Nov2022-8172', 220),
('S-7929', 10, 55, '9', 'Nov2022-4712', 199),
('S-1442', 12, 41, '4', 'Nov2022-9589', 221),
('S-4532', 14, 9, '4', 'Nov2022-2242', 301),
('S-8977', 17, 7, '9', 'Nov2022-3629', 146),
('S-9229', 27, 78, '6', 'Nov2022-5058', 94),
('S-9666', 30, 52, '4', 'Nov2022-4205', 252),
('S-6313', 31, 72, '11', 'Nov2022-4518', 259),
('S-2488', 39, 91, 'M', 'Nov2022-4205', 147),
('S-7929', 41, 33, 'XS', '', 0),
('S-6313', 42, 34, 'M', 'Nov2022-2966', 145),
('S-1442', 46, 70, 'S', '', 0),
('S-4532', 48, 27, 'XS', 'Nov2022-1456', 100);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(12) DEFAULT NULL,
  `BuyerID` varchar(6) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `Subtotal` int(3) DEFAULT NULL,
  `ProcessingFee` decimal(4,2) DEFAULT NULL,
  `ShippingFee` decimal(4,2) DEFAULT NULL,
  `SalesTax` decimal(4,2) DEFAULT NULL,
  `OrderTotal` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `BuyerID`, `OrderDate`, `Subtotal`, `ProcessingFee`, `ShippingFee`, `SalesTax`, `OrderTotal`) VALUES
('Nov2022-8713', 'B-5918', '2022-11-26', 359, '14.36', '14.95', '5.13', '393.44'),
('Nov2022-9931', 'B-5129', '2022-11-06', 142, '5.68', '14.95', '0.00', '162.63'),
('Nov2022-4071', 'B-0592', '2022-11-05', 353, '14.12', '14.95', '22.59', '404.66'),
('Nov2022-5527', 'B-0664', '2022-11-05', 231, '9.24', '14.95', '14.67', '269.86'),
('Nov2022-1330', 'B-4656', '2022-11-06', 124, '4.96', '14.95', '8.49', '152.40'),
('Nov2022-7691', 'B-9321', '2022-11-27', 119, '4.95', '14.95', '7.14', '146.04'),
('Nov2022-4292', 'B-0179', '2022-11-05', 228, '9.12', '14.95', '16.35', '268.42'),
('Nov2022-4307', 'B-8008', '2022-11-13', 238, '9.52', '14.95', '16.66', '279.13'),
('Nov2022-8323', 'B-2710', '2022-11-05', 154, '6.16', '14.95', '14.52', '189.63'),
('Nov2022-8144', 'B-0012', '2022-11-07', 128, '5.12', '14.95', '9.51', '157.58'),
('Nov2022-1576', 'B-1856', '2022-11-05', 127, '5.08', '14.95', '11.33', '158.36'),
('Nov2022-2784', 'B-2932', '2022-11-05', 153, '6.12', '14.95', '9.23', '183.30'),
('Nov2022-2629', 'B-7986', '2022-11-13', 119, '4.95', '14.95', '11.25', '150.15'),
('Nov2022-8932', 'B-5005', '2022-11-06', 146, '5.84', '14.95', '2.09', '168.88'),
('Nov2022-8512', 'B-2841', '2022-11-05', 207, '8.28', '14.95', '18.92', '249.15'),
('Nov2022-1938', 'B-0870', '2022-11-05', 375, '15.00', '14.95', '32.10', '437.05'),
('Nov2022-4512', 'B-8322', '2022-11-13', 145, '5.80', '14.95', '10.15', '175.90'),
('Nov2022-1365', 'B-1800', '2022-11-05', 534, '21.36', '14.95', '43.47', '613.78'),
('Nov2022-9498', 'B-3943', '2022-11-05', 153, '6.12', '14.95', '9.18', '183.25'),
('Nov2022-4627', 'B-8692', '2022-11-13', 158, '6.32', '14.95', '9.48', '188.75'),
('Nov2022-5058', 'B-8703', '2022-11-13', 413, '16.52', '14.95', '38.95', '483.42'),
('Nov2022-3629', 'B-4608', '2022-11-06', 444, '17.76', '14.95', '6.35', '483.06'),
('Nov2022-8911', 'B-3276', '2022-11-05', 271, '10.84', '14.95', '17.89', '314.68'),
('Nov2022-4123', 'B-2383', '2022-11-05', 363, '14.52', '14.95', '29.51', '421.98'),
('Nov2022-6886', 'B-9098', '2022-11-27', 222, '8.88', '14.95', '15.14', '260.97'),
('Nov2022-7735', 'B-5894', '2022-11-26', 161, '6.44', '14.95', '9.95', '192.34'),
('Nov2022-3763', 'B-0150', '2022-11-05', 322, '12.88', '14.95', '17.71', '367.54'),
('Nov2022-6793', 'B-8027', '2022-11-13', 231, '9.24', '14.95', '20.61', '275.80'),
('Nov2022-5170', 'B-3645', '2022-11-05', 500, '20.00', '14.95', '27.20', '562.15'),
('Nov2022-2716', 'B-9285', '2022-11-27', 322, '12.88', '14.95', '19.32', '369.15'),
('Nov2022-8172', 'B-7476', '2022-11-13', 220, '8.80', '14.95', '13.97', '257.72'),
('Nov2022-4712', 'B-3990', '2022-11-05', 199, '7.96', '14.95', '11.94', '233.85'),
('Nov2022-9589', 'B-5053', '2022-11-06', 221, '8.84', '14.95', '20.27', '265.06'),
('Nov2022-2242', 'B-6542', '2022-11-26', 301, '12.04', '14.95', '21.22', '349.21'),
('Nov2022-4205', 'B-8873', '2022-11-27', 399, '15.96', '14.95', '22.54', '452.45'),
('Nov2022-4518', 'B-1825', '2022-11-05', 259, '10.36', '14.95', '17.97', '302.28'),
('Nov2022-2966', 'B-1039', '2022-11-05', 145, '5.80', '14.95', '6.39', '172.14'),
('Nov2022-1456', 'B-7274', '2022-11-13', 100, '4.95', '14.95', '8.14', '128.04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(2) DEFAULT NULL,
  `ProductName` varchar(76) DEFAULT NULL,
  `RetailPrice` int(3) DEFAULT NULL,
  `BrandName` varchar(14) DEFAULT NULL,
  `PType` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `RetailPrice`, `BrandName`, `PType`) VALUES
(1, 'Jordan 1 Retro High OG Chicago Lost and Found', 268, 'Jordan', 'S'),
(2, 'Nike Dunk Low Retro White Black Panda (2021)', 161, 'Nike', 'S'),
(3, 'Jordan 11 Retro Cherry (2022)', 280, 'Jordan', 'S'),
(4, 'Adidas Yeezy Slide Bone (2022 Restock)', 115, 'Adidas', 'S'),
(5, 'Jordan 4 Retro Midnight Navy', 240, 'Jordan', 'S'),
(6, 'Nike Dunk Low QS LeBron James Fruity Pebbles', 124, 'Nike', 'S'),
(7, 'UGG Classic Ultra Mini Chestnut (W)', 140, 'UGG', 'S'),
(8, 'Nike Air Force 1 Low \'07 White', 94, 'Nike', 'S'),
(9, 'Jordan 1 Retro Low OG Zion Williamson Voodoo', 201, 'Jordan', 'S'),
(10, 'UGG Tazz Slipper Chestnut (W)', 141, 'UGG', 'S'),
(11, 'Jordan 4 Retro A Ma Maniére Violet Ore', 319, 'Jordan', 'S'),
(12, 'Nike SB Dunk Low Pro Why So Sad?', 170, 'Nike', 'S'),
(13, 'Adidas Yeezy Slide Onyx', 94, 'Adidas', 'S'),
(14, 'Nike Dunk Low SP Kentucky (2020/2022)', 180, 'Nike', 'S'),
(15, 'Nike Dunk Low USC', 132, 'Nike', 'S'),
(16, 'Jordan 11 Retro Midnight Navy (W)', 190, 'Jordan', 'S'),
(17, 'Jordan 1 Mid White Black Red (2022)', 99, 'Jordan', 'S'),
(18, 'UGG Tasman Slipper Chestnut (W)', 107, 'UGG', 'S'),
(19, 'Adidas Yeezy Foam RNR Onyx', 175, 'Adidas', 'S'),
(20, 'Nike Air Max 97 OG Silver Bullet (2022)', 124, 'Nike', 'S'),
(21, 'Jordan 1 High OG Denim (W)', 155, 'Jordan', 'S'),
(22, 'Jordan 5 Retro DJ Khaled We The Best Crimson Bliss', 245, 'Jordan', 'S'),
(23, 'Nike Dunk Low Retro QS Argon (2022)', 129, 'Nike', 'S'),
(24, 'Jordan 1 Mid Light Smoke Grey', 165, 'Jordan', 'S'),
(25, 'Jordan 1 Retro High OG Starfish (W)', 163, 'Jordan', 'S'),
(26, 'Adidas Yeezy Slide Resin (2022)', 77, 'Adidas', 'S'),
(27, 'Crocs Pollex Clog by Salehe Bembury Sasquatch', 111, 'Crocs', 'S'),
(28, 'Jordan 4 Retro Military Black', 290, 'Jordan', 'S'),
(29, 'Nike Dunk High Black White (2021)', 114, 'Nike', 'S'),
(30, 'Nike SB Dunk Low HUF San Francisco', 177, 'Nike', 'S'),
(31, 'Jordan 3 Retro Fire Red (2022)', 185, 'Jordan', 'S'),
(32, 'Jordan 1 Low Eastside Golf Out of the Mud', 145, 'Jordan', 'S'),
(33, 'New Balance 550 White Grey', 99, 'New Balance', 'S'),
(34, 'Adidas Yeezy Slide Flax', 78, 'Adidas', 'S'),
(35, 'Jordan 4 Retro SE Black Canvas', 290, 'Jordan', 'S'),
(36, 'Nike KD 15 Aunt Pearl', 221, 'Nike', 'S'),
(37, 'Nike Dunk Low Retro White Grey', 128, 'Nike', 'S'),
(38, 'Nike Dunk Low UCLA', 114, 'Nike', 'S'),
(39, 'Fear of God Essentials Hoodie (SS22) Stretch Limo', 109, 'Fear of God', 'A'),
(40, 'Fear of God Essentials Hoodie Seafoam', 84, 'Fear of God', 'A'),
(41, 'Fear of God Essentials Hoodie (SS22) Dark Oatmeal', 92, 'Fear of God', 'A'),
(42, 'Nike Tech Fleece Full Zip Hoodie Black', 94, 'Nike', 'A'),
(43, 'Fear of God Essentials Hoodie (SS22) Light Oatmeal', 99, 'Fear of God', 'A'),
(44, 'Yeezy Gap Hoodie Black', 77, 'Yeezy', 'A'),
(45, 'Fear of God Essentials Hoodie Egg Shell', 89, 'Fear of God', 'A'),
(46, 'Juice Wrld x Vlone Butterfly T-Shirt White', 67, 'Juice Wrld', 'A'),
(47, 'Yeezy Gap Hoodie Blue', 85, 'Yeezy', 'A'),
(48, 'Nike Tech Fleece Joggers Black', 64, 'Nike', 'A'),
(49, 'The North Face 1996 Retro Nuptse 700 Fill Packable Jacket Recycled TNF Black', 260, 'The North Face', 'A'),
(50, 'Fear of God Essentials Relaxed Hoodie (SS22) Stretch Limo', 89, 'Fear of God', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `SellerID` varchar(6) DEFAULT NULL,
  `SellerEmail` varchar(24) DEFAULT NULL,
  `SellerPhoneNumber` varchar(14) DEFAULT NULL,
  `AltPhoneNumber` varchar(14) DEFAULT NULL,
  `Street` varchar(21) DEFAULT NULL,
  `City` varchar(14) DEFAULT NULL,
  `State` varchar(14) DEFAULT NULL,
  `Zip` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`SellerID`, `SellerEmail`, `SellerPhoneNumber`, `AltPhoneNumber`, `Street`, `City`, `State`, `Zip`) VALUES
('S-1442', 'kellis814@gmail.com', '(899)-462-1427', '', '8025 Hartford Road', 'River Bend', 'South Carolina', 19534),
('S-5393', 'xroach29@yahoo.com', '(197)-354-3713', '', '599 Park Street', 'Jefferson City', 'Missouri', 25904),
('S-9229', 'ymichael130@outlook.com', '(474)-586-1942', '', '2449 Canterbury Drive', 'East Berwick', 'Washington', 27068),
('S-4532', 'wzimmerman767@att.net', '(763)-745-8877', '', '4057 Valley Drive', 'Pace', 'New Mexico', 78514),
('S-6313', 'drice838@icloud.com', '(593)-545-3039', '', '6814 Grand Avenue', 'Friendsville', 'Nevada', 80235),
('S-9628', 'bcunningham173@yahoo.com', '(280)-890-4976', '', '1331 Virginia Avenue', 'Dilley', 'Wyoming', 8475),
('S-7394', 'scalderon535@outlook.com', '(118)-959-5985', '', '6441 Fulton Street', 'Reedsville', 'Massachusetts', 79414),
('S-9312', 'pbyrd356@yahoo.com', '(586)-774-4638', '', '619 State Street East', 'Philo', 'Nevada', 97824),
('S-9666', 'rcrawford773@gmail.com', '(148)-391-6150', '(148)-107-8115', '4825 Howard Street', 'Uxbridge', 'Florida', 5647),
('S-1944', 'ufakeemail682@gmail.com', '(942)-064-9812', '', '8865 Park Street', 'Anadarko', 'Arkansas', 6149),
('S-5420', 'phanna309@aol.com', '(814)-876-0581', '', '4082 Locust Street', 'Ault Field', 'Kansas', 13938),
('S-2488', 'urice678@att.net', '(163)-538-4365', '(163)-912-6207', '5233 Railroad Street', 'San Perlita', 'Ohio', 23385),
('S-8395', 'mgood228@outlook.com', '(249)-215-6891', '', '7242 William Street', 'East Palestine', 'Maryland', 73728),
('S-8697', 'ncochran97@gmail.com', '(961)-377-3678', '(961)-410-5616', '6273 Dogwood Drive', 'Lockport', 'Pennsylvania', 90204),
('S-6354', 'ycarpenter718@yahoo.com', '(624)-668-3166', '', '4352 Augusta Drive', 'New Brunswick', 'Nevada', 58396),
('S-7929', 'gsellers264@icloud.com', '(295)-058-9778', '', '7298 Dogwood Drive', 'Alleghenyville', 'Minnesota', 53628),
('S-0108', 'lburke172@gmail.com', '(670)-159-9621', '(670)-315-9288', '3574 Jackson Street', 'East Aurora', 'Wisconsin', 9932),
('S-2850', 'vgardner210@outlook.com', '(449)-214-7836', '', '8192 Bridge Street', 'East Aurora', 'Montana', 42020),
('S-3319', 'ulevy639@gmail.com', '(877)-920-6475', '', '9188 Maple Avenue', 'Floyd', 'Tennessee', 82800),
('S-8977', 'asellers129@outlook.com', '(591)-794-9327', '', '2145 Essex Court', 'Palisade', 'North Carolina', 59438);

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `ProductID` int(2) DEFAULT NULL,
  `Style` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`ProductID`, `Style`) VALUES
(1, 'High Top Sneaker'),
(2, 'Low Top Sneaker'),
(3, 'Low Top Sneaker'),
(4, 'Slides'),
(5, 'High Top Sneaker'),
(6, 'Low Top Sneaker'),
(7, 'Boots'),
(8, 'Low Top Sneaker'),
(9, 'Low Top Sneaker'),
(10, 'Boots'),
(11, 'High Top Sneaker'),
(12, 'Low Top Sneaker'),
(13, 'Slides'),
(14, 'Low Top Sneaker'),
(15, 'Low Top Sneaker'),
(16, 'High Top Sneaker'),
(17, 'High Top Sneaker'),
(18, 'Boots'),
(19, 'Slip On'),
(20, 'Low Top Sneaker'),
(21, 'High Top Sneaker'),
(22, 'High Top Sneaker'),
(23, 'Low Top Sneaker'),
(24, 'High Top Sneaker'),
(25, 'High Top Sneaker'),
(26, 'Slides'),
(27, 'Slip On'),
(28, 'High Top Sneaker'),
(29, 'High Top Sneaker'),
(30, 'Low Top Sneaker'),
(31, 'Low Top Sneaker'),
(32, 'Low Top Sneaker'),
(33, 'Low Top Sneaker'),
(34, 'Slides'),
(35, 'High Top Sneaker'),
(36, 'High Top Sneaker'),
(37, 'Low Top Sneaker'),
(38, 'Low Top Sneaker');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
