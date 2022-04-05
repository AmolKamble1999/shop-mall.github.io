-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 09:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `shopping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `com_logo` varchar(100) DEFAULT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(60) NOT NULL,
  `com_phone` varchar(15) DEFAULT NULL,
  `com_address` varchar(255) DEFAULT NULL,
  `cur_format` varchar(10) NOT NULL,
  `admin_role` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `username`, `password`, `com_logo`, `com_name`, `com_email`, `com_phone`, `com_address`, `cur_format`, `admin_role`) VALUES
(1, 'admin', 'amol', '21232f297a57a5a743894a0e4a801fc3', NULL, 'amkamble.com', 'amkamble22@gmail.com', '7410749200', NULL, 'Rs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_cat`) VALUES
(13, 'Realme', 9),
(12, 'Lenovo', 9),
(11, 'LG', 9),
(10, 'Samsung', 9);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `products` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `products`) VALUES
(9, 'Electronics', 0),
(10, 'Men', 0),
(11, 'Women', 0),
(12, 'Furniture', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `s_no` int(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) DEFAULT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `footer_text` varchar(100) NOT NULL,
  `currency_format` varchar(20) NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`s_no`, `site_name`, `site_title`, `site_logo`, `site_desc`, `footer_text`, `currency_format`, `contact_phone`, `contact_email`, `contact_address`) VALUES
(1, 'Shop Mall', 'Online E-commers Shopping Project for Mobiles, Clothes, Electronics and many more....', '1607398563shopping-logo.png', 'Shop anytime anymore ', 'Thank You for Visiting', 'Rs.', '7410749200', 'amkamble22@gmail.com', 'Aurangpura Aurangabad Maharastra Pin-code :431002 ');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_qty` varchar(100) NOT NULL,
  `total_amount` varchar(10) NOT NULL,
  `product_user` int(11) NOT NULL,
  `order_date` varchar(11) NOT NULL,
  `pay_req_id` varchar(100) DEFAULT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  `delivery` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `item_number`, `txn_id`, `payment_gross`, `currency_code`, `payment_status`) VALUES
(5, '11', 'd388939cdaca4087acca75574a34b035', 759.00, '', 'credit'),
(6, '12', '4e2738d7eade4f57b5fd32434239d35f', 299.00, '', 'credit'),
(7, '12', 'd7a5b179cd07480782fc2d21edec7031', 299.00, '', 'credit'),
(8, '12', 'a0f61b1acd6b444ba5856cc4387e7710', 299.00, '', 'pending'),
(9, '12', '0e2fdf1541994d338c676201097d2481', 598.00, '', 'credit'),
(10, '12', '8b0791e3eb764e45b497b0f0c401d9d6', 299.00, '', 'credit'),
(11, '12', '92c9c474ae864d01b81f7e2f4d3a098e', 299.00, '', 'credit'),
(20, '11', '6863fbdf68be45d5a77aa01774a80885', 759.00, '', 'credit'),
(21, '11', 'ee7d6cea937c4f06b6e5e1fffe47b778', 759.00, '', 'credit'),
(22, '12', 'f7ce91d5964c462fa3972f6cb5373d4a', 299.00, '', 'credit'),
(23, '11', '939d866425ef479c84e276e664ce5a31', 1518.00, '', 'credit'),
(29, '10,11,12,', 'df952fa6bacd4f389de80b1080ed3871', 1342.00, '', 'credit'),
(30, '4,12,', 'd19818d2ba3543ffa03a79a7eb64901b', 94279.00, '', 'credit'),
(31, '11,12,', '2c648ec714914c18b447309d691b7eef', 1058.00, '', 'credit'),
(32, '11,12,', '700bf310ca4a4697b59184f61309275a', 1058.00, '', 'credit'),
(33, '11,12,', '639ccfba60cd41eeba02ba5ff1849249', 1058.00, '', 'credit'),
(34, '11,12,', '792c6616026948e48a2fcc07eb35c158', 1058.00, '', 'credit'),
(35, '11,12,', '153427404661463f83a5e8bd080a95e9', 1058.00, '', 'credit'),
(36, '11,12,', '37473185580340ab8c54d102204c7bf9', 1058.00, '', 'credit'),
(37, '11,12,', '2bb8d2ccf3544d0089d211abf4d55e36', 1058.00, '', 'credit'),
(38, '12,13,', '63148f0e7b7043f5a5e470a9ac1d3dde', 1532.00, '', 'credit'),
(39, '12,', '3c209af45445486c8aefb6cfb55dcbb7', 299.00, '', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_sub_cat` int(11) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `featured_image` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `product_keywords` text DEFAULT NULL,
  `product_views` int(11) DEFAULT 0,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `s_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(100) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `cat_products` int(11) NOT NULL DEFAULT 0,
  `show_in_header` tinyint(4) NOT NULL DEFAULT 1,
  `show_in_footer` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_cat_id`, `sub_cat_title`, `cat_parent`, `cat_products`, `show_in_header`, `show_in_footer`) VALUES
(19, 'Laptops', 9, 2, 1, 0),
(21, 'Camera', 9, 0, 1, 0),
(20, 'Speakers', 9, 0, 1, 0),
(18, 'Mobiles', 9, 2, 1, 1),
(22, 'Kitchen', 12, 0, 1, 0),
(23, 'Tableware', 12, 0, 0, 1),
(24, 'Living Room', 12, 1, 0, 1),
(25, 'Beds', 12, 2, 1, 1),
(26, 'Men\'s T-Shirts', 10, 2, 1, 1),
(27, 'Kurti\'s', 11, 1, 1, 1),
(28, 'Sarees', 11, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `user_role` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;