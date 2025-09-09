-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2025 at 09:20 AM
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
-- Database: `pupbinanonlinerepo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int(30) NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `archive_code`, `curriculum_id`, `year`, `title`, `abstract`, `members`, `banner_path`, `document_path`, `status`, `student_id`, `date_created`, `date_updated`) VALUES
(1, '2021120001', 44, '2021', 'Sample Project 101', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet...&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;b&gt;Project Manager&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-John D Smith&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Members:&nbsp;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-James Miller&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-Mike Williams&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-George Wilson&lt;/b&gt;&lt;/p&gt;', 'uploads/banners/archive-1.png?v=1639208103', 'uploads/pdf/archive-1.pdf?v=1639208103', 1, 1, '2021-12-11 14:57:22', '2021-12-11 16:07:44'),
(2, '2021120002', 44, '2020', 'Sample 102', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;In hac habitasse platea...&lt;/p&gt;', '&lt;ul&gt;&lt;li&gt;Sample 101&lt;/li&gt;&lt;li&gt;Sample 102&lt;/li&gt;&lt;li&gt;Sample 103&lt;/li&gt;&lt;li&gt;Sample 104&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;', 'uploads/banners/archive-3.png?v=1639212829', 'uploads/pdf/archive-3.pdf?v=1639212829', 1, 1, '2021-12-11 16:53:48', '2021-12-13 14:21:11'),
(3, '2021120003', 44, '2020', 'Online Point of Sale System for XYZ Corp.', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Curabitur a lorem vitae...&lt;/p&gt;', '&lt;p&gt;&lt;b&gt;Project Manager&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Claire Blake&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;QA&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Samantha Lou&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Programmers&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;James Dein&lt;/li&gt;&lt;li&gt;Michael Bennet&lt;/li&gt;&lt;li&gt;Jenny Cooper&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Researchers&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Ana Mae Clayton&lt;/li&gt;&lt;li&gt;Cynthia Anthony&lt;/li&gt;&lt;/ul&gt;', 'uploads/banners/archive-3.png?v=1639377036', 'uploads/pdf/archive-3.pdf?v=1639377036', 1, 3, '2021-12-13 14:30:35', '2021-12-13 14:34:05'),
(36, '2025090001', 41, '2025', 'gdfdgdgddg', '&lt;p&gt;dfgsdgdrfgg&lt;/p&gt;', '&lt;p&gt;gfdgdfg&lt;/p&gt;', '', '', 0, 8, '2025-09-09 14:55:55', NULL),
(37, '2025090002', 41, '2025', 'gdfdgdgddg', '&lt;p&gt;dfgsdgdrfgg&lt;/p&gt;', '&lt;p&gt;gfdgdfg&lt;/p&gt;', '', '', 0, 8, '2025-09-09 14:56:00', NULL),
(38, '2025090003', 41, '2025', 'gdfdgdgddg', '&lt;p&gt;dfgsdgdrfgg&lt;/p&gt;', '&lt;p&gt;gfdgdfg&lt;/p&gt;', '', '', 0, 8, '2025-09-09 14:56:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(40, 22, 'BS Psychology', 'Bachelor of Science in Psychology', 1, '2025-09-09 05:30:16', NULL),
(41, 23, 'BSEd English', 'Bachelor of Secondary Education Major in English', 1, '2025-09-09 05:30:16', NULL),
(42, 23, 'BSEd Social Studies', 'Bachelor of Secondary Education Major in Social Studies', 1, '2025-09-09 05:30:16', NULL),
(43, 23, 'BEEd', 'Bachelor of Elementary Education', 1, '2025-09-09 05:30:16', NULL),
(44, 24, 'BSIT', 'Bachelor of Science in Information Technology', 1, '2025-09-09 05:30:16', NULL),
(45, 25, 'BS Computer Engineering', 'Bachelor of Science in Computer Engineering', 1, '2025-09-09 05:30:16', NULL),
(46, 25, 'BS Industrial Engineering', 'Bachelor of Science in Industrial Engineering', 1, '2025-09-09 05:30:16', NULL),
(47, 26, 'BSBA-HRM', 'Bachelor of Science in Business Administration Major in Human Resource Management', 1, '2025-09-09 05:30:16', NULL),
(48, 24, 'Diploma in IT', 'Diploma in Information Technology', 1, '2025-09-09 05:30:16', NULL),
(49, 25, 'Diploma in CET', 'Diploma in Computer Engineering Technology', 1, '2025-09-09 05:30:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(22, 'College of Psychology', 'Department focused on psychological studies and research.', 1, '2025-09-09 05:29:25', NULL),
(23, 'College of Education', 'Department focused on education and teaching methodologies.', 1, '2025-09-09 05:29:25', NULL),
(24, 'College of Information Technology', 'Department focused on information technology and computer science.', 1, '2025-09-09 05:29:25', NULL),
(25, 'College of Engineering', 'Department focused on various engineering disciplines.', 1, '2025-09-09 05:29:25', NULL),
(26, 'College of Business Administration', 'Department focused on business management and administration.', 1, '2025-09-09 05:29:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `department_id`, `curriculum_id`, `email`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(5, 'bryan', 'h.', 'caballero', 25, 41, 'cababryan836@gmail.com', '2dd6b6d0e5da882993827998917c14f1', 'Male', 1, '', '2025-09-09 07:51:17', '2025-09-09 07:52:06'),
(6, 'bryanreer', 'h.', 'caballero', 26, 41, 'caballeromerbin@gmail.com', '2dd6b6d0e5da882993827998917c14f1', 'Female', 1, '', '2025-09-09 09:17:26', '2025-09-09 09:18:07'),
(7, 'bryanfvdfgdfg', 'h.', 'caballero', 26, 41, 'caballeromerbi@gmail.com', '2dd6b6d0e5da882993827998917c14f1', 'Male', 0, '', '2025-09-09 11:12:40', NULL),
(8, 'bryhsjkhhd', 'dasdasd', 'vsdfgfr', 25, 41, 'cababryan6574@gmail.com', '2dd6b6d0e5da882993827998917c14f1', 'Male', 1, '', '2025-09-09 14:52:09', '2025-09-09 14:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'PUP Binan Online Repository System'),
(6, 'short_name', 'INTELHUB'),
(11, 'logo', 'uploads/logo-163884028.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-163884028.png'),
(15, 'content', 'Array'),
(16, 'email', 'info@sample.com'),
(17, 'contact', '+1234567890'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/student-1.png?v=1639202560', NULL, 1, 1, '2021-01-20 14:02:37', '2025-09-09 14:44:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
