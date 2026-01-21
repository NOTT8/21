-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2026 at 03:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_stock_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `qty`, `image`) VALUES
(56, 'N', 20.00, 60, 'https://recipe.sgethai.com/wp-content/uploads/2025/05/21052025-clay-pot-roasted-chicken03.webp'),
(57, 'ไก่', 20.00, 3000, 'https://recipe.sgethai.com/wp-content/uploads/2025/05/cover-21052025-clay-pot-roasted-chicken_result.webp'),
(59, 'MM', 80.00, 9, 'https://recipe.sgethai.com/wp-content/uploads/2025/05/21052025-clay-pot-roasted-chicken03.webp'),
(61, '12', 50.00, 50, 'https://recipe.sgethai.com/wp-content/uploads/2025/05/21052025-clay-pot-roasted-chicken03.webp'),
(65, '888', 60.00, 50, 'https://recipe.sgethai.com/wp-content/uploads/2025/05/21052025-clay-pot-roasted-chicken03.webp'),
(67, 'B', 60.00, 0, 'https://recipe.sgethai.com/wp-content/uploads/2025/05/21052025-clay-pot-roasted-chicken03.webp'),
(68, 'BB', 500.00, 90, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnMTZ6jNTisazpuXM6tQxbElN09HnaSlFZBlM1FIBlOFxNwFOFJaSa7WkxyR56lWt08geljQ3yNyiCkE4KDvTi4ony_H9VNHbYS-uEg&s=10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
