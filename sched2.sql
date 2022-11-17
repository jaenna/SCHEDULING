-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220527.6201c7f2ba
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 03:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sched`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(1, 'Grade 11 ABM(Accountancy, Business and Management)'),
(2, 'Grade 11 HUMSS(Humanities and Social Sciences)'),
(3, 'Grade 11 ICT(Information & Communication Technologies)'),
(4, 'Grade 11 STEM(Science, Technology, Engineering and Mathematics'),
(5, 'Grade 12 ABM(Accountancy, Business and Management)'),
(6, 'Grade 12 HUMSS(Humanities and Social Sciences)'),
(7, 'Grade 12 ICT(Information and Communication Technologies)'),
(8, 'Grade 12 STEM(Science, Technology, Engineering and Mathematics)'),
(9, '1st Year ACT(Associate in Computer Technology)'),
(10, '1st Year BSBA(Bachelor of Science in Business Administration)'),
(11, '1st Year BSIT(Bachelor of Science in Information Technology)'),
(12, '1st Year CPE(Bachelor of Science in Computer Engineering)'),
(13, '2nd Year ACT(Associate in Computer Technology)'),
(14, '2nd Year BSBA(Bachelor of Science in Business Administration)'),
(15, '2nd Year BSIT(Bachelor of Science in Information Technology)'),
(16, '2nd Year CPE(Bachelor of Science in Computer Engineering)'),
(17, '3rd Year BSBA(Bachelor of Science in Business Administration)'),
(18, '3rd Year BSIT(Bachelor of Science in Information Technology)'),
(19, '3rd Year CPE(Bachelor of Science in Computer Engineering)'),
(20, '4th Year BSBA(Bachelor of Science in Business Administration)'),
(21, '4th Year BSIT(Bachelor of Science in Information Technology)'),
(22, '4th Year CPE(Bachelor of Science in Computer Engineering)'),
(23, '5th Year CPE(Bachelor of Science in Computer Engineering)');

-- --------------------------------------------------------

--
-- Table structure for table `sem`
--

CREATE TABLE `sem` (
  `sem_id` int(11) NOT NULL,
  `sem_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sem`
--

INSERT INTO `sem` (`sem_id`, `sem_name`) VALUES
(1, '1ST SEMESTER'),
(2, '2ND SEMESTER');

-- --------------------------------------------------------

--
-- Table structure for table `student_schedule`
--

CREATE TABLE `student_schedule` (
  `ss_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `ss_mon` int(11) NOT NULL,
  `ss_tue` int(11) NOT NULL,
  `ss_wed` int(11) NOT NULL,
  `ss_thu` int(11) NOT NULL,
  `ss_fri` int(11) NOT NULL,
  `ss_sat` int(11) NOT NULL,
  `ss_room_no` int(11) NOT NULL,
  `ss_date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `s_time_title` varchar(100) NOT NULL,
  `s_day` varchar(11) NOT NULL,
  `s_time_ampm` int(11) NOT NULL,
  `SubCode` varchar(15) NOT NULL,
  `SubName` varchar(70) NOT NULL,
  `units` int(11) NOT NULL,
  `room` varchar(15) NOT NULL,
  `olc` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `s_time_title`, `s_day`, `s_time_ampm`, `SubCode`, `SubName`, `units`, `room`, `olc`, `course_id`, `sem_id`) VALUES
(1, '1', 'Monday', 1, 'ELSC 2111', 'Earth and Life Science', 3, 'Room1', 'S’JARABA', 1, 1),
(2, '5', 'Monday', 2, 'PHIL 2121', 'Philosophy\r\n', 3, 'Room1', ' S’DIMAUNAHAN', 1, 1),
(3, '2', 'Monday', 1, 'EAPP 2111', 'English for Academic Purposes\r\n', 3, 'Room1', 'M’ROMERO', 1, 1),
(4, '3', 'Monday', 1, 'ENGL 2111', 'World Literature I\r\n', 3, 'Room1', 'M’OBERO', 1, 1),
(5, '6', 'Monday', 2, 'UCSP 2111', 'Understanding Culture Society and Politics\r\n', 3, 'Room1', 'M’ROMERO', 1, 1),
(10, '7', 'Monday', 2, 'GMAT 2111', 'General Math\r\n', 3, 'Room1', 'S’BAUTISTA', 1, 1),
(44, '5', 'Monday', 2, 'RSCH 2111', 'Research', 3, 'Room1', 'M’ROMERO', 1, 2),
(45, '6', 'Monday', 2, 'OAM 2122', 'Organization And Management\r\n', 3, 'Room1', 'M’NINA', 1, 2),
(46, '1', 'Monday', 1, 'FABM 2121', 'Fundamentals of Accountancy and Business Management', 2, 'Room1', 'M’GUEVARRA', 1, 2),
(47, '2', 'Monday', 1, 'STAT 2112', 'Statistics and Probability\r\n', 3, 'Room1', 'S’BAUTISTA', 1, 2),
(48, '3', 'Monday', 1, 'BMAT 2112', 'Business Math\r\n', 2, 'Room1', 'S’BAUTISTA', 1, 2),
(49, '1', 'Monday', 1, ' ENGL 2111', 'World Literature I\r\n', 2, 'Room1', ' M’OBERO', 2, 1),
(50, '2', 'Monday', 1, ' UCSP 2111', 'Understanding Culture Society and Politics', 3, 'Room1', ' M’ROMERO', 2, 1),
(51, '3', 'Monday', 1, ' HUMSS 2111', 'World Religion\r\n', 3, 'Room1', 'M’ROMERO', 2, 1),
(52, '5', 'Monday', 2, ' PEDH 2111', 'Physical Education and Health\r\n', 3, 'Room1', ' M’MAGSINO', 2, 1),
(53, '6', 'Monday', 2, ' ELSC 2111', 'Earth and Life Science\r\n', 3, 'Room1', 'S’JARABA', 2, 1),
(54, '', '', 0, ' ENGL 2111', 'World Literature I\r\n', 3, 'RM2', ' M’OBERO', 2, 1),
(55, '', '', 0, ' HUMSS 2111', 'World Religion\r\n', 3, 'RM2', 'M’ROMERO', 2, 1),
(56, '7', 'Monday', 2, ' GMAT 2111', 'General Math\r\n', 3, 'Room1', ' S’BAUTISTA', 2, 1),
(57, '5', 'Monday', 2, ' RSCH 2111', 'Research', 3, 'Room1', 'M’ROMERO', 2, 2),
(58, '1', 'Monday', 1, ' HUMSS 2124', 'Philippine Politics and Governance', 3, 'Room1', 'M’RUEDA', 2, 2),
(59, '2', 'Monday', 1, ' HUMSS 2125', 'Trends, Networks and Critical Thinking in the 21st Century ', 3, 'Room1', ' M’ROMERO', 2, 2),
(60, '', '', 0, ' HUMSS 2124', 'Philippine Politics and Governance', 3, 'RM1', ' M’RUEDA', 2, 2),
(61, '', '', 0, ' HUMSS 2125', 'Trends, Networks and Critical Thinking in the 21st Century', 3, 'RM1', ' M’ROMERO', 2, 2),
(62, '3', 'Monday', 1, ' HUMSS 2112', 'Disciplines And Ideas in The Social Science', 3, 'Room1', ' M’ROMERO', 2, 2),
(63, '', '', 0, ' HUMSS 2112', 'Disciplines And Ideas in The Social Science', 3, 'RM1', ' M’ROMERO', 2, 2),
(64, '4', 'Monday', 1, ' STAT 2112', 'Statistics and Probability\r\n', 3, 'Room1', ' S’BAUTISTA', 2, 2),
(65, '', '', 1, ' PHIL 2121', 'Philosophy', 3, 'RM1', ' S’DIMAUNAHAN', 3, 1),
(66, '', '', 1, 'UCSP 2111', 'Understanding Culture Society and Politics', 3, 'RM1', 'M\' ROMERO', 3, 1),
(67, '', '', 1, 'ENGL 2111', 'World Literature I\r\n', 3, 'RM1', 'M\'OBERO', 3, 1),
(69, '', '', 1, 'ELSC 2111', 'Earth and Life Science', 3, 'RM1', 'S\'JARABA', 3, 1),
(70, '', '', 1, 'GMAT 2111', 'General Math', 3, 'RM1', 'S\'BAUTISTA', 3, 1),
(71, '', '', 1, 'ICT 2112', 'Empowerment Technologies', 3, 'RM1', 'S\'SIMEON', 3, 1),
(72, '', '', 0, 'ENG 2121', 'English for Academic Purposes', 3, 'RM1', 'M\'OBERO', 3, 2),
(73, '', '', 0, 'PROG 3111', 'Programming Java NCT 3', 3, 'RM1', 'S\'CARLOS', 3, 2),
(74, '', '', 0, ' ENG 2112', 'World Literature II', 3, 'RM1', 'M\'OBERO', 3, 2),
(75, '', '', 0, 'RSCH 2111', 'Research', 3, 'RM1', 'M\'ROMERO', 3, 2),
(76, '', '', 0, 'STAT 2112', 'Statistics and Probability', 3, 'RM1', 'S\'BAUTISTA', 3, 2),
(77, '', '', 0, 'ESCI 2111', 'EARTH AND SCIENCE', 3, 'RM1', 'S’JARABA', 4, 1),
(78, '', '', 0, 'EAPP 2111', 'English For Academic Purposes Program', 3, 'RM1', 'M\' ROMERO', 4, 1),
(79, '', '', 0, 'GMAT 2111', 'General Math', 3, 'RM1', 'S\'BAUTISTA', 4, 1),
(80, '', '', 0, 'ICT 2112', 'Empowerment Technologies', 3, 'RM1', 'S\'SIMEON', 4, 1),
(81, '', '', 0, ' PREC 2111', 'PRECALCULUS', 3, 'RM1', 'S\'BAUTISTA', 4, 1),
(82, '', '', 0, 'GBIO 2121', 'General Biology\r\n', 3, 'RM1', 'M\'NAVARRO', 4, 2),
(83, '', '', 0, ' CHEM 2112', 'General Chemistry', 3, 'RM1', 'M\'NAVARRO', 4, 2),
(84, '', '', 0, ' DIRR 2112', 'Disaster Risk And Readiness', 3, 'RM1', 'M\'NAVARRO', 4, 2),
(85, '', '', 0, 'RSCH 2111', 'Research', 3, 'RM1', 'M\'ROMERO', 4, 2),
(86, '', '', 0, 'STAT 2112', 'Statistics and Probability\r\n', 3, 'RM1', 'S\'BAUTISTA', 4, 2),
(87, '', '', 1, ' MEIL 2112', 'Media and information literacy', 3, 'RM1', 'M\'OBERO', 5, 1),
(88, '', '', 2, 'PDEV 2111', 'Personal Development\r\n', 3, 'RM1', 'S\'DIMAUNAHAN', 5, 1),
(89, '', '', 1, 'PRIM 2121', 'Principle Of Marketing\r\n', 3, 'RM1', 'S\'VALLES', 5, 1),
(90, '', '', 1, ' BFIN  2121', 'Banking and Finance\r\n', 3, 'RM1', 'S\'VALLES', 5, 1),
(91, '', '', 2, ' RSCH 2120', 'Practical Research\r\n', 3, 'RM1', ' M’ROMERO', 5, 1),
(92, '5', 'Monday', 2, ' CPAR 2112', 'Contemporary Arts from The Region', 3, 'Room1', ' S’DIMAUNAHAN', 5, 2),
(93, '1', 'Monday', 1, ' BESR 2122', 'Business Ethics and Social Responsibilities', 3, 'Room1', 'M\'NINA', 5, 2),
(94, '8', 'Monday', 2, ' RSCH 2111', 'Research', 3, 'Room1', 'M\'PAGUIO', 5, 2),
(95, '7', 'Monday', 2, ' ENTR 2122', 'Entrepreneur\r\n', 3, 'Room1', 'S\'VALLES', 5, 2),
(96, '6', 'Monday', 2, ' ECON 2122', 'Econometrics', 3, 'Room1', 'S\'VALLES', 5, 2),
(97, '', '', 0, ' FILI  2111', 'Komunikasyon at Pananaliksik', 3, 'RM1', ' S’DIMAUNAHAN', 6, 1),
(98, '', '', 0, ' MEIL 2112', 'Media and information literacy', 3, 'RM1', 'M\'OBERO', 6, 1),
(99, '', '', 0, ' FILI  2121', 'Pagsulat sa Filipino sa Piling Larangan', 3, 'RM1', 'S\'DIMAUNAHAN', 0, 0),
(100, '', '', 0, ' HUMSS 2122', 'Discipline and Ideas in the Applied Social Science', 3, 'RM1', 'M\'OBERO', 6, 1),
(101, '', '', 0, ' RSCH 2120', 'Practical Research\r\n', 3, 'RM1', ' M’ROMERO', 6, 1),
(102, '', '', 0, ' FILI 2112', 'Pagbasa at Pagsusuri ng Iba\'t ibang teksto tungo sa Pananaliksik', 3, 'RM1', ' S’DIMAUNAHAN', 6, 2),
(103, '', '', 0, ' CPAR 2112', 'Contemporary Arts from The Region', 3, 'RM1', 'S\'DIMAUNAHAN', 6, 2),
(104, '', '', 0, ' HUMSS 2126', 'Community Engagement, Solidarity and Citizenship', 3, 'RM1', ' M’ROMERO', 6, 2),
(105, '', '', 0, ' RSCH 2111', 'Research', 3, 'RM1', 'S\'DIMAUNAHAN', 6, 2),
(106, '', '', 0, ' ENTR 2122', 'Entrepreneur\r\n', 3, 'RM1', 'S\'VALLES', 6, 2),
(107, '', '', 0, ' MEIL 2112', 'Media and information literacy', 3, 'RM1', 'M\'OBERO', 7, 1),
(108, '', '', 0, ' RSCH  RSCH 212', 'Research\r\n', 3, 'RM1', 'M\' ROMERO', 7, 1),
(109, '', '', 0, ' PROG 3112', 'Computer Programming', 3, 'RM1', 'S\'CARLOS', 7, 1),
(110, '', '', 0, ' FILI 2121B', 'Pagsulat sa Filipino sa Piling', 3, 'RM1', 'S\'DIMAUNAHAN', 7, 1),
(111, '', '', 0, ' PDEV 2111', 'Personal Development', 3, 'RM1', 'S\'DIMAUNAHAN', 7, 1),
(112, '', '', 0, ' ICT 2300', 'Work Immersion\r\n', 3, 'RM1', 'M\'OBERO', 7, 2),
(113, '', '', 0, ' CPAR 2112', 'Contemporary Arts from The Region\r\n', 3, 'RM1', 'S\'DIMAUNAHAN', 0, 0),
(114, '', '', 0, ' PROG 3114', 'Programming (Oracle Database) NCIII', 3, 'RM1', 'S\'CARLOS', 7, 2),
(115, '', '', 0, ' RSCH 2111', 'Research', 3, 'RM1', 'S\'SIMEON', 7, 2),
(116, '', '', 0, ' ENTR 2112', 'Entrepreneurship \r\n', 3, 'RM1', 'S\'VALLES', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `timesched`
--

CREATE TABLE `timesched` (
  `id` int(11) NOT NULL,
  `clock` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timesched`
--

INSERT INTO `timesched` (`id`, `clock`) VALUES
(1, '8:00am-9:00am'),
(2, '9:00am-10:00am'),
(3, '10:00am-11:00am'),
(4, '11:00am-12:00nn'),
(5, '1:00pm-2:00pm'),
(6, '2:00pm-3:00pm'),
(7, '3:00pm-4:00pm'),
(8, '4:00pm-5:00pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `sem`
--
ALTER TABLE `sem`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `student_schedule`
--
ALTER TABLE `student_schedule`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `timesched`
--
ALTER TABLE `timesched`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `sem`
--
ALTER TABLE `sem`
  MODIFY `sem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `student_schedule`
--
ALTER TABLE `student_schedule`
  MODIFY `ss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `timesched`
--
ALTER TABLE `timesched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



