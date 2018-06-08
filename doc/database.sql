-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2018 at 09:06 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `comment_subject` varchar(255) COLLATE utf32_bin NOT NULL,
  `comment_text` text COLLATE utf32_bin NOT NULL,
  `comment_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_author` varchar(255) COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_subject`, `comment_text`, `comment_created`, `comment_author`) VALUES
(1, 'Tubli töö', 'Mina arvan nii ja kõik nõustuvad minuga', '2018-06-08 11:49:49', 'Musti'),
(2, 'Mõtetu kraam', 'Aga ikkagi päris hea töö', '2018-06-08 11:50:10', 'Kalle Gustav'),
(3, 'Kolm on kohtu seadus', 'Ja see ongi kolmas kommentaar', '2018-06-08 11:50:38', 'Kolmas');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(1, 'Esimene postitus', 'This is my very first post. I wonder if this will work after my git reset --hard XD.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-06-07 19:18:52', 1),
(2, 'Teine postitus', 'Ja see on mu teine postitus.\r\n\r\nVaatame, kas tuleb sappa?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-06-07 12:10:25', 2),
(3, 'Kolmas postitus', 'Kolmas katsetus tagide testimiseks', '2018-06-07 19:24:04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE `post_comments` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`post_id`, `comment_id`) VALUES
(1, 2),
(1, 1),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `tag_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'lorem'),
(2, 'esimese postituse tag'),
(3, 'teise postituse tag');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `translation_id` int(10) UNSIGNED NOT NULL,
  `phrase` varchar(191) NOT NULL,
  `language` char(3) NOT NULL,
  `translation` varchar(191) DEFAULT NULL,
  `controller` varchar(15) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`translation_id`, `phrase`, `language`, `translation`, `controller`, `action`) VALUES
(1, 'Action', 'en', '{untranslated}', 'welcome', 'index'),
(2, 'Server returned response in an unexpected format', 'en', '{untranslated}', 'global', 'global'),
(3, 'Forbidden', 'en', '{untranslated}', 'global', 'global'),
(4, 'Server returned an error', 'en', '{untranslated}', 'global', 'global'),
(5, 'Action', 'en', '{untranslated}', 'halo', 'index'),
(6, 'Logout', 'en', '{untranslated}', 'global', 'global'),
(7, 'Settings', 'en', '{untranslated}', 'global', 'global'),
(8, 'Logged in as', 'en', '{untranslated}', 'global', 'global'),
(9, 'Log out', 'en', '{untranslated}', 'global', 'global'),
(10, 'Action', 'et', '{untranslated}', 'welcome', 'index'),
(11, 'Log out', 'et', '{untranslated}', 'global', 'global'),
(12, 'Server returned response in an unexpected format', 'et', '{untranslated}', 'global', 'global'),
(13, 'Forbidden', 'et', '{untranslated}', 'global', 'global'),
(14, 'Server returned an error', 'et', '{untranslated}', 'global', 'global'),
(15, 'Please sign in', 'et', '{untranslated}', 'global', 'global'),
(16, 'Email', 'et', '{untranslated}', 'global', 'global'),
(17, 'Password', 'et', '{untranslated}', 'global', 'global'),
(18, 'Sign in', 'et', '{untranslated}', 'global', 'global'),
(19, 'Oops...', 'et', '{untranslated}', 'global', 'global'),
(20, 'Close', 'et', '{untranslated}', 'global', 'global'),
(21, 'Server returned an error. Please try again later ', 'et', '{untranslated}', 'global', 'global'),
(22, 'Oops...', 'en', '{untranslated}', 'global', 'global'),
(23, 'Close', 'en', '{untranslated}', 'global', 'global'),
(24, 'Server returned an error. Please try again later ', 'en', '{untranslated}', 'global', 'global');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `is_admin`, `password`, `email`, `deleted`, `name`) VALUES
(1, 1, '$2y$10$vTje.ndUFKHyuotY99iYkO.2aHJUgOsy2x0RMXP1UmrTe6CQsKbtm', 'demo@example.com', 0, 'Demo User'),
(2, 0, 'qwerty', 'king@king.ee', 0, 'Kong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`translation_id`),
  ADD UNIQUE KEY `language_phrase_controller_action_index` (`language`,`phrase`,`controller`,`action`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `translation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`),
  ADD CONSTRAINT `post_comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;