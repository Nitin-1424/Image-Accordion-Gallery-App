-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2023 at 08:40 AM
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
-- Database: `image_gallery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `tbl_image_id` int(11) NOT NULL,
  `tbl_image_folder_id` int(11) NOT NULL,
  `image_name` text NOT NULL,
  `data_uploaded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`tbl_image_id`, `tbl_image_folder_id`, `image_name`, `data_uploaded`) VALUES
(1, 1, '654f2b0809643_php1.png', '2023-11-11 07:19:36'),
(2, 1, '654f2b122124b_php.png', '2023-11-11 07:19:46'),
(3, 2, '654f2b2537515_css2.png', '2023-11-11 07:20:05'),
(4, 2, '654f2b30c381a_css1.png', '2023-11-11 07:20:16'),
(5, 3, '654f2b378d138_js.jpg', '2023-11-11 07:20:23'),
(6, 3, '654f2b3e67fc5_js1.png', '2023-11-11 07:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image_folder`
--

CREATE TABLE `tbl_image_folder` (
  `tbl_image_folder_id` int(11) NOT NULL,
  `folder_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_image_folder`
--

INSERT INTO `tbl_image_folder` (`tbl_image_folder_id`, `folder_name`) VALUES
(1, 'PHP'),
(2, 'CSS'),
(3, 'JavaScript');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`tbl_image_id`);

--
-- Indexes for table `tbl_image_folder`
--
ALTER TABLE `tbl_image_folder`
  ADD PRIMARY KEY (`tbl_image_folder_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `tbl_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_image_folder`
--
ALTER TABLE `tbl_image_folder`
  MODIFY `tbl_image_folder_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
