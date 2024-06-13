-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 06:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(2, 'vinayak', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(3, 'Tushar', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(4, 'Sandeep', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(6, 1, 7, 'Watch', 1000, 1, 'watch-1.webp'),
(7, 1, 2, 'Laptop', 40000, 1, 'laptop-1.webp'),
(8, 3, 5, 'Mouse', 400, 1, 'mouse-1.webp'),
(9, 3, 8, 'Smartphone-Apple Iphone', 750000, 1, 'Apple-iPhone-14-Pro-iPhone-14-Pro-Max-gold-220907_inline.jpg.large.jpg'),
(10, 3, 7, 'Watch', 1000, 1, 'watch-1.webp'),
(11, 5, 2, 'Laptop', 40000, 1, 'laptop-1.webp'),
(12, 5, 3, 'Fridge', 10000, 1, 'fridge-1.webp'),
(13, 1, 6, 'Smartphone Realme C21', 12000, 1, 'smartphone-1.webp');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 0, 'Tushar', 'admin@admin.com', '123456789', 'Hii\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Tushar', '123456786', 'tushar@gmail.com', 'cash on delivery', 'flat no. BGM, RAMDEV, BGM, BGM, india - 511012', 'Camera1 (150000 x 1) - ', 150000, '2024-05-01', 'completed'),
(2, 1, 'Tech Reviews', '12345678', 'farof15951@mitigado.com', 'credit card', 'flat no. KA, BGM, BGM, BGM, india - 12345', 'Camera1 (150000 x 1) - ', 150000, '2024-05-01', 'completed'),
(3, 1, 'Rajesh', '123456789', 'farof15951@mitigado.com', 'paytm', 'flat no. Belagavi, Ramdev, Belagavi, karnataka, india - 510023', 'Smartphone Realme C21 (12000 x 1) - Fridge (10000 x 1) - ', 22000, '2024-05-01', 'pending'),
(4, 3, 'Vinayak', '123456789', 'vinayak@gmail.com', 'cash on delivery', 'flat no. Kolhapur, Gandhi nager, Kolhapur, Maharashtra, india - 416506', 'Camera1 (150000 x 1) - ', 150000, '2024-05-01', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'Camera1', 'DSLR', 150000, 'camera-1.webp', 'camera-2.webp', 'camera-3.webp'),
(2, 'Laptop', 'HP', 40000, 'laptop-1.webp', 'laptop-2.webp', 'laptop-3.webp'),
(3, 'Fridge', '265 L : Good for families of 3-5 members\r\nInverter Compressor\r\n2 Star : For Energy savings up to 20%\r\nFrost Free : Auto fridge defrost to stop ice-build up', 10000, 'fridge-1.webp', 'fridge-2.webp', 'fridge-3.webp'),
(5, 'Mouse', 'Mouse', 400, 'mouse-1.webp', 'mouse-2.webp', 'mouse-3.webp'),
(6, 'Smartphone Realme C21', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB\r\n16.51 cm (6.5 inch) HD+ Display\r\n13MP + 2MP + 2MP | 5MP Front Camera\r\n5000 mAh Battery\r\nUnisoc T610 Processo', 12000, 'smartphone-1.webp', 'smartphone-2.webp', 'smartphone-3.webp'),
(7, 'Watch', 'Watch', 1000, 'watch-1.webp', 'watch-2.webp', 'watch-3.webp'),
(8, 'Smartphone-Apple Iphone', 'Apple-Iphone', 750000, 'Apple-iPhone-14-Pro-iPhone-14-Pro-Max-gold-220907_inline.jpg.large.jpg', 'Apple_iphone_11-rosette-family-lineup-091019_big.jpg.large.jpg', 'csm_iphone_14_pro_ldvova_8_34cf25194d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Tushar', 'tushar@gmail.com', 'd0522b836c3a832693b1548221cdcc59adc5df47'),
(2, 'Rajesh', 'farof15951@mitigado.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(3, 'Vinayak', 'vinayak@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(4, 'Abhijeet', 'abhi@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(5, 'sandeep', 'sandeep@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
