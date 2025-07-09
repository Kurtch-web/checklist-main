SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--CREATE DATABASE IF NOT EXISTS `checklist` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
--USE `checklist`;



CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_id` varchar(20) DEFAULT NULL,
  `course_title` varchar(255) NOT NULL,
  `credit_unit_lec` int(11) NOT NULL,
  `credit_unit_lab` int(11) DEFAULT NULL,
  `contact_hours_lec` varchar(50) NOT NULL,
  `contact_hours_lab` varchar(50) DEFAULT NULL,
  `pre_requisite` varchar(255) DEFAULT NULL,
  `grade_year` varchar(50) NOT NULL,
  `academic_year` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `courses` (`id`, `course_id`, `course_title`, `credit_unit_lec`, `credit_unit_lab`, `contact_hours_lec`, `contact_hours_lab`, `pre_requisite`, `grade_year`, `academic_year`, `semester`) VALUES
(1, 'GNED 02', 'ETHICS', 3, 0, '3', '0', '', '1st year', '2022-23', '1st sem'),
(2, 'GNED 05', 'PURPOSIVE COMMUNICATION', 3, 0, '3', '0', '', '1st year', '2022-23', '1st sem'),
(3, 'GNED 11', 'KONTESKTWALISADONG KOMUNIKASYON SA FILIPINO', 3, 0, '3', '0', '', '1st year', '2022-23', '1st sem'),
(4, 'COSC 50', 'DISCRETE STUCTURES I', 3, 0, '3', '0', '', '1st year', '2022-23', '1st sem'),
(5, 'DCIT 21', 'INTRODUCTION TO COMPUTING', 2, 1, '2', '6', '', '1st year', '2022-23', '1st sem'),
(6, 'DCIT 22', 'COMPUTER PROGRAMMING I', 1, 2, '1', '3', '', '1st year', '2022-23', '1st sem'),
(7, 'FITT 1', 'MOVEMENT ENHANCEMENT', 2, 0, '3', '0', '', '1st year', '2022-23', '1st sem'),
(8, 'NSTP 1', 'NATIONAL SERVICE TRAINING PROGRAM', 3, 0, '2', '0', '', '1st year', '2022-23', '1st sem'),
(9, 'CVSU 101', 'INSTUTIONAL ORIENTATION', 1, 0, '1', '0', '', '1st year', '2022-23', '1st sem'),
(10, 'GNED 01', 'Art Appreciation', 3, 0, '3', '0', '', '1st year', '2022-23', '2nd sem'),
(11, 'GNED 03', 'Mathematics in the Modern World', 3, 0, '3', '0', '', '1st year', '2022-23', '2nd sem'),
(12, 'GNED 06', 'Science, Technology and Society', 3, 0, '3', '0', '', '1st year', '2022-23', '2nd sem'),
(13, 'GNED 12', 'Dalumat ng sa Filipino', 3, 0, '3', '0', '', '1st year', '2022-23', '2nd sem'),
(14, 'DCIT 23', 'Computer Programming II', 1, 2, '1', '6', 'DCIT 22', '1st year', '2022-23', '2nd sem'),
(15, 'ITEC 50', 'Web Systems and Technologies', 2, 1, '2', '3', 'DCIT21', '1st year', '2022-23', '2nd sem'),
(16, 'FITT 2', 'FITNESS EXERCISE', 2, 0, '2', '0', 'FITT 1', '1st year', '2022-23', '2nd sem'),
(17, 'NSTP 2', 'National Service Training Program 2', 3, 0, '3', '0', 'NSTP 1', '1st year', '2022-23', '2nd sem'),
(18, 'GNED 04', 'Mga Babasahin Hinggil sa Kasaysayan ng Pilipinas', 3, 3, '', '', '', '2nd year', '2023-24', '1st sem'),
(19, 'MATH 1', 'Analytic Geometry', 3, 3, '', '', 'GNED 03', '2nd year', '2023-24', '1st sem'),
(20, 'COSC 55', 'Discrete Structures II', 3, 3, '', '', 'COSC 50', '2nd year', '2023-24', '1st sem'),
(21, 'COSC 60', 'Digital Logic Design', 2, 2, '1', '3', 'COSC 50, DCIT 23', '2nd year', '2023-24', '1st sem'),
(22, 'DCIT 50', 'Object Oriented Programming', 2, 2, '1', '3', 'DCIT 23', '2nd year', '2023-24', '1st sem'),
(23, 'DCIT 24', 'Information Management', 2, 2, '1', '3', 'DCIT 23', '2nd year', '2023-24', '1st sem'),
(24, 'INSY 50', 'Fundamentals of Information Systems', 3, 3, '', '', 'DCIT 21', '2nd year', '2023-24', '1st sem'),
(25, 'FITT 3', 'Physical Activities towards Health and Fitness 1', 2, 0, '3', '0', 'FITT 2', '2nd year', '2023-24', '1st sem'),
(26, 'GNED 08', 'Understanding the Self', 3, 0, '3', '', NULL, '', '', ''),
(27, 'GNED 14', 'Panitikang Panlipunan', 3, 0, '3', '', NULL, '', '', ''),
(28, 'MATH 2', 'Calculus', 3, 0, '3', '', NULL, '', '', ''),
(29, 'COSC 65', 'Architecture and Organization', 2, 1, '2', '3', NULL, '', '', ''),
(30, 'COSC 70', 'Software Engineering I', 2, 1, '2', '3', NULL, '', '', ''),
(31, 'DCIT 25', 'Data Structures and Algorithms', 2, 1, '2', '3', 'COSC 60', '', '', ''),
(32, 'DCIT 55', 'Advanced Database Management System', 3, 0, '3', '', 'DCIT 50, DCIT 24', '', '', ''),
(33, 'FITT 4', 'Physical Activities towards Health and Fitness 2', 2, 0, '2', '', NULL, '', '', ''),
(34, 'MATH 3', 'Linear Algebra', 3, 0, '3', '', NULL, '', '', ''),
(35, 'COSC 75', 'Software Engineering II', 2, 1, '2', '3', NULL, '', '', ''),
(36, 'COSC 80', 'Operating Systems', 2, 1, '2', '3', NULL, '', '', ''),
(37, 'COSC 85', 'Networks and Communications', 2, 1, '2', '3', NULL, '', '', ''),
(38, 'COSC 101', 'CS Elective 1(Computer Graphics and Visual Computing)', 2, 1, '2', '3', NULL, '', '', ''),
(39, 'DCIT 26', 'Applications Dev\'t and Emerging Tecnologies', 2, 1, '2', '3', 'COSC 60', '', '', ''),
(40, 'DCIT 65', 'Social and Professional issues', 3, 0, '3', '', NULL, '', '', ''),
(41, 'GNED 09', 'Life and Works of Rizal', 3, 0, '3', '', 'GNED 04', '', '', ''),
(42, 'MATH 04', 'Experimental Statistics', 2, 1, '2', '3', 'MATH 2', '', '', ''),
(43, 'COSC 90', 'Design and Analysys of Algorithm', 3, 0, '3', '', 'DCIT 25', '', '', ''),
(44, 'COSC 95', 'Programming Languages', 3, 0, '3', '', 'DCIT 25', '', '', ''),
(45, 'COSC 106', 'CS Elective 2(Introduction to Game Development)', 2, 1, '2', '3', ' MATH 3, COSC 101', '', '', ''),
(46, 'DCIT 60', 'Methods of Research', 3, 0, '3', '', '3rd yr. Standing', '', '', ''),
(47, 'DCIT 85', 'Information Assurance and Security', 3, 0, '3', '', 'DCIT 24', '', '', ''),
(48, 'COSC 199', 'PRACTICUM(240 hours)', 3, 0, '3', '', 'Incoming 4th yr', '', '', ''),
(49, 'ITEC 80', 'Human Computer Interaction', 1, 0, '3', '', 'ITEC 85', '', '', ''),
(50, 'COSC 100', 'Automata THeory and Formal Languages', 3, 0, '3', '', 'COSC 90', '', '', ''),
(51, 'COSC 105', 'Intelligent Systems', 2, 1, '2', '3', 'MATH 4, COSC 55, DCIT 50', '', '', ''),
(52, 'COSC 111', 'CS Elective 3(Internet of Things)', 2, 1, '2', '3', 'COSC 60', '', '', ''),
(53, 'COSC 200A', 'Undergraduate Theis I', 3, 0, '1', '', '4th year Standing', '', '', ''),
(54, 'GNED 07', 'The contemporary World', 3, 0, '3', '', NULL, '', '', ''),
(55, 'COSC 10', 'Gender and Society', 3, 0, '3', '', NULL, '', '', ''),
(56, 'COSC 110', 'Numerical and Symbolic Computation', 2, 1, '2', '3', 'COSC 60', '', '', ''),
(57, 'COSC 200B', 'Undergraduate Theis II', 3, 0, '1', '', 'COSC 200A', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `courses_backup`
--

CREATE TABLE `courses_backup` (
  `id` int(11) NOT NULL,
  `course_id` varchar(20) DEFAULT NULL,
  `course_title` varchar(255) NOT NULL,
  `credit_unit_lec` int(11) NOT NULL,
  `credit_unit_lab` int(11) DEFAULT NULL,
  `contact_hours_lec` varchar(50) NOT NULL,
  `contact_hours_lab` varchar(50) DEFAULT NULL,
  `pre_requisite` varchar(255) DEFAULT NULL,
  `grade_year` varchar(50) NOT NULL,
  `academic_year` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses_backup`
