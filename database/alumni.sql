-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 12:01 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@kccemsr.edu.in', '$2y$13$biI9lk.DpDqRsiSZSUCRlukGcnI.a62QwrmLzMIwcUwenoMg/YHqC');

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `title` int(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `stipend` int(11) NOT NULL,
  `work_type` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `venue` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `day` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `organize_name` varchar(256) NOT NULL,
  `organize_contact` bigint(11) NOT NULL,
  `is_publish` int(11) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `description`, `venue`, `state`, `city`, `day`, `month`, `year`, `organize_name`, `organize_contact`, `is_publish`, `date_posted`) VALUES
(1, 'Reflexionz 2021', 'REFLEXIONZ IS ALL ABOUT REFLECTING OUR TALENTS THROUGH VARIOUS CULTURAL EVENTS ON THE STAGE PERFORMANCES THAT DEPICT THE PROPER COMBINATION OF ZEAL AND TALENT THAT EVERY YOUTH POSSESSES. IT PROVIDES A PLATFORM TO EACH AND EVERY STUDENT ACROSS MUMBAI & THANE (INTER-COLLEGIATE) WHO WANTS TO SHOW CASE THEIR EXCELLENCE IN EVERY FIELD APART FROM THE REGULAR CURRICULUM. HENCE IT IS AN OPPORTUNITY FOR EVERY STUDENT TO REFLECT THE TALENTS. LET US JOIN TOGETHER TO MAKE THIS A HUGE SUCCESS!', 'Google Meet', 'Maharashtra', 'Thane', 6, 'may', 2021, 'Sahil Pulikal', 7977237459, 1, '2021-05-11 19:26:59'),
(2, 'XZIBIT 2021', 'XZIBIT 2021 is a national level project competition organized by KCCEMSR', 'Google Meet', 'Maharashtra', 'Thane', 1, 'may', 2021, 'Sahil Mirashi', 7977237459, 1, '2021-05-11 19:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE `group_chat` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`id`, `message`, `name`, `date`) VALUES
(6, 'hii', 'sahilpulikal@gmail.com', '2021-05-11 15:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `is_publish` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `is_publish`, `date`) VALUES
(1, '\"Best Engineering College in Thane District \" Award 2019 by EICON', '\"Best Engineering College in Thane District \" Award 2019 by EICON', 1, '2021-05-11 19:42:48'),
(2, 'Achieved 2nd Position in National Entrepreneurship Challenge 2017, An initiative by IIT Bombay.', 'Achieved 2nd Position in National Entrepreneurship Challenge 2017, An initiative by IIT Bombay.', 1, '2021-05-11 19:43:09'),
(3, 'Awarded \"(EICON) Education Icon of the Year 2019-20\" for Excellence in Best Engineering College in Thane District', 'Awarded \"(EICON) Education Icon of the Year 2019-20\" for Excellence in Best Engineering College in Thane District', 1, '2021-05-11 19:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `uid` int(11) NOT NULL,
  `degree` varchar(110) NOT NULL,
  `stream` varchar(110) NOT NULL,
  `from_date` int(11) NOT NULL,
  `to_date` int(11) NOT NULL,
  `current` varchar(110) NOT NULL,
  `job` text NOT NULL,
  `verify` int(11) NOT NULL,
  `date_register` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `mobile`, `email`, `password`, `uid`, `degree`, `stream`, `from_date`, `to_date`, `current`, `job`, `verify`, `date_register`) VALUES
(2, 'Sahil', 'Mirashi', 7045841799, 'sahilmirashi7777@gmail.com', '$2y$13$9/uFPF/wmst3AXsYpiyroepI/.Vpv.24rLl3VYLI8U4uATt.kpiDm', 27, 'BE', 'IT', 2018, 2021, 'Student', 'KCCEMSR', 1, '2021-05-11 21:23:12'),
(3, 'Haresh', 'Lad', 9894561651, 'ladharesh@gmail.com', '$2y$13$7w3cM0C8PM3Gfn9GKe2kHu71rq8hf1eiPO94nn0vuti..o3lgFfOS', 25, 'BE', 'IT', 2017, 2021, 'Student', 'KCCEMSR', 1, '2021-05-11 21:19:34'),
(4, 'Siddesh', 'Kotian', 9876085471, 'siddeshkotian@gmail.com', '$2y$13$E0YWDcEQ7OhAo1O6/vJJ2Ofhgv9aRo.U8Q0SFxdAQTw9q9d1i86OG', 15, 'BE', 'Comps', 2014, 2018, 'Service/Job', 'Google', 1, '2021-05-11 19:49:27'),
(5, 'Amit', 'Shinde', 9876095456, 'shindeamit@gmail.com', '$2y$13$drsBtp6e06NPurwWFKdHTu6Ve/pYJCz72II20iVA834HG6d7f4onu', 52, 'BE', 'Extc', 2017, 2021, 'Service/Job', 'Microsoft', 1, '2021-05-11 19:51:23'),
(8, 'Sahil', 'Pulikal', 7977237459, 'sahilpulikal@gmail.com', '$2y$13$Oib1Qf96g6nnIy11YryA.uv1o2rzpfESBEdby8Zx/v4G7O57mzHMm', 26, 'BE', 'IT', 2017, 2021, 'Student', 'KCCEMSR', 1, '2021-05-11 15:10:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `group_chat`
--
ALTER TABLE `group_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
