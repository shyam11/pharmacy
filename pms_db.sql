-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 09:56 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `on_hold`
--

CREATE TABLE `on_hold` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(13) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `expire_date` date NOT NULL,
  `qty` float(11,2) NOT NULL,
  `type` varchar(10) NOT NULL,
  `cost` float(11,2) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `profit_amount` float(11,2) NOT NULL,
  `date` varchar(255) NOT NULL,
  `bill_to` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `on_hold`
--

INSERT INTO `on_hold` (`id`, `invoice_number`, `medicine_name`, `category`, `expire_date`, `qty`, `type`, `cost`, `amount`, `profit_amount`, `date`, `bill_to`) VALUES
(1, 'RS-9390009', 'Biogessic', 'Painkiller', '2020-03-31', 1.00, 'Stp', 500.00, 500.00, 100.00, '02/22/2019', ''),
(2, 'RS-2200239', 'Biogessic', 'Painkiller', '2020-03-31', 298.00, 'Stp', 500.00, 149000.00, 29800.00, '02/22/2019', ''),
(4, 'RS-2099902', 'Paracetemol', 'Painkiller', '2019-08-15', 1.00, 'Bot', 500.00, 500.00, 100.00, '02/27/2019', ''),
(7, 'RS-2922209', 'Paracetemol', 'Painkiller', '2019-08-15', 3.00, 'Bot', 500.00, 1500.00, 300.00, '02/27/2019', ''),
(17, 'RS-3920020', 'Paracetemol', 'Painkiller', '2019-02-28', 10.00, 'Bot', 700.00, 7000.00, 2000.00, '02/28/2019', ''),
(18, 'RS-9009003', 'Paracetemol', 'Painkiller', '2019-02-28', 3.00, 'Bot', 700.00, 2100.00, 600.00, '02/28/2019', ''),
(19, 'RS-9092090', 'Paracetemol', 'Painkiller', '2019-02-28', 2.00, 'Bot', 700.00, 1400.00, 400.00, '02/28/2019', ''),
(20, 'RS-9220309', 'Paracetemol', 'Painkiller', '2019-02-28', 2.00, 'Bot', 700.00, 1400.00, 400.00, '03/01/2019', ''),
(21, 'RS-0322209', 'Paracetemol', 'Painkiller', '2019-02-28', 93.00, 'Bot', 700.00, 65100.00, 18600.00, '03/01/2019', ''),
(22, 'RS-2990220', 'Paracetemol', 'Painkiller', '2019-02-28', 8.00, 'Bot', 700.00, 5600.00, 1600.00, '03/01/2019', ''),
(23, 'RS-0939993', 'Paracetemol', 'Painkiller', '2019-02-28', 1.00, 'Bot', 700.00, 700.00, 200.00, '03/02/2019', ''),
(24, 'RS-9900203', 'Biogessic', 'Painkiller', '2019-11-14', 1.00, 'Sachet', 600.00, 600.00, 100.00, '03/02/2019', ''),
(25, 'RS-9900203', 'Paracetemol', 'Painkiller', '2019-09-19', 2.00, 'Stp', 600.00, 1200.00, 200.00, '03/02/2019', ''),
(26, 'RS-9090000', 'Biogessic', 'Painkiller', '2019-11-14', 2.00, 'Sachet', 600.00, 1200.00, 200.00, '03/02/2019', ''),
(27, 'RS-2233020', 'Biogessic', 'Painkiller', '2020-03-13', 5.00, 'Unit', 400.00, 2000.00, 500.00, '03/02/2019', ''),
(29, 'RS-9292200', 'Biogessic', 'Painkiller', '2019-04-25', 1.00, 'Bot', 400.00, 400.00, 100.00, '03/02/2019', ''),
(30, 'RS-3009023', 'Paracetemol', 'Painkiller', '2019-08-14', 3.00, 'Unit', 400.00, 1200.00, 300.00, '03/02/2019', ''),
(35, 'RS-0900090', 'Paracetemol', 'Painkiller', '2019-08-14', 2.00, 'Bot', 400.00, 800.00, 200.00, '03/02/2019', ''),
(37, 'RS-2099202', 'Paracetemol', 'painkiller', '2011-12-19', 1.00, 'Bot', 599.00, 599.00, 100.00, '03/04/2019', ''),
(51, 'RS-9292203', 'Paracetemol', 'Painkiller', '2019-08-03', 3.00, 'Stp', 500.00, 1500.00, 300.00, '03/05/2019', ''),
(61, 'RS-0000032', 'Paracetemol', 'Painkiller', '2019-10-01', 5.00, 'Bot', 500.00, 2500.00, 500.00, '03/05/2019', ''),
(62, 'RS-0000032', 'Biogessic', 'Painkiller', '2020-03-06', 4.00, 'Bot', 700.00, 2800.00, 800.00, '03/05/2019', ''),
(63, 'RS-2909290', 'Paracetemol', 'Painkiller', '2019-10-01', 10.00, 'Bot', 500.00, 5000.00, 1000.00, '03/05/2019', ''),
(64, 'RS-0009290', 'Iodex', 'Cream', '2023-04-17', 2.00, 'Bot', 80.00, 160.00, 20.00, '04/17/2021', ''),
(65, 'RS-0009290', 'Iodex', 'Cream', '2023-04-17', 1.00, 'Bot', 80.00, 80.00, 10.00, '04/17/2021', ''),
(66, 'RS-0939000', 'Iodex', 'Cream', '2023-04-17', 2.00, 'Bot', 80.00, 160.00, 20.00, '04/20/2021', ''),
(67, 'RS-2390300', 'Iodex', 'Cream', '2023-04-17', 1.00, 'Bot', 80.00, 80.00, 10.00, '04/24/2021', ''),
(68, 'RS-2390300', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '04/24/2021', ''),
(69, 'RS-0230309', 'Iodex himalaya', 'Gel', '2021-07-25', 20.00, 'Bot', 80.00, 1600.00, 200.00, '04/25/2021', ''),
(70, 'RS-0023932', 'Iodex himalaya', 'Gel', '2021-07-25', 4.00, 'Bot', 80.00, 320.00, 40.00, '04/25/2021', ''),
(72, 'RS-2200230', 'Iodex himalaya', 'Gel', '2021-07-25', 9.00, 'Bot', 80.00, 720.00, 90.00, '04/25/2021', ''),
(73, 'RS-3909909', 'Iodex himalaya', 'Gel', '2021-07-25', 1.00, 'Bot', 80.00, 80.00, 10.00, '04/25/2021', ''),
(75, 'RS-9323023', 'Iodex himalaya', 'Gel', '2021-07-25', 5.00, 'Bot', 80.00, 400.00, 50.00, '04/25/2021', ''),
(76, 'RS-0300299', 'Iodex himalaya', 'Gel', '2021-07-25', 1.00, 'Bot', 80.00, 80.00, 10.00, '04/25/2021', ''),
(77, 'RS-9099292', 'Iodex himalaya', 'Gel', '2021-07-25', 1.00, 'Bot', 80.00, 80.00, 10.00, '04/25/2021', ''),
(78, 'RS-9003302', 'Iodex himalaya', 'Gel', '2021-07-25', 1.00, 'Bot', 80.00, 80.00, 10.00, '04/25/2021', ''),
(79, 'RS-9000003', 'Iodex himalaya', 'Gel', '2021-07-25', 2.00, 'Bot', 80.00, 160.00, 20.00, '04/25/2021', ''),
(80, 'RS-9230030', 'Iodex himalaya', 'Gel', '2021-07-25', 2.00, 'Bot', 80.00, 160.00, 20.00, '04/25/2021', ''),
(81, 'RS-0090030', 'Iodex himalaya', 'Gel', '2021-07-25', 8.00, 'Bot', 80.00, 640.00, 80.00, '04/26/2021', ''),
(82, 'RS-0220993', 'Iodex himalaya', 'Gel', '2021-07-25', 10.00, 'Bot', 80.00, 800.00, 100.00, '04/26/2021', ''),
(83, 'RS-0909009', 'Iodex himalaya', 'Gel', '2021-07-25', 2.00, 'Bot', 80.00, 160.00, 20.00, '04/26/2021', ''),
(84, 'RS-0929009', 'Iodex himalaya', 'Gel', '2021-07-25', 9.00, 'Bot', 80.00, 720.00, 90.00, '04/26/2021', ''),
(85, 'RS-0099320', 'Iodex himalaya', 'Gel', '2021-07-25', 1.00, 'Bot', 80.00, 80.00, 10.00, '04/26/2021', ''),
(86, 'RS-0333009', 'Iodex himalaya', 'Gel', '2021-07-25', 12.00, 'Bot', 80.00, 960.00, 120.00, '04/26/2021', ''),
(88, 'RS-3990000', 'Iodex himalaya', 'Gel', '2021-07-25', 8.00, 'Bot', 80.00, 640.00, 80.00, '04/26/2021', ''),
(89, 'RS-0029999', 'Iodex himalaya', 'Gel', '2021-07-25', 6.00, 'Bot', 80.00, 480.00, 60.00, '04/26/2021', ''),
(90, 'RS-3920232', 'Iodex himalaya', 'Gel', '2021-07-25', 12.00, 'Bot', 80.00, 960.00, 120.00, '04/26/2021', ''),
(91, 'RS-2200009', 'Ccq-tablet', 'Tab', '2022-06-15', 12.00, 'Tab', 70.00, 840.00, 120.00, '04/26/2021', ''),
(92, 'RS-2900390', 'Ccq-tablet', 'Tab', '2022-06-15', 2.00, 'Tab', 70.00, 140.00, 20.00, '04/26/2021', ''),
(93, 'RS-9922009', 'Gastero', 'Tablet', '2024-10-23', 7.00, 'Tab', 80.00, 560.00, 0.00, '04/26/2021', ''),
(94, 'RS-0023992', 'Ccq-tablet', 'Tab', '2022-06-15', 85.00, 'Tab', 70.00, 5950.00, 850.00, '04/26/2021', ''),
(95, 'RS-2902303', 'Ccq-tablet', 'Tab', '2022-06-15', 100.00, 'Tab', 70.00, 7000.00, 1000.00, '04/26/2021', ''),
(97, 'RS-0020999', 'Dolo 650', 'Tablet', '2022-09-12', 2.00, 'Stp', 60.00, 120.00, 0.00, '04/26/2021', ''),
(98, 'RS-0300902', 'Dolo 650', 'Tablet', '2021-10-26', 2.00, 'Stp', 60.00, 120.00, 0.00, '04/30/2021', ''),
(99, 'RS-3090999', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '04/30/2021', ''),
(100, 'RS-3090999', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '04/30/2021', ''),
(101, 'RS-9230290', 'Dolo 650', 'Tablet', '2021-10-26', 1.00, 'Stp', 60.00, 60.00, 0.00, '05/02/2021', ''),
(105, 'RS-0090000', 'Gastero', 'Tablet', '2024-10-23', 7.30, 'Tab', 80.00, 584.00, 0.00, '05/05/2021', ''),
(106, 'RS-0090000', 'Gastero', 'Tablet', '2024-10-23', 3.50, 'Tab', 80.00, 280.00, 0.00, '05/05/2021', ''),
(108, 'RS-9903002', 'Dolo 650', 'Tablet', '2021-10-26', 2.50, 'Stp', 35.50, 88.75, 0.00, '05/14/2021', ''),
(109, 'RS-0239999', 'Dolo 650', 'Tablet', '2021-10-26', 3.00, 'Stp', 35.50, 106.50, 0.00, '05/14/2021', ''),
(110, 'RS-0239999', 'Corex 100', 'Syrup', '2021-07-14', 8.00, 'Bot', 95.00, 760.00, 0.00, '05/14/2021', ''),
(111, 'RS-2290299', 'Norflox-400', 'Tablet', '2021-08-14', 2.50, 'Tab', 120.50, 301.25, 0.00, '05/17/2021', ''),
(112, 'RS-2290299', 'B complex', 'Capsule', '2021-09-14', 1.40, 'Stp', 30.00, 42.00, 0.00, '05/17/2021', ''),
(113, 'RS-3090200', 'Norflox-400', 'Tablet', '2021-08-14', 2.40, 'Tab', 120.50, 289.20, 0.00, '05/17/2021', ''),
(115, 'RS-2032290', 'Itradila', 'Tablet', '2021-06-19', 1.50, 'Unit', 200.70, 301.05, 1.50, '05/19/2021', ''),
(116, 'RS-2900923', 'Norflox-400', 'Tablet', '2021-08-14', 1.00, 'Tab', 120.50, 120.50, 0.00, '05/20/2021', ''),
(117, 'RS-3200099', 'Norflox-400', 'Tablet', '2021-08-14', 1.00, 'Tab', 120.50, 120.50, 0.00, '05/20/2021', ''),
(118, 'RS-2093300', 'Itradila', 'Tablet', '2021-06-19', 1.00, 'Unit', 200.70, 200.70, 1.00, '05/20/2021', ''),
(119, 'RS-0390900', 'Ccq-tablet', 'Tab', '2022-06-15', 4.00, 'Tab', 70.00, 280.00, 40.00, '05/Sat/2021', ''),
(120, 'RS-2032903', 'Ccq-tablet', 'Tab', '2022-06-15', 2.00, 'Tab', 70.00, 140.00, 20.00, '05/Sat/2021', ''),
(123, 'RS-0099932', 'Test', 'Tablet', '2021-10-22', 1.00, 'Stp', 21.50, 21.50, 1.00, '05/Sat/2021', ''),
(124, 'RS-0099932', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(125, 'RS-0023900', 'Itradila', 'Tablet', '2021-06-19', 1.50, 'Unit', 200.70, 301.05, 1.50, '05/Sat/2021', ''),
(126, 'RS-0932023', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(127, 'RS-2933299', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(128, 'RS-0090092', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(129, 'RS-0000002', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(130, 'RS-0090992', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(131, 'RS-0090992', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(132, 'RS-2229099', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(133, 'RS-9990099', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(134, 'RS-2000990', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(135, 'RS-9902932', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(136, 'RS-0322930', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(137, 'RS-9302223', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(138, 'RS-9092002', 'Itradila', 'Tablet', '2021-06-19', 1.00, 'Unit', 200.70, 200.70, 1.00, '05/Sat/2021', ''),
(139, 'RS-0230009', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(140, 'RS-9990092', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', ''),
(141, 'RS-0209999', 'Ccq-tablet', 'Tab', '2022-06-15', 1.00, 'Tab', 70.00, 70.00, 10.00, '05/Sat/2021', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(13) NOT NULL,
  `medicines` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `total_amount` bigint(11) NOT NULL,
  `total_profit` bigint(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `invoice_number`, `medicines`, `quantity`, `total_amount`, `total_profit`, `Date`) VALUES
(1, 'RS-9390009', 'Biogessic', '1(Stp)', 500, 100, '2019-02-22'),
(2, 'RS-0900090', 'Biogessic', '1(Stp)', 500, 100, '2019-02-27'),
(3, 'RS-2099902', 'Paracetemol', '1(Bot)', 500, 100, '2019-02-27'),
(4, 'RS-2922209', 'Paracetemol', '3(Bot)', 1500, 300, '2019-02-27'),
(5, 'RS-3920020', 'Paracetemol', '10(Bot)', 7000, 2000, '2019-02-28'),
(6, 'RS-9009003', 'Paracetemol', '3(Bot)', 2100, 600, '2019-02-28'),
(7, 'RS-9220309', 'Paracetemol', '2(Bot)', 1400, 400, '2019-03-01'),
(8, 'RS-0322209', 'Paracetemol', '93(Bot)', 65100, 18600, '2019-03-01'),
(9, 'RS-0939993', 'Paracetemol', '1(Bot)', 700, 200, '2019-03-02'),
(10, 'RS-9900203', 'Biogessic,Paracetemol', '1(Sachet),2(Stp)', 1800, 300, '2019-03-02'),
(11, 'RS-2233020', 'Biogessic', '5(Unit)', 2000, 500, '2019-03-02'),
(12, 'RS-9292200', 'Biogessic', '1(Bot)', 400, 100, '2019-03-02'),
(13, 'RS-2099202', 'Paracetemol', '1(Bot)', 599, 100, '2019-03-04'),
(14, 'RS-9292203', 'Paracetemol', '3(Stp)', 1500, 300, '2019-03-05'),
(15, 'RS-0000032', 'Paracetemol,Biogessic', '5(Bot),4(Bot)', 5300, 1300, '2019-03-05'),
(16, 'RS-0009290', 'Iodex,Iodex', '2(Bot),1(Bot)', 240, 30, '2021-04-17'),
(17, 'RS-0023932', 'Iodex himalaya', '4(Bot)', 320, 40, '2021-04-25'),
(18, 'RS-3909909', 'Iodex himalaya', '1(Bot)', 80, 10, '2021-04-25'),
(19, 'RS-9323023', 'Iodex himalaya', '5(Bot)', 400, 50, '2021-04-25'),
(20, 'RS-0300299', 'Iodex himalaya', '1(Bot)', 80, 10, '2021-04-25'),
(21, 'RS-9099292', 'Iodex himalaya', '1(Bot)', 80, 10, '2021-04-25'),
(22, 'RS-9003302', 'Iodex himalaya', '1(Bot)', 80, 10, '2021-04-25'),
(23, 'RS-9000003', 'Iodex himalaya', '2(Bot)', 160, 20, '2021-04-25'),
(24, 'RS-9230030', 'Iodex himalaya', '2(Bot)', 160, 20, '2021-04-25'),
(25, 'RS-0090030', 'Iodex himalaya', '8(Bot)', 640, 80, '2021-04-26'),
(26, 'RS-0220993', 'Iodex himalaya', '10(Bot)', 800, 100, '2021-04-26'),
(27, 'RS-0909009', 'Iodex himalaya', '2(Bot)', 160, 20, '2021-04-26'),
(28, 'RS-0929009', 'Iodex himalaya', '9(Bot)', 720, 90, '2021-04-26'),
(29, 'RS-0099320', 'Iodex himalaya', '1(Bot)', 80, 10, '2021-04-26'),
(30, 'RS-0333009', 'Iodex himalaya', '12(Bot)', 960, 120, '2021-04-26'),
(31, 'RS-3990000', 'Iodex himalaya', '8(Bot)', 640, 80, '2021-04-26'),
(32, 'RS-0029999', 'Iodex himalaya', '6(Bot)', 480, 60, '2021-04-26'),
(33, 'RS-3920232', 'Iodex himalaya', '12(Bot)', 960, 120, '2021-04-26'),
(34, 'RS-2200009', 'Ccq-tablet', '12(Tab)', 840, 120, '2021-04-26'),
(35, 'RS-2900390', 'Ccq-tablet', '2(Tab)', 140, 20, '2021-04-26'),
(36, 'RS-9922009', 'Gastero', '7(Tab)', 560, 0, '2021-04-26'),
(37, 'RS-0023992', 'Ccq-tablet', '85(Tab)', 5950, 850, '2021-04-26'),
(38, 'RS-2902303', 'Ccq-tablet', '100(Tab)', 7000, 1000, '2021-04-26'),
(39, 'RS-0020999', 'Dolo 650', '2(Stp)', 120, 0, '2021-04-26'),
(40, 'RS-0300902', 'Dolo 650', '2(Stp)', 120, 0, '2021-04-30'),
(41, 'RS-9903002', 'Dolo 650', '2.50(Stp)', 89, 0, '2021-05-14'),
(42, 'RS-2290299', 'Norflox-400,B complex', '2.50(Tab),1.40(Stp)', 343, 0, '2021-05-17'),
(43, 'RS-3090200', 'Norflox-400', '2.40(Tab)', 289, 0, '2021-05-17'),
(44, 'RS-2032290', 'Itradila', '1.50(Unit)', 301, 2, '2021-05-19'),
(45, 'RS-2900923', 'Norflox-400', '1.00(Tab)', 121, 0, '2021-05-20'),
(46, 'RS-3200099', 'Norflox-400', '1.00(Tab)', 121, 0, '2021-05-20'),
(47, 'RS-2093300', 'Itradila', '1.00(Unit)', 201, 1, '2021-05-20'),
(48, 'RS-0390900', 'Ccq-tablet', '4.00(Tab)', 280, 40, '2021-05-22'),
(49, 'RS-2032903', 'Ccq-tablet', '2.00(Tab)', 140, 20, '2021-05-22'),
(50, 'RS-0099932', 'Test,Ccq-tablet', '1.00(Stp),1.00(Tab)', 92, 11, '2021-05-22'),
(51, 'RS-0023900', 'Itradila', '1.50(Unit)', 301, 2, '2021-05-22'),
(52, 'RS-0932023', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(53, 'RS-2933299', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(54, 'RS-0090092', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(55, 'RS-0090092', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(56, 'RS-0000002', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(57, 'RS-0090992', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(58, 'RS-0090992', 'Ccq-tablet,Ccq-tablet', '1.00(Tab),1.00(Tab)', 140, 20, '2021-05-22'),
(59, 'RS-2229099', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(60, 'RS-9990099', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(61, 'RS-2000990', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(62, 'RS-9902932', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(63, 'RS-0322930', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(64, 'RS-9302223', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(65, 'RS-9092002', 'Itradila', '1.00(Unit)', 201, 1, '2021-05-22'),
(66, 'RS-0230009', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22'),
(67, 'RS-0209999', 'Ccq-tablet', '1.00(Tab)', 70, 10, '2021-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(100) NOT NULL,
  `bar_code` varchar(255) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `quantity` float NOT NULL,
  `used_quantity` float NOT NULL,
  `remain_quantity` float NOT NULL,
  `act_remain_quantity` float NOT NULL,
  `register_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `company` varchar(100) NOT NULL,
  `sell_type` varchar(100) NOT NULL,
  `actual_price` float(45,2) NOT NULL,
  `selling_price` float(45,2) NOT NULL,
  `profit_price` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `bar_code`, `medicine_name`, `category`, `quantity`, `used_quantity`, `remain_quantity`, `act_remain_quantity`, `register_date`, `expire_date`, `company`, `sell_type`, `actual_price`, `selling_price`, `profit_price`, `status`) VALUES
(21, '8901138821852', 'Paracetemol', 'Painkiller', 20, 18, 2, 12, '2019-03-04', '2019-10-01', '', 'Bot', 400.00, 500.00, '100(25%)', 'Available'),
(23, '071661013678', 'Biogessic', 'Painkiller', 50, 4, 46, 50, '2019-03-05', '2020-03-06', '', 'Bot', 500.00, 700.00, '200(40%)', 'Available'),
(24, '', 'Iodex himalaya', 'Gel', 120, 120, 0, 0, '2021-04-17', '2021-07-25', 'SPhospital', 'Bot', 70.00, 80.00, '10(14%)', 'Unavailable'),
(25, '', 'Ccq-tablet', 'Tab', 600, 224, 376, 376, '2021-04-24', '2022-06-15', '', 'Tab', 60.00, 70.00, '10(17%)', 'Available'),
(26, '', 'Gastero', 'Tablet', 900, 20, 880, 893, '2021-04-26', '2024-10-23', '', 'Tab', 80.00, 80.00, '0(0%)', 'Available'),
(27, '', 'Dolo 650', 'Tablet', 15, 10, 0, 3, '2021-01-26', '2021-10-26', 'test', 'Stp', 28.50, 35.50, '0(0%)', 'Unavailable'),
(28, '', 'Itradila', 'Tablet', 100.3, 5, 95, 95, '2021-05-07', '2021-06-19', 'SPhospital', 'Unit', 199.70, 200.70, '1(1%)', 'Available'),
(29, '', 'Norflox-400', 'Tablet', 10.5, 6.9, 4.1, 4.1, '2021-05-14', '2021-08-14', '', 'Tab', 120.00, 120.50, '0(0%)', 'Available'),
(30, '', 'Corex 100', 'Syrup', 10, 8, 2, 10, '2021-05-14', '2021-07-14', '', 'Bot', 95.00, 95.00, '0(0%)', 'Available'),
(31, '', 'B complex', 'Capsule', 25, 1.4, 23.6, 25, '2021-05-14', '2021-09-14', '', 'Stp', 30.00, 30.00, '0(0%)', 'Available'),
(43, '', 'Test', 'Tablet', 35.5, 1, 34.5, 34.5, '2021-05-22', '2021-10-22', '', 'Stp', 20.50, 21.50, '1(5%)', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`) VALUES
(1, 'someone', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `on_hold`
--
ALTER TABLE `on_hold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `on_hold`
--
ALTER TABLE `on_hold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
