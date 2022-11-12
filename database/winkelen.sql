-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 04:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winkelen`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Books'),
(2, 'Electronics'),
(3, 'Mobiles'),
(4, 'Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `item_register` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category`, `product_price`, `product_img`, `item_register`) VALUES
(1, 'Cartoon Astronaut T-Shirts', 'Fashion', 1499.00, './images/index/f1.jpg', '2022-11-07 09:57:29'),
(2, 'Summer Special T-shirt', 'Fashion', 1499.00, './images/index/f2.jpg', '2022-11-07 09:57:29'),
(3, 'Summer Collection T-shirt', 'Fashion', 1499.00, './images/index/f3.jpg', '2022-11-07 09:57:29'),
(4, 'Summer Special White Shirt', 'Fashion', 1499.00, './images/index/f4.jpg', '2022-11-07 09:57:29'),
(5, 'Blue Flower printed T-shirt', 'Fashion', 1499.00, './images/index/f5.jpg', '2022-11-07 09:57:29'),
(6, 'Printed Carton Jackets', 'Fashion', 1499.00, './images/index/f6.jpg', '2022-11-07 09:57:29'),
(7, 'Cartoon Astronuat Plazzo', 'Fashion', 1499.00, './images/index/f7.jpg', '2022-11-07 09:57:29'),
(8, 'Summer Special Top Upperwear', 'Fashion', 1499.00, './images/index/f8.jpg', '2022-11-07 09:57:29'),
(9, 'Blue Cartoon Astronaut Full Sleeve Shirt', 'Fashion', 2499.00, './images/index/n1.jpg', '2022-11-07 11:06:39'),
(10, 'Checked Ash Color Shirt ', 'Fashion', 2200.00, './images/index/n2.jpg', '2022-11-07 11:06:39'),
(11, 'Formal White Mens Shirt', 'Fashion', 2000.00, './images/index/n3.jpg', '2022-11-07 11:06:39'),
(12, 'Off-White Half Sleeve Shirt', 'Fashion', 2000.00, './images/index/n4.jpg', '2022-11-07 11:06:39'),
(13, 'Full Sleeve Blue Denim Shirt', 'Fashion', 2499.00, './images/index/n5.jpg', '2022-11-07 11:06:39'),
(14, 'Cartoon Astronaut Pants', 'Fashion', 2000.00, './images/index/n6.jpg', '2022-11-07 11:06:39'),
(15, 'Cartoon Astronaut Shirt', 'Fashion', 2499.00, './images/index/n7.jpg', '2022-11-07 11:06:39'),
(16, 'Black Half Sleeve Shirt', 'Fashion', 2000.00, './images/index/n8.jpg', '2022-11-07 11:06:39'),
(17, 'Think And Grow Rich', 'Books', 254.00, './images/index/book1.png', '2022-11-09 16:02:10'),
(18, 'Harry Potter And The Chambers Of Secret', 'Books', 500.00, './images/index/book2.jpg', '2022-11-09 16:02:10'),
(19, 'Do Epic Shit', 'Books', 350.00, './images/index/book3.jpg', '2022-11-09 16:02:10'),
(20, 'Ikigai', 'Books', 299.00, './images/index/book4.jpg', '2022-11-09 16:02:10'),
(21, 'Power Of Your Subconscious Mind', 'Books', 150.00, './images/index/book5.jpg', '2022-11-09 16:02:10'),
(22, 'The Alchemist', 'Books', 200.00, './images/index/book6.jpg', '2022-11-09 16:02:10'),
(23, 'The Psychology Of Money', 'Books', 199.00, './images/index/book7.jpg', '2022-11-09 16:02:10'),
(24, 'Rich Dad Poor Dad', 'Books', 299.00, './images/index/book8.jpg', '2022-11-09 16:02:10'),
(25, 'HP 15s-Ryzen 3 5300U 8GB SDRAM/256GB SSD 15.6inch', 'Electronics', 36500.00, './images/index/electronic1.jpg', '2022-11-09 16:11:39'),
(26, 'Apple Watch Series 7 (GPS + Cellular, 45mm)', 'Electronics', 47900.00, './images/index/electronic2.jpg', '2022-11-09 16:11:39'),
(27, 'Zebronics ZEB-BT6590RUCF Wireless Bluetooth Multimedia Speaker with Supporting SD Card, USB, AUX, FM & Remote Control.', 'Electronics', 3499.00, './images/index/electronic3.jpg', '2022-11-09 16:11:39'),
(28, 'Canon EOS 1500D 24.1 Digital SLR Camera (Black) with EF S18-55 is II Lens', 'Electronics', 38599.00, './images/index/electronic4.jpg', '2022-11-09 16:11:39'),
(29, 'Philips Audio SPA4040B/94 5.1 Channel 45W Multimedia Speakers System with Bluetooth', 'Electronics', 4999.00, './images/index/electronic5.jpg', '2022-11-09 16:11:39'),
(30, 'OnePlus 108 cm (43 inches) Y Series Full HD Smart Android LED TV 43 Y1S (Black)', 'Electronics', 24999.00, './images/index/electronic6.jpg', '2022-11-09 16:11:39'),
(31, 'boAt Airdopes 141 True Wireless Earbuds with 42H Playtime', 'Electronics', 1439.00, './images/index/electronic7.jpg', '2022-11-09 16:11:39'),
(32, 'Sansui 140cm (55 inches) 4K Ultra HD Certified Android LED TV', 'Electronics', 31900.00, './images/index/electronic8.jpg', '2022-11-09 16:11:39'),
(33, 'boAt Rockerz 450 Bluetooth On Ear Headphones with Mic, Upto 15 Hours Playback, 40MM Drivers, Padded Ear Cushions, Integrated Controls and Dual Modes', 'Electronics', 1299.00, './images/index/electronic9.jpg', '2022-11-09 16:11:39'),
(34, 'vivo Y22', 'Mobiles', 16499.00, './images/index/mobile1.jpg', '2022-11-09 16:33:45'),
(35, 'Apple iPhone 13 Pro (128GB)', 'Mobiles', 111900.00, './images/index/mobile2.jpg', '2022-11-09 16:33:45'),
(36, 'Samsung Galaxy M32', 'Mobiles', 13499.00, './images/index/mobile3.jpg', '2022-11-09 16:33:45'),
(37, 'Vivo Y75', 'Mobiles', 20990.00, './images/index/mobile4.jpg', '2022-11-09 16:33:45'),
(38, 'Apple iPhone 13 Pro', 'Mobiles', 117900.00, './images/index/mobile5.jpg', '2022-11-09 16:33:45'),
(39, 'Apple iPhone 13 Pro (1TB) ', 'Mobiles', 154900.00, './images/index/mobile6.jpg', '2022-11-09 16:33:45'),
(40, 'OPPO A74 5G ', 'Mobiles', 14990.00, './images/index/mobile7.jpg', '2022-11-09 16:33:45'),
(41, 'OPPO A77s ', 'Mobiles', 17999.00, './images/index/mobile8.jpg', '2022-11-09 16:33:45'),
(42, 'Samsung Galaxy M13', 'Mobiles', 11999.00, './images/index/mobile9.jpg', '2022-11-09 16:33:45'),
(43, 'realme narzo 50i', 'Mobiles', 6999.00, './images/index/mobile10.jpg', '2022-11-09 16:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `sign_in`
--

CREATE TABLE `sign_in` (
  `login_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `user_id` int(10) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sign_in`
--
ALTER TABLE `sign_in`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sign_in`
--
ALTER TABLE `sign_in`
  MODIFY `login_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
