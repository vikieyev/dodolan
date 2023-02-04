-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 05:03 AM
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
(16, 'budi', 'magetan', '09089', '20', 'indomie', '2023-01-30', '', 'yuslich');

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
  `nama_toko` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `nama_toko`) VALUES
(58, 'indomie', 'indome goreng ayam 100gr', 'mie instant', '', '2000', '3000', '1000', 'joni', 0, 100, 85, '2026-10-29', '2023-01-01', 'yuslich'),
(59, 'sarimi', 'sarimi ayam bawang', ' ', '', '3000', '3500', '500', '', 0, 193, 200, '2025-01-29', '2023-01-29', ''),
(60, 'baygon', 'baygon 1lt', '  obat nyamuk ', '', '8000', '10000', '2000', 'joni', 0, 10, 10, '2026-05-04', '2023-01-30', 'yuslich');

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
(150, 'RS-438320', 'yuslich', '01/30/23', 'cash', '10000', '2000', '20000', '', '', 'yuslich');

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
(336, 'RS-438320', '60', '1', '10000', '2000', 'baygon', 'baygon 1lt', ' ', '10000', '', '01/30/23');

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
(7, 'joni', 'mgt', 'joni', '11212', 'test', 'yuslich'),
(8, 'budi', 'sby', 'budi', '23443', 'trse2', 'yuslich');

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
(3, 'admin', 'admin123', 'Administrator', 'admin'),
(4, 'yuslich', 'yestha1987', 'yuslich', 'admin');

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
  ADD PRIMARY KEY (`product_id`);

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
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
