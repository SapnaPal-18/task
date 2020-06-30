-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 01:58 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enquiries`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` text NOT NULL,
  `comment` longtext NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`first_name`, `last_name`, `email`, `comment`, `datetime`, `id`) VALUES
('Sapna', 'Pal', 'imsapnapal@gmail.com', 'I am interested in this course.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '0000-00-00 00:00:00', 1),
('Rashmi', 'Prajapati', 'ras1330@gmail.com', 'Hi, \r\nPlease send me te brochure for this course. Would like more bout fees structure and duration.\r\n\r\nThanks', '2020-06-07 23:25:14', 2),
('Vikram Pratap', 'Singh', 'vicky@gmail.com', 'Intesrested in this course.\r\nsend me fees structure.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '2020-06-07 23:25:14', 3),
('Sonu', 'Sood', 'sonu.sood@gmail.com', 'i am interested in course', '2020-06-08 08:33:12', 4),
('Suman', 'Pal', 'suman@gmail.com', 'Intesrested in this course. send me fees structure. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2020-06-08 16:08:00', 5),
('Mukesh', 'kumar', 'mks@yahoo.com', 'Intesrested in this course. send me fees structure. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2020-06-08 16:08:00', 6),
('Ruchi', 'Shukla', 'ruchi@rediffmail.com', 'Hi, Please send me te brochure for this course. Would like more bout fees structure and duration. Thanks', '2020-06-08 16:12:41', 7),
('Ruchira', 'Mishra', 'ruchira@rediffmail.com', 'Hello, Please send me te brochure for this course. Would like more bout fees structure and duration. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Thanks', '2020-06-08 16:12:41', 8),
('Nimisha', 'Mishra', 'nimmi@gmail.com', 'I would like to know more about this course. Please send me the details. ', '2020-06-08 16:19:14', 9),
('Aaryan', 'Pratap', 'aaryan@gmail.com', 'Hello,\r\nI am interested in MBA post graduation. Please send me all the details, fees structure, course duration etc. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2020-06-08 16:19:14', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
