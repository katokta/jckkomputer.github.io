-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2020 at 08:52 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jck_kcomputers`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_customer`
--

CREATE TABLE `table_customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `bank_account` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `review` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_customer`
--

INSERT INTO `table_customer` (`customer_id`, `name`, `phone_number`, `bank_account`, `email`, `review`) VALUES
(1, 'Katherine', '085200000001', '00000000001', '01@gmail.com', 5),
(2, 'Jason', '085200000002', '00000000002', '02@gmail.com', 5),
(3, 'Blue', '085200000003', '00000000003', '03@gmail.com', 5),
(4, 'Becky', '085200000004', '00000000004', '04@gmail.com', 5),
(5, 'E', '085200000005', '00000000005', '05@gmail.com', 5),
(6, 'Eka', '085200000006', '00000000006', '06@gmail.com', 5),
(7, 'D', '085200000007', '00000000007', '07@gmail.com', 5),
(8, 'Celine', '085200000008', '00000000008', '08@gmail.com', 5),
(9, 'B', '085200000009', '00000000009', '09@gmail.com', 5),
(10, 'Bea', '085200000010', '00000000010', '10@gmail.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `table_delivery`
--

CREATE TABLE `table_delivery` (
  `delivery_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `time_of_delivery` date NOT NULL,
  `expedition` enum('Jne','Tiki','Sicepat','Fedex') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_delivery`
--

INSERT INTO `table_delivery` (`delivery_id`, `address`, `time_of_delivery`, `expedition`) VALUES
(1, 'Central Park', '2020-02-03', 'Jne'),
(2, 'Batam Center', '2020-02-02', 'Tiki'),
(3, 'Taman Kota', '2020-02-01', 'Sicepat'),
(4, 'Taman Kota Mas', '2020-02-03', 'Jne'),
(5, 'Belleza Residence blok ABC', '2020-02-03', 'Tiki'),
(6, 'Dutamas', '2020-02-02', 'Tiki'),
(7, 'Potong lembu, TPI', '2020-02-02', 'Jne'),
(8, 'Jln. Nusantara, TPI', '2020-02-04', 'Jne'),
(9, 'Rempang', '2020-02-03', 'Jne'),
(10, 'Central Park', '2020-02-04', 'Jne');

-- --------------------------------------------------------

--
-- Table structure for table `table_purchasing_order`
--

CREATE TABLE `table_purchasing_order` (
  `purchasing_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_type` enum('PC Tower','Monitor','Laptop','Accessories') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_purchasing_order`
--

INSERT INTO `table_purchasing_order` (`purchasing_id`, `supplier_id`, `product_name`, `product_brand`, `product_type`) VALUES
(1, 1, 'Asus VivoBook A407MA', 'ASUS', 'Laptop'),
(2, 1, 'Asus ROG Strix G531GD', 'ASUS', 'Laptop'),
(3, 2, 'Lenovo Thinkpad X230', 'Lenovo', 'Laptop'),
(4, 1, 'Asus ZenBook Pro Duo UX581GV', 'ASUS', 'Laptop'),
(5, 1, 'Asus ROG Strix G531GD', 'ASUS', 'Laptop'),
(6, 1, 'ASUS Monitor LED VS197DE', 'ASUS', 'Monitor'),
(7, 3, 'ACER Monitor LED EB192Q', 'ACER', 'Monitor'),
(8, 4, 'Samsung NP-RV413', 'Samsung', 'Laptop'),
(9, 1, 'Asus ROG Strix GL503', 'ASUS', 'Laptop'),
(10, 5, 'Zyrex Sky 232', 'ZYREX', 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `table_purchasing_order_detail`
--

CREATE TABLE `table_purchasing_order_detail` (
  `purchasing_id` int(11) NOT NULL,
  `expedition` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `time_of_order` date NOT NULL,
  `time_of_delivery` date NOT NULL,
  `time_of_arrival` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_purchasing_order_detail`
--

INSERT INTO `table_purchasing_order_detail` (`purchasing_id`, `expedition`, `quantity`, `time_of_order`, `time_of_delivery`, `time_of_arrival`) VALUES
(1, 'Jne', 10, '2020-03-06', '2020-03-08', '2020-03-10'),
(2, 'Jne', 10, '2020-03-06', '2020-03-08', '2020-03-10'),
(3, 'Tiki', 10, '2020-03-06', '2020-03-08', '2020-03-10'),
(4, 'Jne', 10, '2020-03-06', '2020-03-08', '2020-03-10'),
(5, 'Jne', 10, '2020-03-06', '2020-03-08', '2020-03-10'),
(6, 'Jne', 10, '2020-03-06', '2020-03-08', '2020-03-10'),
(7, 'Pos', 10, '2020-03-05', '2020-03-07', '2020-03-09'),
(8, 'Jne', 20, '2020-03-06', '2020-03-08', '2020-03-10'),
(9, 'Jne', 10, '2020-03-06', '2020-03-08', '2020-03-10'),
(10, 'Jne', 5, '2020-03-06', '2020-03-08', '2020-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `table_stock`
--

CREATE TABLE `table_stock` (
  `stock_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `purchasing_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `stock_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_stock`
--

INSERT INTO `table_stock` (`stock_id`, `storage_id`, `purchasing_id`, `price`, `stock_photo`) VALUES
(1, 1, 1, 100000, NULL),
(2, 2, 2, 100000, NULL),
(3, 3, 3, 100000, NULL),
(4, 4, 4, 100000, NULL),
(5, 5, 5, 100000, NULL),
(6, 6, 6, 100000, NULL),
(7, 7, 7, 100000, NULL),
(8, 8, 8, 100000, NULL),
(9, 9, 9, 100000, NULL),
(10, 10, 10, 100000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_stock_detail`
--

CREATE TABLE `table_stock_detail` (
  `stock_id` int(11) NOT NULL,
  `stock_specification` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_stock_detail`
--

INSERT INTO `table_stock_detail` (`stock_id`, `stock_specification`) VALUES
(1, 'CPU Intel Celeron Processor N4000'),
(1, 'Fingerprint sensor'),
(1, 'GPU Intel HD Graphics'),
(1, 'Memory 1 TB HDD'),
(1, 'RAM 4 GB'),
(1, 'Screen 14 inches'),
(2, 'CPU Intel Core i5-9300H'),
(2, 'GPU NVidia GeForce GTX 1050 4GB GDDR6 VRAM'),
(2, 'Memory 1 TB HDD'),
(2, 'RAM 8 GB'),
(2, 'Screen 15.6 inches');

-- --------------------------------------------------------

--
-- Table structure for table `table_storage`
--

CREATE TABLE `table_storage` (
  `storage_id` int(11) NOT NULL,
  `purchasing_id` int(11) NOT NULL,
  `storage_location` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_storage`
--

INSERT INTO `table_storage` (`storage_id`, `purchasing_id`, `storage_location`, `quantity`) VALUES
(1, 1, 'L001', 10),
(2, 2, 'L002', 10),
(3, 3, 'L003', 10),
(4, 4, 'L004', 10),
(5, 5, 'L005', 10),
(6, 6, 'M001', 10),
(7, 7, 'M002', 10),
(8, 8, 'L006', 20),
(9, 9, 'L007', 10),
(10, 10, 'L008', 5);

-- --------------------------------------------------------

--
-- Table structure for table `table_supplier`
--

CREATE TABLE `table_supplier` (
  `supplier_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_supplier`
--

INSERT INTO `table_supplier` (`supplier_id`, `company_name`, `contact_person`, `address`, `email`, `phone`) VALUES
(1, 'ASUS Batam', 'Emma Humas', 'Mukakuning', 'a@umail.co', '0812000001'),
(2, 'ASAS Jodoh', 'Eno', 'Mukaair', 'b@umail.co', '0812000002'),
(3, 'OSUS Galang', 'Eli', 'Mukatanah', 'c@umail.co', '0812000009'),
(4, 'ASOS Tembesi', 'Eka', 'Mukaapi', 'd@umail.co', '0812000008'),
(5, 'OSOS Batu Aji', 'Ebe', 'Mukacoklat', 'e@umail.co', '0812000067'),
(6, 'USUS Baloi', 'Eta', 'Mukaputih', 'f@umail.co', '0812000000'),
(7, 'USOS Batam', 'Epe', 'Mukahitam', 'g@umail.co', '0812000123'),
(8, 'USAS Batam', 'Emet', 'Mukamerah', 'h@umail.co', '0812000078'),
(9, 'USIS Batam', 'Eben', 'Mukabiru', 'i@umail.co', '0812000056'),
(10, 'ASIS Batam', 'Ersi', 'Mukahijau', 'j@umail.co', '0812000006');

-- --------------------------------------------------------

--
-- Table structure for table `table_transaction`
--

CREATE TABLE `table_transaction` (
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `transaction_date` date NOT NULL,
  `credit` enum('YES','NO') NOT NULL,
  `buy_method` enum('Delivery','On the spot') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_transaction`
--

INSERT INTO `table_transaction` (`transaction_id`, `customer_id`, `delivery_id`, `transaction_date`, `credit`, `buy_method`) VALUES
(1, 1, NULL, '2020-02-21', 'YES', 'On the spot'),
(2, 2, 1, '2020-02-22', 'YES', 'Delivery'),
(3, 3, NULL, '2020-02-23', 'YES', 'On the spot'),
(4, 4, 2, '2020-02-24', 'YES', 'Delivery'),
(5, 5, NULL, '2020-02-25', 'YES', 'On the spot'),
(6, 6, 3, '2020-02-26', 'NO', 'Delivery'),
(7, 7, NULL, '2020-02-27', 'NO', 'On the spot'),
(8, 8, 4, '2020-02-28', 'NO', 'Delivery'),
(9, 9, NULL, '2020-03-01', 'NO', 'On the spot'),
(10, 10, 5, '2020-03-02', 'YES', 'Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `transaction_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `payment_method` enum('Credit','Cash') NOT NULL,
  `credit_detail` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`transaction_id`, `stock_id`, `price`, `payment_method`, `credit_detail`, `quantity`) VALUES
(1, 1, 100000, 'Cash', NULL, 1),
(2, 2, 200000, 'Cash', NULL, 2),
(3, 3, 300000, 'Cash', NULL, 3),
(4, 4, 400000, 'Cash', NULL, 4),
(5, 5, 500000, 'Cash', NULL, 5),
(6, 6, 600000, 'Cash', NULL, 6),
(7, 7, 700000, 'Credit', 'BCA', 7),
(8, 8, 800000, 'Credit', 'BRI', 8),
(9, 9, 900000, 'Credit', 'BNI', 9),
(10, 10, 1000000, 'Credit', 'BCA', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_customer`
--
ALTER TABLE `table_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `table_delivery`
--
ALTER TABLE `table_delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `table_purchasing_order`
--
ALTER TABLE `table_purchasing_order`
  ADD PRIMARY KEY (`purchasing_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `table_purchasing_order_detail`
--
ALTER TABLE `table_purchasing_order_detail`
  ADD KEY `purchasing_id` (`purchasing_id`);

--
-- Indexes for table `table_stock`
--
ALTER TABLE `table_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `purchasing_id` (`purchasing_id`),
  ADD KEY `storage_id` (`storage_id`);

--
-- Indexes for table `table_stock_detail`
--
ALTER TABLE `table_stock_detail`
  ADD PRIMARY KEY (`stock_id`,`stock_specification`);

--
-- Indexes for table `table_storage`
--
ALTER TABLE `table_storage`
  ADD PRIMARY KEY (`storage_id`),
  ADD KEY `purchasing_id` (`purchasing_id`);

--
-- Indexes for table `table_supplier`
--
ALTER TABLE `table_supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `table_transaction`
--
ALTER TABLE `table_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `delivery_id` (`delivery_id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_customer`
--
ALTER TABLE `table_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_delivery`
--
ALTER TABLE `table_delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_purchasing_order`
--
ALTER TABLE `table_purchasing_order`
  MODIFY `purchasing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_stock`
--
ALTER TABLE `table_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_storage`
--
ALTER TABLE `table_storage`
  MODIFY `storage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_supplier`
--
ALTER TABLE `table_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_transaction`
--
ALTER TABLE `table_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_purchasing_order`
--
ALTER TABLE `table_purchasing_order`
  ADD CONSTRAINT `table_purchasing_order_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `table_supplier` (`supplier_id`);

--
-- Constraints for table `table_purchasing_order_detail`
--
ALTER TABLE `table_purchasing_order_detail`
  ADD CONSTRAINT `table_purchasing_order_detail_ibfk_1` FOREIGN KEY (`purchasing_id`) REFERENCES `table_purchasing_order` (`purchasing_id`);

--
-- Constraints for table `table_stock`
--
ALTER TABLE `table_stock`
  ADD CONSTRAINT `table_stock_ibfk_1` FOREIGN KEY (`purchasing_id`) REFERENCES `table_purchasing_order` (`purchasing_id`),
  ADD CONSTRAINT `table_stock_ibfk_2` FOREIGN KEY (`storage_id`) REFERENCES `table_storage` (`storage_id`);

--
-- Constraints for table `table_stock_detail`
--
ALTER TABLE `table_stock_detail`
  ADD CONSTRAINT `table_stock_detail_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `table_stock` (`stock_id`);

--
-- Constraints for table `table_storage`
--
ALTER TABLE `table_storage`
  ADD CONSTRAINT `table_storage_ibfk_1` FOREIGN KEY (`purchasing_id`) REFERENCES `table_purchasing_order` (`purchasing_id`);

--
-- Constraints for table `table_transaction`
--
ALTER TABLE `table_transaction`
  ADD CONSTRAINT `table_transaction_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `table_customer` (`customer_id`),
  ADD CONSTRAINT `table_transaction_ibfk_2` FOREIGN KEY (`delivery_id`) REFERENCES `table_delivery` (`delivery_id`);

--
-- Constraints for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD CONSTRAINT `transaction_detail_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `table_transaction` (`transaction_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