--

INSERT INTO `courses_backup` (`id`, `course_id`, `course_title`, `credit_unit_lec`, `credit_unit_lab`, `contact_hours_lec`, `contact_hours_lab`, `pre_requisite`, `grade_year`, `academic_year`, `semester`) VALUES
(1, 'GNED 02', 'ETHICS', 3, 0, '3', '0', '', '1st year', '2022-23', '1st sem'),
(2, 'GNED 05', 'PURPOSIVE COMMUNICATION', 3, 0, '3', '0', '', '1st year', '2022-23', '1st sem'),
(3, 'gned 11', 'KONTESKTWALISADONG KOMUNIKASYON SA FILIPINO', 3, 0, '3', '0', '', '1st year', '2022-23', '1st sem'),
(4, 'COSC 50', 'DISCRETE STUCTURES I', 3, 0, '3', '0', '', '1st year', '2022-23', '1st sem'),
(5, 'DCIT 21', 'INTRODUCTION TO COMPUTING', 2, 1, '2', '6', '', '1st year', '2022-23', '1st sem'),
(6, 'DCIT 22', 'COMPUTER PROGRAMMING I', 1, 2, '1', '3', '', '1st year', '2022-23', '1st sem'),
(7, 'FITT 1', 'MOVEMENT ENHANCEMENT', 2, 0, '3', '0', '', '1st year', '2022-23', '1st sem'),
(8, 'NSTP 1', 'NATIONAL SERVICE TRAINING PROGRAM', 3, 0, '2', '0', '', '1st year', '2022-23', '1st sem'),
(9, 'CVSU 101', 'INSTUTIONAL ORIENTATION', 1, 0, '1', '0', '', '1st year', '2022-23', '1st sem'),
(10, 'GNED 01', 'Art Appreciation', 3, 0, '3', '0', '', '1st year', '2022-23', '2nd sem'),
(11, 'GNED 03', 'Mathematics in the Modern World', 3, 0, '3', '0', '', '1st year', '2022-23', '2nd sem'),
(12, 'GNED 06', 'Science, Technology and Society', 3, 0, '3', '0', '', '1st year', '2022-23', '2nd sem'),
(13, 'GNED 12', 'Dalumat ng sa Filipino', 3, 0, '3', '0', '', '1st year', '2022-23', '2nd sem'),
(15, 'DCIT 23', 'Computer Programming II', 1, 2, '1', '6', 'DCIT 22', '1st year', '2022-23', '2nd sem'),
(16, 'ITEC 50', 'Web Systems and Technologies', 2, 1, '2', '3', 'DCIT21', '1st year', '2022-23', '2nd sem'),
(17, 'FITT 2', 'FITNESS EXERCISE', 2, 0, '2', '0', 'FITT 1', '1st year', '2022-23', '2nd sem'),
(18, 'NSTP 2', 'National Service Training Program 2', 3, 0, '3', '0', 'NSTP 1', '1st year', '2022-23', '2nd sem'),
(19, 'GNED 04', 'Mga Babasahin Hinggil sa Kasaysayan ng Pilipinas', 3, 3, '', '', '', '2nd year', '2023-24', '1st sem'),
(20, 'MATH 1', 'Analytic Geometry', 3, 3, '', '', 'GNED 03', '2nd year', '2023-24', '1st sem'),
(21, 'COSC 55', 'Discrete Structures II', 3, 3, '', '', 'COSC 50', '2nd year', '2023-24', '1st sem'),
(22, 'COSC 60', 'Digital Logic Design', 2, 2, '1', '3', 'COSC 50, DCIT 23', '2nd year', '2023-24', '1st sem'),
(23, 'DCIT 50', 'Object Oriented Programming', 2, 2, '1', '3', 'DCIT 23', '2nd year', '2023-24', '1st sem'),
(24, 'DCIT 24', 'Information Management', 2, 2, '1', '3', 'DCIT 23', '2nd year', '2023-24', '1st sem'),
(25, 'INSY 50', 'Fundamentals of Information Systems', 3, 3, '', '', 'DCIT 21', '2nd year', '2023-24', '1st sem'),
(26, 'FITT 3', 'Physical Activities towards Health and Fitness 1', 2, 0, '', 'N', '', '2nd year', '2023-24', '1st sem'),
(27, 'GNED 08', 'Understanding the Self', 3, 0, '3', '', NULL, '', '', ''),
(28, 'GNED 14', 'Panitikang Panlipunan', 3, 0, '3', '', NULL, '', '', ''),
(29, 'MATH 2', 'Calculus', 3, 0, '3', '', NULL, '', '', ''),
(30, 'COSC 65', 'Architecture and Organization', 2, 1, '2', '3', NULL, '', '', ''),
(31, 'COSC 70', 'Software Engineering I', 2, 1, '2', '3', NULL, '', '', ''),
(32, 'DCIT 25', 'Data Structures and Algorithms', 2, 1, '2', '3', 'COSC 60', '', '', ''),
(33, 'DCIT 55', 'Advanced Database Management System', 3, 0, '3', '', 'DCIT 50, DCIT 24', '', '', ''),
(34, 'FITT 4', 'Physical Activities towards Health and Fitness 2', 2, 0, '2', '', NULL, '', '', ''),
(35, 'MATH 3', 'Linear Algebra', 3, 0, '3', '', NULL, '', '', ''),
(36, 'COSC 75', 'Software Engineering II', 2, 1, '2', '3', NULL, '', '', ''),
(37, 'COSC 80', 'Operating Systems', 2, 1, '2', '3', NULL, '', '', ''),
(38, 'COSC 85', 'Networks and Communications', 2, 1, '2', '3', NULL, '', '', ''),
(39, 'COSC 101', 'CS Elective 1(Computer Graphics and Visual Computing)', 2, 1, '2', '3', NULL, '', '', ''),
(40, 'DCIT 26', 'Applications Dev\'t and Emerging Tecnologies', 2, 1, '2', '3', 'COSC 60', '', '', ''),
(41, 'DCIT 65', 'Social and Professional issues', 3, 0, '3', '', NULL, '', '', ''),
(42, 'GNED 09', 'Life and Works of Rizal', 3, 0, '3', '', 'GNED 04', '', '', ''),
(43, 'MATH 04', 'Experimental Statistics', 2, 1, '2', '3', 'MATH 2', '', '', ''),
(44, 'COSC 90', 'Design and Analysys of Algorithm', 3, 0, '3', '', 'DCIT 25', '', '', ''),
(45, 'COSC 95', 'Programming Languages', 3, 0, '3', '', 'DCIT 25', '', '', ''),
(46, 'COSC 106', 'CS Elective 2(Introduction to Game Development)', 2, 1, '2', '3', ' MATH 3, COSC 101', '', '', ''),
(47, 'DCIT 60', 'Methods of Research', 3, 0, '3', '', '3rd yr. Standing', '', '', ''),
(48, 'DCIT 85', 'Information Assurance and Security', 3, 0, '3', '', 'DCIT 24', '', '', ''),
(49, 'COSC 199', 'PRACTICUM(240 hours)', 3, 0, '3', '', 'Incoming 4th yr', '', '', ''),
(50, 'ITEC 80', 'Human Computer Interaction', 1, 0, '3', '', 'ITEC 85', '', '', ''),
(51, 'COSC 100', 'Automata THeory and Formal Languages', 3, 0, '3', '', 'COSC 90', '', '', ''),
(52, 'COSC 105', 'Intelligent Systems', 2, 1, '2', '3', 'MATH 4, COSC 55, DCIT 50', '', '', ''),
(53, 'COSC 111', 'CS Elective 3(Internet of Things)', 2, 1, '2', '3', 'COSC 60', '', '', ''),
(54, 'COSC 200A', 'Undergraduate Theis I', 3, 0, '1', '', '4th year Standing', '', '', ''),
(55, 'GNED 07', 'The contemporary World', 3, 0, '3', '', NULL, '', '', ''),
(56, 'COSC 10', 'Gender and Society', 3, 0, '3', '', NULL, '', '', ''),
(57, 'COSC 110', 'Numerical and Symbolic Computation', 2, 1, '2', '3', 'COSC 60', '', '', ''),
(58, 'COSC 200B', 'Undergraduate Theis II', 3, 0, '1', '', 'COSC 200A', '', '', '');



CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` varchar(20) DEFAULT NULL,
  `grade` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `grades` (`id`, `student_id`, `course_id`, `grade`) VALUES
(1, 202211806, 'GNED 02', '1.50'),
(2, 202211806, 'GNED 05', '1.00'),
(3, 202211806, 'GNED 1', '1.00'),
(4, 202211806, 'COSC 50', '1.25'),
(5, 202211806, 'DCIT 21', '2.75'),
(6, 202211806, 'DCIT 22', '1.25'),
(7, 202211806, 'FITT 1', '1.25'),
(8, 202211806, 'NSTP 1', '1.25'),
(9, 202211806, 'CVSU 101', 'S'),
(10, 202211806, 'GNED 01', '1.50'),
(11, 202211806, 'GNED 03', '1.25'),
(12, 202211806, 'GNED 06', '1.75'),
(13, 202211806, 'GNED 12', '1.50'),
(14, 202211806, 'GNED 11', '1.50'),
(15, 202211806, 'DCIT 23', '1.75'),
(16, 202211806, 'ITEC 50', '1.50'),
(17, 202211806, 'FITT 2', '1.75'),
(18, 202211806, 'NSTP 2', '1.25'),
(19, 202211806, 'GNED 04', '1.50'),
(20, 202211806, 'MATH 1', '1.75'),
(21, 202211806, 'COSC 55', '1.75'),
(22, 202211806, 'COSC 60', '1.50'),
(23, 202211806, 'DCIT 50', '1.25'),
(24, 202211806, 'DCIT 24', '1.75'),
(25, 202211806, 'INSY 50', '1.50'),
(26, 202211806, 'FITT 3', '1.50'),
(27, 202211806, 'MATH 2', NULL),
(28, 202211806, 'COSC 65', NULL),
(29, 202211806, 'COSC 70', NULL),
(30, 202211806, 'DCIT 55', NULL),
(31, 202211806, 'DCIT 25', NULL),
(32, 202211806, 'FITT 4', NULL),
(33, 202211806, 'MATH 3', NULL),
(34, 202211806, 'COSC 75', NULL),
(35, 202211806, 'COSC 80', NULL),
(36, 202211806, 'COSC 85', NULL),
(37, 202211806, 'COSC 101', NULL),
(38, 202211806, 'DCIT 26', NULL),
(39, 202211806, 'DCIT 65', NULL),
(40, 202211806, 'GNED 09', NULL),
(41, 202211806, 'MATH 04', NULL),
(42, 202211806, 'COSC 90', NULL),
(43, 202211806, 'COSC 95', NULL),
(44, 202211806, 'COSC 106', NULL),
(45, 202211806, 'DCIT 60', NULL),
(46, 202211806, 'DCIT 85', NULL),
(47, 202211806, 'COSC 199', NULL),
(48, 202211806, 'ITEC 80', NULL),
(49, 202211806, 'COSC 100', NULL),
(50, 202211806, 'COSC 105', NULL),
(51, 202211806, 'COSC 111', NULL),
(52, 202211806, 'COSC 200A', NULL),
(53, 202211806, 'GNED 07', NULL),
(54, 202211806, 'GNED 10', NULL),
(55, 202211806, 'COSC 110', NULL),
(56, 202211806, 'COSC 200B', NULL);


CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `date_of_admission` date DEFAULT NULL,
  `adviser` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `students` (`id`, `student_id`, `name`, `university`, `program`, `address`, `contact_number`, `date_of_admission`, `adviser`) VALUES
(1, 202211806, 'Kurt Chester Manuel', 'Cavite State University Bacoor', 'BSCS', 'Bacoor Cavite', '09692867001', '2024-03-30', 'N/A');



CREATE TABLE `student_enroll` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` varchar(20) DEFAULT NULL,
  `professor` varchar(255) DEFAULT NULL,
  `date_enrolled` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `student_enroll` (`id`, `student_id`, `course_id`, `professor`, `date_enrolled`) VALUES
