-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2019 at 10:16 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'admin', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Men', 'Fashion', '2019-05-19 02:36:00', NULL),
(8, 'Women', 'Women Fashion.', '2019-05-19 03:02:34', NULL),
(9, 'Kids', 'Kids Fashion Store.', '2019-05-19 03:03:03', NULL),
(10, 'female', '', '2019-06-11 17:23:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '1', 1, '2019-05-19 02:21:04', 'COD', NULL),
(8, 5, '54', 1, '2019-06-16 18:39:36', 'COD', NULL),
(9, 5, '56', 1, '2019-06-16 18:39:36', 'COD', NULL),
(10, 5, '56', 1, '2019-06-16 18:43:52', 'COD', NULL),
(11, 5, '62', 1, '2019-06-16 18:57:14', 'COD', NULL),
(12, 5, '53', 1, '2019-06-16 18:59:04', 'COD', NULL),
(13, 5, '62', 1, '2019-06-16 19:02:09', 'COD', NULL),
(14, 5, '75', 1, '2019-06-16 19:03:01', 'COD', NULL),
(15, 5, '55', 1, '2019-06-16 19:08:38', 'COD', NULL),
(16, 5, '54', 1, '2019-06-16 19:19:51', 'COD', NULL),
(17, 5, '53', 1, '2019-06-16 19:20:24', 'COD', NULL),
(18, 5, '53', 1, '2019-06-16 19:22:44', 'COD', NULL),
(19, 5, '54', 1, '2019-06-16 19:23:22', 'COD', NULL),
(20, 5, '56', 1, '2019-06-16 20:00:51', 'COD', NULL),
(21, 5, '55', 1, '2019-06-16 20:01:24', 'COD', NULL),
(22, 5, '53', 1, '2019-06-16 20:02:44', 'COD', NULL),
(23, 5, '55', 1, '2019-06-16 20:02:44', 'COD', NULL),
(24, 5, '62', 1, '2019-06-16 20:02:44', 'COD', NULL),
(25, 5, '76', 1, '2019-06-16 20:02:44', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(53, 7, 13, 'Kutra 1', 'J.', 2870, 0, '<br>', '30819_1_.jpg', '1.jpg', '', 50, 'In Stock', '2019-05-27 18:49:18', NULL),
(54, 7, 13, 'kurta 2', 'J.', 2610, 0, '<br>', '2.1.jpg', '2.jpg', '', 60, 'In Stock', '2019-05-27 18:50:14', NULL),
(55, 7, 13, 'Kurta 3', 'J.', 2090, 0, '<br>', '3.1.jpg', '3.jpg', '', 50, 'In Stock', '2019-05-27 18:54:11', NULL),
(56, 7, 13, 'Kurta 4', 'J.', 1980, 0, '<br>', '4.1.jpg', '4.jpg', '', 50, 'In Stock', '2019-05-27 18:55:13', NULL),
(57, 7, 13, 'Kurta 5', 'J.', 1780, 0, '<br>', '5.1.jpg', '5.jpg', '', 50, 'In Stock', '2019-05-27 18:56:11', NULL),
(58, 7, 13, 'Kurta 6', 'J.', 1290, 0, '<br>', '6.1.jpg', '6.jpg', '', 50, 'In Stock', '2019-05-27 18:57:04', NULL),
(59, 7, 13, 'Kurta 7', 'J.', 1790, 0, '<br>', '7.1.jpg', '7.jpg', '', 50, 'In Stock', '2019-05-27 18:57:44', NULL),
(60, 7, 13, 'Kurta 8', 'J.', 2210, 0, '<br>', '9.1.jpg', '9.jpg', '', 50, 'In Stock', '2019-05-27 18:58:55', NULL),
(61, 8, 21, 'Stitched Suit 1', 'J.', 5099, 0, '<br>', '1.1.jpg', '1.jpg', '', 50, 'In Stock', '2019-05-27 19:27:33', NULL),
(62, 8, 21, 'Stitched Suit 2', 'J.', 4580, 0, '<br>', '2.1.jpg', '2.jpg', '', 50, 'In Stock', '2019-05-27 19:28:33', NULL),
(63, 8, 21, 'Stitched Suit 3', 'J.', 3490, 0, '<br>', '3.1.jpg', '3.jpg', '', 50, 'In Stock', '2019-05-27 19:29:58', NULL),
(64, 8, 21, 'Stitched Suit 4', 'J.', 6799, 0, '<br>', '4.1.jpg', '4.jpg', '', 50, 'In Stock', '2019-05-27 19:30:49', NULL),
(65, 8, 21, 'Stitched Suit 5', 'J.', 7840, 0, '<br>', '5.1.jpg', '5.jpg', '', 50, 'In Stock', '2019-05-27 19:31:29', NULL),
(66, 8, 21, 'Stitched Suit 6', 'j.', 5500, 0, '<br>', '6.1.jpg', '6.jpg', '', 50, 'In Stock', '2019-05-27 19:32:05', NULL),
(67, 8, 21, 'Stitched Suit 7', 'J.', 6799, 0, '<br>', '7.1.jpg', '7.jpg', '', 50, 'In Stock', '2019-05-27 19:33:02', NULL),
(68, 8, 21, 'Stitched Suit 8', 'J.', 6600, 0, '<br>', '8.1.jpg', '8.jpg', '', 50, 'In Stock', '2019-05-27 19:33:37', NULL),
(69, 8, 22, 'Stitched Suit 1', 'J.', 7490, 7700, '<br>', '10.1.jpg', '10.jpg', '', 50, 'In Stock', '2019-05-27 19:34:41', NULL),
(70, 8, 22, 'Stitched Suit 2', 'J.', 4290, 4500, '<br>', '11.1.jpg', '11.jpg', '', 50, 'In Stock', '2019-05-27 19:37:50', NULL),
(71, 8, 22, 'Stitched Suit 3', 'J.', 7500, 7899, '<br>', '12.1.jpg', '12.jpg', '', 50, 'In Stock', '2019-05-27 19:38:32', NULL),
(72, 8, 22, 'Stitched Suit 4', 'J.', 6480, 6700, '<br>', '13.1.jpg', '13.jpg', '', 50, 'In Stock', '2019-05-27 19:39:31', NULL),
(73, 8, 22, 'Stitched Suit 5', 'J.', 5100, 5699, '<br>', '14.1.jpg', '14.jpg', '', 50, 'In Stock', '2019-05-27 19:40:24', NULL),
(74, 9, 23, 'Kameez Shalwar 1', 'J.', 1899, 0, '<br>', '1.1.jpg', '1.jpg', '', 50, 'In Stock', '2019-05-27 19:41:58', NULL),
(75, 9, 23, 'Kameez Shalwar 2', 'J.', 2299, 0, '<br>', '2.1.jpg', '2.jpg', '', 50, 'In Stock', '2019-05-27 19:42:33', NULL),
(76, 9, 23, 'Kameez Shalwar 3', 'J.', 2800, 0, '<br>', '3.1.jpg', '3.jpg', '', 50, 'In Stock', '2019-05-27 19:43:09', NULL),
(77, 9, 23, 'Kameez Shalwar 4', 'J.', 2699, 0, '<br>', '4.1.jpg', '4.jpg', '', 50, 'In Stock', '2019-05-27 19:44:02', NULL),
(78, 9, 23, 'Kameez Shalwar 5', 'j.', 2200, 0, '<br>', '5.1.jpg', '5.jpg', '', 50, 'In Stock', '2019-05-27 19:44:35', NULL),
(79, 9, 23, 'Kameez Shalwar 6', 'J.', 1299, 0, '<br>', '6.1.jpg', '6.jpg', '', 50, 'In Stock', '2019-05-27 19:45:15', NULL),
(80, 9, 23, 'Kameez Shalwar 7', 'J.', 2800, 0, '<br>', '7.1.jpg', '7.jpg', '', 50, 'In Stock', '2019-05-27 19:45:56', NULL),
(81, 9, 23, 'Kameez Shalwar 8', 'J.', 3299, 0, '<br>', '8.1.jpg', '8.jpg', '', 50, 'In Stock', '2019-05-27 19:46:30', NULL),
(82, 9, 23, 'Kameez Shalwar 9', 'J.', 3099, 0, '<br>', '9.1.jpg', '9.jpg', '', 50, 'In Stock', '2019-05-27 19:47:09', NULL),
(83, 9, 24, 'Kameez Shalwar 1', 'J.', 2000, 2200, '<br>', '10.1.jpg', '10.jpg', '', 50, 'In Stock', '2019-05-27 19:47:42', NULL),
(84, 9, 24, 'Kameez Shalwar 2', 'J.', 2899, 3099, '<br>', '11.1.jpg', '11.jpg', '', 50, 'In Stock', '2019-05-27 19:48:22', NULL),
(85, 9, 24, 'Kameez Shalwar 3', 'J.', 2900, 3280, '<br>', '12.1.jpg', '12.jpg', '', 60, 'In Stock', '2019-05-27 19:49:37', NULL),
(86, 9, 24, 'Kameez Shalwar 4', 'J.', 3000, 3200, '<br>', '13.1.jpg', '13.jpg', '', 50, 'In Stock', '2019-05-27 19:50:17', NULL),
(87, 9, 24, 'Kameez Shalwar 5', 'J.', 1999, 2200, '<br>', '14.1.jpg', '14.jpg', '', 50, 'In Stock', '2019-05-27 19:50:58', NULL),
(88, 9, 24, 'Kameez Shalwar 6', 'J.', 5300, 5600, '<br>', '15.1.jpg', '15.jpg', '', 50, 'In Stock', '2019-05-27 19:51:42', NULL),
(89, 9, 24, 'Kameez Shalwar 6', 'J.', 4260, 4300, '<br>', '16.1.jpg', '16.jpg', '', 50, 'In Stock', '2019-05-27 19:52:21', NULL),
(90, 7, 14, 'Kutra 1', 'J.', 5200, 5600, '<br>', '10.1.jpg', '10.jpg', '', 50, 'In Stock', '2019-05-27 19:53:33', NULL),
(91, 7, 14, 'kurta 2', 'J.', 4099, 4390, '<br>', '11.1.jpg', '11.jpg', '', 50, 'In Stock', '2019-05-27 19:54:31', NULL),
(92, 7, 14, 'Kurta 3', 'J.', 6299, 6700, '<br>', '12.1.jpg', '12.jpg', '', 50, 'In Stock', '2019-05-27 19:55:03', NULL),
(93, 7, 14, 'Kurta 4', 'J.', 3420, 3980, '<br>', '13.1.jpg', '13.jpg', '', 50, 'In Stock', '2019-05-27 19:55:47', NULL),
(94, 7, 14, 'Kurta 5', 'J.', 6099, 6500, '<br>', '14.1.jpg', '14.jpg', '', 50, 'Out of Stock', '2019-05-27 19:56:42', NULL),
(95, 7, 14, 'Kurta 6', 'J.', 2000, 2299, '<br>', '15.1.jpg', '15.jpg', '', 50, 'In Stock', '2019-05-27 19:57:24', NULL),
(96, 7, 14, 'Kurta 7', 'J.', 1600, 1800, '<br>', '16.1.jpg', '16.jpg', '', 50, 'In Stock', '2019-05-27 19:58:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'Fresh Stock', '2019-05-19 02:36:24', '25-05-2019 05:55:32 PM'),
(14, 7, 'Stock On Sale', '2019-05-19 02:36:31', '25-05-2019 05:56:10 PM'),
(21, 8, 'Fresh Stock', '2019-05-25 13:24:11', NULL),
(22, 8, 'Stock On Sale', '2019-05-25 13:25:02', NULL),
(23, 9, 'Fresh Stock', '2019-05-25 13:25:22', NULL),
(24, 9, 'Stock On Sale', '2019-05-25 13:25:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, 'abc@abc.com', 0x3a3a3100000000000000000000000000, '2019-05-19 04:06:16', NULL, 0),
(26, 'abc@gmail.com', 0x3132372e302e302e3100000000000000, '2019-06-11 17:22:07', NULL, 0),
(27, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:38:24', '17-06-2019 12:10:26 AM', 1),
(28, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:42:54', '17-06-2019 12:14:38 AM', 1),
(29, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:47:56', '17-06-2019 12:20:42 AM', 1),
(30, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:52:12', '17-06-2019 12:25:20 AM', 1),
(31, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:56:42', '17-06-2019 12:26:52 AM', 1),
(32, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 18:57:12', '17-06-2019 12:38:22 AM', 1),
(33, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 19:08:36', '17-06-2019 01:31:32 AM', 1),
(34, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 20:02:41', '17-06-2019 01:32:52 AM', 1),
(35, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-16 20:04:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'bgbb', 'abc@abc.com', 0, 'd8578edf8458ce06fbc5bb76a58c5ca4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-19 02:20:43', NULL),
(5, 'abc', 'abc@gmail.com', 90078601, '3f009d72559f51e7e454b16e5d0687a1', 'jkjk', 'jhvj', 'kk', 0, 'vjv', 'vjh', 'vjh', 767, '2019-06-16 18:38:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
