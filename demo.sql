-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 01:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image_title` varchar(50) NOT NULL,
  `image_description` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image_title`, `image_description`, `image_name`) VALUES
(1, 'Bubble image 1', 'Bubble Fun', 'http://bubble-entertainment.com/wp-content/uploads/2017/05/300x225xIMG_1554-300x225.jpg.pagespeed.ic.8rsIJzV3VT.webp'),
(2, 'Bubble image 2', 'Bubble Fun', 'http://bubble-entertainment.com/wp-content/uploads/2017/05/300x225xIMG_2083-2-300x225.jpg.pagespeed.ic.uIbmyr_qu5.webp'),
(3, 'Bubble image 3', 'Bubble Fun', 'http://bubble-entertainment.com/wp-content/uploads/2017/05/300x225xIMG_1158-300x225.jpg.pagespeed.ic.dkDdTqdp8-.webp'),
(4, 'Bubble image 4', 'Bubble Fun', 'http://bubble-entertainment.com/wp-content/uploads/2019/06/300x300x300x300xIMG_4571-300x300.jpg,Mic.XznKaXwoND.jpg.pagespeed.ic.vFUTBRezIU.webp'),
(5, 'Bubble image 5', 'Bubble Fun', 'http://bubble-entertainment.com/wp-content/uploads/2017/09/300x225xIMG_1227-300x225.jpg.pagespeed.ic.zvoFu6RsIF.webp');

-- --------------------------------------------------------

--
-- Table structure for table `generalreviews`
--