(1, 202211806, 'GNED 02', 'Jerald Abejeula', '2022-23'),
(2, 202211806, 'GNED 05', 'Raezy Mae Pica', '2022-23'),
(3, 202211806, 'GNED 11', 'Christian S Castillo', '2022-23'),
(4, 202211806, 'COSC 50', 'Jeffrey Santos', '2022-23'),
(5, 202211806, 'DCIT 21', 'Alvina Ramallosa', '2022-23'),
(6, 202211806, 'DCIT 22', 'Jhune Mitra', '2022-23'),
(7, 202211806, 'FITT 1', 'Cherisma Mendoza', '2022-23'),
(8, 202211806, 'NSTP 1', 'Jhune Mitra', '2022-23'),
(9, 202211806, 'CVSU 101', 'Arjon Veluz', '2022-23'),
(10, 202211806, 'GNED 01', 'Richard Lozada', '2022-23'),
(11, 202211806, 'GNED 03', 'James Manozo', '2022-23'),
(12, 202211806, 'GNED 06', 'Paul Montejar', '2022-23'),
(13, 202211806, 'GNED 12', 'Maria Lyn DelaCruz', '2022-23'),
(14, 202211806, 'GNED 11', 'Christian S Castillo', '2022-23'),
(15, 202211806, 'DCIT 23', 'Eduardo Ello', '2022-23'),
(16, 202211806, 'ITEC 50', 'Raymart Gianan', '2022-23'),
(17, 202211806, 'FITT 2', 'Cherisma Mendoza', '2022-23'),
(18, 202211806, 'NSTP 2', 'Steffanie Bato', '2022-23'),
(19, 202211806, 'GNED 04', 'Jesica Sombrano', '2023-24'),
(20, 202211806, 'MATH 1', 'Richard Ongayo', '2023-24'),
(21, 202211806, 'COSC 55', 'Aida Penson', '2023-24'),
(22, 202211806, 'COSC 60', 'James Nati', '2023-24'),
(23, 202211806, 'DCIT 50', 'Edan Belgica', '2023-24'),
(24, 202211806, 'DCIT 24', 'Redem Deguzman', '2023-24'),
(25, 202211806, 'INSY 50', 'Ronald Rosete', '2023-24'),
(26, 202211806, 'FITT 3', 'Romel John Jacinto', '2023-24'),
(27, 202211806, 'MATH 2', NULL, NULL),
(28, 202211806, 'COSC 65', NULL, NULL),
(29, 202211806, 'COSC 70', NULL, NULL),
(30, 202211806, 'DCIT 55', NULL, NULL),
(31, 202211806, 'DCIT 25', NULL, NULL),
(32, 202211806, 'FITT 4', NULL, NULL),
(33, 202211806, 'MATH 3', NULL, NULL),
(34, 202211806, 'COSC 75', NULL, NULL),
(35, 202211806, 'COSC 80', NULL, NULL),
(36, 202211806, 'COSC 85', NULL, NULL),
(37, 202211806, 'COSC 101', NULL, NULL),
(38, 202211806, 'DCIT 26', NULL, NULL),
(39, 202211806, 'DCIT 65', NULL, NULL),
(40, 202211806, 'GNED 09', NULL, NULL),
(41, 202211806, 'MATH 04', NULL, NULL),
(42, 202211806, 'COSC 90', NULL, NULL),
(43, 202211806, 'COSC 95', NULL, NULL),
(44, 202211806, 'COSC 106', NULL, NULL),
(45, 202211806, 'DCIT 60', NULL, NULL),
(46, 202211806, 'DCIT 85', NULL, NULL),
(47, 202211806, 'COSC 199', NULL, NULL),
(48, 202211806, 'ITEC 80', NULL, NULL),
(49, 202211806, 'COSC 100', NULL, NULL),
(50, 202211806, 'COSC 105', NULL, NULL),
(51, 202211806, 'COSC 111', NULL, NULL),
(52, 202211806, 'COSC 200A', NULL, NULL),
(53, 202211806, 'GNED 07', NULL, NULL),
(54, 202211806, 'GNED 10', NULL, NULL),
(55, 202211806, 'COSC 110', NULL, NULL),
(56, 202211806, 'COSC 200B', NULL, NULL);


ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_id` (`course_id`);


ALTER TABLE `courses_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_id` (`course_id`);


ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);


ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);


ALTER TABLE `student_enroll`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_enroll` (`student_id`,`course_id`),
  ADD KEY `course_id` (`course_id`);


ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;


ALTER TABLE `courses_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;


ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;


ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `student_enroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;


ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

ALTER TABLE `student_enroll`
  ADD CONSTRAINT `student_enroll_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `student_enroll_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);
COMMIT;
