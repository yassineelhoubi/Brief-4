-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 04:07 PM
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
-- Database: `gestion_des_apprenants`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `assignmentsID` int(11) NOT NULL,
  `assignmentsClassID` int(11) DEFAULT NULL,
  `assignmentsTitle` tinytext DEFAULT NULL,
  `assignmentsDesc` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`assignmentsID`, `assignmentsClassID`, `assignmentsTitle`, `assignmentsDesc`) VALUES
(1, 1, 'first_assignments', 'aczunziczh zhc hz chz chz ch zhc zjc zhe hz hz chez ch zejh zjecaozjd az daijz da dazddfesfzef'),
(2, 1, 'second-assignments', 'oisdcsd csdj sjv sd vsdfpoze sdoivjsdiv,fdv sdvposkzv sdpsd,sd sdpf, posdfposd posdkfp'),
(3, 2, 'third-assignments', 'oqsdoizdjfoizef zeof zef zef zedozef,e zef,sdsfk,zf zefk,zeofkzpejfer,fz efzoforifjzifnzf '),
(4, 2, 'fourth-assignments', 'iuahzidhad zdoizee, ziefuzof,z zeifjzefizef zefzefzeijfzef zefzefze fzefzeijzeoifzef zeifjzef '),
(5, 3, 'fifth-assignments', 'aoizdjoied zeonzef zeof zefze fzefzofzoej fzeojf zeof zejf zefjozefjzelizef oefjnzefzej zefoze f'),
(6, 3, 'sixth-assignments', 'jgjgjg goijoijer uiehrgjer  erogh oiejrg inerg lierg negneg egie ergpejrg roijerg ergpoerg eprijg ');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `classesID` int(11) NOT NULL,
  `classesName` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`classesID`, `classesName`) VALUES
(1, 'ada_lovelace'),
(2, 'margaret_hamelton'),
(3, 'alan_turing');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentsID` int(11) NOT NULL,
  `studentsClassID` int(11) DEFAULT NULL,
  `studentsFName` varchar(50) DEFAULT NULL,
  `stusentsLName` varchar(50) DEFAULT NULL,
  `studentsAddress` varchar(100) DEFAULT NULL,
  `studentsGender` varchar(50) DEFAULT NULL,
  `studentsBirthday` date DEFAULT NULL,
  `studentsPhone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentsID`, `studentsClassID`, `studentsFName`, `stusentsLName`, `studentsAddress`, `studentsGender`, `studentsBirthday`, `studentsPhone`) VALUES
(5, 1, 'yassine', 'elhoubi', 'addressyassineaddress', 'male', '1997-08-05', 687654323),
(6, 1, 'aymen', 'dara', 'addressaymenadress', 'male', '0000-00-00', 998877665),
(7, 1, 'mohamed', 'idbihi', 'addressidbihiaddres', 'male', '0000-00-00', 976542378),
(8, 2, 'hicham', 'kamouni', 'addresshichamaddress', 'male', '0000-00-00', 182736453),
(9, 2, 'imane', 'rkhis', 'addressimanaddress', 'female', '0000-00-00', 987768855),
(10, 2, 'othman', 'mosataf', 'addressothmanaddress', 'male', '0000-00-00', 897659899),
(11, 3, 'issmail', 'mnifil', 'addressmnifeladdress', 'male', '0000-00-00', 876664433),
(12, 3, 'othman', 'maacha', 'addressmaachaadress', 'male', '0000-00-00', 661778855),
(13, 3, 'moncef', 'elatlassi', 'addressciggyaddress', 'male', '0000-00-00', 787989898);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teachersID` int(11) NOT NULL,
  `teachersClassID` int(11) DEFAULT NULL,
  `teachersFName` varchar(128) DEFAULT NULL,
  `teachersLName` varchar(128) DEFAULT NULL,
  `teachersAddress` varchar(128) DEFAULT NULL,
  `teachersPhone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teachersID`, `teachersClassID`, `teachersFName`, `teachersLName`, `teachersAddress`, `teachersPhone`) VALUES
(2, 1, 'fatimaezzahra', 'essadraoui', 'addressteacheraddress', 676897655),
(3, 2, 'ayoube', 'charef', 'addressayoubadress', 687567799),
(4, 3, 'youness', 'echadini', 'addressyounessaddress', 656667788);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `usersLevel` int(11) DEFAULT NULL,
  `usersEmail` varchar(100) DEFAULT NULL,
  `usersUID` varchar(128) DEFAULT NULL,
  `usersPwd` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `usersLevel`, `usersEmail`, `usersUID`, `usersPwd`) VALUES
(1, 1, 'admin@gmail.com', 'imadmin', '123admin'),
(2, 2, 'first_teacher@gmal.com', 'imteacher1', '1teacher'),
(3, 2, 'second_teacher@gmail.com', 'imteacher2', '2teacher'),
(4, 2, 'third_teacher@gmail.com', 'imteacher3', '3teacher'),
(5, 3, 'first_student@gmail.com', 'imstudent1', '1student'),
(6, 3, 'second_student@gmail.com', 'imstudent2', '2student'),
(7, 3, 'third_student@gmail.com', 'imstudent3', '3student'),
(8, 3, 'fourth_student@gmail.com', 'imstudent4', '4student'),
(9, 3, 'fifth_student@gmail.com', 'imstudent5', '5student'),
(10, 3, 'sixth_student@gmail.com', 'imsyudent6', '6student'),
(11, 3, 'seventh_student@gmail.com', 'imstudent7', '7student'),
(12, 3, 'eighth_student@gmail.com', 'imstudent8', '8student'),
(13, 3, 'ninth_student@gmail.com', 'imstudent9', '9student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`assignmentsID`),
  ADD KEY `assignmentsClassID` (`assignmentsClassID`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classesID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentsID`),
  ADD KEY `studentsClassID` (`studentsClassID`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teachersID`),
  ADD KEY `teachersClassID` (`teachersClassID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `assignmentsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `classesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`assignmentsClassID`) REFERENCES `classes` (`classesID`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`studentsID`) REFERENCES `users` (`usersID`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`studentsClassID`) REFERENCES `classes` (`classesID`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`teachersID`) REFERENCES `users` (`usersID`),
  ADD CONSTRAINT `teachers_ibfk_2` FOREIGN KEY (`teachersClassID`) REFERENCES `classes` (`classesID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
