-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2023 at 01:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `nama_toko` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`, `nama_toko`) VALUES
(16, 'budi', 'magetan', '09089', '20', 'indomie', '2023-01-30', 'ngebon indomie 3 bungkus', 'yuslich'),
(17, 'Nur eka paramita', 'Dukun', '09089', '20', 'wewe', '', 'qweqwe', 'TOKO YUSLICH'),
(18, 'nurdin', '', '', '', '', '', '', 'TOKO YUSLICH');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `kode_barcode` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `nama_toko`, `kode_barcode`) VALUES
(58, 'indomie', 'indome goreng ayam 100gr', 'mie instant ', '', '2000', '3000', '1000', 'joni', 0, 100, 100, '2026-10-29', '2023-01-01', 'yuslich', ''),
(59, 'sarimi', 'sarimi ayam bawang', ' ', '', '3000', '3500', '500', '', 0, 193, 200, '2025-01-29', '2023-01-29', '', ''),
(60, 'baygon', 'baygon 1lt', '  obat nyamuk ', '', '8000', '10000', '2000', 'joni', 0, 6, 10, '2026-05-04', '2023-01-30', 'yuslich', ''),
(62, 'cuci mobil + wax', 'cuci mobil + wax', ' ', '', '35000', '50000', '15000', '-', 0, 123, 123, '2023-01-31', '2023-01-31', 'yuslich', ''),
(63, 'indomie', 'indome goreng ayam 100gr', ' ', '', '3000', '3500', '500', '-', 0, 184, 200, '2026-10-31', '2023-01-31', 'TOKO YUSLICH', ''),
(64, 'cuci mobil + wax', 'cuci mobil + wax', ' cuci mobil', '', '35000', '50000', '15000', '-', 0, 1227, 1233, '2023-01-31', '2023-01-31', 'TOKO YUSLICH', ''),
(65, 'nasi padang', 'nasi', ' nasi', '', '1500', '3000', '1500', '-', 0, 225, 234, '2025-09-30', '2023-01-31', 'TOKO YUSLICH', ''),
(66, 'sarimi', 'sarimi ayam bawang', ' mie instant ', '', '2200', '2500', '300', 'joni', 0, 168, 200, '2025-09-22', '2023-02-10', 'TOKO YUSLICH', '123'),
(67, 'baygon', 'baygon 1lt', ' obat nyamuk', '', '13000', '15000', '2000', '-', 0, 119, 120, '2025-10-21', '2023-02-10', 'TOKO YUSLICH', '124'),
(68, 'susu', 'susu indomilk', 'susu cair   ', '', '8000', '10000', '2000', '', 0, 100, 100, '2026-09-14', '2023-02-10', 'TOKO YUSLICH', '723');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `nama_toko` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `nama_toko`) VALUES
(142, 'RS-63235', 'Admin', '01/29/23', 'cash', '3000', '1000', '5000', '', '', 'yuslich'),
(143, 'RS-30334', 'Admin', '01/29/23', 'cash', '3000', '1000', '5000', '', '', ''),
(144, 'RS-32393', 'Admin', '01/29/23', 'cash', '25500', '6500', '30000', '', '', ''),
(145, 'RS-402', 'Admin', '01/29/23', 'cash', '10500', '1500', '5000', '', '', ''),
(146, 'RS-0209222', 'Admin', '01/29/23', 'cash', '9500', '2500', '10000', '', '', ''),
(147, 'RS-0200030', 'yuslich', '01/30/23', 'cash', '10000', '2000', '10000', '', '', ''),
(148, 'RS-36030', 'yuslich', '01/30/23', 'cash', '13000', '3000', '15000', '', '', 'yuslich'),
(149, 'RS-6363342', 'yuslich', '01/30/23', 'cash', '10000', '2000', '10000', 'umum', '', 'yuslich'),
(150, 'RS-438320', 'yuslich', '01/30/23', 'cash', '10000', '2000', '20000', '', '', 'yuslich'),
(151, 'RS-023332', 'yuslich', '01/31/23', 'cash', '10000', '2000', '10000', 'joni', '', 'yuslich'),
(152, 'RS-087233', 'yuslich', '01/31/23', 'cash', '10000', '2000', '10000', 'budi', '', 'yuslich'),
(153, 'RS-2323622', 'TOKO YUSLICH', '01/31/23', 'cash', '17500', '2500', '20000', '', '', 'TOKO YUSLICH'),
(154, 'RS-05386322', 'TOKO YUSLICH', '01/31/23', 'cash', '59500', '18500', '70000', 'budi', '', 'TOKO YUSLICH'),
(155, '', 'TOKO YUSLICH', '01/31/23', 'cash', '6500', '2000', '10000', 'jojon', '', 'TOKO YUSLICH'),
(156, '', 'TOKO YUSLICH', '01/31/23', 'cash', '6500', '2000', '10000', '', '', 'TOKO YUSLICH'),
(157, 'RS-0203222', 'TOKO YUSLICH', '01/31/23', 'cash', '53500', '15500', '60000', '', '', 'TOKO YUSLICH'),
(158, 'RS-28307533', 'TOKO YUSLICH', '02/04/23', 'cash', '100000', '30000', '100000', '', '', 'TOKO YUSLICH'),
(159, 'RS-3223337', 'TOKO YUSLICH', '02/04/23', 'cash', '9500', '3500', '10000', '', '', 'TOKO YUSLICH'),
(160, 'RS-222202', 'TOKO YUSLICH', '02/06/23', 'cash', '10500', '1500', '15000', '', '', 'TOKO YUSLICH'),
(161, 'RS-3333492', 'TOKO YUSLICH', '02/09/23', 'cash', '6000', '3000', '10000', 'nur eka', '', 'TOKO YUSLICH'),
(162, 'RS-3226333', 'TOKO YUSLICH', '02/09/23', 'cash', '50000', '15000', '50000', 'oke', '', 'TOKO YUSLICH'),
(163, 'RS-3542333', 'TOKO YUSLICH', '02/09/23', 'cash', '3000', '1500', '5000', 'Nur ', '', 'TOKO YUSLICH'),
(164, 'RS-34633038', 'TOKO YUSLICH', '02/09/23', 'cash', '3500', '500', '5000', '', '', 'TOKO YUSLICH'),
(165, 'RS-356334', 'TOKO YUSLICH', '02/10/23', 'cash', '3500', '500', '5000', 'Nur eka paramita', '', 'TOKO YUSLICH'),
(166, 'RS-2033323', 'TOKO YUSLICH', '02/10/23', 'cash', '50000', '15000', '50000', 'Nur eka paramita', '', 'TOKO YUSLICH'),
(167, 'RS-2023733', 'TOKO YUSLICH', '02/10/23', 'cash', '3000', '1500', '5000', 'nurdin', '', 'TOKO YUSLICH'),
(168, 'RS-3630032', 'TOKO YUSLICH', '02/10/23', 'cash', '2500', '300', '3000', '', '', 'TOKO YUSLICH'),
(169, 'RS-05320', 'TOKO YUSLICH', '02/10/23', 'cash', '2500', '300', '5000', '', '', 'TOKO YUSLICH'),
(170, 'RS-0260230', 'TOKO YUSLICH', '02/10/23', 'cash', '2500', '300', '3000', 'jojo', '', 'TOKO YUSLICH'),
(171, 'RS-772323', 'TOKO YUSLICH', '02/10/23', 'cash', '2500', '300', '5000', 'jiji', '', 'TOKO YUSLICH'),
(172, 'RS-4287228', 'TOKO YUSLICH', '02/10/23', 'cash', '17500', '2300', '20000', '', '', 'TOKO YUSLICH');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(315, 'RS-63235', '58', '1', '3000', '1000', 'indomie', 'indome goreng ayam 100gr', ' test', '3000', '', '01/29/23'),
(317, 'RS-30334', '58', '1', '3000', '1000', 'indomie', 'indome goreng ayam 100gr', ' test', '3000', '', '01/29/23'),
(318, 'RS-32393', '59', '3', '10500', '1500', 'sarimi', 'sarimi ayam bawang', ' ', '3500', '', '01/29/23'),
(319, 'RS-32393', '58', '5', '15000', '5000', 'indomie', 'indome goreng ayam 100gr', ' test', '3000', '', '01/29/23'),
(320, 'RS-402', '59', '3', '10500', '1500', 'sarimi', 'sarimi ayam bawang', ' ', '3500', '', '01/29/23'),
(321, 'RS-0209222', '59', '1', '3500', '500', 'sarimi', 'sarimi ayam bawang', ' ', '3500', '', '01/29/23'),
(322, 'RS-0209222', '58', '1', '3000', '1000', 'indomie', 'indome goreng ayam 100gr', ' test', '3000', '', '01/29/23'),
(323, 'RS-0209222', '58', '1', '3000', '1000', 'indomie', 'indome goreng ayam 100gr', ' test', '3000', '', '01/29/23'),
(325, 'RS-0200030', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', ' ', '10000', '', '01/30/23'),
(326, 'RS-36030', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', ' ', '10000', '', '01/30/23'),
(327, 'RS-36030', '58', '1', '3000', '1000', 'indomie', 'indome goreng ayam 100gr', ' test', '3000', '', '01/30/23'),
(328, 'RS-30529333', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', ' ', '10000', '', '01/30/23'),
(329, 'RS-30529333', '58', '2', '6000', '2000', 'indomie', 'indome goreng ayam 100gr', ' test', '3000', '', '01/30/23'),
(330, 'RS-3353263', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', ' ', '10000', '', '01/30/23'),
(331, 'RS-33422252', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', ' ', '10000', '', '01/30/23'),
(332, 'RS-33422252', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', ' ', '10000', '', '01/30/23'),
(333, 'RS-33422252', '58', '1', '3000', '1000', 'indomie', 'indome goreng ayam 100gr', ' test', '3000', '', '01/30/23'),
(335, 'RS-6363342', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', ' ', '10000', '', '01/30/23'),
(336, 'RS-438320', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', ' ', '10000', '', '01/30/23'),
(339, 'RS-0398634', '58', '1', '3000', '1000', 'indomie', 'indome goreng ayam 100gr', 'mie instant', '3000', '', '01/30/23'),
(340, 'RS-0398634', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', '  obat nyamuk ', '10000', '', '01/30/23'),
(341, 'RS-023332', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', '  obat nyamuk ', '10000', '', '01/31/23'),
(342, 'RS-2226502', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', '  obat nyamuk ', '10000', '', '01/31/23'),
(343, 'RS-087233', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', '  obat nyamuk ', '10000', '', '01/31/23'),
(344, 'RS-2323622', '63', '5', '17500', '2500', 'indomie', 'indome goreng ayam 100gr', ' ', '3500', '', '01/31/23'),
(345, 'RS-05386322', '63', '1', '3500', '500', 'indomie', 'indome goreng ayam 100gr', ' ', '3500', '', '01/31/23'),
(346, 'RS-05386322', '65', '2', '6000', '3000', 'nasi padang', 'nasi', ' nasi', '3000', '', '01/31/23'),
(347, 'RS-05386322', '64', '1', '50000', '15000', 'cuci mobil + wax', 'cuci mobil + wax', ' cuci mobil', '50000', '', '01/31/23'),
(348, '', '63', '1', '3500', '500', 'indomie', 'indome goreng ayam 100gr', ' ', '3500', '', '01/31/23'),
(349, '', '65', '1', '3000', '1500', 'nasi padang', 'nasi', ' nasi', '3000', '', '01/31/23'),
(350, 'RS-0203222', '63', '1', '3500', '500', 'indomie', 'indome goreng ayam 100gr', ' ', '3500', '', '01/31/23'),
(351, 'RS-0203222', '64', '1', '50000', '15000', 'cuci mobil + wax', 'cuci mobil + wax', ' cuci mobil', '50000', '', '01/31/23'),
(352, 'RS-28307533', '64', '2', '100000', '30000', 'cuci mobil + wax', 'cuci mobil + wax', ' cuci mobil', '50000', '', '02/04/23'),
(353, 'RS-3223337', '63', '1', '3500', '500', 'indomie', 'indome goreng ayam 100gr', ' ', '3500', '', '02/04/23'),
(354, 'RS-3223337', '65', '2', '6000', '3000', 'nasi padang', 'nasi', ' nasi', '3000', '', '02/04/23'),
(355, 'RS-222202', '63', '3', '10500', '1500', 'indomie', 'indome goreng ayam 100gr', ' ', '3500', '', '02/06/23'),
(356, 'RS-3333492', '65', '2', '6000', '3000', 'nasi padang', 'nasi', ' nasi', '3000', '', '02/09/23'),
(357, 'RS-3226333', '64', '1', '50000', '15000', 'cuci mobil + wax', 'cuci mobil + wax', ' cuci mobil', '50000', '', '02/09/23'),
(358, 'RS-3542333', '65', '1', '3000', '1500', 'nasi padang', 'nasi', ' nasi', '3000', '', '02/09/23'),
(359, 'RS-34633038', '63', '1', '3500', '500', 'indomie', 'indome goreng ayam 100gr', ' ', '3500', '', '02/09/23'),
(360, 'RS-202282', '63', '1', '3500', '500', 'indomie', 'indome goreng ayam 100gr', ' ', '3500', '', '02/09/23'),
(361, 'RS-98334228', '63', '1', '3500', '500', 'indomie', 'indome goreng ayam 100gr', ' ', '3500', '', '02/09/23'),
(362, 'RS-356334', '63', '1', '3500', '500', 'indomie', 'indome goreng ayam 100gr', ' ', '3500', '', '02/09/23'),
(363, 'RS-2033323', '64', '1', '50000', '15000', 'cuci mobil + wax', 'cuci mobil + wax', ' cuci mobil', '50000', '', '02/10/23'),
(364, 'RS-2023733', '65', '1', '3000', '1500', 'nasi padang', 'nasi', ' nasi', '3000', '', '02/10/23'),
(365, 'RS-23029204', '<br />\r\n<b>Warning</b>:  Undefined variable $row in <b>D:\\xampp\\htdocs\\pos\\main\\sales.php</b> on lin', '1', '10000', '2000', 'susu', 'susu indomilk', 'susu cair   ', '10000', '', '02/10/23'),
(368, 'RS-223025', ' ', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(369, 'RS-3630032', ' ', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(370, 'RS-05320', '66', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(371, 'RS-35339063', ' ', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(375, 'RS-200223', ' ', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(376, 'RS-63222032', ' ', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(377, 'RS-2332200', ' ', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(378, 'RS-223722', ' ', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(379, 'RS-57306520', '<script> document.querySelector(\'[name=\'kode_barcode\']\').value;</script>', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(380, 'RS-39829', '<script> document.getElementById(\'kode_barcode\').value; </script>', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(381, 'RS-224000', '<script> document.getElementById(\'kode_barcode\').value; </script> ', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant', '2500', '', '02/10/23'),
(382, 'RS-022', '', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant ', '2500', '', '02/10/23'),
(383, 'RS-3003032', '', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant ', '2500', '', '02/10/23'),
(384, 'RS-63523323', '123', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant ', '2500', '', '02/10/23'),
(403, 'RS-0260230', '123', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant ', '2500', '', '02/10/23'),
(404, 'RS-772323', '123', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant ', '2500', '', '02/10/23'),
(416, 'RS-3332208', '123', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant ', '2500', '', '02/10/23'),
(418, 'RS-4287228', '123', '1', '2500', '300', 'sarimi', 'sarimi ayam bawang', ' mie instant ', '2500', '', '02/10/23'),
(419, 'RS-4287228', '124', '1', '15000', '2000', 'baygon', 'baygon 1lt', ' obat nyamuk', '15000', '', '02/10/23');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL,
  `nama_toko` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`, `nama_toko`) VALUES
(9, 'joni', 'Dukun', '09089', '989898', 'dfsdfsd', 'TOKO YUSLICH');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'admin', 'admin', 'Admin', 'admin'),
(2, 'cashier', 'cashier', 'Cashier Pharmacy', 'Cashier'),
(4, 'yuslich', 'yestha1987', 'TOKO YUSLICH', 'admin'),
(5, 'melati', 'metali', 'TOKO BAJU MELATI', 'admin'),
(6, 'januari', 'januari1234', 'CUCI MOBIL AZKA', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `kode_barcode` (`kode_barcode`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