CREATE TABLE `generalreviews` (
  `id` int(11) NOT NULL,
  `r5` int(11) NOT NULL,
  `r4` int(11) NOT NULL,
  `r3` int(11) NOT NULL,
  `r2` int(11) NOT NULL,
  `r1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generalreviews`
--

INSERT INTO `generalreviews` (`id`, `r5`, `r4`, `r3`, `r2`, `r1`) VALUES
(1, 254, 50, 25, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quoteform`
--

CREATE TABLE `quoteform` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `date` date NOT NULL,
  `eventtype` varchar(50) NOT NULL,
  `budget` int(11) NOT NULL,
  `services` varchar(250) NOT NULL,
  `optionals` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL,
  `quote` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `paidfor` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quoteform`
--

INSERT INTO `quoteform` (`id`, `fname`, `lname`, `email`, `phone`, `date`, `eventtype`, `budget`, `services`, `optionals`, `message`, `quote`, `created_at`, `paidfor`) VALUES
(50, 'Anna', 'Maria', 'mari@mail.com', 1234568790, '2020-11-13', 'intimate', 1000, 'Bubbles', 'PersonalizedGreeting', '', 165, '2020-11-10 20:00:03', 0),
(52, 'Anna', 'Maria', 'mari@mail.com', 123456890, '2020-11-21', 'large', 5000, 'Contorsion,Music', 'PersonalizedGreeting', '', 325, '2020-11-10 20:02:03', 0),
(54, 'Anna', 'M', 'mari@mail.com', 13456790, '2020-11-25', 'intimate', 800, 'Bubbles,Contorsion,Magic', 'PersonalizedGreeting', '', 185, '2020-11-10 20:25:45', 1),
(55, 'Sarah', 'S', 'sara@mail.com', 123465897, '2020-11-28', 'intimate', 500, 'Bubbles', 'PersonalizedGreeting', '', 165, '2020-11-10 20:46:25', 0),
(56, 'Anna', 'Pallas', 'asdfsd', 12345678, '2020-11-26', 'intimate', 5000, 'Bubbles', 'PersonalizedGreeting', '', 165, '2020-11-12 10:06:13', 0),
(67, 'Maria', 'Anna', 'mari@mail.com', 13546790, '2020-11-15', 'public', 800, 'Bubbles,Contorsion', 'PersonalizedGreeting', '', 400, '2020-11-12 11:27:11', 0),
(68, 'Clara', 'C', 'clara@mail.com', 123467980, '2020-11-14', 'intimate', 5000, 'Magic', 'MC', '', 565, '2020-11-12 13:15:20', 0),
(71, 'Anna', 'Tomas', 'pallas.mtl@gmail.com', 1234657890, '2020-11-18', 'intimate', 500, 'Bubbles,Contorsion', 'KidsSpecialPackage,MC', 'Nothing to add. ', 1075, '2020-11-12 13:37:06', 0),
(73, 'Mari', 'Costa', 'mari@mail.com', 156489789, '2020-11-02', 'intimate', 900, 'Bubbles,Magic', 'PersonalizedGreeting', '', 175, '2020-11-19 15:26:34', 0),
(75, 'Pallas', 'Ent', 'pallas.mtl@gmail.com', 456789021, '1970-01-01', 'public', 9000, 'Bubbles,Magic', 'KidsSpecialPackage', '', 800, '2020-11-19 15:50:59', 0),
(76, 'Pallas ', 'Ent', 'pallas.mtl@gmail.com', 134567890, '2020-12-17', 'public', 9000, 'Bubbles,Contorsion,Magic', 'KidsSpecialPackage', '', 840, '2020-11-19 15:54:49', 0),
(77, 'Pallas', 'Ent', 'pallas.mtl@gmail.com', 1234567980, '2020-12-31', 'public', 850, 'Bubbles,Contorsion,Magic', 'PersonalizedGreeting,MC', '', 940, '2020-11-19 16:39:08', 0),
(78, 'Luka', 'Luka', 'pallas.mtl@gmail.com', 1234567890, '2020-11-30', 'public', 800, 'Bubbles,Contorsion', 'PersonalizedGreeting,KidsSpecialPackage', '', 900, '2020-11-29 09:30:02', 0),
(79, 'Luka', 'Luka', 'pallas.mtl@gmail.com', 123456789, '2020-11-20', 'intimate', 500, 'Bubbles', 'PersonalizedGreeting', '', 165, '2020-11-30 15:09:50', 0),
(80, 'Luka', 'Luka', 'pallas.mtl@gmail.com', 13246897, '2020-11-19', 'intimate', 500, 'Bubbles', 'PersonalizedGreeting', '', 155, '2020-11-30 15:26:37', 0),
(81, 'Pallas', 'Ent', 'pallas.mtl@gmail.com', 1234567890, '2020-12-19', 'public', 9000, 'Bubbles,Contorsion', 'PersonalizedGreeting,KidsSpecialPackage', '', 890, '2020-12-02 16:34:09', 0),
(82, 'Pallas', 'P', 'pallas.mtl@gmail.com', 12345679, '2020-12-25', 'public', 900, 'Bubbles,Music', 'PersonalizedGreeting', '', 390, '2020-12-02 17:06:18', 0),
(83, 'P', 'P', 'pallas.mtl@gmail.com', 123456897, '2020-12-12', 'intimate', 5000, 'Bubbles', 'PersonalizedGreeting', '', 140, '2020-12-05 12:14:25', 0),
(84, 'P', 'P', 'pallas.mtl@gmail.com', 123456789, '2020-12-11', 'intimate', 500, 'Bubbles', 'PersonalizedGreeting', '', 140, '2020-12-05 14:30:19', 0),
(85, 'L', 'L', 'pallas.mtl@gmail.com', 132456789, '2020-12-18', 'intimate', 500, 'Bubbles', 'PersonalizedGreeting', '', 149, '2020-12-05 14:52:09', 1),
(86, 'L', 'L', 'pallas.mtl@gmail.com', 123456789, '2020-12-24', 'intimate', 500, 'Contorsion,Magic', 'PersonalizedGreeting', '', 158, '2020-12-05 15:12:14', 1),
(87, 'L', 'L', 'pallas.mtl@gmail.com', 13456, '2020-12-26', 'intimate', 500, 'Bubbles', 'PersonalizedGreeting', '', 140, '2020-12-05 16:52:57', 1),
(88, 'L', 'L', 'pallas.mtl@gmail.com', 12345, '2020-12-30', 'public', 800, 'Music', 'MC', '', 750, '2020-12-05 17:43:03', 0),
(89, 'L', 'L', 'pallas.mtl@gmail.com', 13456464, '2020-12-16', 'public', 8000, 'Bubbles,Music', 'KidsSpecialPackage', '', 711, '2020-12-05 20:41:35', 1),
(90, 'L', 'L', 'pallas.mtl@gmail.com', 1234567890, '2020-12-22', 'public', 8000, 'Bubbles,Magic', 'KidsSpecialPackage', '', 790, '2020-12-06 13:04:29', 0),
(91, 'L', 'L', 'pallas.user@gmail.com', 12345789, '2020-12-20', 'public', 800, 'Bubbles,Contorsion', 'PersonalizedGreeting', '', 390, '2020-12-06 13:37:44', 0),
(92, 'L', 'L', 'pallas.mtl@gmail.com', 1234567890, '2020-12-14', 'large', 9000, 'Contorsion,Magic', 'KidsSpecialPackage', '', 644, '2020-12-07 07:24:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userreview` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `fname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `email`, `userreview`, `rating`, `created_at`, `fname`) VALUES
(7, 'mari@mail.com', 'Amazing! Enjoyed every minute of their show. ', 5, '2020-11-14 15:31:05', 'Maria'),
(8, 'pallas.mtl@gmail.com', 'Loved it.', 5, '2020-11-17 12:41:18', 'Pallas'),
(11, 'pallas.mtl@gmail.com', 'Amazing performers, great services, really friendly people. Made my corporate event a lot more enjoyable!', 5, '2020-12-02 16:36:20', 'Pallas'),
(12, 'pallas.mtl@gmail.com', 'Loved their work! My little brother was fascinated by the bubble art. Definitely booking again. ', 5, '2020-12-02 16:41:27', 'Pallas'),
(13, 'pallas.mtl@gmail.com', 'Loved it! Incredible!', 5, '2020-12-05 10:24:49', 'Pallas'),
(14, 'pallas.mtl@gmail.com', 'Loved it.', 5, '2020-12-06 13:06:12', 'Pallas'),
(15, 'pallas.user@gmail.com', 'Loved it!', 5, '2020-12-06 13:40:06', 'Anna');

-- --------------------------------------------------------

--
-- Table structure for table `ticketsale`
--

CREATE TABLE `ticketsale` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `streetaddress` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `paymenttype` varchar(50) NOT NULL,
  `cardnumber` int(16) NOT NULL,
  `cardholder` varchar(50) NOT NULL,
  `expirydate` text NOT NULL,
  `CVV` int(3) NOT NULL,
  `datebooked` date NOT NULL,
  `ticketquantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticketsale`
--

INSERT INTO `ticketsale` (`id`, `fname`, `lname`, `email`, `country`, `streetaddress`, `city`, `zip`, `paymenttype`, `cardnumber`, `cardholder`, `expirydate`, `CVV`, `datebooked`, `ticketquantity`) VALUES
(0, 'P', 'P', 'pallas.mtl@gmail.com', 'Argentina', '12345', 'mtl', '456789', 'credit card', 2147483647, 'Name', '2020-12-25', 123, '2020-12-19', 1),
(0, 'L', 'L', 'pallas.mtl@gmail.com', 'Argentina', '123456', 'mtl', 'aaaaaa', 'credit card', 123456789, 'aaaa', '2020-12-24', 123, '2020-12-19', 1),
(0, 'L', 'L', 'pallas.mtl@gmail.com', 'Argentina', '132', 'mtl', 'aaaa-aaaa', 'credit card', 13, 'something', '2020-12-26', 123, '2020-12-19', 1),
(0, 'L', 'L', 'pallas.mtl@gmail.com', 'Argentina', 'sad', 'asd', 'asd', 'credit card', 123, 'asd', '2021-01-01', 123, '2020-12-19', 2),
(0, 'L', 'L', 'pallas.mtl@gmail.com', 'Argentina', 'sad', 'asd', '456', 'credit card', 123, 'asd', '2021-01-02', 123, '2020-12-25', 1),
(0, 'L', 'L', 'pallas.mtl@gmail.com', 'Argentina', '13 st', 'mtl', 'aaaa-aaaa', 'credit card', 2147483647, 'something', '2020-12-26', 123, '2020-12-31', 6),
(0, 'L', 'L', 'pallas.mtl@gmail.com', 'Other', '123', 'asd', 'asd', 'credit card', 123113112, 'asd', '2020-12-26', 123, '2020-12-31', 4),
(0, 'L', 'L', 'pallas.mtl@gmail.com', 'Argentina', '123', 'mtl', 'aaaa-aaaa', 'credit card', 0, 'Pallas', '2020-12-26', 123, '2020-12-19', 3),
(0, 'L', 'L', 'pallas.user@gmail.com', 'Argentina', '123', 'mtl', 'aaaa-aaa', 'credit card', 0, 'L', '2020-12-26', 123, '2020-12-19', 2),
(0, 'L', 'L', 'pallas.mtl@gmail.com', 'Argentina', '123 st', 'mtl', 'AAAA-AAAA', 'credit card', 0, 'Luka', '2020-12-19', 123, '2020-12-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming events`
--

CREATE TABLE `upcoming events` (
  `EventDate` date NOT NULL,
  `EventLocation` text NOT NULL,
  `EventPrice` int(11) NOT NULL,
  `EntertainmentType` text NOT NULL,
  `DiscountedEvent` text NOT NULL DEFAULT 'no',
  `email` varchar(50) NOT NULL,
  `services` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upcoming events`
--

INSERT INTO `upcoming events` (`EventDate`, `EventLocation`, `EventPrice`, `EntertainmentType`, `DiscountedEvent`, `email`, `services`) VALUES
('2020-12-19', '7141 Sherbrooke St West', 75, 'Bubble Showcase', 'no', 'pallas.mtl@gmail.com', 'Bubbles'),
('2020-12-22', 'Concordia University', 65, 'Circus Showcase #4', 'no', 'pallas.mtl@gmail.com', 'Bubbles,Magic'),
('2020-12-25', 'Concordia University', 99, 'Circus Showcase #2', 'yes', 'pallas.mtl@gmail.com', 'Bubbles'),
('2020-12-30', 'Concordia University', 55, 'Musical Performance', 'yes', 'pallas.mtl@gmail.com', ''),
('2020-12-31', 'Concordia University', 89, 'Circus Showcase #3', 'yes', 'pallas.mtl@gmail.com', 'Bubbles,Contorsion,Magic');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fname`, `lname`, `created_at`) VALUES
(6, 'luka@mail.com', '$2y$10$jZmQJvpxkvtMMSMnHs4fqOLwafgEbeUaPre8r86WvrYiCaND5w6X.', 'Luka', 'Costa', '2020-11-03 14:46:23'),
(7, 'mleigh@mail.com', '$2y$10$qgkbwqHndmdE1obvduRoo.edBVFtsv1FAGcaNZza1OV/ZBw2WrjiC', 'Mary', 'Leigh', '2020-11-04 17:50:26'),
(8, 'mari@mail.com', '$2y$10$1epc2Z9ikSJxoHeXYWcjbe4hXcjgQlzxb44CQIq/.GyfaZd.37.Q6', 'Maria', 'C', '2020-11-07 10:11:49'),
(9, 'anna@mail.com', '$2y$10$AobkmDEt.sEZRBGW4hHV4eSuLHRUDC1yjtOvdiXh5sZ1ra.6tFKmy', 'Anna', 'Clara', '2020-11-10 07:45:43'),
(10, 'john@mail.com', '$2y$10$nI4S16O3Loo4J2X5MngBWuPqbNivYr/Z8QG6kqalPM4opWP3nJDKW', 'John', 'Lucas', '2020-11-10 09:09:23'),
(12, 'pallas.mtl@gmail.com', '$2y$10$9gcSdch7Ks16UkY4AwLr8uHU9paohFXBkxyGLFNNcKEtAzZsPd4Ea', 'Pallas', 'Ent', '2020-11-12 13:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `videogallery`
--

CREATE TABLE `videogallery` (
  `id` int(11) NOT NULL,
  `video_title` varchar(50) NOT NULL,
  `video_description` varchar(255) NOT NULL,
  `video_source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videogallery`
--

INSERT INTO `videogallery` (`id`, `video_title`, `video_description`, `video_source`) VALUES
(1, 'Video 1', 'Make your event', 'https://www.youtube.com/embed/5G8vX9OVbK8'),
(2, 'Video 2', 'Event Cityt Christmas', 'https://www.youtube.com/embed/804uNConaDg'),
(3, 'Video 3', 'Giant Soap Bubbles', 'https://www.youtube.com/embed/KvBlZENkF5E');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`image_name`);

--
-- Indexes for table `generalreviews`
--
ALTER TABLE `generalreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quoteform`
--
ALTER TABLE `quoteform`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`date`) USING BTREE;

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming events`
--
ALTER TABLE `upcoming events`
  ADD UNIQUE KEY `date` (`EventDate`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`email`);

--
-- Indexes for table `videogallery`
--
ALTER TABLE `videogallery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `video` (`video_source`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `generalreviews`
--
ALTER TABLE `generalreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `quoteform`
--
ALTER TABLE `quoteform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `videogallery`
--
ALTER TABLE `videogallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
