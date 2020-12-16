-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 05:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrd_2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `div_division`
--

CREATE TABLE `div_division` (
  `id` int(11) NOT NULL,
  `div_name` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `create_at` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `deleted` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `div_division`
--

INSERT INTO `div_division` (`id`, `div_name`, `desc`, `status`, `create_at`, `create_by`, `deleted`) VALUES
(1, 'Batalion 1A', 'Batalion 1 Group A', '1', '2020-12-09 00:12:04', 1, '0'),
(2, 'Batalion 1C', 'Batalion 1 Group C', '1', '2020-12-09 00:12:44', 1, '1'),
(3, 'Batalion 1B', 'Batalion 1 Group B', '1', '2020-12-09 00:17:45', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `div_position`
--

CREATE TABLE `div_position` (
  `id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `pos_name` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `create_at` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `deleted` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `div_position`
--

INSERT INTO `div_position` (`id`, `division_id`, `pos_name`, `desc`, `status`, `create_at`, `create_by`, `deleted`) VALUES
(1, 3, 'Supervisor', 'Supervisor Troopers', '1', '2020-12-09 01:03:52', 1, '0'),
(2, 3, 'Troopers B', 'Troopers B', '1', '2020-12-09 01:04:05', 1, '1'),
(3, 3, 'Troopers A', 'Troopers A', '1', '2020-12-09 01:15:47', 1, '0');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `rec_recruitment`
--

CREATE TABLE `rec_recruitment` (
  `id` int(11) NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `desc` text DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `capacity` int(10) NOT NULL DEFAULT 1,
  `loaded` int(10) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `deleted` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rec_recruitment`
--

INSERT INTO `rec_recruitment` (`id`, `vacancy_id`, `pos_id`, `desc`, `status`, `capacity`, `loaded`, `create_at`, `create_by`, `deleted`) VALUES
(1, 1, 1, 'Supervisor wanted job ', '1', 2, 0, '2020-12-09 23:14:07', 2, '1');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `sys_menu`
--

CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `visible` char(1) NOT NULL DEFAULT '1',
  `status` char(1) NOT NULL DEFAULT '1',
  `link` varchar(300) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `create_at` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `deleted` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usr_menu_roles`
--

CREATE TABLE `usr_menu_roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usr_roles`
--

CREATE TABLE `usr_roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `create_at` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `deleted` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usr_roles`
--

INSERT INTO `usr_roles` (`id`, `role_name`, `desc`, `status`, `create_at`, `create_by`, `deleted`) VALUES
(1, 'Superadmin', 'Superadmin akun', '1', '2020-11-21 19:47:07', 0, '0'),
(2, 'Administrator', 'Ini Administrator', '1', '2020-12-08 21:43:17', 1, '0'),
(3, 'HRD Pusat', 'Ini HRD Pusat', '1', '2020-12-08 21:44:11', 1, '0'),
(4, 'Staff Asli', 'Ini Staff', '1', '2020-12-08 21:45:28', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `usr_users`
--

CREATE TABLE `usr_users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `create_at` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `deleted` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usr_users`
--

INSERT INTO `usr_users` (`id`, `role_id`, `name`, `username`, `password`, `email`, `status`, `create_at`, `create_by`, `deleted`) VALUES
(1, 1, 'Adminer', 'adminer123', '$2y$10$s0QNdS4ADSS4RJGSuXXdbeFYH7lYNuRfJu6KFi62BsqxUKJxvauIm', 'adminer77@email.com', '1', '2020-11-21 19:48:05', 0, '0'),
(2, 1, 'Arief', 'arief123456', '$2y$10$5mijvAl.KWMhe/FWfMR4FeDa.9ekNDbWl5y6.moX/1d5Hvpi8Mf36', 'arief.rachman2020@gmail.com', '1', '2020-12-08 23:22:59', 1, '0'),
(3, 2, 'Kanda', 'kandaAdmin123456', '$2y$10$SWaEOki1.VDBEqGbEwh2PebTySWXB1P8ASh6j644Hdo1Ym6iZ1uHi', 'kanda2020@gmail.com', '1', '2020-12-08 23:23:48', 1, '1'),
(4, 3, 'Ageng', 'ageng123456', '$2y$10$D4zWqRkRuCGxJUpB8SlDH.82wyB3.LUivAzdEACRw7Z018E61haem', 'ageng2020@gmail.com', '0', '2020-12-08 23:24:32', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `vac_vacancy`
--

CREATE TABLE `vac_vacancy` (
  `id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  `due_date` datetime NOT NULL,
  `create_at` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `deleted` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vac_vacancy`
--

INSERT INTO `vac_vacancy` (`id`, `job_title`, `desc`, `status`, `due_date`, `create_at`, `create_by`, `deleted`) VALUES
(1, 'Job Batalion 1A', 'Job Batalion 1A, Posisi mana aja', '0', '2020-12-31 23:06:18', '2020-12-09 23:06:25', 2, '0');

-- --------------------------------------------------------
--
-- Indexes for dumped tables
--

--
-- Indexes for table `div_division`
--
ALTER TABLE `div_division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `div_position`
--
ALTER TABLE `div_position`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `rec_recruitment`
--
ALTER TABLE `rec_recruitment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vacancy_id` (`vacancy_id`),
  ADD KEY `pos_id` (`pos_id`);

--
-- Indexes for table `sys_menu`
--
ALTER TABLE `sys_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usr_menu_roles`
--
ALTER TABLE `usr_menu_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `usr_roles`
--
ALTER TABLE `usr_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usr_users`
--
ALTER TABLE `usr_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `vac_vacancy`
--
ALTER TABLE `vac_vacancy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `div_division`
--
ALTER TABLE `div_division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `div_position`
--
ALTER TABLE `div_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rec_recruitment`
--
ALTER TABLE `rec_recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_menu`
--
ALTER TABLE `sys_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usr_menu_roles`
--
ALTER TABLE `usr_menu_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usr_roles`
--
ALTER TABLE `usr_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usr_users`
--
ALTER TABLE `usr_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vac_vacancy`
--
ALTER TABLE `vac_vacancy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `div_position`
--
ALTER TABLE `div_position`
  ADD CONSTRAINT `div_position_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `div_division` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rec_recruitment`
--
ALTER TABLE `rec_recruitment`
  ADD CONSTRAINT `rec_recruitment_ibfk_1` FOREIGN KEY (`vacancy_id`) REFERENCES `vac_vacancy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rec_recruitment_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `div_position` (`id`);

--
-- Constraints for table `usr_menu_roles`
--
ALTER TABLE `usr_menu_roles`
  ADD CONSTRAINT `usr_menu_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `usr_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usr_menu_roles_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usr_users`
--
ALTER TABLE `usr_users`
  ADD CONSTRAINT `usr_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `usr_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
