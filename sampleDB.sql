-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2021 at 10:25 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

 
--
-- Database: `sampleDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ratings` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `type`, `ratings`, `vendor_id`) VALUES
(1, 'GOLD', '7', 1),
(2, 'SILVER', '4', 2),
(3, 'GOLD', '8', 3);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `street`, `city`, `customer_id`) VALUES
(1, 'lorem ipson sample text', 'ATLANTA', 1),
(2, 'lorem ipson sample text', 'CARDIFF', 2),
(3, 'lorem ipson sample text', 'LONDON', 3),
(4, 'lorem ipson sample text', 'HOGWARDS', 4),
(5, 'lorem ipson sample text', 'HOGWARDS', 5);

-- --------------------------------------------------------

--
-- Table structure for table `buys`
--

CREATE TABLE `buys` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buys`
--

INSERT INTO `buys` (`customer_id`, `product_id`) VALUES
(2, 1),
(2, 8),
(3, 1),
(3, 5),
(3, 7),
(4, 1),
(4, 5),
(4, 7),
(5, 2),
(5, 6),
(5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'MOBILE'),
(2, 'LAPTOP'),
(3, 'PENDRIVE');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `mobile`, `email`, `customer_id`) VALUES
(2, 'lorem ipson', 'lorem ipson sample email', 2),
(3, 'lorem ipson', 'lorem ipson sample email', 3),
(4, 'lorem ipson', 'lorem ipson sample email', 4),
(5, 'lorem ipson', 'lorem ipson sample email', 5);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `age`) VALUES
(1, 'peter parkar', '25'),
(2, 'mary jane', '24'),
(3, 'emma jones', '19'),
(4, 'harry potter', '21'),
(5, 'ronald weasley', '21');

-- --------------------------------------------------------

--
-- Table structure for table `feature_details`
--

CREATE TABLE `feature_details` (
  `id` int(11) NOT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `discount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feature_details`
--

INSERT INTO `feature_details` (`id`, `featured`, `discount`) VALUES
(1, 0, '0'),
(2, 1, '10'),
(3, 1, '15'),
(4, 1, '20');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `feature_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `vendor_id`, `category_id`, `feature_details_id`) VALUES
(1, 'OPPO A12', '12000', 1, 1, 1),
(2, 'ITC E300', '15000', 1, 1, 2),
(5, 'HP Slick 30', '75000', 1, 2, 1),
(6, 'Apple Mac Air', '95000', 1, 2, 1),
(7, 'RMAC Flash Drive 16GB', '650', 2, 3, 1),
(8, 'Sandisk PD 8GB', '400', 2, 3, 2),
(9, 'OPPO A12', '12500', 3, 1, 1),
(10, 'ITC E300', '14000', 3, 1, 1),
(11, 'Sandisk PD 8GB', '380', 3, 3, 1),
(12, 'Apple Mac Air', '98000', 3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `details` varchar(45) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `detials` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `details`, `product_id`, `detials`) VALUES
(7, 'lorem ipsom sample text', 5, NULL),
(8, 'lorem ipsom sample text', 6, NULL),
(9, 'lorem ipsom sample text', 6, NULL),
(10, 'lorem ipsom sample text', 7, NULL),
(11, 'lorem ipsom sample text', 7, NULL),
(12, 'lorem ipsom sample text', 1, NULL),
(13, 'lorem ipsom sample text', 1, NULL),
(14, 'lorem ipsom sample text', 1, NULL),
(15, 'lorem ipsom sample text', 2, NULL),
(16, 'lorem ipsom sample text', 5, NULL),
(17, 'lorem ipsom sample text', 8, NULL),
(18, 'lorem ipsom sample text', 8, NULL),
(19, 'lorem ipsom sample text', 9, NULL),
(20, 'lorem ipsom sample text', 10, NULL),
(21, 'lorem ipsom sample text', 11, NULL),
(22, 'lorem ipsom sample text', 11, NULL),
(23, 'lorem ipsom sample text', 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `type`) VALUES
(1, 'ABC Electronics', 'BUSINESS'),
(2, 'Henry Roth', 'INDIVIDUAL'),
(3, 'XYZ Electronics', 'BUSINESS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_account_vendor1_idx` (`vendor_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_address_customer1_idx` (`customer_id`);

--
-- Indexes for table `buys`
--
ALTER TABLE `buys`
  ADD PRIMARY KEY (`customer_id`,`product_id`),
  ADD KEY `fk_customer_has_product_product1_idx` (`product_id`),
  ADD KEY `fk_customer_has_product_customer1_idx` (`customer_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contact_customer_idx` (`customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_details`
--
ALTER TABLE `feature_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`,`vendor_id`,`feature_details_id`),
  ADD KEY `fk_product_vendor1_idx` (`vendor_id`),
  ADD KEY `fk_product_category1_idx` (`category_id`),
  ADD KEY `fk_product_feature_details1_idx` (`feature_details_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reviews_product1_idx` (`product_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `feature_details`
--
ALTER TABLE `feature_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_account_vendor1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_address_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `buys`
--
ALTER TABLE `buys`
  ADD CONSTRAINT `fk_customer_has_product_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_customer_has_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_contact_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_product_feature_details1` FOREIGN KEY (`feature_details_id`) REFERENCES `feature_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_product_vendor1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviews_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
 