-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2018 at 11:28 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jamb`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `class_regdate`) VALUES
(1, 'Science Class', '2018-11-08 02:52:18'),
(2, 'Art Class', '2018-11-08 02:52:18'),
(3, 'Commercial Class', '2018-11-08 02:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id_country` int(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id_course` int(255) NOT NULL,
  `course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id_course`, `course`) VALUES
(1, 'Agriculture'),
(2, 'Agricultural Economics'),
(3, 'Agricultural Extension'),
(4, 'Agronomy'),
(5, 'Animal Science'),
(6, 'Crop Science'),
(7, 'Food Science and Technology'),
(8, 'Fisheries'),
(9, 'Forest Resources Management (Forestry)'),
(10, 'Home Science, Nutrition and Dietetics'),
(11, 'Soil Science'),
(12, 'Arts'),
(13, 'Archeology and Tourism'),
(14, 'Arabic and Islamic Studies'),
(15, 'Christian Religious Studies'),
(16, 'English and Literary Studies'),
(17, 'Fine and Applied Arts (Creatiuve Arts)'),
(18, 'Foreign Languages and Literature'),
(19, 'History and International Studies'),
(20, 'Linguistics and Nigerian Languages'),
(21, 'Mass Communication (Communication and Language Arts)'),
(22, 'Music Technology'),
(23, 'Theatre and Film Studies'),
(24, 'Biological Sciences'),
(25, 'Biochemistry'),
(26, 'Botany'),
(27, 'Microbiology'),
(28, 'Marine Biology'),
(29, 'Cell Biology & Genetics'),
(30, 'Zoology'),
(31, 'Administration'),
(32, 'Accountancy'),
(33, 'Acturial Science'),
(34, 'Business Administration'),
(35, 'Business Management'),
(36, 'Banking and Finance'),
(37, 'Hospitality and Tourism'),
(38, 'Marketing'),
(39, 'Insurance'),
(40, 'Industrial Relations and Personnel Management'),
(41, 'Dentistry'),
(42, 'Child Dental Health'),
(43, 'Oral and Maxillofacial Surgery'),
(44, 'Preventive Dentistry'),
(45, 'Restorative Dentistry'),
(46, 'Education'),
(47, 'Adult Education and Extra-Mural Studies'),
(48, 'Arts Education'),
(49, 'Education & Accountancy'),
(51, 'Education & Computer Science'),
(52, 'Education & Economics'),
(53, 'Education & Mathematics'),
(54, 'Education & Physics'),
(55, 'Education & Religious Studies\r\n'),
(56, 'Education & Social Science'),
(57, 'Education And Biology'),
(58, 'Education And Chemistry'),
(59, 'Education And English Language'),
(60, 'Education And French'),
(61, 'Education And Geography/Physics'),
(62, '\r\nEducation And Political Science'),
(63, 'Educational Foundations'),
(64, 'Educational / Psychology Guidance And Counselling'),
(65, 'Health and Physical Education'),
(66, 'Library and Information Science'),
(67, 'Social Sciences Education'),
(68, 'Vocational Teacher Education (Technical Education)'),
(69, 'Igbo Linguistics'),
(70, 'Religion'),
(71, 'Agricultural and Bioresources'),
(72, 'Civil Engineering'),
(73, 'Chemical Engineering'),
(74, 'Computer Engineering'),
(75, 'Electrical Engineering'),
(76, 'Electronic Engineering'),
(77, 'Marine Engineering'),
(78, 'Mechanical Engineering'),
(79, 'Metallurgical and Materials Engineering'),
(80, 'Petroleum and Gas Engineering'),
(81, 'Systems Engineering'),
(82, 'Structural Engineering'),
(83, 'Production and Industrial Engineering'),
(84, 'Environmental Sciences'),
(85, 'Architecture'),
(86, 'Estate Management'),
(87, 'Quantity Surveying'),
(88, 'Building Technology'),
(89, 'Geoinformatics and Surveying'),
(90, 'Urban and Regional Planning'),
(91, 'Health Sciences & Technology'),
(92, 'Health Administration and Management'),
(93, 'Medical Laboratory Sciences'),
(94, 'Medical Radiography and Radiological Sciences'),
(95, 'Medical Rehabilitation'),
(96, 'Nursing Sciences'),
(97, 'Public Health Tech'),
(98, 'Law'),
(99, '\r\nCommercial and Property Law'),
(100, 'Law'),
(101, 'International and Jurisprudence\r\n'),
(102, 'Private and Public Law'),
(103, 'Medical Sciences\r\n'),
(104, 'Anatomy'),
(105, 'Anesthesia\r\n'),
(106, 'Chemical Pathology'),
(107, 'Community Medicine\r\n'),
(108, 'Dermatology'),
(109, 'Hematology and Immunology\r\n'),
(110, 'Medical Biochemistry'),
(111, 'Medical Microbiology\r\n'),
(112, 'Medicine'),
(113, 'Morbid Anatomy\r\n'),
(114, 'Obstetrics and Gynecology'),
(115, 'Ophthalmology\r\n'),
(116, 'Otolaryngology'),
(117, 'Pediatrics'),
(118, '\r\nPharmacology and Therapeutics'),
(119, '\r\nRadiation Medicine'),
(120, 'Physiology'),
(121, 'Psychological Medicine\r\n'),
(122, 'Child Dental Health'),
(123, '\r\nClinical Pharmacy and Pharmacy Management'),
(124, 'Pharmaceutical Sciences'),
(125, 'Pharmaceutical Technology and Industrial Pharmacy\r\n'),
(126, 'Pharmaceutics'),
(127, '\r\nDepartment of Pharmacology and Toxicology'),
(128, 'Pharmacognosy'),
(129, '\r\nComputer Science\r\n'),
(130, 'Geology'),
(131, '\r\nPhysics and Astronomy'),
(132, 'Mathematics'),
(133, 'Geophysics\r\n'),
(134, 'Pure and Industrial Chemistry'),
(135, 'Statistics'),
(136, 'Economics'),
(137, 'Geography'),
(138, '\r\nPhilosophy'),
(139, 'Political Science\r\n'),
(140, 'Psychology'),
(141, 'Public Administration and Local Government\r\nReligion'),
(142, 'Sociology/Anthropology'),
(143, 'Veterinary Medicine'),
(144, '\r\nVeterinary Physiology/Pharmacology'),
(145, '\r\nAnimal Health and Production'),
(146, 'Veterinary Anatomy'),
(147, 'Veterinary Parasitology and Entomology\r\n'),
(148, 'Veterinary Pathology and Microbiology'),
(149, 'Veterinary Public Health and Preventive Medicine\r\n'),
(150, 'Veterinary Surgery'),
(151, 'Veterinary Obstetrics and Reproductive Diseases\r\n'),
(152, 'Veterinary Teaching Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id_faculty` int(255) NOT NULL,
  `faculty` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id_faculty`, `faculty`) VALUES
(1, 'Faculty of Engineering'),
(2, 'Faculty of Science'),
(3, 'Faculty of Environmental Studies'),
(4, 'Faculty of Technology'),
(5, 'Faculty of law'),
(6, 'Faculty of Art'),
(7, 'College of Medicine'),
(8, 'Faculty of Business and Communication Studies'),
(9, 'Faculty of Financial and Management Studies'),
(10, 'Faculty of Social Sciences'),
(11, 'Faculty of Clinical Sciences');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(255) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id_gender`, `gender`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Neuter');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id_grade` int(255) NOT NULL,
  `grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id_grade`, `grade`) VALUES
(1, 'A1'),
(2, 'B2'),
(3, 'B3'),
(4, 'C4'),
(5, 'C5'),
(6, 'C6'),
(7, 'D7'),
(8, 'E8'),
(9, 'F9');

-- --------------------------------------------------------

--
-- Table structure for table `jambpin`
--

CREATE TABLE `jambpin` (
  `jambpin_id` int(255) NOT NULL,
  `pin_no` int(255) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `jambpin_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jambpin`
--

INSERT INTO `jambpin` (`jambpin_id`, `pin_no`, `serial_no`, `email`, `status`, `jambpin_regdate`) VALUES
(1, 103921592, 'UTME111110837', '', 'UNUSED', '2018-11-07 20:15:49'),
(2, 101848130, 'UTME106725685', '', 'UNUSED', '2018-11-07 20:15:49'),
(3, 105492129, 'UTME104637291', '', 'UNUSED', '2018-11-07 20:15:50'),
(4, 100649527, 'UTME107408468', '', 'UNUSED', '2018-11-07 20:15:50'),
(5, 108213760, 'UTME106134528', '', 'UNUSED', '2018-11-07 20:15:50'),
(6, 109115766, 'UTME111023283', '', 'UNUSED', '2018-11-07 20:15:50'),
(7, 102703985, 'UTME104135045', '', 'UNUSED', '2018-11-07 20:15:50'),
(8, 109524350, 'UTME103322628', '', 'UNUSED', '2018-11-07 20:15:50'),
(9, 107380303, 'UTME103851344', '', 'UNUSED', '2018-11-07 20:15:50'),
(10, 100832779, 'UTME108979006', '', 'UNUSED', '2018-11-07 20:15:50'),
(11, 101740215, 'UTME104935924', '', 'UNUSED', '2018-11-07 20:15:50'),
(12, 109798549, 'UTME102624913', '', 'UNUSED', '2018-11-07 20:15:50'),
(13, 104201221, 'UTME101481285', '', 'UNUSED', '2018-11-07 20:15:50'),
(14, 102019165, 'UTME108932853', '', 'UNUSED', '2018-11-07 20:15:50'),
(15, 105380820, 'UTME104259928', '', 'UNUSED', '2018-11-07 20:15:50'),
(16, 104252124, 'UTME102535323', '', 'UNUSED', '2018-11-07 20:15:50'),
(17, 101456514, 'UTME107364352', '', 'UNUSED', '2018-11-07 20:15:50'),
(18, 104334927, 'UTME108104826', '', 'UNUSED', '2018-11-07 20:15:50'),
(19, 105285801, 'UTME110447058', '', 'UNUSED', '2018-11-07 20:15:50'),
(20, 106785073, 'UTME100273858', '', 'UNUSED', '2018-11-07 20:15:50'),
(21, 101926182, 'UTME107600544', '', 'UNUSED', '2018-11-07 20:15:50'),
(22, 110560063, 'UTME103714923', '', 'UNUSED', '2018-11-07 20:15:50'),
(23, 104235156, 'UTME109597311', '', 'UNUSED', '2018-11-07 20:15:50'),
(24, 109057397, 'UTME104180519', '', 'UNUSED', '2018-11-07 20:15:50'),
(25, 108390224, 'UTME110529860', '', 'UNUSED', '2018-11-07 20:15:50'),
(26, 101234576, 'UTME104103146', '', 'UNUSED', '2018-11-07 20:15:50'),
(27, 105008887, 'UTME110050690', '', 'UNUSED', '2018-11-07 20:15:50'),
(28, 102729097, 'UTME100355304', '', 'UNUSED', '2018-11-07 20:15:50'),
(29, 101388643, 'UTME102252301', '', 'UNUSED', '2018-11-07 20:15:51'),
(30, 101378462, 'UTME106489494', '', 'UNUSED', '2018-11-07 20:15:51'),
(31, 110386992, 'UTME109027194', '', 'UNUSED', '2018-11-07 20:15:51'),
(32, 101700171, 'UTME108258215', '', 'UNUSED', '2018-11-07 20:15:51'),
(33, 105941436, 'UTME102227867', '', 'UNUSED', '2018-11-07 20:15:51'),
(34, 102651724, 'UTME108093967', '', 'UNUSED', '2018-11-07 20:15:51'),
(35, 100909473, 'UTME103746823', '', 'UNUSED', '2018-11-07 20:15:51'),
(36, 108750620, 'UTME102869249', '', 'UNUSED', '2018-11-07 20:15:51'),
(37, 102588604, 'UTME107676559', '', 'UNUSED', '2018-11-07 20:15:51'),
(38, 107834360, 'UTME106136564', '', 'UNUSED', '2018-11-07 20:15:51'),
(39, 101596328, 'UTME102549576', '', 'UNUSED', '2018-11-07 20:15:51'),
(40, 104420444, 'UTME103648409', '', 'UNUSED', '2018-11-07 20:15:51'),
(41, 105230147, 'UTME104698375', '', 'UNUSED', '2018-11-07 20:15:51'),
(42, 108586372, 'UTME108957287', '', 'UNUSED', '2018-11-07 20:15:51'),
(43, 104107559, 'UTME102655455', '', 'UNUSED', '2018-11-07 20:15:51'),
(44, 102609644, 'UTME107815695', '', 'UNUSED', '2018-11-07 20:15:51'),
(45, 105526064, 'UTME101633317', '', 'UNUSED', '2018-11-07 20:15:51'),
(46, 107687759, 'UTME102656134', '', 'UNUSED', '2018-11-07 20:15:51'),
(47, 100103165, 'UTME101284459', '', 'UNUSED', '2018-11-07 20:15:51'),
(48, 106098218, 'UTME101471105', '', 'UNUSED', '2018-11-07 20:15:51'),
(49, 106256357, 'UTME106821383', '', 'UNUSED', '2018-11-07 20:15:51'),
(50, 107918520, 'UTME106693107', '', 'UNUSED', '2018-11-07 20:15:51'),
(51, 103483145, 'UTME106776588', '', 'UNUSED', '2018-11-07 20:15:51'),
(52, 106546167, 'UTME104074640', '', 'UNUSED', '2018-11-07 20:15:51'),
(53, 110201025, 'UTME106362575', '', 'UNUSED', '2018-11-07 20:15:51'),
(54, 100938658, 'UTME107168205', '', 'UNUSED', '2018-11-07 20:15:51'),
(55, 105907500, 'UTME105231842', '', 'UNUSED', '2018-11-07 20:15:51'),
(56, 106733491, 'UTME101726300', '', 'UNUSED', '2018-11-07 20:15:51'),
(57, 109020068, 'UTME108596891', '', 'UNUSED', '2018-11-07 20:15:51'),
(58, 100648169, 'UTME101301427', '', 'UNUSED', '2018-11-07 20:15:52'),
(59, 110156230, 'UTME104990221', '', 'UNUSED', '2018-11-07 20:15:52'),
(60, 109440190, 'UTME102766085', '', 'UNUSED', '2018-11-07 20:15:52'),
(61, 105493486, 'UTME110744333', '', 'UNUSED', '2018-11-07 20:15:52'),
(62, 109827055, 'UTME108552775', '', 'UNUSED', '2018-11-07 20:15:52'),
(63, 107889336, 'UTME103271725', '', 'UNUSED', '2018-11-07 20:15:52'),
(64, 106326265, 'UTME104413995', '', 'UNUSED', '2018-11-07 20:15:52'),
(65, 102401280, 'UTME110024899', '', 'UNUSED', '2018-11-07 20:15:52'),
(66, 109015317, 'UTME103902247', '', 'UNUSED', '2018-11-07 20:15:52'),
(67, 101886817, 'UTME108416354', '', 'UNUSED', '2018-11-07 20:15:52'),
(68, 100171714, 'UTME103890031', '', 'UNUSED', '2018-11-07 20:15:52'),
(69, 102523448, 'UTME103658590', '', 'UNUSED', '2018-11-07 20:15:52'),
(70, 100992955, 'UTME106809845', '', 'UNUSED', '2018-11-07 20:15:52'),
(71, 106048672, 'UTME106524108', '', 'UNUSED', '2018-11-07 20:15:52'),
(72, 104876538, 'UTME109534191', '', 'UNUSED', '2018-11-07 20:15:52'),
(73, 108639990, 'UTME111105407', '', 'UNUSED', '2018-11-07 20:15:52'),
(74, 110779965, 'UTME103375568', '', 'UNUSED', '2018-11-07 20:15:52'),
(75, 100914903, 'UTME105934987', '', 'UNUSED', '2018-11-07 20:15:52'),
(76, 100980738, 'UTME107446476', '', 'UNUSED', '2018-11-07 20:15:52'),
(77, 101290909, 'UTME107345348', '', 'UNUSED', '2018-11-07 20:15:52'),
(78, 107796352, 'UTME101939415', '', 'UNUSED', '2018-11-07 20:15:52'),
(79, 100385508, 'UTME103868991', '', 'UNUSED', '2018-11-07 20:15:52'),
(80, 102384312, 'UTME105966886', '', 'UNUSED', '2018-11-07 20:15:52'),
(81, 105496201, 'UTME100718414', '', 'UNUSED', '2018-11-07 20:15:52'),
(82, 105942114, 'UTME110841389', '', 'UNUSED', '2018-11-07 20:15:52'),
(83, 107240488, 'UTME108666120', '', 'UNUSED', '2018-11-07 20:15:52'),
(84, 100747261, 'UTME102315421', '', 'UNUSED', '2018-11-07 20:15:52'),
(85, 101795869, 'UTME110684606', '', 'UNUSED', '2018-11-07 20:15:52'),
(86, 107997251, 'UTME105061486', '', 'UNUSED', '2018-11-07 20:15:52'),
(87, 102019844, 'UTME106426374', '', 'UNUSED', '2018-11-07 20:15:53'),
(88, 109969585, 'UTME104832081', '', 'UNUSED', '2018-11-07 20:15:53'),
(89, 104089912, 'UTME101103922', '', 'UNUSED', '2018-11-07 20:15:53'),
(90, 105621763, 'UTME104059708', '', 'UNUSED', '2018-11-07 20:15:53'),
(91, 109743574, 'UTME105489752', '', 'UNUSED', '2018-11-07 20:15:53'),
(92, 110591284, 'UTME110736867', '', 'UNUSED', '2018-11-07 20:15:53'),
(93, 104038330, 'UTME102556363', '', 'UNUSED', '2018-11-07 20:15:53'),
(94, 101595650, 'UTME105056056', '', 'UNUSED', '2018-11-07 20:15:53'),
(95, 110951679, 'UTME103076256', '', 'UNUSED', '2018-11-07 20:15:53'),
(96, 105392358, 'UTME106129777', '', 'UNUSED', '2018-11-07 20:15:53'),
(97, 104421123, 'UTME101141930', '', 'UNUSED', '2018-11-07 20:15:53'),
(98, 109818911, 'UTME105270529', '', 'UNUSED', '2018-11-07 20:15:53'),
(99, 108424160, 'UTME107525885', '', 'UNUSED', '2018-11-07 20:15:53'),
(100, 108272807, 'UTME110470812', '', 'UNUSED', '2018-11-07 20:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `lga`
--

CREATE TABLE `lga` (
  `id_lga` int(255) NOT NULL,
  `lga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `que_id` int(255) NOT NULL,
  `class_id` int(255) NOT NULL,
  `subject_id` int(255) NOT NULL,
  `que_desc` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `tru_ans` text NOT NULL,
  `que_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`que_id`, `class_id`, `subject_id`, `que_desc`, `option1`, `option2`, `option3`, `option4`, `tru_ans`, `que_regdate`) VALUES
(1, 2, 10, 'The main attributes of a state are', 'government, the police and the armed forces', ' population, territory , government and sover', 'federal state and local governments', ' the press, the legislature, the executive an', ' population, territory , government and sover', '2018-11-08 11:26:55'),
(2, 2, 10, 'A disadvantage of the one-party system is that it', ' emphasizes political dif ferences', ' makes accountability dif ficult', 'negates freedom of association', 'delays decision-making.', ' makes accountability dif ficult', '2018-11-08 11:29:00'),
(3, 2, 10, 'In the history of Nigeria, 1914 was the', 'year the British established their rule over ', 'beginning of first world war', ' year Lugard ef fected amalgamation of Nigeri', ' year the railway system was completed', ' year Lugard ef fected amalgamation of Nigeri', '2018-11-08 11:30:51'),
(4, 2, 10, 'Which of these rulers resisted colonial rule and\r\nwas deported to Calabar?', 'King Kosoko', 'King Dosunmu', 'Oba Ovonramwen', 'King Jaja', 'Oba Ovonramwen', '2018-11-08 11:33:00'),
(5, 2, 10, 'How many states were created in Nigeria in 19', '4', '12', '19', '21', '12', '2018-11-08 11:49:47'),
(6, 2, 10, 'A major functional of W\r\narrant Chiefs was to', ' take char ge of local administration', 'stop ritual killings', 'prevent tribal wars', 'supervise native courts and markets', 'supervise native courts and markets', '2018-11-08 11:52:04'),
(7, 2, 10, 'A state that is ruled by an elected citizen is', 'a republic', 'a plutocracy', ' a monarchy', 'an empire', 'a republic', '2018-11-08 11:54:39'),
(8, 2, 10, 'The first Governor\r\n-General of Nigeria was', 'Lord Lugard', 'Dr. Nnamdi Azikwe', 'Sir James Robertson', ' (the late) Major -General Aguiyi-Ironsi', 'Lord Lugard', '2018-11-08 11:58:39'),
(9, 2, 10, 'The main role of pressure groups is to', ' influence the legislature to make decision for them', 'inject emotion and selfish debates', 'influence the public', ' use all means, including bribery , to achiev', ' influence the legislature to make decision for them', '2018-11-08 12:01:40'),
(10, 2, 10, 'The OAU was formed in', '1946', '1956', '1960', '1963', '1963', '2018-11-08 12:03:35'),
(11, 2, 10, 'The first African Secretary-General of the United\r\nNations is', 'Boutrous Boutrous-Ghali', 'Joe Garba', 'Ibrahim Gambari', 'Kofi Annan', 'Boutrous Boutrous-Ghali', '2018-11-08 12:07:03'),
(12, 2, 10, 'The system of indirect rule failed in the former\r\nEastern Nigeria primary because', 'of the fragmented political structures', ' the Chief refused to cooperate with colonial', ' the of the high incidence of taxation Chief ', ' the colonial of ficers imposed warrant chief', 'of the fragmented political structures', '2018-11-08 12:36:56'),
(13, 2, 10, 'In federalism system of Government currency\r\n,\r\nArmed forces and National defense is the primary\r\nfunction of', 'Local government Chairman', 'Armed Forces Ruling Council', 'Security and Exchange Commission', ' Exclusive list', ' Exclusive list', '2018-11-08 12:40:17'),
(14, 2, 10, 'In a Federal System (such as Nigeria) the Local\r\nGovernments are directly responsible', 'to the Federal or Central Government', 'to the State Government', 'to the Federal and State Government', 'to no other level of government', 'to the State Government', '2018-11-08 12:41:40'),
(15, 2, 10, 'An electoral process in which candidates are\r\nselected for elective of\r\nfices by party members is', ' primary election', ' electoral college', ' bye election', ' general election', ' primary election', '2018-11-08 12:43:43'),
(16, 2, 10, 'Nigeria spearheaded the formation of ECOW\r\nAS\r\nduring the regime of', 'Olusegun Obasanjo', ' Yakubu Gowon', 'Muritala Muhammad', 'Ibrahim Babangida', 'Yakubu Gowon', '2018-11-08 12:46:27'),
(17, 2, 10, 'Who was the political head of the Old Oyo\r\nEmpire?', 'Bashorun', 'Oyomesi', 'Aremo', 'Alaafin', 'Alaafin', '2018-11-08 12:48:35'),
(18, 2, 10, 'Federalism was introduced in Nigeria under the', 'Lyttelton Constitution', 'Macpherson Constitution', 'Richards Constitution', 'Independence', ' Lyttelton Constitution', '2018-11-08 12:52:55'),
(19, 2, 10, 'Which of these is not the supreme or\r\ngan of the\r\nOAU?', 'The Council of Ministers', 'The Administrative Secretary General', 'The Assembly of Heads of States and Governmen', ' Appointment of staff', ' Appointment of staff', '2018-11-08 12:55:05'),
(20, 2, 10, 'When a bill passed by legislature is vetoed by the\r\nexecutive, the action underscores the principle of', 'collective responsibility', 'probity and accountability', 'checks and balances', 'separation of powers', 'probity and accountability', '2018-11-08 12:57:10'),
(21, 2, 10, 'Decree 34 of 1966 was unacceptable to many\r\nNigerians because it was', 'seen as an instrument of impoverishment', ' perceived to abolish the federal system', 'promulgated without consultation with the peo', 'considered as alien', 'perceived to abolish the federal system', '2018-11-08 13:01:09'),
(22, 2, 10, 'The Igbo political system was based on', ' Age Grades', 'Umunna', 'Family ties', ' Umuada', 'Umunna', '2018-11-08 13:03:03'),
(23, 2, 10, 'One challenge associated with presidential\r\nsystem of Government', 'Aim of government', 'separation of power', 'The Senate president', 'Fusion of power', 'separation of power', '2018-11-08 13:07:53'),
(24, 2, 10, 'The dominant idea behind the establishment of\r\nthe Organization of African Unity is', 'that Africa must unite', ' to show the world that Africa can also do wh', ' to provide a framework and opportunities for', 'to promote economic development of Africa', 'that Africa must unite', '2018-11-08 13:09:48'),
(25, 2, 10, 'A typical form of delegated legislation is', 'an act', ' a bill', 'a decree', 'a bye-law', 'a bye-law', '2018-11-08 13:15:35'),
(26, 2, 10, 'Nigeria\'s\ns quest for a leadership role in Africa\nhinges principally on her', 'military might', 'size and population', 'generosity', 'economic strength', 'size and population', '2018-11-08 13:23:56'),
(28, 2, 10, 'The term, rule of law means', 'nobody is above the law', 'everybody is equal before the law', 'we are being governed by lawyers', 'A and B above', 'A and B above', '2018-11-08 16:57:14'),
(29, 2, 10, 'France introduced the policy of assimilation in\r\nher colonies primarily to', 'teach them the art of leadership', 'give them a sound education', 'change their way of life', 'discourage them from ritual killings', 'change their way of life', '2018-11-08 16:58:57'),
(30, 2, 10, 'In the Oyo traditional political system, the Alafin\r\nof Oyo was elected or chosen by a group known as', 'Oyo Mesi', 'Bales', 'Obas', 'Ogboni', 'Oyo Mesi', '2018-11-08 17:01:04'),
(31, 2, 10, 'A good example of a country with a lar\r\ngely\r\nunwritten constitution is', 'the United States of America', 'The Soviet Union', 'Nigeria', 'United Kingdom', 'United Kingdom', '2018-11-08 17:02:20'),
(32, 2, 10, 'Before Nigeria became a republic, the highest\r\nbody char\r\nged with the administration of justice was\r\nthe', 'Supreme Court', 'Court of Appeal', 'Privy Court', 'High Court', 'Privy Court', '2018-11-08 17:04:08'),
(33, 2, 10, 'The Independent National Electoral Commission\r\nhas the power to prepare and maintain the register of', 'electoral candidates', 'voters', 'political parties', 'constituencies', 'voters', '2018-11-08 17:05:20'),
(34, 2, 10, 'In which of the following systems is the power\r\nof the component units more than that of the central\r\ngovernment?', 'Monarchical', 'Federal Governments', 'Unitary', 'Confederal', 'Confederal', '2018-11-08 17:06:51'),
(35, 2, 10, 'The two leaders that played the most prominent\r\nroles in the formation of the ECOW\r\nAS were', 'Gowon and Eyadema', 'Kountche and Senghor', ' Kerekou and T ubman', 'Acheampong and Jawara', 'Gowon and Eyadema', '2018-11-08 17:08:21'),
(36, 2, 10, 'Under a presidential system of government, the\r\nlegislature and the executive are', 'elected separately to an unfixed term', 'appointed at the same time to an unfixed term', 'appointed by the judiciary to a fixed term', 'elected separately to a fixed term', 'elected separately to a fixed term', '2018-11-08 17:09:41'),
(37, 2, 10, 'Which of these constitutions recognized local\r\ngovernment as a third tier of government in Nigeria?', '1960 Constitution', '1963 Constitution', '1979 Constitution', '1946 Constitution', '1979 Constitution', '2018-11-08 17:10:46'),
(38, 2, 10, 'A referendum is a device to ensure that', ' elections are free and fair', 'legislators vote to resolve contentious issue', ' decisions are ef fected with the consent of ', 'bye-elections are held to fill vacant positio', 'ecisions are ef fected with the consent of ci', '2018-11-08 17:12:04'),
(39, 2, 10, 'The Mid-W\r\nestern Region was created in Nigeria\r\nin', '1961', '1962', '1963', '1964', '1963', '2018-11-08 17:13:12'),
(40, 2, 10, 'A form of oligarchy in which gifted people are at\r\nthe helm of af\r\nfairs is', 'aristocracy', 'theocracy', 'plutocracy', 'gerontocracy', ' aristocracy', '2018-11-08 17:14:07'),
(41, 2, 10, 'One of the principal objectives of the OPEC is to', 'determine oil prices in the international mar', 'harmonizes the oil policies of member countri', 'discipline erring oil-producing countries', 'assist non-oil producing developing states', 'harmonizes the oil policies of member countri', '2018-11-08 17:15:33'),
(42, 2, 10, 'A constitution that requires a plebiscite or a\r\nreferendum to be amended is', 'written', 'flexible', 'rigid', 'unwritten', 'written', '2018-11-08 17:16:43'),
(43, 2, 10, 'The following are international or\r\nganization\r\nexcept', 'pressure group', ' O.A.U', ' U.N.O.', 'Commonwealth of nations', 'pressure group', '2018-11-08 17:18:04'),
(44, 2, 10, 'The rights of a citizen can be withdrawn by the\r\nstate if the person', 'opposes the government violently', 'leave the country permanently', 'is convicted of a serious crime', 'is pronounced dead', 'is convicted of a serious crime', '2018-11-08 17:19:31'),
(45, 2, 10, 'In the Presidential System of Government, the\r\npresident is elected to of\r\nfice by', 'the Cabinet', 'the Parliament or Legislature', 'Military', 'the people through direct elections', 'the people through direct elections', '2018-11-08 17:21:20'),
(46, 2, 10, 'The act of removing an elected of\r\nficial by the\r\nelectorate is referred to as', 'impeachment', 'consensus', 'recall', 'plebiscite', 'recall', '2018-11-08 17:22:19'),
(47, 2, 10, 'Which of the following world powers was the\r\nfirst to come to Nigeriaâ€™\r\ns aid during the civil war?', 'Germany', 'USA', 'USSR', 'UK', 'USSR', '2018-11-08 17:23:16'),
(48, 2, 10, 'Citizenship refers to the', 'legal status of a member of a state', 'indigenous member of a state', 'highest position in a state', 'social status of a person in a state', 'legal status of a member of a state', '2018-11-08 17:24:35'),
(49, 2, 10, 'The highest or\r\ngan of the state during the\r\nBabangida Regime was the', ' Provisional Ruling Council', 'Supreme Military Council', 'Armed Forces Ruling Council', 'Federal Executive Council', 'Armed Forces Ruling Council', '2018-11-08 17:25:44'),
(50, 2, 10, 'The council constituted by Lord Lugard in 1914\r\nhas', '105 members seat', '50 members on seat', ' 36 members on seat', '25 members on seat', '36 members on seat', '2018-11-08 17:26:51'),
(51, 2, 10, 'Nigeria\'\ns withdrawal from the Edinbur\ngh\nCommonwealth Games in July 1986 was in protest\nagainst British', 'supply of arms of Rhodesia', 'failure to impose sanctions on South Africa', 'negative utterances on Nigeria', ' support for UNIT A rebels in Angola', 'failure to impose sanctions on South Africa', '2018-11-08 17:29:00'),
(52, 1, 3, 'A tissue is composed of a group of', 'similar cells', 'tissues', 'systems', ' related or gans', 'similar cells', '2018-11-08 17:36:46'),
(53, 1, 3, 'The population of dif\r\nferent or\r\nganisms that exist\r\ntogether in a habitat is called', 'biomes', 'biosphere', 'community', 'ecology', 'community', '2018-11-08 20:00:06'),
(54, 1, 3, 'Which of the following serves as the brain box in\r\nman', 'skeleton', 'skull', 'head', 'spinal column', 'skull', '2018-11-08 20:01:25'),
(55, 1, 3, 'Which or\r\ngan removes the lar\r\ngest amount of\r\nexcess water from the body?', 'Liver', 'Lung', 'Kidney', 'skin', ' Kidney', '2018-11-08 20:02:26'),
(56, 1, 3, 'The following parts are involved in breathing\r\nprocess, except', 'mouth', 'nostrils', 'ribs', 'diaphragm', 'mouth', '2018-11-08 20:03:45'),
(57, 1, 3, 'Which of these is not a sampling method for\r\ndetermining population size?', 'capture and re-capture method', 'complete census', 'Transect method', 'systematic sampling', 'systematic sampling', '2018-11-08 20:04:46'),
(58, 1, 3, 'A group of organisms of the same kind\r\ninhabiting the same environment is called', 'ecosystem', 'habitat', 'population', 'species', 'species', '2018-11-08 20:05:55'),
(59, 1, 3, 'The light sensitive cells in the human eye is\r\ncalled the ................', 'Choroid', 'Sclerotic layer', 'retina', 'cones', 'cones', '2018-11-08 20:06:53'),
(60, 1, 3, 'The earliest form of life in animal kingdom is the', 'class', 'amphibian', 'aves pisces', 'reptilia', 'aves pisces', '2018-11-08 20:07:57'),
(61, 1, 3, 'Which of the following disease is not sexually\r\ntransmitted?', 'Gonorrhea', 'Herpes', 'Influenza', 'Syphilis', 'Influenza', '2018-11-08 20:09:34'),
(62, 1, 3, 'One of the following diseases is caused by fungi', 'cassava mosaic', 'coffee leaf rust', 'leaf blight of cassava rossette', 'disease of groundnut', 'coffee leaf rust', '2018-11-08 20:12:28'),
(63, 1, 3, 'The by-product of photosynthesis is', 'CO2', 'O2', 'C6H12O6', 'H2O', 'O2', '2018-11-08 20:13:27'),
(64, 1, 3, 'Gaseous exchange in the lungs takes place in the', 'alveoli', 'bronchi', 'bronchioles', 'trachea', 'alveoli', '2018-11-08 20:14:21'),
(65, 1, 3, 'In eukaryotic cells,cellular respiration takes\r\nplace in the', 'nucleus', 'cytoplasm', 'centrioles', 'mitochondrion', 'mitochondrion', '2018-11-08 20:15:15'),
(66, 1, 1, 'One of the following causes Ebola fever', 'Bacteria', 'Fungi', 'Protozoa', 'Viruses', 'Viruses', '2018-11-08 20:16:01'),
(67, 1, 3, 'The theory of survival of the fittest was\r\npropounded by .....', 'Darwin', 'Hooke', 'Lamarck', 'Linnaeus', 'Darwin', '2018-11-08 20:16:59'),
(68, 1, 3, 'The deficiency of vitamin D leads to', 'beriberi', 'pellagra', 'ricket', 'scurvy', 'ricket', '2018-11-08 20:17:49'),
(69, 1, 3, 'One of these is used for excretion in earthworm', 'Contractile vacuole', 'Flame cell', 'Malpighian tubule', 'Nephridium', 'Nephridium', '2018-11-08 20:19:43'),
(70, 1, 3, 'The following group of plants is the most\r\nadvanced except', 'bryophyte', 'pteridophyta', 'spermatophyte', 'thallophytic', 'thallophytic', '2018-11-08 20:20:50'),
(71, 1, 3, 'Which of the following hormonal glands is\r\nlocated on top of the kidney?', 'Adrenal', 'gonads', 'pancreas', 'thyroid', 'Adrenal', '2018-11-08 20:21:59'),
(72, 1, 3, 'One of these is present in both plant and animal\r\ncell?', 'Cell membrane', 'Cell wall', 'Chloroplast', 'Large cell vacuole', 'Cell membrane', '2018-11-08 20:23:28'),
(73, 1, 3, 'When the solute concentration of the cell and its\r\nsurrounding medium are the same, the solution is\r\nsaid to be', 'hypertonic', 'hypotonic', 'isotonic', 'acidic', 'isotonic', '2018-11-08 20:25:15'),
(74, 1, 3, 'The primary consumer in the food chain below is\r\n................\r\nGreen plants â†’Grasshopper â†’ Lizard â†’ Snake â†’\r\nHawk', 'Grass hoppe', 'green plants', 'hawk', 'lizard', 'Grass hopper', '2018-11-08 20:27:03'),
(75, 1, 3, 'Angiosperms belong to the class', 'bryophyte', 'pteredophyta', 'spermatophyte', 'thallophytic', 'spermatophyte', '2018-11-08 20:27:58'),
(76, 1, 3, 'In the kidney\r\n, both useful substances and wastes\r\nare removed from the blood by', 'Filtration', 'selective absorption', 'dialysis machine', 'excretion', 'Filtration', '2018-11-08 20:29:01'),
(77, 1, 3, 'Which of the following is not part of the\r\nmammalian male reproductive organ?', 'Epididymis', 'Vas deferens', 'testis', 'Vulva', 'Vulva', '2018-11-08 20:30:01'),
(78, 1, 1, 'Which of the following reagent is used for\r\ntesting the presence of protein in food?', 'Benedict solution', ' Fetilingâ€™ s Solution', ' Millonâ€™ s reagent', ' Sudan III', ' Millonâ€™ s reagent', '2018-11-08 20:31:31'),
(79, 1, 3, 'The breaking down of food in the alimentary\r\ncanal is called', 'digestion', 'egestion', 'excretion', 'ingestion', 'digestion', '2018-11-08 20:32:29'),
(80, 1, 3, 'The followings are the functions of the kidneys,\r\nexcept', 'Regulation of water content in the blood', 'Maintenance of blood PH and homeostasis', 'Excretion of CO2', 'D. Removal of waste products from the blood', 'Excretion of CO2', '2018-11-08 20:33:55'),
(81, 1, 3, 'The following distrupts the balance in an\r\necosystem except', 'afforestation', 'deforestation', 'migration', 'pollution', 'afforestation', '2018-11-08 20:34:55'),
(82, 1, 3, 'The following animals are viviparous expect', 'Cow', 'Dog', 'Goat', 'Pigeon', 'Pigeon', '2018-11-08 20:36:20'),
(83, 1, 3, 'The following animals is an invertebrate except', 'flat worms', 'round worms', 'chordate', 'protozoan', 'chordate', '2018-11-08 20:37:35'),
(84, 1, 3, 'The following are kidney diseases except', 'diuresis', 'hepatitis', 'nephritis', 'oedema', 'hepatitis', '2018-11-08 20:38:31'),
(85, 1, 3, 'The gland that releases hormones into the blood\r\nare part of the', 'digestive system', ' endocrine system', ' circulatory system', ' respiratory system', ' endocrine system', '2018-11-08 20:39:28'),
(86, 1, 3, 'One of the following is called emergency\r\nhormone in man.', 'Adrenalin', 'Prolactin', 'Testosterone', 'Thyroxine', 'Adrenalin', '2018-11-08 20:40:55'),
(87, 1, 3, 'Which of these responses is not voluntarily\r\ncontrolled by the brain?', 'Dancing', 'Eating', 'Sneezing', 'Writing', 'Sneezing', '2018-11-08 20:42:27'),
(88, 1, 3, 'The scientific study of life is', 'Botany', 'Biology', 'Zoology', 'Ecology', 'Biology', '2018-11-08 20:43:27'),
(89, 1, 3, 'The artery supplying the liver with blood is\r\ncalled', 'hepatic', 'mesenteric', 'renal', 'subclavian', 'hepatic', '2018-11-08 20:44:16'),
(90, 1, 3, 'One of the following exist as colony', 'euglena', 'paramecium', 'spirogyra', 'volvox', 'volvox', '2018-11-08 20:45:08'),
(91, 1, 3, 'The translucency spot in food test shows the\r\npresence of', 'fats', 'starch', 'water', 'protein', 'fats', '2018-11-08 20:47:40'),
(92, 1, 3, 'The following are examples of oviparous\r\nanimals except', 'crocodile', 'dove', 'rat', 'tilapia', 'rat', '2018-11-08 20:48:40'),
(93, 1, 3, 'The part of cell that is responsible for the\r\nproduction of energy is', ' cell membrane', 'cytoplasm', 'mitochondrion', 'nucleus', 'mitochondrion', '2018-11-08 20:50:07'),
(94, 1, 3, 'Hormones that help regulate blood calcium\r\nlevels are produced by the', 'Adrenal', 'thyroid', 'pancreas', 'parathyroid', 'parathyroid', '2018-11-08 20:50:58'),
(95, 1, 3, 'Which of the following statements is not true of\r\na fish?', ' respires with the use of gills', ' covered with scales', ' they are homeothermic', ' they are poikilothermic', ' they are homeothermic', '2018-11-08 20:51:50'),
(96, 1, 3, 'Which of the following is NOT a waste product\r\nof plants?', 'Auxins', 'Gum', 'Resins', 'tanins', 'Auxins', '2018-11-08 20:52:41'),
(97, 1, 3, 'An association between bacteria and root\r\nnodules of legume is called', 'Commercialism', 'mutualism', 'parasitism', 'saprophytism', 'mutualism', '2018-11-08 20:54:05'),
(98, 1, 3, 'Which of these is not detected by the nerve\r\nendings of the skin?', 'cold', 'pain', 'pressure', 'weakness', 'weakness', '2018-11-08 20:54:56'),
(99, 1, 3, 'Behaviour conditioning was described by', ' Felix Dujartin', 'Gregormendel', ' Ivan pavlov', ' Mathias schnelden', ' Ivan pavlov', '2018-11-08 20:56:39'),
(100, 1, 3, 'The process by which organisms keep their\r\ninternal condition relatively stable is called', 'metabolism', 'evolution', 'gametogenesis', 'homeostasis', 'homeostasis', '2018-11-08 20:57:44'),
(101, 1, 3, 'The following exist as free-living organisms\r\nexcept', 'Amoeba', 'Chlamydomonas', 'Euglena', 'Spirogyra', 'Spirogyra', '2018-11-08 20:58:45'),
(102, 1, 3, 'The basic functional unit of the kidney is the', 'nephron', ' bowmanâ€™ s capsule', 'glomerulus', ' loop of henle', 'nephron', '2018-11-08 20:59:45'),
(103, 1, 3, 'Snails belong to the phylum', 'Annelida', 'Mollusca', 'Echinodermata', 'nematode', 'Mollusca', '2018-11-08 21:00:42'),
(104, 1, 3, 'Which of the following is not a pest of crops?', 'Bird', ' Rodent', ' Bed bug', 'Grasshopper', ' Bed bug', '2018-11-08 21:02:00'),
(105, 1, 3, 'Another name for a fertilized egg is a', 'placenta', 'zygote', 'foetus', 'ovum', 'zygote', '2018-11-08 21:03:04'),
(106, 1, 3, 'Plants that survive in marine habitats are called', 'halophytes', 'hydrophytes', 'mesophytes', 'xerophytes', 'halophytes', '2018-11-08 21:04:00'),
(107, 1, 3, 'The study of plants is called', 'Zoology', 'Entomology', 'Parasitology', 'Botany', 'Botany', '2018-11-08 21:05:10'),
(108, 1, 3, 'The following are examples of air borne\r\ndiseases, except', ' Chicken pox', 'Cholera', ' common cold', ' Whooping cough', 'Cholera', '2018-11-08 21:06:16'),
(109, 1, 3, 'Which of the following is the end product of the\r\ndigestion of oil', 'glucose', 'Glycerol', 'amino acid', 'glycogen', 'Glycerol', '2018-11-08 21:07:15'),
(110, 1, 3, 'The part that supplies food from the mother to\r\nthe foetus is', 'Amnion', 'Chorion', ' Umbilical Cord', 'Placenta', 'Placenta', '2018-11-08 21:08:20'),
(111, 1, 3, 'Which of these is not the part of the eye?', 'Cochlea', 'Conjunctiva', 'Cornea', 'Iris', 'Cochlea', '2018-11-08 21:09:23'),
(112, 1, 3, 'De-oxygenated blood is transported to the lungs\r\nthrough the', ' renal vein', ' hepatic portal vein', ' pulmonary artery', ' pulmonary vein', ' pulmonary artery', '2018-11-08 21:10:24'),
(113, 1, 3, 'One of the following is the unit of life', 'cell', 'tissues', ' organ', 'system', 'cell', '2018-11-08 21:11:29'),
(114, 1, 3, 'The following are examples of a true fruit,\r\nexcept', 'mango', ' oil palm', 'orange', ' pineapple', ' pineapple', '2018-11-08 21:12:34'),
(115, 1, 3, 'The vector that transmit trypanosome is the', 'butterfly', 'housefly', 'mosquito', ' tsetse fly', ' tsetse fly', '2018-11-08 21:13:37'),
(116, 1, 3, 'The following are ductless glands except', 'adrenal', 'pancreatic', 'parathyroid', 'salivary', 'salivary', '2018-11-08 21:14:38'),
(117, 1, 3, 'White blood cells are also known as', 'erythrocytes', 'leucocytes', 'lymphocytes', 'phagocytes', 'leucocytes', '2018-11-08 21:15:48'),
(118, 1, 3, 'The removal of remnant particles of digestion\r\nfrom the body is called', 'assimilation', 'egestion', 'elimination', 'excretion', 'egestion', '2018-11-08 21:16:52'),
(119, 1, 3, 'Enzyme ptyalin acts on starch in the', 'oesophagus', ' large intestine', 'mouth', 'stomach', 'mouth', '2018-11-08 21:18:12'),
(120, 1, 2, 'The filter in the cigarette reduce the nicotine\r\nconstruct by', 'burning', 'absorption', 'evaporation', 'absorption', 'burning', '2018-11-08 21:46:42'),
(121, 1, 2, 'Which of these require crystallization most?', ' Drug making', ' Cement making', ' Paint making', ' Perfume making', ' Drug making', '2018-11-08 21:48:52'),
(122, 1, 2, 'Iron is often galvanized in order to', ' Make it more malleable', ' Remove the impurities unit', ' Protect it against corrosion', ' Render it passive', ' Protect it against corrosion', '2018-11-08 21:49:44'),
(123, 1, 2, 'In the industrial production of H2 is removed by(solution)', 'washing under pressure', ' drying over phosphorus (V) oxide', ' passing the mixture to the limewater', ' using ammonical copper (I) chlorine', ' washing under pressure', '2018-11-08 21:51:00'),
(124, 1, 2, 'The gas that is most useful in protecting humans\r\nagainst solar marathon is', 'chlorine', 'ozone', ' carbon IV oxide', ' hydrogen sulphur', 'ozone', '2018-11-08 21:52:38'),
(125, 1, 2, 'Vulcanization involve the removal of', ' monometer', ' the single bond', ' the double bond', ' a polymer', ' the double bond', '2018-11-08 21:53:38'),
(126, 1, 2, 'The acid in electrolysis of water is dilute', ' HNO3', ' CH3COOH', ' H2SO', 'HCl', ' H2SO', '2018-11-08 21:55:13'),
(127, 1, 2, 'A small quantity of solid ammonium chloride\r\n(NH4Cl) texted gently in a test tube, the solid\r\ngradually disappear produce two gases. Later\r\n, a white\r\ncloudy deposit was absence on the cooler part of the\r\ntest tube. The ammonium chloride is to have under\r', 'distillation', 'sublimation', ' precipitation', 'evaporation', 'sublimation', '2018-11-08 21:56:30'),
(128, 1, 2, 'When salt loses its water of crystallization to the\r\natmosphere on exposure, the process is said to be', 'efflorescence', ' deliquescence', ' effervescence', 'fluorescence', ' efflorescence', '2018-11-09 06:44:47'),
(129, 1, 2, 'Atomicity of ozone is', '1', '2', '3', '4', '3', '2018-11-08 21:58:18'),
(130, 1, 2, 'Which of the noble gases has the greatest\r\nionization energy', 'He', 'Xe', 'Ar', 'Rr', 'He', '2018-11-09 06:50:02'),
(131, 1, 2, 'The weakest attractive force that can be observed\r\nbetween two molecules is', 'ionic', 'covalent', ' co-ordinate covalent', ' vander Waals', ' vander Waals', '2018-11-09 06:51:55'),
(132, 1, 2, 'An elements used in production of matches is', 'nitrogen', 'aluminum', 'copper', 'sulphur', 'sulphur', '2018-11-09 06:53:00'),
(133, 1, 2, 'Cathode rays cause an object placed behind a\r\nperforated anode to cast a shadow on the screen. This\r\nobservation shows that the rays', ' are positively charged', ' are negatively charged', 'Have mass', 'travel in straight lines', 'travel in straight lines', '2018-11-09 06:55:39'),
(134, 1, 2, 'Flow of current in electrolytes is due to the\r\nmovement of', 'electrons', ' Holes and electron', 'Ions', 'Charges', 'Ions', '2018-11-09 06:56:41'),
(135, 1, 2, 'A suitable reagent for distinguish between\r\nethanoic and ethanol is', 'bromine water', ' Fehlingâ€™ s solution', ' sodium hydrogen trioxocarbonate (iv)', ' Ammoniacal silver trioxonitrate(V)', ' sodium hydrogen trioxocarbonate (iv)', '2018-11-09 06:57:57'),
(136, 1, 2, 'In the discovery of protein, the instrument used\r\nis', ' cathode ray tube', ' glass tube and dischar ge tube', ' dischar ge tube with terminal cathode', ' dischar ge tube with central cathode', ' dischar ge tube with terminal cathode', '2018-11-09 07:03:42'),
(137, 1, 2, 'Which of the following metals burns with brick\r\nred', 'Pb', 'Ca', 'Na', ' Mg', 'Na', '2018-11-09 07:10:13'),
(138, 1, 2, 'In the production of soap, concentrated sodium\r\nchloride solution is added to', ' increase the solubility of soap', ' decrease the solubility of the soap', ' saponify the soap', ' emulsify the soap', ' decrease the solubility of the soap', '2018-11-09 07:11:36'),
(139, 1, 2, 'A liquid that will dissolve fat is', 'hydrochloric acid', 'calcium hydrochloride', 'kerosene', 'water', 'kerosene', '2018-11-09 07:12:44'),
(140, 1, 2, 'Tartaric acid is used industrially to', 'make baking powder', 'make fruit juice', ' remove rust', ' dry substance', 'make baking powder', '2018-11-09 07:13:46'),
(141, 1, 2, 'P1V1 = P2V2 supports ?', ' Charlesâ€™ s law', ' Boylesâ€™ s law', ' Grahamâ€™ s law', ' Avogadroâ€™ s law', ' Boylesâ€™ s law', '2018-11-09 07:14:53'),
(142, 1, 2, 'A fixed mass of gas a volume of 92cm\r\n3\r\n at 3Â°C.\r\nWhen will be its volume at 18C if the pressure\r\nremains constant?', ' 15.3cm3', ' 87.3cm3', ' 2.0cm3', ' 97.0cm3', ' 15.3cm3', '2018-11-09 07:17:13'),
(143, 1, 2, 'Which of the following ionâ€™\r\ns requires the\r\nquantity of electricity for discharge at an electrode', ' 2.0 mole of Q3 +', ' 2.5 mole of R2 +', ' 3.0 mole of T -', ' 4.0 mole of Y -', ' 2.0 mole of Q3 +', '2018-11-09 07:18:33'),
(144, 1, 2, 'Hydrogen can be displaced from a lot alkaline\r\nsolution by', 'Fe', 'Cu', 'Cn', 'Sn', 'Fe', '2018-11-09 07:19:54'),
(145, 1, 2, 'Which of the following types of alkanols\r\nundergo oxidation to produce alkanoic acids.\r\nI. Primary alkanols\r\nII. Secondary alkanols\r\nIII. Tertiary alkanols', ' I, II and III', 'I and II only', 'III only', 'I only', 'I only', '2018-11-09 07:21:39'),
(146, 1, 2, 'Rare gases are suitable because they', 'are monoatomic', 'form ions easily', ' have duplet or octet electronic configuratio', 'are volatile gases', ' have duplet or octet electronic configuratio', '2018-11-09 07:23:17'),
(147, 1, 2, 'A major source of oxide of oxygen is from the\r\nburning of', 'coal', 'wood', 'fuel', 'chlorofluorocarbons', 'coal', '2018-11-09 07:24:24'),
(148, 1, 2, 'Which of the activities is commonly used as a\r\nnuclear fuel', 'uranium', 'palladium', 'actium', 'thorium', 'uranium', '2018-11-09 07:25:21'),
(149, 1, 2, 'The leachate of a certain ash is used in local soap\r\nbecause it contain', 'sodium chloride and potassium hydroxide', ' sodium hydroxide', ' potassium hydroxide', 'soluble carbonates and hydrogen carbonate', 'sodium hydroxide', '2018-11-09 07:27:13'),
(150, 1, 2, 'All these are electromagnetic waves except', 'White light', 'Photon', 'X-ray', 'Infrared', 'Photon', '2018-11-09 07:29:20'),
(151, 1, 2, 'Cu2S(s) + O2(g) = 2CU(s) +SO2(g)', '+1 to 0', '0 to +2', '+2 to +1', '0 to +1', '+1 to 0', '2018-11-09 07:32:45'),
(152, 1, 2, 'The number of isomers formed by C6H14 is', '4', '5', '2', '3', '5', '2018-11-09 07:34:26'),
(153, 1, 2, 'There are basic particles from which matter\r\ncalled be made except', 'Salt', 'Atom', 'Ion', 'Molecule', 'Salt', '2018-11-09 07:35:31'),
(154, 1, 2, 'The energy value of petrol can be determined by', ' Bomb calorimeter', ' Catalytic cracker', ' Fractionating column', 'Thermometer', ' Fractionating column', '2018-11-09 07:36:43'),
(155, 1, 2, 'What volume of 0.5mldm3 H2SO4 will exactly neutralize 20cm3 of 0.1moldm3 NaOH Solution?', ' 2.0cm3', ' 5.0cm3', ' 6.8cm3', ' 8.3cm3', ' 2.0cm3', '2018-11-09 07:39:15'),
(156, 1, 2, 'A compound contains 40.0% carbon, 6.7%\r\nhydrogen and 53.3% oxygen. If the molar mass of the compound is 180, Find the molecular formula \r\n[H = 1,C = 12, O = 16)', ' CH2O', ' C3H6O3', 'C6H12O6', ' C6H12O3', 'C6H12O6', '2018-11-09 07:42:15'),
(157, 1, 2, 'An oxidation state of or in K2CrO7', '7', '6', '5', '4', '6', '2018-11-09 07:43:06'),
(158, 1, 2, 'The elements that belong to the third period of\r\nperiodic table are', 'Li, Be, Al and D', ' Na, P , O and Cl', 'B, C, N, and O', 'N2, Mg, S and Ar', 'N2, Mg, S and Ar', '2018-11-09 07:46:13'),
(159, 1, 2, 'When sugar is dissolve in ten, the reaction is\r\naccomplished by', 'positive change', 'negative entropy change', 'no entropy change', 'a minimum entropy change', 'no entropy change', '2018-11-09 07:47:56'),
(160, 1, 2, 'NH3(g)+ HCl(s)â†’ NH4Cl (s)\r\nThe entropy change in the system above is', 'positive', 'zero', 'negative', 'intermediate', 'negative', '2018-11-09 07:53:09'),
(161, 1, 2, 'Detergents are manufacture with strength hydrocarbon chains is to make them', 'soluble', 'biodegradable', 'cheaper', 'foamy', 'biodegradable', '2018-11-09 07:54:38'),
(162, 1, 2, 'Which of the following results in the fall of acid\r\nrain', ' oxide of lead', ' particulate matter', ' oxides of carbon', ' gaseous hydrocarbon', ' oxides of carbon', '2018-11-09 07:56:55'),
(163, 1, 2, 'The fuming of kettles is caused by the presence\r\nin the water of', 'calcium tetraoxosulphate (IV)', 'calcium hydrogentrionocarbonate (IV)', 'calcium hydroxide', 'calcium trioxocarbonate (IV)', 'calcium hydrogentrionocarbonate (IV)', '2018-11-09 07:58:10'),
(164, 1, 2, 'A difference between chemical and physical\r\nchange is that in a chemical change', ' oxygen is consumed', ' heat is supplied', ' the reversible process occurs', ' a new substance is formed', ' a new substance is formed', '2018-11-09 08:01:04'),
(165, 1, 2, 'According to the kinetic theory an absence in\r\ntemperature causes the kinetic energy of particles to', 'decrease', 'increase', ' remain constant', ' be zero', ' be zero', '2018-11-09 08:02:10'),
(166, 1, 2, 'PCL5(g)= PCL3(g) + Cl2(g)\r\nIn the reaction above, a decrease in pressure will', ' Decelerate the reaction', ' Increase yield of Pcl3', ' Increase the yield of Pcl5', ' Accurate the reaction', 'Increase yield of Pcl3', '2018-11-09 08:03:45'),
(167, 1, 2, 'Which of the following gives a precipitation\r\nwhen treated with NaOH Solution?', ' AlCl3', ' NH4Cl', ' Na2CO3', ' CH3COONa', ' AlCl3', '2018-11-09 08:05:30'),
(168, 1, 2, 'Electronic configuration of an elements 13x in\r\nthe subsidiary energy level is', '1s2 2s2 2p6 3s2 3p1', '1s2 2s2 2p4 3s1 3p1', '1s2 2s2 2p6 3s2 3p3', '1s1 2s2 2p6 3s2 3p4', '1s2 2s2 2p6 3s2 3p1', '2018-11-09 08:10:52'),
(169, 1, 2, 'Alloys are best prepared by', 'electroplating', ' Arc-welding', ' reducing and mixture of their metallic', ' cooking a molten of the metals', ' cooking a molten of the metals', '2018-11-09 08:12:06'),
(170, 1, 2, 'In countries where the temperature fall below\r\n273k, salt always spilled on the ray road in order to', ' increase the making point of fice', 'increase the density of the ice', 'make the ice impure', 'rinse the making point of the ice', ' increase the making point of fice', '2018-11-09 08:13:39'),
(171, 1, 2, 'What is the volume of energy required to burn\r\n45cm3 of mixture at S.T.P', ' 135.0cm3', ' 150.0cm3', ' 45.0cm3', ' 90.0cm3', ' 90.0cm3', '2018-11-09 08:50:07'),
(172, 1, 2, 'The substance that is used in the steel industry\r\nfor the removal of carbon. Sulphur and phosphorus\r\nimpurities from pig iron is', 'oxygen', 'chlorine', 'nitrogen', 'hydrogen', 'oxygen', '2018-11-09 08:51:20'),
(173, 1, 2, 'If glucose is heated on the concentration tetraoxosulphate(iv)acid, it will be dehydrated', 'carbon', ' carbon(iv)oxide', 'ethane', 'ethanol', 'carbon', '2018-11-09 08:52:34'),
(174, 1, 2, 'Rare gases are suitable because they', ' are monoatomic', ' form ions easily', ' have duplet or octet electronic configuratio', ' are volatile gases', ' have duplet or octet electronic configuratio', '2018-11-09 08:57:36'),
(175, 1, 2, 'Which of the following compounds can be\r\nrepresented by the molecular formula C2H6O?', 'propanal', 'ethanol', ' methanoic acid', 'glucose', 'ethanol', '2018-11-09 08:58:38'),
(176, 1, 2, 'Two equal bulbs, one containing ammonia and\r\nthe other one opened mouth-to mouth to each other at temperature the entropy in the mixture of gases is likely to', 'remain unchanged', ' increase', 'decrease', 'charge', ' remain unchanged', '2018-11-09 09:00:01'),
(177, 1, 2, 'what is the pH of 0.00lmoldm3 solution of\r\nsodium hydroxide', '14', '13', '12', '11', '11', '2018-11-09 09:01:17'),
(178, 1, 2, 'According to the kinetic theory an absence in\r\ntemperature causes the kinetic energy of particles to', 'decrease', 'increase', ' remain constant', ' be zero', ' remain constant', '2018-11-09 09:02:23'),
(179, 1, 2, 'N2O4(g)â†’ 2NO2(g)\r\nIn the endothermic reaction above, more products\r\nformed will be favored by', ' A constant values', ' an increase in pressure', ' a decrease pressure', ' a decrease volume', ' a decrease pressure', '2018-11-09 09:03:52'),
(180, 1, 2, 'Chlorine gas turns damp starch-iodide paper', 'pink', 'colourless', 'red', ' dark blue', ' dark blue', '2018-11-09 09:04:45'),
(181, 1, 2, 'Chlorine consisting of two isotope of mass\r\nnumber 35 and 37 in the ratio 3:1 has an atomic mass of 35.5. Calculate the relative abundance of the isotope of mass number 37', '20', '25', '60', '75', '25', '2018-11-09 09:05:56'),
(182, 1, 2, 'The principal constituent of natural gas is', 'methane', 'ethane', 'propane', 'Butane', 'methane', '2018-11-09 09:06:55'),
(183, 1, 2, 'One note of a hydrocarbon 36g of carbon and its\r\ndensity is 20. The structure of hydrocarbon is (organic chemical)', 'CH3C = CH', 'CH3CH = CH2', 'CH3CH2C = CH', 'CH33CH2CH3', 'CH3C = CH', '2018-11-09 09:08:22'),
(184, 1, 2, 'In the electrolysis of CuSo4(g)using platinum\r\nelectrode the reaction at the anode is', ' 4H+ 4e - 2H2', ' 4OH -  - 4e = 2H2O + O2', ' 2OH - 2e -  = 2OH', ' 2OH -  + 2OH = 2H2O + O2', ' 4OH -  - 4e = 2H2O + O2', '2018-11-09 09:11:27'),
(185, 1, 2, '5 block elements of the periodic table one made\r\nup of', 'groups 1, 2, 3', 'groups 1, and 2', 'group 3', 'group 3 to 7', 'groups 1, and 2', '2018-11-09 09:13:02'),
(186, 1, 1, 'The oxidation state of oxygen on\r\ntetraoxosulphate iv acid is', '-4', '-2', '4', '-8', '-2', '2018-11-09 09:14:14'),
(187, 1, 2, 'In the electrolysis of brine the anode is', 'platinum', 'copper', 'zinc', 'carbon', 'carbon', '2018-11-09 09:15:15'),
(188, 1, 2, 'Calculate the relative molecular mass of\r\nLimestone CaCO3, (Ca = 40, C =12, O = 16)', '56', '100', '76', '90', '100', '2018-11-09 09:16:41'),
(189, 1, 2, 'When stem is passed over red hot carbon the\r\nsubstances produced are', 'hydrogen and trioxocarbonate (IV) acid', 'hydrogen, oxygen and carbon (IV) oxide', 'hydrogen and carbon (ii) oxide', 'hydrogen and carbon (IV) oxide', 'hydrogen and carbon (ii) oxide', '2018-11-09 09:17:56'),
(190, 1, 6, 'This question is from the novel The Last Days at\nForcados High school.\nâ€˜Sorry does anyone know youâ€™re here? does daddy\nknow?... who said this and to who?', ' Mr. Solade to Mrs.Solade', ' Mrs. Solade to Mr . Solade', ' Jimi to Wole', 'Wole to Jimi', ' Jimi to Wole', '2018-11-17 07:06:03'),
(191, 1, 6, 'Choose the option that best completes the\r\nsentence.\r\nHe did not attend the final burial............', 'rite', 'rights', 'rites', 'right', 'rites', '2018-11-09 09:41:25'),
(192, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\nWho were the two people Seyi lawal and Jimi met\r\ncoming out of the principal office?', 'Efua and her Mother', 'Mr and Mrs Solade', 'Caro and Nene Ekpo', 'Teacher okoro and mama Silifat', 'Efua and her Mother', '2018-11-09 09:44:11'),
(193, 1, 6, 'This question is from the novel (The Last Days at\r\nForcados High school).\r\nWhat did Wole pick up from Jimiâ€™\r\ns Table beside Jimiâ€™s music CDâ€™s,chemisty and Mathematics Textbooks?', 'a pen', 'a watch', 'a book', ' a toy', 'a watch', '2018-11-09 09:47:15'),
(194, 1, 6, 'Select the wrongly spelt words', 'occurrence', 'surprise', 'personnel', 'posses', 'posses', '2018-11-09 09:48:25'),
(195, 1, 6, 'his question is from the novel (The Last Days at\r\nForcados High school).\r\nWho was the teacher to whom the students called\r\nâ€œcaneâ€?', 'Mr Bade', 'Mr Okoro', ' Mama Silifat', 'Mr Solade', 'Mr Bade', '2018-11-17 09:13:05'),
(196, 1, 6, 'I have the ---------- of meeting him', 'previlege', 'privilege', 'previledge', 'priviledge', 'privilege', '2018-11-09 09:59:42'),
(197, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\n\r\nWhat is the name of Efuaâ€™s Aunt?', ' funmi', 'Moni', ' Mrs solade', 'Nene ekpo', 'Moni', '2018-11-09 10:01:57'),
(198, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented\r\nby the underlined letters or letters underlined.\r\n\r\nSeat', 'hide', 'peasant', 'head', 'people', 'people', '2018-11-09 10:03:56'),
(199, 1, 6, 'Choose the option that best fills the gap.\r\nThe choice to go is -------------', 'yourss', ' your', 'yours', ' yourself', 'yours', '2018-11-17 09:21:33'),
(200, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented\r\nby the underlined letters or letters underlined.\r\n\r\nPass', 'earth', 'clerk', 'pass', 'man', 'man', '2018-11-09 10:07:40'),
(201, 1, 6, 'From the options, choose the word(s) that best\r\nfill the gap.\r\nMrs Godwin ---------------- in this school since 2001', 'taught', ' was teaching', 'teaches', ' has been teaching.', ' has been teaching.', '2018-11-09 10:10:41'),
(202, 1, 6, 'This question is from the novel (The Last Days at\r\nForcados High school).\r\nâ€œNene, this is my niece Efua Cokerâ€. Who made this statement?', 'Moni', 'Efua', ' Mrs. Ekpo', 'none', 'Moni', '2018-11-09 10:12:22'),
(203, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented\r\nby the underlined letters or letters underlined.\r\n\r\nPower', 'flour', 'higher', 'liar', 'flier', 'flour', '2018-11-09 10:14:11'),
(204, 1, 6, 'From the words lettered A to D, choose the word\r\nthat rhymes with the given word.\r\n\r\nFret', 'freight', 'height', 'threat', 'thread', 'threat', '2018-11-09 10:15:27'),
(205, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nWho laugh in such a way that showed only his upper teeth?', ' Seyi Lawal', ' Ansa boy', 'Kemi', 'Wole', 'Wole', '2018-11-09 10:17:11'),
(206, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented\r\nby the underlined letters or letters underlined.\r\n\r\nDone', 'don', 'sun', 'clown', 'dawn', 'sun', '2018-11-09 10:19:53'),
(207, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\n\r\nWho was Efua related to?', 'Arisa', 'Jimi', ' Mrs. Alli', ' Mr. Mallum', ' Mrs. Alli', '2018-11-09 10:22:18'),
(208, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nIn three words, describe the principal (Mr.Mallum)\r\nas described in the novel.', ' small, wiry and spoke through his nose', ' fat, smooth-cheeked and loved his job', ' tall, good- looking and funny', ' wicked, ugly and tall.', ' small, wiry and spoke through his nose', '2018-11-09 10:23:49'),
(209, 1, 6, 'Choose the option that best fills the gap.\r\n\r\nIt has been confirmed hat the election -------------\r\nheld in July next year', ' will be', ' is being', ' has been', ' have being', ' will be', '2018-11-09 10:25:50'),
(210, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\nWhat was the early morning surprise Jimi get while\r\nhe was still half-asleep?', ' Mrs Soladeâ€™ s return', ' Mr. Femiâ€™ s return', ' Tupac Shakur â€™s return', 'Woleâ€™s return', 'Woleâ€™s return', '2018-11-09 10:29:24'),
(211, 1, 6, 'From the words lettered A to D, choose the word\r\nthat rhymes with the given word.\r\n\r\nBreeze', 'stress', 'chess', 'free', ' trees', ' trees', '2018-11-09 10:30:33'),
(212, 1, 6, 'Select the wrongly spelt words', 'quite', 'beleive', 'proceed', ' advise/advice', 'beleive', '2018-11-09 10:31:55'),
(213, 1, 6, 'From the options, choose the word(s) that best\r\nfilll the gap.\r\nIf the armed robbers ------------------------ caught, they\r\nwould have been lynched', ' would be', ' have been', 'are', ' had been', ' had been', '2018-11-09 10:32:58'),
(214, 1, 6, 'Shakespearian ------------------- are generally the victims of circumstance.', 'heros', 'heroses', 'hero', 'heroes', 'heroes', '2018-11-09 10:34:03'),
(215, 1, 6, 'The brave officer ---------- the time bomb', 'diffused', 'druse', 'defused', 'difused', 'defused', '2018-11-09 10:35:30'),
(216, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\nWho was the best student in chemistry?', 'Ansa', 'Caro', 'Nene', 'Jimi', 'Jimi', '2018-11-09 10:36:35'),
(217, 1, 6, 'Select the wrongly spelt words', 'disappointed', 'embarassed', 'equipped', 'restaurant', 'restaurant', '2018-11-09 10:38:21'),
(218, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same consonant sounds as the one\r\nrepresented by the letters underlined.\r\n\r\nHang', 'hinge', 'tinge', 'song', 'balm', 'song', '2018-11-09 10:39:35'),
(219, 1, 6, 'Choose the option that best fills the gap.\r\nThe trader complained that he ------------------ robbed', 'had been', 'has been', 'was being', 'is being', 'has been', '2018-11-09 10:41:00'),
(220, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented\r\nby the underlined letters or letters underlined.\r\n\r\nPurse', 'journey', 'pays', 'heart', 'course', 'journey', '2018-11-09 10:42:43'),
(221, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nâ€œcome here, you pretty child; I hear you will be going\r\nto the same school as my daughter\r\n.\" Who made this\r\nstatement and to whom?', ' Aunt Moni said this to Efua', ' Efua to Aunt Moni', ' Mrs. Ekpo said this to Efua', ' Aunt Moni to Mrs. Ekpo', ' Mrs. Ekpo said this to Efua', '2018-11-09 10:44:37'),
(222, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented\r\nby the underlined letters or letters underlined.\r\n\r\nShoe', 'full', 'food', 'put', 'blood', 'food', '2018-11-09 10:49:13'),
(223, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\n\"No more chains in trousers or dangling earrings for\r\nthe girls. There will be an inspection of fingernails\r\nand socks during assembly\r\n. Principalâ€™s order\" who\r\nsaid this?', ' the senior prefect', 'principal', ' headboy', ' non-teaching staf f', 'headboy', '2018-11-09 10:52:43'),
(224, 1, 6, 'In each of the following questions, the\r\nmain/primary stress is indicated by writing the\r\nsyllable in which it occurs in capital letters. From the\r\nwords lettered A to D, choose the one that has the correct stress.\r\n\r\nEDUCATION', 'E-du-ca-tion', 'e-DU-ca-tion', 'e-du-CA-tion', 'e-du-ca-TION', 'e-du-CA-tion', '2018-11-09 10:54:39'),
(225, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\n__________ had been expelled from two different schools and kicked out of the university.', 'jolly', 'Jimi', 'nene ekpo', 'wole', 'wole', '2018-11-09 10:57:54'),
(226, 1, 6, 'Malnutrition has been described as a tragedy of great\r\nmagnitude. WHO (W\r\norld Health Or\r\nganisation)\r\ndeclares that it is an accomplice in at least half of the\r\n10.4 million child deaths each year\r\n. Malnutrition\r\ncovers a wide range of illness from unde', ' menial deficiencies', 'Obesity', ' diet-related chronic diseases', ' protein-ener gy malnutrition', ' protein-ener gy malnutrition', '2018-11-09 11:01:10'),
(227, 1, 1, 'Malnutrition has been described as a tragedy of great\r\nmagnitude. WHO (W\r\norld Health Or\r\nganisation)\r\ndeclares that it is an accomplice in at least half of the\r\n10.4 million child deaths each year\r\n. Malnutrition\r\ncovers a wide range of illness from unde', ' it cause obesity', ' it has great magnitude', ' it is an accomplice of at least half of the ', ' it is all over the world and popular even am', ' it is an accomplice of at least half of the ', '2018-11-09 11:04:07'),
(228, 1, 6, 'Four persons accused with currency ---------------\r\n--- are being held by the securing agents', 'traficking', 'trafiking', 'trafficking', 'traffic', 'trafficking', '2018-11-09 11:05:01'),
(229, 1, 6, 'From the options, choose the word(s) that best\r\nfill the gap.Each of the contestants--------------- a chance now', 'has', 'have', 'get', 'gets', 'has', '2018-11-09 11:10:33'),
(230, 1, 6, 'From the options, choose the word(s) that best\r\nfill the gap.Toyosi arrived late,--------------- the right route', 'Cannot have taken', ' Could not have take', 'could not had taken', 'could not have taken', 'could not have taken', '2018-11-09 11:12:52'),
(231, 1, 6, 'From the options, choose the word(s) that best\r\nfill the gap.\r\nIt was a funny episode, I ----------------', ' Canâ€™t help to laugh', ' Couldnâ€™ t help laugh', ' couldnâ€™ t help laughing', ' couldnâ€™ t help to laugh', ' couldnâ€™ t help laughing', '2018-11-09 19:22:09'),
(232, 1, 6, 'From the words lettered A to D, choose the word\r\nthat rhymes with the given word.\r\n\r\nPale', 'pail', 'palm', 'mall', 'haul', 'pail', '2018-11-09 19:23:46'),
(233, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nForcado is a nice school. They always have excellent results. I told a few people you were coming', 'Aunty moni said this to Efua', 'Efua said this to aunty Moni', ' Jimi said this to W ole', 'wole said this to Jimi', 'Aunty moni said this to Efua', '2018-11-09 19:25:30'),
(234, 1, 6, 'Choose the option that best fills the gap.\r\n\r\nThey ------------------- our donation with thanks', 'recieved', 'receipt', 'received', 'recceived', 'received', '2018-11-09 19:27:15'),
(235, 1, 6, 'From the words lettered A to D, choose the word\r\nthat rhymes with the given word.\r\n\r\nTenderly', 'actually', 'slenderly', 'faithfully', 'constantly', 'slenderly', '2018-11-09 19:28:17'),
(236, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\n\"What is this good-for\r\n-nothing doing in my house\".\r\nWhose words were these?', 'Jimi', ' Mrs Solade', ' Mr solade', 'Wole', ' Mr solade', '2018-11-09 19:29:51'),
(237, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented by the underlined letters or letters underlined.\r\n\r\nBrought', 'roar', 'plough', 'drought', 'worse', 'roar', '2018-11-09 19:30:59'),
(238, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same consonant sounds as the one represented by the letters underlined.\r\n\r\nGritty', 'asked', 'sachet', 'depot', 'wrestle', 'asked', '2018-11-09 19:32:12'),
(239, 1, 6, 'Choose the option that best fills the gap.\r\nWhilst the thief was -------------- the passengers kept apologizing for the inconveniences he was causing them.', 'rabbing', 'rubbing', 'robbing', 'rubbying', 'robbing', '2018-11-09 19:33:47'),
(240, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\n\"I could hear his voice from a distance, rowdy and\r\nfull of fun as usual,\"\r\nto whom were these words said\r\nto and who said it?', 'Ansa to Nene Ekpo', 'Nene ekpo to Ansa', 'Efua to seyi lawal', 'Jimi to Nene ekpo', 'Nene ekpo to Ansa', '2018-11-09 19:35:27'),
(241, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same consonant sounds as the one\r\nrepresented by the letters underlined.\r\n\r\nZoo', 'assault', 'assist', ' release', 'please', 'please', '2018-11-09 19:36:44'),
(242, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same consonant sounds as the one represented by the letters underlined.\r\n\r\nChalet', 'champion', 'chair', 'champagne', 'cheapen', 'champagne', '2018-11-09 19:38:03');
INSERT INTO `question` (`que_id`, `class_id`, `subject_id`, `que_desc`, `option1`, `option2`, `option3`, `option4`, `tru_ans`, `que_regdate`) VALUES
(243, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\nWhat was the name of Jimiâ€™s elder brother who stays\r\nabroad?', 'Wole', 'Femi', 'Ansa', 'Jolly', 'Femi', '2018-11-09 19:39:17'),
(244, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same consonant sounds as the one\r\nrepresented by the letters underlined.\r\n\r\ndice', 'shame', ' cue', 'chair', 'loss', 'loss', '2018-11-09 19:40:56'),
(245, 1, 6, 'Choose the option that best fills the gap.\r\nMy --------------------- is for you to refuse the -------------- of the wicked', 'advise/advice', 'advice/advice', 'advice/advise', 'advise/advise', 'advice/advice', '2018-11-09 19:42:15'),
(246, 1, 6, 'Choose the option that best fills the gap.\r\n\r\nThat single ---------------- was enough to spoil a\r\nwhole lifetime of good living', 'occurrence', 'occurence', 'ocurrence', 'occurense', 'occurrence', '2018-11-09 19:43:34'),
(247, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented by the underlined letters or letters underlined.\r\n\r\nMother', 'labour', 'cargo', 'exhibit', 'council', 'labour', '2018-11-09 19:44:57'),
(248, 1, 6, 'Choose the option that best fills the gap.\r\n\r\nThe officer was compelled to ------------------- the suspectâ€™s car.', 'seize', 'cease', 'sieze', 'sease', 'seize', '2018-11-09 19:46:21'),
(249, 1, 6, 'Choose the option that best fills the gap.\r\n\r\nFor taking part in the unsuccessful ------------------,the mutineers were court-martialed', 'coope', 'copes', 'coup', 'coupe', 'coup', '2018-11-09 19:49:19'),
(250, 1, 6, 'Choose the option that best fills the gap.\r\n\r\nHe missed the point because he took the statement ------------', 'literally', 'litaraily', 'literary', 'unlitaterally', 'literally', '2018-11-09 19:50:57'),
(251, 1, 6, 'From the words lettered A to D, choose the word\r\nthat rhymes with the given word.\r\n\r\nWorst', 'burst', 'haste', 'guessed', 'perched', 'burst', '2018-11-09 19:51:55'),
(252, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented\r\nby the underlined letters or letters underlined.\r\n\r\nOwl', 'bowl', 'tow', 'howl', 'route', 'howl', '2018-11-09 19:53:07'),
(253, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nWhat did papa Solade do after knowing that Wole\r\nand jimi still saw secretly?', 'he flogged jimi', 'he flogged wole', 'sent jimi away to Ibadan', 'sent jimis mother away', 'sent jimi away to Ibadan', '2018-11-09 19:56:23'),
(254, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\n\"Jims, we have a perfect meeting with Mr Mallum\r\nnow\" who made this statement?', ' Seyi Lawal', ' Mr Mallum', ' Mrs. Solade', 'Femi', ' Seyi Lawal', '2018-11-09 19:58:09'),
(255, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented by the underlined letters or letters underlined.\r\n\r\ngranite', ' lean', 'sit', 'contrite', 'light', 'sit', '2018-11-09 20:00:49'),
(256, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\nIn chapter two, after the national anthem and\r\nassembly prayers, who gave a brief talk welcoming everyone?', 'Seyi Lawal', ' Jimi', ' Mrs Solade', ' The principal', 'The principal', '2018-11-09 20:04:17'),
(257, 1, 6, 'Choose the option that best fills the gap.\r\n\r\nMost of his personal ---------------stolen', 'effects were', ' affects was', 'effects was', 'defects', 'effects were', '2018-11-09 20:07:22'),
(258, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\n\r\nWhat prefect was Jimi?', 'food prefect', 'assembly prefect', ' health prefect', 'the headboy', ' health prefect', '2018-11-09 20:09:10'),
(259, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\n\r\nSomeone called Jimi after he left his food and got\r\noutside the gate of his house, Who is it?', ' Jimi uncle', ' Seyi lawal', ' Mr.mallum', ' Ansa', ' Ansa', '2018-11-09 20:10:10'),
(260, 1, 6, 'Choose the option that best fills the gap.\r\nThe ------------------- in an attempt to please the workers promised to provide for them an..........as soon as possible.', 'Commitee/ accommondation', 'Comittee/ acommodation', 'committe/accommodasion', 'committee/ accommodation', 'committee/ accommodation', '2018-11-09 20:11:43'),
(261, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same consonant sounds as the one represented by the letters underlined.\r\n\r\nStraight', 'struggle', 'waste', 'waist', 'stare', 'struggle', '2018-11-09 20:13:03'),
(262, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\n\r\nSorry does anyone know youâ€™re here? does daddy\r\nknow?... who said this and to who?', 'Mr. Solade to Mrs.Solade', ' Mrs. Solade to Mr . Solade', ' Jimi to Wole', 'Wole to Jimi', ' Jimi to Wole', '2018-11-09 20:15:55'),
(263, 1, 6, 'Choose the option that best completes the\r\nsentence.\r\nHe did not attend the final burial............', ' rite', 'rights', 'rites', 'right', 'rites', '2018-11-09 20:17:22'),
(264, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nWho were the two people Seyi lawal and Jimi met\r\ncoming out of the principal office?', 'Efua and her Mother', 'Mr and Mrs Solade', 'Caro and Nene Ekpo', ' Teacher okoro and mama Silifat', 'Efua and her Mother', '2018-11-09 20:19:45'),
(265, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nWhat did Wole pick up from Jimiâ€™s Table beside\r\nJimiâ€™s music CDâ€™s, chemisty and Mathematics\r\nTextbooks?', ' a pen', ' a watch', ' a book', ' a toy', ' a watch', '2018-11-09 20:21:20'),
(266, 1, 6, 'Select the wrongly spelt words', 'occurrence', 'surprise', 'personnel', 'posses', 'posses', '2018-11-09 20:22:20'),
(267, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nWho was the teacher to whom the students called\r\nâ€œcaneâ€?', ' Mr Bade', ' Mr Okoro', ' Mama Silifat', ' Mr Solade', ' Mr Bade', '2018-11-09 20:23:36'),
(268, 1, 6, 'I have the ---------- of meeting him', 'previlege', 'privilege', 'previledge', ' priviledge', 'privilege', '2018-11-09 20:24:54'),
(269, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\nWhat is the name of Efuaâ€™s Aunt?', ' funmi', ' Moni', ' Mrs solade', ' Nene ekpo', ' Moni', '2018-11-09 20:27:28'),
(270, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented by the underlined letters or letters underlined.\r\n\r\nSeat', 'hide', 'peasant', ' head', 'people', 'people', '2018-11-09 20:28:43'),
(271, 1, 6, 'Choose the option that best fills the gap.\r\n\r\nThe choice to go is -------------', 'yourss', 'your', 'yous', ' yours', 'yours', '2018-11-09 20:30:46'),
(272, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented\r\nby the underlined letters or letters underlined.\r\n\r\nPass', 'earth', 'clerk', 'pass', 'man', 'clerk', '2018-11-09 20:31:56'),
(273, 1, 6, 'From the options, choose the word(s) that best\r\nfill the gap.\r\n\r\nMrs Godwin ---------------- in this school since 2001', ' taught', ' was teaching', ' teaches', ' has been teaching.', ' has been teaching.', '2018-11-09 20:33:15'),
(274, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nâ€œNene, this is my niece Efua Cokerâ€. Who made this\r\nstatement?', 'Moni', 'Efua', ' Mrs. Ekpo', 'none', 'Moni', '2018-11-09 20:34:23'),
(275, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented\r\nby the underlined letters or letters underlined.\r\n\r\nPower', 'flour', 'higher', ' liar', 'flier', 'flour', '2018-11-09 20:36:46'),
(276, 1, 6, 'From the words lettered A to D, choose the word\r\nthat rhymes with the given word.\r\n\r\nFret', 'freight', 'height', ' threat', ' thread', 'threat', '2018-11-09 20:40:15'),
(277, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nWho laugh in such a way that showed only his upper\r\nteeth?', 'Seyi Lawal', ' Ansa boy', 'Kemi', 'Wole', 'Wole', '2018-11-09 20:41:47'),
(278, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same vowel sound as the one represented\r\nby the underlined letters or letters underlined.\r\n\r\nDone', 'don', 'sun', 'clown', 'dawn', 'sun', '2018-11-09 20:42:52'),
(279, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\n\r\nWho was Efua related to?', 'Arisa', 'Jimi', ' Mrs. Alli', ' Mr. Mallum', ' Mrs. Alli', '2018-11-09 20:44:36'),
(280, 1, 6, 'This question is from the novel \"The Last Days at\r\nForcados High school\".\r\nIn three words, describe the principal ( Mr\r\n. Mallum)\r\nas described in the novel.', ' small, wiry and spoke through his nose', ' fat, smooth-cheeked and loved his job', ' tall, good- looking and funny', ' wicked, ugly and tall.', ' small, wiry and spoke through his nose', '2018-11-09 20:47:04'),
(281, 1, 6, 'Choose the option that best fills the gap.\r\nIt has been confirmed that the election -------------\r\nheld in July next year', 'will be', ' is being', ' has been', ' have being', ' will be', '2018-11-09 20:48:39'),
(282, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\n\r\nWhat was the early morning surprise Jimi get while he was still half-asleep?', ' Mrs Soladeâ€™ s return', ' Mr. Soladeâ€™ s return', ' Tupac Shakur â€™s return', 'Woleâ€™s return', 'Woleâ€™s return', '2018-11-09 20:51:08'),
(283, 1, 6, 'From the words lettered A to D, choose the word\r\nthat rhymes with the given word.\r\n\r\nBreeze', 'stress', 'chess', 'free', 'trees', 'trees', '2018-11-09 20:52:14'),
(284, 1, 6, 'Select the wrongly spelt words', 'quite', 'beleive', 'proceed', ' advise/advice', 'beleive', '2018-11-09 20:53:21'),
(285, 1, 6, 'From the options, choose the word(s) that best\r\nfill the gap.\r\n\r\nIf the armed robbers ------------------------ caught, they\r\nwould have been lynched', ' would be', ' have been', ' are', ' had been', ' had been', '2018-11-09 20:54:49'),
(286, 1, 6, 'Shakespearian ------------------- are generally the victims of circumstance.', 'heros', 'heroses', 'hero', 'heroes', 'heroes', '2018-11-09 20:55:59'),
(287, 1, 6, 'The brave officer ---------- the time bomb', 'diffused', 'druse', ' defused', 'difused', 'defused', '2018-11-09 20:57:02'),
(288, 1, 6, 'This question is from the novel The Last Days at\r\nForcados High school.\r\n\r\nWho was the best student in chemistry?', 'Ansa', 'Caro', 'Nene', 'Jimi', 'Jimi', '2018-11-09 20:58:13'),
(289, 1, 6, 'Select the wrongly spelt words', 'disappointed', 'embarassed', 'equipped', 'restaurant', 'embarassed', '2018-11-09 20:59:13'),
(290, 1, 6, 'From the words lettered A to D, choose the word\r\nthat has the same consonant sounds as the one\r\nrepresented by the letters underlined.\r\n\r\nHang', 'hinge', 'tinge', 'song', 'balm', 'balm', '2018-11-09 21:00:38'),
(291, 1, 6, 'Choose the option that best fills the gap.\r\n\r\nThe trader complained that he ------------------ robbed', ' had been', ' has been', ' was being', ' is being', ' has been', '2018-11-09 21:02:09'),
(292, 1, 4, 'Find the value of 1\r\n10111+ 10100 in base 2', ' 1101011 base 2', '1001001  base 2', ' 1001011  base 2', ' 1001111  base 2', ' 1001011  base 2', '2018-11-10 18:41:34'),
(293, 1, 4, 'A woman bought a grinder for N60,000. She\r\nsold it at a loss of 15%. How much did she sell it?', ' N53,000', ' N52,000', ' N51,000', ' N50,000', ' N51,000', '2018-11-10 18:42:38'),
(294, 1, 4, 'Express the product of 0.00043 and 2000 in\r\nstandard form.', ' 8.6 x 10  raise to power -3', ' 8.3 x 10  raise to power -2', ' 8.6 x 10  raise to power -1', ' 8.6 x 10', ' 8.6 x 10  raise to power -1', '2018-11-10 18:47:13'),
(295, 1, 4, 'A man donates 10% of his monthly net earnings\r\nto his church. If it amounts to N4,500, what is his net\r\nmonthly income?', 'N40,500', 'N45,000', 'N52,500', 'N62,000', 'N45,000', '2018-11-10 18:48:31'),
(296, 1, 4, 'If log7.5 = 0.8751, evaluate 2 log75 + log750', ' 6.6252', ' 6.6253', ' 66.252', ' 66.253', ' 6.6253', '2018-11-10 18:49:19'),
(297, 1, 4, 'Solve for x in 8x ^-2= 2/25', '4', '6', '8', '10', '10', '2018-11-10 18:52:17'),
(298, 1, 4, 'If P = {1,2,3,4,5} and P \r\n Q = {1,2,3,4,5,6,7},list the elements in Q', ' {6}', ' {7}', ' {6,7}', ' {5,6}', ' {6,7}', '2018-11-10 18:55:10'),
(299, 1, 4, 'Factorize 2y^2- 15xy + 18x^\r\n2', ' (2y - 3x) (y + 6x)', ' (2y - 3x) (y - 6x)', ' (2y + 3x) (y - 6x)', ' (3y + 2x) (y - 6x)', ' (2y - 3x) (y - 6x)', '2018-11-10 18:56:31'),
(300, 1, 4, 'Find the value of \r\nk,if y - 1 is a factor of y^3 + 4y^2+ ky - 6', '-6', '-4', '0', '1', '1', '2018-11-10 18:57:55'),
(301, 1, 4, 'y varies directly as w^2. When y = 8, w = 2. Find\r\ny when w = 3', '18', '12', '9', '6', '18', '2018-11-10 18:59:12'),
(302, 1, 4, 'P varies directly as Q and inversely as R. When\r\nQ = 36 and R = 16, P = 27. Find the relation between\r\nP, Q and R.', 'P = Q/12R', 'P = 12Q/R', 'P = 12QR', 'P = 12QR', 'P = 12Q/R', '2018-11-10 19:00:58'),
(303, 1, 4, 'What is the solution of x-5/x+3 < -1?', '-3 < x < 1', ' x < -3  or x > 1', '-3 < x < 5', 'x < -3 or x > 5', '-3 < x < 1', '2018-11-10 19:02:39'),
(304, 1, 4, 'Evaluate the inequality x/2 + x/3 â‰¤ 5x/6 - 7/12', 'x â‰¥ 4', 'x â‰¤ 3', 'x â‰¥ âˆ’ 3', 'x â‰¤ âˆ’ 4', 'x â‰¥ 4', '2018-11-10 19:05:24'),
(305, 1, 4, 'The 4th term of an A.P\r\n. is 13 while the 10th term\r\nis 31. Find the 24th term.', '89', '75', '73', '69', '73', '2018-11-10 19:06:11'),
(306, 1, 4, 'A binary operation * is defined by x * y = x\r\ny. If x * 2 = 12 - x, find the possible values of x', ' 3,4', ' 3,-4', ' -3,4', ' -3,-4', ' 3,-4', '2018-11-10 19:08:31'),
(307, 1, 4, 'How many sides has a regular polygon whose\r\ninterior angle is 135 degree', '12', '10', '9', '8', '8', '2018-11-10 19:09:49'),
(308, 1, 4, 'A cylindrical tank has a capacity of 6160m^3.What is the depth of the tank if the radius of its base\r\nis 28cm', ' 8.0m', ' 7.5m', ' 5.0m', ' 2.5m', ' 2.5m', '2018-11-10 19:11:04'),
(309, 1, 4, 'The locus of a dog tethered to a pole with a rope\r\nof 4m is a', ' circle with diameter 4m', ' circle with radius 4m', ' semi-circle with diameter 4m', ' semi-circle with radius 4m', ' semi-circle with radius 4m', '2018-11-10 19:12:07'),
(310, 1, 4, 'Find the mid point of S(-5, 4) and T(-3, -2)', ' -4, 2', ' 4, -2', ' -4, 1', ' 4, -1', ' -4, 1', '2018-11-10 19:14:41'),
(311, 1, 4, 'The gradient of a line joining (x,4) and (1,2) is \r\n1/2. Find the value of x', '5', '3', '-3', '-5', '5', '2018-11-10 19:16:00'),
(312, 1, 4, 'Calculate the mid point of the line segment y -\r\n4x + 3 = 0, which lies between the x-axis and y-axis.', '(3 -38 2)', '(3 38 2)', '(-2 22 2)', '(-2 33 2)', '(3 -38 2)', '2018-11-10 19:18:25'),
(313, 1, 4, 'Find the equation of the straight line through (-2,\r\n3) and perpendicular to 4x + 3y - 5 = 0', '3x - 4y + 18 = 0', ' 3x + 2y - 18 = 0', ' 4x + 5y + 3 = 0', ' 5x - 2y - 1 1 = 0', ' 3x - 4y + 18 = 0', '2018-11-10 19:19:34'),
(314, 1, 4, 'If y = 4x^3- 2x^2+ x, find  dy/dx', ' 8x^2 - 2x + 1', ' 8x^2 - 4x + 1', ' 12x^2 - 2x + 1', ' 12x^2 - 4x + 1', ' 12x^2  - 4x + 1', '2018-11-10 19:22:42'),
(315, 1, 4, 'If y = cos 3x, find dy/dx', '1/3 sin 3x', '-1/3 sin 3x', '3 sin 3x', '-3 sin 3x', '-3 sin 3x', '2018-11-10 19:24:46'),
(316, 1, 4, 'Find the minimum value of y = x^2- 2x - 3', '4', '1', '-1', '-4', '-4', '2018-11-10 19:25:51'),
(317, 1, 4, 'Evaluate  Integration sin2xdx', 'cos 2x + k', '1/2 cos 2x + k', '-1/2 cos 2x + k', '-cos 2x + k', '-1/2 cos 2x + k', '2018-11-10 19:27:49'),
(318, 1, 4, 'Evaluate Integration (2x +\r\n 3)^1/2 dx', '1/12(2x + 3)^6 + k', '1/3(2x + 3)^1/2 + k', '1/3(2x + 3)^3/2 + k', '1/12(2x + 3)^3/4 + k', '1/3(2x + 3)^3/2 + k', '2018-11-10 19:30:53'),
(319, 1, 4, 'The mean of 2 - 4, 4 + t, 3 - 2t and t - 1 is', 't', '-t', '2', '-2', '2', '2018-11-10 19:31:33'),
(320, 1, 4, 'Find the median of 5,9,1,10,3,8,9,2,4,5,5,5,7,3\r\nand 6', '6', '5', '4', '3', '5', '2018-11-10 19:32:18'),
(321, 1, 4, 'Find the standard deviation of 5, 4, 3, 2, 1', 'root 2', 'root 3', 'root 6', 'root 10', 'root 2', '2018-11-10 19:33:25'),
(322, 1, 4, 'In how many ways can a team of 3 girls be\r\nselected from 7 girls?', '7!/3!', '7!/4!', '7!/3!4!', '7!/2!5!', '7!/3!4!', '2018-11-10 19:35:02'),
(323, 1, 4, 'A number is chosen at random from 10 to 30\r\nboth inclusive. What is the probability that the\r\nnumber is divisible by 3?', '2/15', '1/10', '1/3', '2/5', '1/3', '2018-11-10 19:36:11'),
(324, 1, 1, 'What is the least possible error encountered\r\nwhen taking measurement with a meter rule?', '0.1mm', '1.0mm', '0.5mm', '0.2mm', '0.5mm', '2018-11-10 19:51:02'),
(325, 1, 1, 'A quantity which requires magnitude and\r\ndirection to be specified is', ' Temperature', 'Distance', ' Displacement', 'Mass', ' Displacement', '2018-11-10 19:58:41'),
(326, 1, 1, 'I Electrical potential, II Torque,III Kinetic\r\nEnergy,IV Momentum. Which of the quantities\r\nlisted are vectors?', ' II and IV', ' I and II', ' I and III', ' II and III', ' II and IV', '2018-11-10 19:59:41'),
(327, 1, 1, 'Which type of motion do the wheels of a moving\r\ncar under\r\ngo?', ' Vibratory and translational motion', ' Random and translational motion', ' Rotational mand oscillatory motion', ' Translational and rotational motion', ' Translational and rotational motion', '2018-11-10 20:00:28'),
(328, 1, 1, 'A car accelerates uniformly from rest at 3ms^-2.its velocity after traveling a distance of 24m is', ' 12ms ^-1', ' 144ms ^-1', ' 72ms ^-1', ' 36ms ^-1', ' 12ms ^-1', '2018-11-10 20:01:57'),
(329, 1, 1, 'Calculate the escape velocity of a satellite\r\nlaunched from the earth surface if the radius of the earth is 6.4x10^6m', ' 25.3kms ^-1', ' 4.2kms ^-1', ' 4.0kms ^-1', ' 11.3kms ^-1', ' 11.3kms ^-1', '2018-11-10 20:05:07'),
(330, 1, 1, 'An object of weight 80kg on earth is taken to a\r\nplanet where acceleration due to gravity is one-third\r\nof its value on earth. The weight of the object on the\r\nplanet is', ' 48N', ' 12N', ' 27N', ' 36N', ' 27N', '2018-11-10 20:05:55'),
(331, 1, 1, 'One of the conditions necessary for an object to\r\nbe in equilibrium when acted upon by a number of\r\nparallel forces is that the vector sum of the forces is\r\n', ' Average', ' Zero', ' Negative', ' Positive', 'Zero', '2018-11-10 20:06:42'),
(332, 1, 1, 'What happens when three coplanar non-parallel\r\nforces are in equilibrium?', ' Their lines of action are parallel.', ' They are represented in magnitude only', ' They are represented in direction only', ' Their lines of action meet at a point', ' They are represented in direction only', '2018-11-10 20:07:32'),
(333, 1, 1, 'An object of mass 20kg is released from a height\r\nof 10m above the ground level. The kinetic energy of the object just before it hits the ground is\r\n', '200J', ' 4000J', ' 2000J', '500J', ' 2000J', '2018-11-10 20:08:28'),
(334, 1, 1, 'The energy in the nucleus of atoms produce heat\r\nwhich can be used to generate', ' Kinetic energy', ' Mechanical energy', ' Electrical energy', ' Potential energy', ' Kinetic energy', '2018-11-10 20:10:53'),
(335, 1, 1, 'A machine whose ef\r\nficiency is 75% is used to\r\nlift a load of 1000N. Calculate the effort put in to the\r\nmachine if it has a Velocity ratio of 4.', ' 343.32N', ' 233.33N', ' 333.33N', ' 334.33N', ' 333.33N', '2018-11-10 20:12:02'),
(336, 1, 1, 'A wheel and an axle is used to raise a load whose\r\nweight is 800N when an ef\r\nfort of 250N is applied. If\r\nthe radii of the wheel and axle are 800mm and\r\n200mm respectively, the efficiency of the machine is', '90%', ' 80%', ' 85%', ' 87%', ' 80%', '2018-11-10 20:13:05'),
(337, 1, 1, 'A force of 500N\r\n1 is applied to a steel wire of cross-sectional area 0.2m^2, The tensile stress is', ' 2.5x10 4 Nm^-2', ' 1.0x10 2 Nm^-2', ' 1.0x10 3 Nm^-2', ' 2.5x10 3 Nm^-2', ' 2.5x10 3 Nm^-2', '2018-11-10 20:15:00'),
(338, 1, 1, 'The small droplets of water that form on the\r\ngrass in the early hours of the morning is', 'Fog', 'Haul', 'Mist', 'Dew', 'Dew', '2018-11-10 20:15:55'),
(339, 1, 1, 'What is the equivalent of 20K in Celsius scale?', ' 20 Degree Celcius', ' 293 Degree Celcius', ' 68 Degree Celcius', ' 36 Degree Celcius', ' 293 Degree Celcius', '2018-11-10 20:17:12'),
(340, 1, 1, 'The equation PaVbTc= constant reduces to\r\nCharles Law if', ' a=1, b=1and c=0', 'a=1, b=0 and c=-1', 'a=0, b=1 and c=1', 'a=0, b=1 and c=-1', 'a=0, b=1 and c=-1', '2018-11-10 20:18:30'),
(341, 1, 1, 'The quantity of heat needed to raise the\r\ntemperature of a body by 1K is the bodys', ' Heat capacity', ' Internal energy', 'Specific heat capacity', 'Latent heat of fusion', 'Heat capacity', '2018-11-10 20:19:53'),
(342, 1, 1, 'The melting point of a substance is equivalent to\r\nits', ' Vapour Pressure', ' Solidification Temperature', ' Liquidification Temperature', ' Solidification Pressures', ' Solidification Temperature', '2018-11-10 20:21:01'),
(343, 1, 1, 'The temperature at which the water vapour\r\npresent in the air is just sufficient to saturate air is', ' Boiling point', ' Ice point', ' Saturation point', ' Dew point', ' Dew point', '2018-11-10 20:22:11'),
(344, 1, 1, 'Heat transfer by convection in a liquid is due to\r\nthe', ' Latent heat of vaporization of the liquid', ' Increased vibration of the molecules of the ', ' Variation of density of the liquid', ' Expansion of the liquid as it is heated', ' Expansion of the liquid as it is heated', '2018-11-10 20:23:56'),
(345, 1, 1, 'he distance between two successive crests of a\r\nwave is 15cm and the velocity 300ms^-1. Calculate the frequency.', '2.0x10^2Hz', ' 4.5x10^3Hz', ' 2.0x10^3Hz', ' 4.5x10^2Hz', ' 2.0x10^3Hz', '2018-11-10 20:25:54'),
(346, 1, 1, 'A boy receives the echo of his clap reflected by a nearby hill 0.8s later. How far is he from the hill?', '528m', '66m', '136m', '264m', '136m', '2018-11-10 20:27:04'),
(347, 1, 1, 'An object is placed 10m from a pinhole camera\r\nof length 25cm. Calculate the linear magnification.', ' 2.5x10^2', ' 2.5x10^-2', ' 2.5x10^-1', ' 2.5x10^1', ' 2.5x10^-2', '2018-11-10 20:28:21'),
(348, 1, 1, 'The focal length of a concave mirror is 2.0cm. If\r\nan object is placed 8.0cm from it, the image is a', ' 2.7m', ' 2.0m', ' 2.3m', ' 2.5m', ' 2.7m', '2018-11-10 20:29:11'),
(349, 1, 1, 'In a compound microscope, the objective and the\r\neye piece focal lengths are', 'At infinity', 'Long', 'Short', ' The same', 'Short', '2018-11-10 20:30:50'),
(350, 1, 1, 'When a telescope is in normal use, the final\r\nimage is at', 'Infinity', 'The focus', 'The radius of curvature', 'The near point', ' Infinity', '2018-11-10 20:31:59'),
(351, 1, 1, 'When a negatively charged rod is brought near\r\nthe cap of a charged gold leaf electroscope which has\r\npositive charges, the leaf', 'Remains the same', 'Collapses', ' Collapses and diverges again', ' Diverges', 'Collapses', '2018-11-10 20:39:21'),
(352, 1, 1, 'What charge is stored in a 0.1F capacitor when a\r\n10V supply is connected across it?', '1C', '5C', '4C', '2C', '5C', '2018-11-10 20:41:11'),
(353, 1, 1, 'The maximum power transfer occur in a cell when the external resistance is', 'Twice the internal resistance of the cell', 'The same as the internal resistance of the cell', 'Greater than the internal resistance of the cell', 'Less than the internal resistance of the cell', 'The same as the internal resistance of the cell', '2018-11-10 20:49:13'),
(354, 1, 1, 'If a metal wire 4m long and cross-sectional area\r\n0.8 mm^2 has a resistance of 60, find the resistivity of\r\nthe wire', ' 5.3x10^-7', ' 3.0x10^-5', ' 1.2x10^-6', ' 3.2x10^-6', ' 1.2x10^-6', '2018-11-10 20:53:59'),
(355, 1, 1, 'A circuit has a resistance of 200â„¦. The\r\nresistance of the circuit can be reduced to 120â„¦ when', 'A 300â„¦ resistor is connected to it in parallel', 'An 80â„¦ resistor is conneceted to it in series', 'A 150â„¦ resistor is connected to it in parallel', 'A 240â„¦ resistor is connected to it in series', 'A 300â„¦ resistor is connected to it in parallel', '2018-11-10 20:57:19'),
(356, 1, 1, 'PHCN measures its electrical energy in', 'W', ' KWh', ' Wh', 'J', 'KWh', '2018-11-10 20:59:30'),
(357, 1, 1, 'What is the best method of demagnetizing a steel\r\nbar magnet?', 'Hammering', 'Heating it', 'Rough handling it', 'Solenoid method', 'Solenoid method', '2018-11-10 21:01:04'),
(358, 1, 1, 'The magnitude of the angle of dip at the equator\r\nis', ' 360 degree', '0 degree', '90 degree', '180 degree', '0 degree', '2018-11-10 21:03:02'),
(359, 1, 1, 'When an atom under\r\ngoes a beta decay,the\r\natomic number of the nucleus', 'Remains unchanged', 'Decreases by one', 'Increases by one', 'Becomes zero', 'Increases by one', '2018-11-10 21:04:40'),
(360, 1, 1, 'Calculate the mass of the copper deposited\r\nduring electrolysis when a current of 4A passes\r\nthrough a copper salt for 2 hours. [Ece of Copper z=3.3x10^-7kgC^-1]', ' 2.9x10^5 kg', ' 9.5x10^-7 kg', ' 9.5x10^-3 kg', ' 2.9x10^4 kg', ' 9.5x10^-3 kg', '2018-11-10 21:07:15'),
(361, 1, 1, 'Which gas produces a pink coloured light in a\r\ndischarge tube?', ' Mercury', ' Argon', 'Air', 'Neon', 'Air', '2018-11-10 21:08:20'),
(362, 1, 1, 'In a common emitter configuration, the output\r\nvoltage is through the', 'Resistor', 'Base', 'Collector', 'Emitter', 'Emitter', '2018-11-10 21:09:01'),
(363, 1, 1, 'A glass bottle of initial volume 2 x 10^4cm^3 is heated from 20C to  50C. If the linear expansivity of glass is 9 x 10^6K^-1, the volume of the bottle at 50C is', ' 20016.2cm^3', ' 20005.4cm^3', ' 20008.1cm^3', ' 20013.5cm^3', ' 20016.2cm^3', '2018-11-10 21:12:25'),
(364, 1, 1, 'A glass bottle of initial volume 2 x 10^4cm^3 is heated from 20C to  50C. If the linear expansivity of glass is 9 x 10^6K^-1, the volume of the bottle at 50C is', ' 20016.2cm^3', ' 20005.4cm^3', ' 20008.1cm^3', ' 20013.5cm^3', ' 20016.2cm^3', '2018-11-11 13:47:15'),
(365, 1, 9, 'The law of variable proportions is also known as', ' law of demand', ' law of diminishing returns', ' law of diminishing mar ginal utility', ' law of returns to scale', 'law of diminishing returns', '2018-11-11 13:53:18'),
(366, 1, 9, 'All the following are problems identified with agriculture in\r\nWest Africa except', ' land tenure system', ' ignorance of the farmers', ' use of crude implement', ' provision of food for the teeming population', ' provision of food for the teeming population', '2018-11-11 13:56:07'),
(367, 1, 9, 'Revenue can be expressed as', ' total Profit made after sales', ' amount of goods produced', ' total money realized from sales', ' amount spent on purchases', ' total money realized from sales', '2018-11-11 13:59:41'),
(368, 1, 9, 'All the following are factors that would bring about a change\r\nin supply except', ' level of technology', ' government policy', ' Entry of new firms', ' Price of the commodity', ' Price of the commodity', '2018-11-11 14:01:26'),
(369, 1, 9, 'The combination of two commodities each yielding the same level of satisfaction to the consumer is', ' consumer surplus', ' indifference curve', ' budget constant', ' goods of necessity', ' indifference curve', '2018-11-11 14:02:29'),
(370, 1, 9, 'In which situation is it likely that the demand for labour would be inelastic?', 'Labour and capital are close substitutes', 'Labour costs are only a small proportion of total costs', ' Demand for the final product that the labour produces is\nelastic', ' A lar\nge quantity of unemployed labour is available in the\neconomy', ' Labour costs are only a small proportion of total costs', '2018-11-11 14:07:05'),
(371, 1, 9, 'The headquarter of the Organization Of Petroleum Exporting\r\nCountries (OPEC) is in', ' Paris, France', ' Geneva, Switzerland', ' Lagos, Nigeria', ' Vienna, Austria', ' Vienna, Austria', '2018-11-11 14:08:39'),
(372, 1, 9, 'What will increase the likelihood that the firms in an industry will conclude to maximize their joint profit?', ' The industry has many dif\nferentiated products', ' The industry is characterized by rapid technological change', ' The industry consist of lar\nge number of producers', ' There are significant barriers to prevent firms entering the\nmarket', ' There are significant barriers to prevent fi', '2018-11-11 14:10:57'),
(373, 1, 9, 'A commercial bank can create money by', ' issuing currency', ' increasing cash ratio', ' issuing cheque', ' lending to borrowers', ' lending to borrowers', '2018-11-11 14:12:02'),
(374, 1, 9, 'The source of all economic problems arises from', ' wants', ' Scarcity', ' Opportunity Cost', ' Scale of Preference', ' Scarcity', '2018-11-11 14:13:06'),
(375, 1, 9, 'The quantity theory of money states that a reduction in the\r\nquantity of money in circulation would bring about', ' A constant change in price', ' A rise in prices', ' An unequal fall in prices', ' A proportionate fall in price', ' A constant change in price', '2018-11-11 14:14:04'),
(376, 1, 9, 'The tax levied on locally produced goods is', ' import duty', ' exercise duty', ' company tax', ' value added tax', ' exercise duty', '2018-11-11 14:15:10'),
(377, 1, 9, 'Petroleum has the following positive contributions to the Nigerian economy except', ' Generate employment', ' Source of government revenue', ' development of mono economy', ' Infrastructure development', ' development of mono economy', '2018-11-11 14:16:48'),
(378, 1, 9, 'The market in which the operators are many and none of them can influence the price is', ' stock exchange market', ' imperfect market', ' perfect foreign market', ' exchange market', ' perfect foreign market', '2018-11-11 14:17:51'),
(379, 1, 9, 'The concentration of industries in a particular geographical area is', ' localization of industries', ' roles of industrialization', ' location of industry', ' strategies of industrialization', ' localization of industries', '2018-11-11 14:18:56'),
(380, 1, 9, 'All the following are the canons of taxation given by Adam Smith except', ' objective', ' economy', ' convenience', 'certainty', 'objective', '2018-11-11 14:20:14'),
(381, 1, 9, 'Census can be classified as', ' defacto and dejure', ' increasing and decreasing', ' over and under', 'optimum', ' defacto and dejure', '2018-11-11 14:21:32'),
(382, 1, 9, 'A firm that char\r\nges the maximum price without attracting\r\ncompetition from new entrants is', ' Oil firms', ' Monopolistic competitive firm', 'Monopolistic firm', 'Perfectly competitive firm', ' Monopolistic firm', '2018-11-11 14:23:17'),
(383, 1, 9, 'A monopolist has the power to influence the prices of goods\r\nand services. Therefore, he is a', ' price maker', ' price taker', ' price system', ' price competition', ' price maker', '2018-11-11 14:24:34'),
(384, 1, 9, 'Which of the following business units can issue shares?', 'Partnership', ' Public limited liability company', ' Sole proprietorship', ' Central bank', ' Public limited liability company', '2018-11-11 14:27:20'),
(385, 1, 9, 'Which of the following are examples of transfer payment', ' gift and donations', ' rents and rates', ' profit and dividends', ' internal and external debts', ' gift and donations', '2018-11-11 14:28:10'),
(386, 1, 9, 'The technical relationship between the physical inputs and\r\nthe physical outputs of a firm is', ' Utility', ' Cost', 'Demand', ' Production function', ' Production function', '2018-11-11 14:29:00'),
(387, 1, 9, 'The income elasticity of demand of normal goods is', 'negative', 'positive', 'zero', 'fixed', 'positive', '2018-11-11 14:29:47'),
(388, 1, 9, 'The following equations relate to an open economy with a government sector\r\n. E = aggregate expenditure on domestically produced goods, C = Consumption, I = Investment, G =\r\nGovernment expenditure, T = taxes, M = imports, X = Exports.\r\nWhich equation is c', 'E = C + I + G', 'E = C + I + G + M â€“ X', 'E = C + I + G + X â€“ M', 'E = C + I + G â€“ T + M â€“ X', ' E = C + I + G + X â€“ M', '2018-11-11 14:31:11'),
(389, 1, 9, 'The relationship between the cost of living and standard of living is', ' A rise in cost of living gives a corresponding rise in standard\nof living', 'A lower cost of living give a higher standard of living', 'A lower cost of living give a lower standard of living', 'None of the above', ' A lower cost of living give a higher standard of living', '2018-11-11 14:33:35'),
(390, 1, 9, 'The ordinalist approach of utility postulated that utility can be', 'Rank', ' Measurable', 'Rise', 'Fall', 'Rank', '2018-11-11 14:34:31'),
(391, 1, 9, 'The frequent value that occurs most in a data is', 'median', 'mean', 'mode', 'range', 'mode', '2018-11-11 14:37:04'),
(392, 1, 9, 'Mr. Patricks income is N900 while that of Mr. Shodawe is N1,300. if Mr. Patrick and Shodawe pay N90 and N130 as taxes,\r\nthe tax system is', 'Direct', 'Progressive', 'Regressive', 'Proportional', 'Progressive', '2018-11-11 14:39:14'),
(393, 1, 9, 'Which of the following is not a type of unemployment', ' factory unemployment', ' structural unemployment', ' mass unemployment', ' frictional unemployment', ' factory unemployment', '2018-11-11 14:42:04'),
(394, 1, 9, 'The financial institution known as a building society is', ' commercial bank', ' central bank', ' mortgage bank', ' development bank', ' mortgage bank', '2018-11-11 14:43:05'),
(395, 1, 9, 'A line in commodity space which shows the constraints\r\nimposed by his budget, his money income and the price of goods purchased is', 'supply curve', 'liquidity preference', ' Budget line', ' demand curve', ' Budget line', '2018-11-11 14:44:17'),
(396, 1, 9, 'The information that rank a consumer preferences is given by', ' Scale of preference', ' Indifference map', ' Demand schedule', ' Supply schedule', ' Indifference map', '2018-11-11 14:46:45'),
(397, 1, 9, 'The ownership of a public limited liability company is made up of', ' two to twenty persons', ' minimum of two and maximum of fifty', ' minimum of seven and no maximum number', ' owner owned by the government', ' minimum of seven and no maximum number', '2018-11-11 14:49:16'),
(398, 1, 9, 'All the following are types of specialization except', ' Manager Specialization', ' Product specialization', ' Specialization by sex', ' Geographical specialization', ' Manager Specialization', '2018-11-11 14:50:14'),
(399, 1, 9, 'A market will be at equilibrium when', ' demand and supply are equal', ' demand is greater than supply', ' price is higher', ' supply is greater than demand', ' demand and supply are equal', '2018-11-11 14:55:35'),
(400, 1, 9, 'Which of the following will shift the demand curve for\r\nBournvita to the right', ' a rise in price of Bournvita', ' an increase in income', ' a tax on cocoa producer', ' a fall in price of Bournvita', ' a fall in price of Bournvita', '2018-11-11 14:58:00'),
(401, 1, 9, 'Find the range in the following data 9, 15, 6, 20, 24, 18, 12,8, 20, 10,5.', '24', '5', '19', '12', '19', '2018-11-11 14:59:35'),
(402, 1, 9, 'All the following are properties of an indifference curves except', 'it can intersect', ' it slopes downward from left to right like that of a normal\ndemand curve', ' as it shift rightward it indicate higher and higher level of\nsatisfaction', 'it does not intersect', 'it can intersect', '2018-11-11 15:02:49'),
(403, 1, 9, 'Isocost and isoquant can be attributed to', ' Theory of consumer behaviour', ' Theory of cost', ' Theory of production', ' Theory of value', ' Theory of production', '2018-11-11 15:04:30'),
(404, 1, 9, 'What would be likely to increase inflation in any economy?', ' Increase in demand', ' Reduce public spending', ' Control excessive import', ' Increase in direct tax', ' Increase in demand', '2018-11-11 15:07:02'),
(405, 1, 9, 'The term of trade can be expressed as', ' (Price index of export ÷ Price index of export)× 100', ' (price index of import Ã· price index of expo', ' (Price index of export Ã· Price index of impo', ' (Price index of export Ã· Price index of impo', ' (Price index of export Ã· Price index of impo', '2018-11-11 15:08:32'),
(406, 1, 9, 'The income of an individual increases from N150 to N250\r\nand his consumption rate increases from N100 to N150.Calculate the Marginal Propensity to Consume', '2', '0.4', '1', '0.5', '0.5', '2018-11-11 15:17:53'),
(407, 1, 9, 'The study of broad economic aggregates is', ' Macro economics', ' deductive method of economic analysis', ' micro economics', ' Inductive method of economics analysis', ' Macro economics', '2018-11-11 15:18:46'),
(408, 1, 7, 'The process of grafting in crop production involves', 'The fusion of gametes of two crops', 'Inducing rooting from stems', 'The transfer of a bud from one crop to anothe', 'The joining of two parts from related crops.', 'The joining of two parts from related crops.', '2018-11-11 15:26:47'),
(409, 1, 7, ' If the recommended spacing for a tree crop is 2.5cm\r\nby 4.0m determine the number of seedlings required to plant a 2-hectare farmland.', '1,000', '2,000', '10,000', '20,000', '2,000', '2018-11-11 15:27:40'),
(410, 1, 7, ' A regulatory control of diseases in crop production\r\nis', ' roughing', ' quarantine', ' crop rotation', ' Soil tillage.', ' quarantine', '2018-11-11 15:28:34'),
(411, 1, 7, ' Which of the following statements about soil\r\norganisms is false?', 'Soil pH will affect the population of soil organisms', ' Population of soil living organisms is increased with\nincrease in soil organic matter', ' Soil with good texture and structure cannot harbour\nsoil microbes', ' Soil temperature affects the activities of soil\norganisms.', ' Soil pH will affect the population of soil organisms', '2018-11-11 15:31:13'),
(412, 1, 7, ' The data for feed consumption and weighing gain of\r\nfour farm animals labelled P, Q, R and S are shown\r\nbelow. \r\nP -50kg feed consumed and 20kg weight gained Q\r\n-90kg feed consumed and 30kg weight gained R -100kg\r\nfeed consumed and 25kg weight gained S -', 'P', 'Q', 'R', 'S', 'P', '2018-11-11 15:32:14'),
(413, 1, 7, ' In preparing for parturition of a sow, warmth should be provided to', ' Promote growth of hair of the young', ' make the young suckle colostrums', ' prevent anaemia in the young', ' prevent chilling of the young.', ' prevent chilling of the young.', '2018-11-11 15:33:25'),
(414, 1, 7, ' In which layer of the soil profile do most biological\r\nactivities occur?', ' D-horizon', ' C-horizon', ' B-horizon', ' A-horizon', ' A-horizon', '2018-11-11 15:34:12'),
(415, 1, 7, ' Which of the following statements about agricultural\r\ndevelopment are true? It leads to \r\nVisit www.eduNgr.com for school news, educational resources and more!\r\nI. increased processing of produce \r\nII. Increased food production. \r\nIII. High productivity.', ' I, II and III only', ' I, II and IV only', ' I, III and IV only', ' II, II and IV only', ' I, II and III only', '2018-11-11 15:35:37'),
(416, 1, 7, ' Under the communal land tenure system, farmers\r\nfind it difficult to secure loans because', ' land holdings are small and fragmented', ' they are poor', ' land holdings cannot be used as security', ' they are mostly illiterate.', ' land holdings cannot be used as security', '2018-11-11 15:36:28'),
(417, 1, 7, ' Pineapple is widely propagated using', 'seeds', ' suckets', ' Slips', ' cuttings', 'suckets', '2018-11-11 15:37:35'),
(418, 1, 7, ' The correct sequence for the use of coupled\r\nimplements for land preparation is', ' Plough, harrow and ridger', ' harrow, ridger and plough', ' plough, ridger and harrow.', ' ridger, harrow and plough', ' harrow, ridger and plough', '2018-11-12 07:00:31'),
(419, 1, 7, ' The correct sequence of feed utilization in farm\r\nanimals is', ' digestion-ingestion-absorption-assimilation', ' ingestion-digestion-assimilation-absorption', ' ingestion-digestion-absorption-assimilation', ' digestion-assimilation-ingestion-absorption', ' ingestion-digestion-assimilation-absorption', '2018-11-12 07:01:37'),
(420, 1, 7, ' Which of the following statements is a disadvantage\r\nof human power? It\r\n', 'controls other sources of farm power', ' brings about least damage', ' is easily available and controlled', ' has low output.', ' has low output.', '2018-11-12 07:02:49'),
(421, 1, 7, ' Which of the following factors are causes of\r\ndeforestation in West Africa? \r\nI. Expansion of cultivated land \r\nII. High population growth rate \r\nIII. Conservation of wildlife in game reserves \r\nIV. Urban growth', ' I, II and III only', ' II, III and IV only', ' I, II and IV only', ' I, II, III and IV.', ' I, II and IV only', '2018-11-12 07:03:59'),
(422, 1, 7, ' Which of the following properties of soil determines\r\nits water-holding capacity? \r\nI. Texture \r\nII. pH \r\nIII. Colour \r\nIV. Structure', ' I and II only', ' I and IV only', ' II and III only', ' III and IV only', ' I and IV only', '2018-11-12 07:04:59'),
(423, 1, 7, ' Which of the following diseases commonly occurs\r\nduring brooding? \r\nI. Yolk sac infection \r\nII. Coccidiosis \r\nIII. Fowl pox \r\nIV. Pullorum', ' I, II and III only', ' I, II and IV only', ' I, III and IV only', ' I, II and IV', ' I, III and IV only', '2018-11-12 07:06:19'),
(424, 1, 7, ' A detrimental effect of bush burning is that it', ' destroys soil organic matter', ' Destroys weed seeds', ' sterilizes the soil', ' adds potash to the soil', ' destroys soil organic matter', '2018-11-12 07:07:12'),
(425, 1, 7, ' Government plays roles in the development of\r\nagriculture through the following means except', ' Provision of subsidies', ' training of farmers children', 'stablishment of agricultural development\nprogrammes', ' establishment of farm settlements', ' training of farmers children', '2018-11-12 07:09:05'),
(426, 1, 7, ' Sexual maturity in farm animals is not influenced by\r\ntheir', 'Breed', 'Sex', ' nutrition', ' wearing age', ' wearing age', '2018-11-12 07:10:36'),
(427, 1, 7, ' Which of the following factors does not influence\r\nthe distribution of cattle in West Africa?', 'Pastures', 'Light', ' Diseases', ' Rainfall', ' Light', '2018-11-12 07:11:34'),
(428, 1, 7, ' Close to the time of harvesting of cotton, sunshine is needed to ensure the production of bolls that are', 'big', 'Bright', ' not mouldy', ' not open', 'Bright', '2018-11-12 07:13:12'),
(429, 1, 7, ' Agriculture contributes to the economy of West\r\nAfrican countries through the following means except', ' Reduction of poverty through job creation', ' Supply of armament for territorial defence', ' Provision of foreign exchange', ' supply of raw materials to industries', ' Supply of armament for territorial defence', '2018-11-12 07:14:31'),
(430, 1, 7, ' In animal production, newly-born rabbits are called', ' Bunnies', ' Kids', ' Pouts', '  Lambs', 'Bunnies', '2018-11-12 07:15:56'),
(431, 1, 7, ' Which of the following crops has a fibrous root\r\nsystem?', ' cotton', 'coffee', ' cowpea', ' sugarcane', ' sugarcane', '2018-11-12 07:17:10'),
(432, 1, 7, ' Which of the following insects transmits swollen\r\nshoot disease of cocoa?', ' steam borer', ' Mealybug', ' white fly', ' scale insect', ' Mealybug', '2018-11-12 07:18:10'),
(433, 1, 7, ' Soil water that is available for root absorption at\r\nfield capacity is', ' Capillary water', ' hygroscopic water', ' Gravitational water', ' superfluous water.', ' Capillary water', '2018-11-12 07:19:14'),
(434, 1, 7, ' The weight of a sheep increased from 25kg to 45kg in two months. \r\nIf the total consumption during the period was 60kg.Determine the feed conversion ratio', ' 1 : 1', ' 1 : 2', ' 3 : 1', ' 4 : 1', ' 3 : 1', '2018-11-12 07:20:43'),
(435, 1, 7, ' Which of the following statements is correct about\r\nmicro-nutrients? They', ' Promote formation of only root nodules', ' are required by plants in very small quantities', ' are fixed into the soil through microbial activity', ' increase crop tolerance to pest attack.', ' are required by plants in very small quantities', '2018-11-12 07:23:36'),
(436, 1, 7, ' Yellow colouration of the lower leaves of a growing\r\nmaize plant may be due to deficiency in', ' potassium', 'phosphorus', ' zinc', ' nitrogen', ' phosphorus', '2018-11-12 07:24:38'),
(437, 1, 7, ' The following crops will enrich the soil with nitrates except', ' Calopogonium', 'pueraria', 'centrosema', 'Axonopus', 'Axonopus', '2018-11-12 07:25:40'),
(438, 3, 18, 'The vessels that operate on specific route on high\r\nseas and oceans are\r\n', 'A Coastal Liners and Cargo Liners', 'B Cargo Liners and Tramp liners', 'C Passenger liners and Tramp liners', 'Passenger Liners and Cargo Liners', 'Passenger Liners and Cargo Liners', '2018-11-14 20:17:13'),
(439, 3, 18, 'When an oil exploring and mining company\r\nbuilds a health centre in one community where at\r\noperates, such a company is\r\n', 'Carrying favour from local people', 'finding a way to spend excess profit', 'Fulfilling part of its social responsibility', ' Investing its idle fund', 'Fulfilling part of its social responsibility', '2018-11-14 20:19:40'),
(440, 3, 18, 'the world tourism organization has it\r\nheadquarters in', 'New York', 'Madrid', 'Paris', 'London', 'Madrid', '2018-11-14 20:21:20'),
(441, 3, 18, 'A cheque drawn by a bank official on the bankâ€™s\r\ndeposit in another bank on a customerâ€™s deposit in\r\nanother bank', ' Bank draft', 'Bankersâ€™ order', ' Promissory note', 'Travelers cheque', 'Bankersâ€™ order', '2018-11-14 20:22:26'),
(442, 3, 18, 'The development of commerce in west Africa\r\nwas not hampered by', 'Inadequate capital', ' Inadequate means of transportation', 'Insurance', 'Low savings', ' Inadequate means of transportation', '2018-11-14 20:23:26'),
(443, 3, 18, 'Which of the following is classified as an\r\nimmaterial want?', ' Protection', 'Raw materials', 'Machines', 'Goods and Services', ' Protection', '2018-11-14 20:24:34'),
(444, 3, 18, 'In product pricing, which of these elements need\r\nmore consideration than others?', 'The cost of producing the product', 'The economic conditions in the market', 'the demography of the buyers of the product', 'The demand for the product', 'The cost of producing the product', '2018-11-14 20:26:01'),
(445, 3, 18, 'The major determinant of fire insurance premium\r\nis the', 'Owner of the property', ' usefulness of the property to the owner', 'Type and structure of the property to be insured', 'extent of fire damaged anticipated.', 'Type and structure of the property to be insured', '2018-11-14 20:28:18'),
(446, 3, 18, 'The agency in Nigeria which ensure that\r\nproducts conform to government quality specification\r\nis the', 'Nigerian consumers association', ' Manufacturers Association of Nigeria', 'Standard Organization of Nigeria', 'Nigerian Chamber of commerce', 'Standard Organization of Nigeria', '2018-11-14 20:31:08'),
(447, 3, 18, 'Citizens are against privatization mainly because\r\nof\r\n', 'Ineffective Management', 'The likely hood of monopoly', 'Increased price of good and services', 'The ration dilation of organizations.', 'Increased price of good and services', '2018-11-14 20:34:59'),
(448, 3, 18, 'A market where new shares are tracked is known\r\nas', 'Primary Market', 'Stock Exchange', 'Secondary Market', 'Money Market', 'Primary Market', '2018-11-14 20:36:09'),
(449, 3, 18, 'The application of division of labour would generally bring about', ' Increase in quantity of goods and services', ' Increase in variety of goods and services', 'Cheapness of goods and services', 'Cost efficiency in the production of goods an', 'Increase in quantity of goods and services', '2018-11-14 20:42:33'),
(450, 3, 18, 'The application of division of labour would generally bring about', ' Increase in quantity of goods and services', ' Increase in variety of goods and services', 'Cheapness of goods and services', 'Cost efficiency in the production of goods and series', 'Increase in quantity of goods and services', '2018-11-14 20:43:10'),
(451, 3, 18, 'The computer using linear integrated circuit\r\ntechnology complied with quantification of data in\r\nterm of length and distance is', 'Main frame Computer', 'Digital Computer', 'Analogue Computer', 'Hybrid Computer', 'Main frame Computer', '2018-11-14 20:44:46'),
(452, 3, 18, 'The internet is a system of telecommunication\r\nused for\r\n', 'Sending electronic message', 'Communicating messages through telegrams', 'Communicating long-distance', 'Sending and renewing text message', 'Sending electronic message', '2018-11-14 20:48:23'),
(453, 3, 18, 'The implied provisions in every sale of goods as\r\ncontained in the sale of goods act of 1893 are\r\nconditions and', 'Guaranties', 'Warranties', ' Sureties', ' Consideration', ' Warranties', '2018-11-14 20:49:35'),
(454, 3, 18, 'Communication enhances business activities by', ' facilitating interaction between producers', 'Facilitating interaction among media houses', ' ensuring the movement of good forms the producer to the consumer', ' keeping the goods safe until they and needed', 'facilitating interaction between producers', '2018-11-14 20:51:46'),
(455, 3, 18, 'The effective and efficient delivery of the desired\r\nsatisfaction by a firm is said to be the practice of', 'Product concept', 'Marketing concept', 'Distribution concept', 'Price concept', 'Marketing concept', '2018-11-14 20:52:57'),
(456, 3, 18, 'The document that gives an important freehand\r\nto obtain goods form any manufacturer is\r\n', 'A closed indent', 'A consular invoice', 'A freight note', 'An open indent', 'An open indent', '2018-11-14 20:54:21'),
(457, 3, 18, 'Company has an authorized capital of 100millon\r\nshares at N1 per share, out of which 50 million shares\r\nhave been issued and fully paid-up the remaining 50\r\nmillion shares have', 'Not yet been issued', 'Been applied for but not issued', 'Not been paid-up', 'Been issued but have not been paid-up', 'Not yet been issued', '2018-11-14 20:55:23');
INSERT INTO `question` (`que_id`, `class_id`, `subject_id`, `que_desc`, `option1`, `option2`, `option3`, `option4`, `tru_ans`, `que_regdate`) VALUES
(458, 3, 18, 'Which of the following best describes an\r\ninvoice?', 'Contractual agreement for the sale of goods', 'Document specifying quantity, description, prices\nand total value of purchase .', 'Receipt containing necessary information about\nthe goods.', 'Letter specifying the contractual sales of goods\nbetween two parties', 'Document specifying quantity, description, prices\nand total value of purchase .', '2018-11-14 20:58:09'),
(459, 3, 18, 'A direct service is rendered by', 'State counsels', ' Civil servants', 'Police', 'Family doctor', 'Family doctor', '2018-11-14 20:59:21'),
(460, 3, 18, 'The business organization established mainly for\r\nthe purpose of carrying out specific assignment for a\r\nspecific duration is a\r\n', 'Partnership', ' Company', 'Joint venture', ' Co-operative society', 'Joint venture', '2018-11-14 21:00:52'),
(461, 3, 18, 'Second-tier securities market differs from the\r\nfirst-tier securities market in that the former is', ' highly restricted', 'Regulated by SEC', ' Regulated by NIPC', 'less restricted.', ' highly restricted', '2018-11-14 21:02:04'),
(462, 3, 18, 'Inbound tourism occurs when\r\n', ' non-resident s of a country travel within it', 'non- resident of a country travel to other countries', ' resident of a country travel within it', ' Residents of a country travel to other countries.\n', 'resident of a country travel within it', '2018-11-14 21:04:26'),
(463, 3, 18, 'A machine which enables sales without the\r\nphysical presence of sales attendant is a\r\n', 'Telex Machine', 'Fax Machine', 'Vending Machine', 'Computer machine', 'Vending Machine', '2018-11-14 21:05:48'),
(464, 3, 17, 'An expenses is said to be revenue in nature if it\r\n', ' adds or contributes to the operating income of the\nbusiness\n', 'necessitates the introduction of additional capital', 'reduces the capital of the business', 'adds to or improves the value of fixed assets', 'adds or contributes to the operating income of the\nbusiness', '2018-11-15 11:25:13'),
(465, 3, 17, 'An entry in a subsidiary book which does not\r\nform part of the double entry system is a', 'contra entry', 'single entry', ' journal entry', 'memorandum entry', 'memorandum entry', '2018-11-15 11:26:16'),
(466, 3, 17, 'Determine wage expenses from the given\r\ninformation, wages outstanding at the beginning,\r\nwages paid during the period 15000 and wages\r\noutstanding of the period 2,000', 'N16,000', 'N17,000', 'N13,000', ' N14,000', 'N16,000', '2018-11-15 11:27:28'),
(467, 3, 17, 'Which method of pricing can be used\r\nsatisfactorily in either rising or falling price\r\nsituation?', 'Market price', 'Average method', ' FIFO', ' Standard price', ' Average method', '2018-11-15 11:28:30'),
(468, 3, 17, 'Use the following information to answer this\r\nquestion.\r\nClub building 400,000\r\nSubscription prepaid 3,000\r\nSport kits 150,000\r\nBar creditors 85,000\r\nSubscription owing 32,000\r\nWhat is the clubâ€™s accumulated fund?', ' N699, 000', ' N641, 000', 'N402, 000', 'N605, 000', 'N699, 000', '2018-11-15 11:30:56'),
(469, 3, 17, 'What will be the number of shares to be issued to\r\na subscriber who applied for 50,000 units.\r\n', '20,000', '18,000', '15,000', '12,000', ' 20,000', '2018-11-15 11:32:18'),
(470, 3, 17, 'Use the information below to answer this\r\nquestion.\r\nBuhari and Osinbajo are in partnership with the\r\nfollowing partnership agreement\r\nBuhari Osinbajo\r\nCapital 40, 000 70, 000\r\nSalary 10, 000 15, 000\r\nInterest on capital 5% 5%\r\nProfit/loss sharing ratio 4', 'N19, 800', 'N49, 500', 'N48, 000', 'N29, 700', 'N29, 700', '2018-11-15 11:33:30'),
(471, 3, 17, 'The major distinguishing element between the\r\nfinal account of a partnership and that of a sole trader\r\nis the', ' drawing A/C', ' capital A/C', 'Creditor A/C', 'Appropriation A/C', 'Appropriation A/C', '2018-11-15 11:34:55'),
(472, 3, 17, 'The accounting concept that allows the cost of\r\nkitchen cutlery to be expensed, though it can be used\r\nfor more than one year is', ' Materiality', 'Accrual', 'Going concern', ' Business entity', ' Materiality', '2018-11-15 11:36:44'),
(473, 3, 17, 'Use the information below to answer this\r\nquestion.\r\nTimo and Chris are computer engineers who went\r\ninto partnership as Teachi and Co. Timo brought cash\r\nofN12,000 furniture worth of N18,000 and vehicle\r\nworth of 70,000. Chris equally brought in cash of\r', '2 : 3', ' 3 : 2', ' 6 : 5', '5 : 6', '2 : 3', '2018-11-15 11:38:16'),
(474, 3, 17, 'When the invoice of a customer is overcast, the\r\nsupplier will send to him a', 'debit note', 'cheque', ' credit note', 'payment voucher', 'credit note', '2018-11-15 11:41:50'),
(475, 3, 17, 'Using LIFO method of stock valuation, analyze\r\nthe issue quantities and their prices', '260 units at N1.50', '700 units at N1.50', '200 units at N1.50 and 500 units at N1.00', '350 units at N1.50 and 350 units at N1.00', '260 units at N1.50', '2018-11-15 11:46:03'),
(476, 3, 17, 'CR. DR.\r\nSales ledger balance 9, 500\r\nSales ledger balance 420\r\nBought ledgers balance 6, 115 \r\nBought ledger balance 350\r\nCredit sales 82, 000\r\nPurchases journal 54, 700\r\nDiscount allowed 450\r\nDiscount received 200\r\nCash refunded to customers (debtors) 1', ' N9, N1740; N120', ' N90, N990', 'N90, N870; N120', 'N80, N750', ' N90, N870; N120', '2018-11-15 11:48:14'),
(477, 3, 17, 'The ledger entries to be made if cash sales is\r\nbanked is debit', 'cash, credit sales', 'sales, credit cash', ' bank, credit cash', ' bank, credit sales', ' bank, credit sales', '2018-11-15 11:49:23'),
(478, 3, 17, 'In a bank reconciliation statement, Dishonoured\r\ncheques is added to', 'unpresented cheques', ' uncredited cheques', ' statement of account', ' aggregate balanace as per cash book', ' uncredited cheques', '2018-11-15 11:50:50'),
(479, 3, 17, 'Which of the following is a debit entry in debtors\r\ncontrol account?', ' discount allowed', ' return inwards', 'credit sales', ' cash from debtors', 'credit sales', '2018-11-15 11:51:53'),
(480, 3, 17, 'Which of the following is not a proper form of\r\nthe accounting equation', 'fixed assets + current assets - liabilities = capital', 'fixed assests + current assests + liabilities =\ncapital', 'fixed assets – liabilities + current assets = capital', 'fixed asset + current asset – capital = liabilities', 'fixed assests + current assests + liabilities =\ncapital', '2018-11-15 11:55:45'),
(481, 3, 17, 'The accounting convention that state that stock\r\nshould be value that the lower of cost and net realized\r\nvalue is --------------- convention', 'marching', 'consistency', 'realization', 'prudency', 'prudency', '2018-11-15 11:57:41'),
(482, 3, 17, 'What does liquidity ratio measure?', ' measures operating efficiency of a company', 'measures the ability of a company to meet its\ncurrent obligations.\n', 'measures the value of investments of a company', 'measures the financial leverage of a company', 'measures the ability of a company to meet its\ncurrent obligations.', '2018-11-15 12:04:55'),
(483, 3, 17, 'Derive the stock turnover period.(Average stock\r\n= 23,000. Cost of sales = 300,000 year = 365 days).', ' 28 days', ' 42 days', '27 days', '23 days', '28 days', '2018-11-15 12:06:35'),
(484, 3, 17, 'The following accounting entries are made when\r\nbad debt is recovered\r\n', ' debit bad debts accounts and credit bad debt\nrecovered account', 'debit debtors accounts and recovered account', ' debit bad debts recovered account and credit bad\ndebts account', 'debit bad debts account and credit profit and loss\naccount', ' debit debtors accounts and recovered account', '2018-11-15 12:08:54'),
(485, 3, 17, 'One of the items listed below will not be found\r\nin a companyâ€™s memorandum and article of\r\nassociation. Which is it?\r\n', 'objects and their alteration', ' location of business', ' bank signatories', ' powers of directors', ' bank signatories', '2018-11-15 12:10:34'),
(486, 2, 12, 'Likewise the spirit also helped our infirmities for\r\nwe know not what we should pray fro as we ought:\r\nbut the spirit it self market intercession for us with groaning which on not be uttered.', 'Our inabilities and what we can do as human', 'our physical sickness', ' a viral disease', 'whooping cough that affects the thing', 'Our inabilities and what we can do as human', '2018-11-15 12:24:24'),
(487, 2, 12, 'Who is like unto thee,\r\nO Lord, among the gods?\r\nWho is like thee,\r\nglorious in holiness,\r\nfearful in praises, doing wonders?\r\nAfter which great occasion did the composer of the\r\nsong above, sing the song?', 'After the Passover', ' after the crossing of the red sea', 'after the killing of the first child of the Egyptians\n', ' after the first plague', 'after the crossing of the red sea', '2018-11-15 12:26:21'),
(488, 2, 12, 'What is the name of the first lead of the river that\r\nparted in the Garden of Eden?', 'Bison', ' Gijon', 'Pison', 'Euphrates', 'Pison', '2018-11-15 12:27:19'),
(489, 2, 12, 'Do not blaspheme that worthy name by which ye\r\nare called. What in that worthy name?', ' Christian', ' new creature', ' Jesus', 'friend', 'Jesus', '2018-11-15 12:28:16'),
(490, 2, 12, 'The cost of being a disciple of Jesus is that?', 'We have to be fighting the devil always', 'we don’t follow our will but the will of Jesus our\nmater', 'we won’t have a place to lay our heads like Jesus', ' the foxes will late us', ' we don’t follow our will but the will of Jesus our\nmater', '2018-11-15 12:31:51'),
(491, 2, 12, 'They have taken away my Lord, and I know not\r\nwhere they laid him, was the statement Mary\r\nMagdalene told Jesus at his sepulcher. This statement\r\nshows.', 'She alone owns Jesus', 'She had a very strong and deep fellowship and\nrelationship with Jesus\n', ' She very selfish and has personal interest', 'She is the sister of Jesus', 'She had a very strong and deep fellowship and\nrelationship with Jesus\n', '2018-11-15 12:34:49'),
(492, 2, 12, 'Whose sudden death of brought a turnaround in\r\nthe life of obed-edom the Gittite?', 'Uzzaiah', 'Goliath', 'Uzzah', 'Elisha', 'Uzzah', '2018-11-15 12:35:56'),
(493, 2, 12, 'â€œFor her sins hare reached in to heaven, and God\r\nhath remembered her indignities.â€ Who in the\r\nstatement talking about?\r\n', 'Jezebel', ' Babylon', 'Nigeria', 'USA', 'Babylon', '2018-11-15 12:36:59'),
(494, 2, 12, 'And I heard a great voice out of heavens saying,\r\nBehold, the tabernacle of God is with men, and he\r\nwill dwell with them, and they shall be his people\r\nand God himself shall be with them and be their God.\r\nWho heard the great voice behind him?', 'James', ' Jesus', 'John the beloved', 'The Jesus', 'John the beloved', '2018-11-15 12:38:17'),
(495, 2, 12, 'How many altars did balaam ask balak to bind\r\nfor him?', '5', '3', '7', '9', '7', '2018-11-15 12:39:05'),
(496, 2, 12, 'How many dukes are there from the lineage of\r\nEdom?', 'thirteen', 'nine', 'five', 'ten', 'nine', '2018-11-15 17:24:34'),
(497, 2, 12, 'The book of Acts of the Apostles contains the\r\nfollowing except one.', 'How the early church started', ' The story of Jesus birth', 'The thing the Holy Spirit helped the Apostle to do\nin their life time', ' The storied of those that left faith because of love\nfor the thing of the meld', 'The story of Jesus birth', '2018-11-15 17:26:57'),
(498, 2, 12, 'For God hath not appointed us to wrath but to\r\n_______ salvation through our lord Jesus Christ', 'Grab', 'obtain', ' jump at', ' eye', 'obtain', '2018-11-15 17:28:28'),
(499, 2, 12, 'The book of Revelation was written by ______\r\non the _______.', 'john the Baptist island of Everest', ' john the beloved, island of piton', ' john the Baptist island of patrons', ' john the beloved, island of Patmos.', ' john the beloved, island of Patmos.', '2018-11-15 17:29:40'),
(500, 2, 12, 'â€œFor I have no pleasure in the death of him that\r\ndieth, saith the lord God wherefore turn yourselves\r\nand live ye.â€ which prophet did God tell this\r\nstatement?\r\n', 'Samuel', ' Ezekiel', 'Jeremiah', ' Daniel', ' Ezekiel', '2018-11-15 17:33:10'),
(501, 2, 12, 'The mustard seed, in the parable of Jesus is said\r\nto be the ______ seed but when sown and it grown it\r\nbecome the greatest tree.', 'Best', ' most production', 'least', 'latest hybrid', 'least', '2018-11-15 17:36:09'),
(502, 2, 12, 'Hanniah, Mishael and ______ were the 3 special\r\nfriends of Daniel in the Bible.', 'Gedaliah', 'Azariah', ' Nataliah', ' Jonathan', 'Azariah', '2018-11-15 17:37:10'),
(503, 2, 12, 'Israel was defeated by a very small country\r\nbecause', ' It was their destiny', 'Ai had more weapons', 'someone stole an accursed thing', 'someone sold them secretly', ' someone stole an accursed thing', '2018-11-15 17:38:51'),
(504, 2, 12, 'Behold, I come as a thief. Blessed is he that\nwatcheth, and keepeth his garment, lest the walk\nnaked and they see his shame:\nWhy did Jesus say he will come as a thief?', 'because he is a thief', ' the likened it to the way thriven come because no\none knows when thieves come\n', 'he wants to play hide and seek', 'God instructed him to', ' the likened it to the way thriven come because no\none knows when thieves come\n', '2018-11-15 17:41:02'),
(505, 2, 12, 'The first miracle of Jesus was?', 'Stilling the storm', ' reading the scripture', ' turning water to write', 'heading the woman with the issue of blood.', ' turning water to write', '2018-11-15 17:42:15'),
(506, 2, 12, 'Likewise, ye wives be in subjection to your own\r\nhusbands, that if any obey not the word, they also\r\nwithout the word be won by the conversation of the\r\nwives. What do you understand by the statement\r\nwithout the wordâ€\r\n', 'We should do evangelism by closing or mouth', 'that those who would not listen to our preaching\nmay be won to God by our godly actions', 'that it in the dispensation of dropping the bible', 'that that in what is reigning now', 'that those who would not listen to our preaching\nmay be won to God by our godly actions', '2018-11-15 17:44:40'),
(507, 2, 12, 'Which of there 3 sinners did God course first\r\nafter the eating of the forbidden fruit ?', 'Ground', 'Adam', 'Serpent', 'Eve', 'Serpent', '2018-11-15 17:45:36'),
(508, 2, 12, 'Paul record in the book of cession that Christians\r\nare scared by ______ through______\r\n', ' Faith, grace', ' grace, faith', ' convention, believing', ' agreement, understating', 'grace, faith', '2018-11-15 17:46:36'),
(509, 2, 12, 'If any man love not the lord, let him be\r\nAnathemas:- anathema in the above sentence means\r\n', 'Repent', 'cursed', 'imprisoned', 'stoned', 'cursed', '2018-11-15 17:47:26'),
(511, 2, 12, 'Josiah was eight years old when he began to\r\nreign, and he reigned _______ in Jerusalem', '25 yrs', '31 yrs', '40 yrs', '15 yrs', '31 yrs', '2018-11-15 17:49:27'),
(512, 2, 11, ' The outcome of the Prophetâ€™s visit to Cave Hira was', 'compilation of the Glorious Qurâ€™an', ' revelation of the Glorious Qur’an “As a result of Prophet Muhammad’s withdrawal\nto the cave of Hirah near Makkah, when he was 40 years old, Angel Jibril appeared to\nhim with a revelation from God”', 'award of chieftaincy title by the Makkan aristocrats', 'his resolve to migrate to Madinah.', ' revelation of the Glorious Qur’an “As a result of Prophet Muhammad’s withdrawal\nto the cave of Hirah near Makkah, when he was 40 years old, Angel Jibril appeared to\nhim with a revelation from God”', '2018-11-15 17:58:43'),
(513, 2, 11, 'One of the importance of the first revelation was the', ' description of the Arabian peninsula to the Prophet (SAW)', ' dissemination of knowledge Ref: (Q 96: 1-5) “read in the name of your Lord…”', ' explanation of knowledge', 'description of the steps of acquiring knowled', ' dissemination of knowledge Ref: (Q 96: 1-5) “read in the name of your Lord…”', '2018-11-15 18:01:00'),
(514, 2, 11, 'The gradual spiritual and moral development of Muslims was the wisdom behind\r\nthe\r\n', 'compilation of the Glorious Qurâ€™an', 'standardization of the Glorious Qurâ€™an', ' preservation of the Glorious Qurâ€™an', ' piecemeal revelation of the Glorious Qurâ€™an.', ' piecemeal revelation of the Glorious Qurâ€™an.', '2018-11-15 18:02:20'),
(515, 2, 11, 'The verse above is in relation to the', 'standardization of the Glorious Qurâ€™an', ' preservation of the Glorious Qur’an Ref: Q 15:19 ‘Surely, We have sat down the\nReminder [al-Qur`an] and surely we will protect it’.', 'compilation of the Glorious Qurâ€™an', 'arrangement of the Glorious Qurâ€™an.', ' preservation of the Glorious Qur’an Ref: Q 15:19 ‘Surely, We have sat down the\nReminder [al-Qur`an] and surely we will protect it’.', '2018-11-15 18:03:58'),
(516, 2, 11, 'The battle that served as a pointer to the compilation of the Glorious Qurâ€™an was\r\nfought at', 'Khandaq', 'Uhud', 'TabÅ«k', 'Yamamah. “Many Muslims who had memorized the Holy Quran\n', 'Yamamah. “Many Muslims who had memorized the Holy Quran\n', '2018-11-15 18:06:15'),
(517, 2, 11, 'The committee that standardized the Glorious Qurâ€™an is made up of\r\n', ' six people', 'five people', 'four people \"Uthman bin Affan appointed a panel of four people to carry out the\nstandardization of the Holy Qur`an. They include; 1 – Zaid bin Th?bit; 2 – Abdullahi\nbin Zubair; 3 – Sa’ad bin Al-ÁS and 4-Abdul-Rahman bin H?rith”\n', 'three people', 'four people \"Uthman bin Affan appointed a panel of four people to carry out the\nstandardization of the Holy Qur`an. They include; 1 – Zaid bin Th?bit; 2 – Abdullahi\nbin Zubair; 3 – Sa’ad bin Al-ÁS and 4-Abdul-Rahman bin H?rith”\n', '2018-11-15 18:12:49'),
(518, 2, 11, 'A characteristic common to Makkan chapters is that, they', ' are long', ' address the people of the Book', 'contain a lot of oaths', ' make references to battles.', 'contain a lot of oaths', '2018-11-15 18:14:07'),
(519, 2, 11, 'The victory of the Roman Empire over the Persian Empire after the Persians had\r\ndefeated the Romans as stated in the Glorious Qurâ€™an (Q. 30: 2-3) is an evidence of the', ' beauty of the words of the Glorious Qurâ€™an', ' historical nature of the Glorious Qurâ€™an', 'simplicity of the wordings of the Glorious Qu', ' authenticity of the Glorious Qurâ€™an', ' authenticity of the Glorious Qurâ€™an', '2018-11-15 18:15:31'),
(520, 2, 11, 'The Qurâ€™an is different from other revealed Books because', ' it is a prayer book only', 'barren women can be helped through it', 'both spiritual, moral and social values are found in it', 'one can use it for protection only.', 'both spiritual, moral and social values are found in it', '2018-11-15 18:17:24'),
(522, 2, 11, ' Prophet Muhammad (SAW) did not hand-over the Glorious Qurâ€™an to his\r\ncompanions in an arranged form and in a single written volume because', ' he did not want only the Quraish to inherit the book', 'the revelation did not come in one piece but at intervals', 'many tribes would want to take over its distribution', 'there was no need for it.', ' the revelation did not come in one piece but at intervals', '2018-11-15 18:22:31'),
(523, 2, 11, ' The correct meaning of tafsir is the', ' detailed explanation and commentary of the Glorious Qurâ€™an', 'scientific application of the contents of the Glorious Qurâ€™an to human life', 'true reflections on the contents of the Glorious Qurâ€™an', ' practical application of the contents of the Glorious Qurâ€™an', 'detailed explanation and commentary of the Glorious Qurâ€™an', '2018-11-15 18:23:41'),
(524, 2, 11, 'Tajwid as one of the science of the Glorious Qurâ€™an is important because', ' it allows for the understanding of history of the Glorious Qurâ€™an', 'it provides the basis for the deeper understanding of the Glorious Qurâ€™an', ' it provides the knowledge of correct pronounciation and recitation of the Glorious Qurâ€™an', ' it increases the ability to recite and communicate in Arabic', ' it provides the knowledge of correct pronounciation and recitation of the Glorious Qurâ€™an', '2018-11-15 18:24:50'),
(525, 2, 11, 'In the rule of Tajwid, the portion of the verse underlined above applies to\r\n', 'tarqÄ«q', 'tanwÄ«n', 'tafkhÄ«m â€˜Answer is Tafkheem â€˜ (Rau) will be pronounced with Tafkheem if the Rau (j) has a Dommah', 'tashdÄ«d', 'tafkhÄ«m â€˜Answer is Tafkheem â€˜ (Rau) will be pronounced with Tafkheem if the Rau (j) has a Dommah', '2018-11-15 18:25:50'),
(526, 2, 11, 'The only SÅ«rah in the Glorious Qurâ€™an which must be recited in every obligatory\r\nprayer is', ' al-BaqÄrah', 'al-Alaq', ' al-FÄtÄ«hah â€œSuratul-Fatiha must be recited on each rakÃ t of SalÃ¡t, without it. The SalÄt is voided.', 'al-IkhlÄs.', ' al-FÄtÄ«hah â€œSuratul-Fatiha must be recited on each rakÃ t of SalÃ¡t, without it. The SalÄt is voided.', '2018-11-15 18:26:53'),
(527, 2, 11, 'Suratul MÄâ€™Å«n discusses the privilege to be enjoyed by the\r\n', 'givers', 'travelers', 'the wealthy', 'the needy.', 'the needy.', '2018-11-15 18:28:23'),
(528, 2, 11, 'The eagerness and zeal of Muslim warriors to fight in the cause of Allah is one of\r\nthe major theme of SÅ«rah', 'al-QÄriâ€™ah', ' al-Adiyah', ' al-Asr', ' al-Humazah.', ' al-Adiyah', '2018-11-15 18:29:25'),
(529, 2, 11, 'The allegorical and the ambiguous verses of the Glorious Qurâ€™an are understood\r\nthrough the', ' ijtihad of Muslim Scholars', 'qiyas of Muslim jurists', 'tadabbur in the Glorious Qurâ€™an', 'tafsir of the Glorious Qurâ€™an', 'tafsir of the Glorious Qurâ€™an', '2018-11-15 18:30:24'),
(530, 2, 11, 'Hadith 3 of an-Nawawiâ€™s collection shows that Islam is built upon\r\n', ' believe in Allah', 'five pillars', 'fast of Ramadan', 'articles of faith', 'five pillars', '2018-11-15 18:38:13'),
(531, 2, 11, 'The teaching in the 10th Hadith of an- Nawawi is that', 'Allah accepts prayers from Muslims only', 'only credible people shall be elected leaders', 'abstinance from forbidden things is prelude to accepting prayers', ' abstinance from misconduct by ladies makes them more attractive to men', 'abstinance from forbidden things is prelude to accepting prayers', '2018-11-15 18:39:47'),
(532, 2, 11, ' â€˜Do not get angryâ€™\r\nThis tradition from the 16th Hadith of annawawihas been repeated by the Prophet\r\n(SAW)', 'once', 'twice', 'thrice', 'many times. â€œThe Prophet S.A.W repeated donâ€™t be angry several timesâ€.', 'many times. â€œThe Prophet S.A.W repeated donâ€™t be angry several timesâ€.', '2018-11-15 18:40:48'),
(533, 2, 11, 'What differentiates Hadith Qudsi from Hadith Nabawi is the\r\n', 'place and manner of application', 'condition under which the two are narrated', ' wording and teaching intended The word of hadith qudusiy is by the Prophet; the meaning is from Godâ€¦â€', 'chain and reliability of the narrator', 'wording and teaching intended The word of hadith qudusiy is by the Prophet; the meaning is from Godâ€¦â€', '2018-11-15 18:41:47'),
(534, 2, 11, 'One of the peculiarities of Sahih Bukhari is that ahÄdith are sorted according to\r\n', 'topic', 'chapters', ' records', ' biographies.', 'chapters', '2018-11-15 18:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `other_names` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `lga` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `month_of_birth` varchar(255) NOT NULL,
  `day_of_birth` varchar(255) NOT NULL,
  `year_of_birth` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `sec_school` varchar(255) NOT NULL,
  `jamb_reg` varchar(255) NOT NULL,
  `subject1` varchar(255) NOT NULL,
  `grade1` varchar(255) NOT NULL,
  `subject2` varchar(255) NOT NULL,
  `grade2` varchar(255) NOT NULL,
  `subject3` varchar(255) NOT NULL,
  `grade3` varchar(255) NOT NULL,
  `subject4` varchar(255) NOT NULL,
  `grade4` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'undone',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `surname`, `other_names`, `address`, `phone`, `email`, `gender`, `religion`, `state`, `lga`, `country`, `month_of_birth`, `day_of_birth`, `year_of_birth`, `school`, `faculty`, `course`, `sec_school`, `jamb_reg`, `subject1`, `grade1`, `subject2`, `grade2`, `subject3`, `grade3`, `subject4`, `grade4`, `passport`, `status`, `date`) VALUES
(1, 'AJEIGBE ', 'JOHN OLUWASEYI', 'LAGOS ISLAND', '+2348188974303', 'OLUSEYIAJEIGBE@YAHOO.COM', 'Male', 'Christian', 'Borno', 'Akure North Local Government', 'Nigeria', '5', '12', '1998', ' 	Obafemi Awolowo University', 'Faculty of Technology', 'Chemical Pathology', 'Science Class', '2019100657330', 'Use of English', 'A1', 'Mathematics', 'A1', 'Physics', 'A1', 'Biology', 'A1', 'image/filmhouse.jpg', 'undone', '2018-11-15 17:04:44'),
(2, 'OLAJIDE', 'JOSHUA TOMIWA', 'sango', '0707727112', 'kazeemoyetoro@gmail.com', 'Female', 'Christian', 'Imo', 'Akure South Local Government', 'Nigeria', '1', '16', '2007', 'Adeleke University', 'Faculty of Technology', 'Food Science and Technology', 'Art Class', '2019101994730', 'Use of English ', 'A1', 'C.r.s', 'A1', 'I.r.s', 'A1', 'Government', 'A1', 'image/2015070501401.jpg', 'undone', '2018-11-15 23:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `regno`
--

CREATE TABLE `regno` (
  `regno_id` int(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `regno_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regno`
--

INSERT INTO `regno` (`regno_id`, `regno`, `status`, `regno_regdate`) VALUES
(1, '2019109044162', 'USED', '2018-11-16 00:22:02'),
(2, '2019105361815', 'USED', '2018-11-16 00:23:52'),
(3, '2019100657330', 'USED', '2018-11-16 00:58:01'),
(4, '2019101994730', 'USED', '2018-11-16 01:01:24'),
(5, '2019109292570', 'UNUSED', '2018-11-07 20:04:04'),
(6, '2019110893310', 'UNUSED', '2018-11-07 20:04:04'),
(7, '2019101025191', 'UNUSED', '2018-11-07 20:04:04'),
(8, '2019103866615', 'UNUSED', '2018-11-07 20:04:04'),
(9, '2019105523009', 'UNUSED', '2018-11-07 20:04:04'),
(10, '2019101026210', 'UNUSED', '2018-11-07 20:04:04'),
(11, '2019102066334', 'UNUSED', '2018-11-07 20:04:05'),
(12, '2019101286156', 'UNUSED', '2018-11-07 20:04:05'),
(13, '2019105727980', 'UNUSED', '2018-11-07 20:04:05'),
(14, '2019101823016', 'UNUSED', '2018-11-07 20:04:05'),
(15, '2019108993259', 'UNUSED', '2018-11-07 20:04:05'),
(16, '2019106415854', 'UNUSED', '2018-11-07 20:04:05'),
(17, '2019101219982', 'UNUSED', '2018-11-07 20:04:05'),
(18, '2019100426229', 'UNUSED', '2018-11-07 20:04:05'),
(19, '2019110338464', 'UNUSED', '2018-11-07 20:04:05'),
(20, '2019103618207', 'UNUSED', '2018-11-07 20:04:05'),
(21, '2019111111516', 'UNUSED', '2018-11-07 20:04:05'),
(22, '2019100658348', 'UNUSED', '2018-11-07 20:04:05'),
(23, '2019100194449', 'UNUSED', '2018-11-07 20:04:05'),
(24, '2019105055717', 'UNUSED', '2018-11-07 20:04:05'),
(25, '2019104475079', 'UNUSED', '2018-11-07 20:04:05'),
(26, '2019100781874', 'UNUSED', '2018-11-07 20:04:05'),
(27, '2019100453717', 'UNUSED', '2018-11-07 20:04:05'),
(28, '2019106210883', 'UNUSED', '2018-11-07 20:04:05'),
(29, '2019100423175', 'UNUSED', '2018-11-07 20:04:05'),
(30, '2019104619306', 'UNUSED', '2018-11-07 20:04:06'),
(31, '2019105208766', 'UNUSED', '2018-11-07 20:04:06'),
(32, '2019108126205', 'UNUSED', '2018-11-07 20:04:06'),
(33, '2019101388302', 'UNUSED', '2018-11-07 20:04:06'),
(34, '2019110433144', 'UNUSED', '2018-11-07 20:04:06'),
(35, '2019102992096', 'UNUSED', '2018-11-07 20:04:06'),
(36, '2019106284184', 'UNUSED', '2018-11-07 20:04:06'),
(37, '2019104242960', 'UNUSED', '2018-11-07 20:04:06'),
(38, '2019110925888', 'UNUSED', '2018-11-07 20:04:06'),
(39, '2019110136208', 'UNUSED', '2018-11-07 20:04:06'),
(40, '2019101727318', 'UNUSED', '2018-11-07 20:04:06'),
(41, '2019100299649', 'UNUSED', '2018-11-07 20:04:06'),
(42, '2019104360038', 'UNUSED', '2018-11-07 20:04:06'),
(43, '2019104053600', 'UNUSED', '2018-11-07 20:04:06'),
(44, '2019101058109', 'UNUSED', '2018-11-07 20:04:06'),
(45, '2019108670871', 'UNUSED', '2018-11-07 20:04:06'),
(46, '2019105678095', 'UNUSED', '2018-11-07 20:04:07'),
(47, '2019101076773', 'UNUSED', '2018-11-07 20:04:07'),
(48, '2019105319057', 'UNUSED', '2018-11-07 20:04:07'),
(49, '2019109549123', 'UNUSED', '2018-11-07 20:04:07'),
(50, '2019102022557', 'UNUSED', '2018-11-07 20:04:07'),
(51, '2019100858229', 'UNUSED', '2018-11-07 20:04:07'),
(52, '2019109992661', 'UNUSED', '2018-11-07 20:04:07'),
(53, '2019110926906', 'UNUSED', '2018-11-07 20:04:07'),
(54, '2019108335927', 'UNUSED', '2018-11-07 20:04:07'),
(55, '2019108610466', 'UNUSED', '2018-11-07 20:04:07'),
(56, '2019105001420', 'UNUSED', '2018-11-07 20:04:07'),
(57, '2019104116720', 'UNUSED', '2018-11-07 20:04:07'),
(58, '2019100640702', 'UNUSED', '2018-11-07 20:04:07'),
(59, '2019101745983', 'UNUSED', '2018-11-07 20:04:07'),
(60, '2019108067836', 'UNUSED', '2018-11-07 20:04:07'),
(61, '2019108231066', 'UNUSED', '2018-11-07 20:04:07'),
(62, '2019104999384', 'UNUSED', '2018-11-07 20:04:07'),
(63, '2019107717282', 'UNUSED', '2018-11-07 20:04:07'),
(64, '2019109114408', 'UNUSED', '2018-11-07 20:04:07'),
(65, '2019103462443', 'UNUSED', '2018-11-07 20:04:07'),
(66, '2019108554472', 'UNUSED', '2018-11-07 20:04:07'),
(67, '2019103936862', 'UNUSED', '2018-11-07 20:04:08'),
(68, '2019103623637', 'UNUSED', '2018-11-07 20:04:08'),
(69, '2019108923351', 'UNUSED', '2018-11-07 20:04:08'),
(70, '2019104008466', 'UNUSED', '2018-11-07 20:04:08'),
(71, '2019106737223', 'UNUSED', '2018-11-07 20:04:08'),
(72, '2019103758021', 'UNUSED', '2018-11-07 20:04:08'),
(73, '2019104806290', 'UNUSED', '2018-11-07 20:04:08'),
(74, '2019100743866', 'UNUSED', '2018-11-07 20:04:08'),
(75, '2019104650866', 'UNUSED', '2018-11-07 20:04:08'),
(76, '2019105000062', 'UNUSED', '2018-11-07 20:04:08'),
(77, '2019110223762', 'UNUSED', '2018-11-07 20:04:08'),
(78, '2019102583173', 'UNUSED', '2018-11-07 20:04:08'),
(79, '2019102890289', 'UNUSED', '2018-11-07 20:04:08'),
(80, '2019108392260', 'UNUSED', '2018-11-07 20:04:08'),
(81, '2019105368263', 'UNUSED', '2018-11-07 20:04:08'),
(82, '2019107788886', 'UNUSED', '2018-11-07 20:04:08'),
(83, '2019101107994', 'UNUSED', '2018-11-07 20:04:08'),
(84, '2019109417114', 'UNUSED', '2018-11-07 20:04:09'),
(85, '2019109352297', 'UNUSED', '2018-11-07 20:04:09'),
(86, '2019109063505', 'UNUSED', '2018-11-07 20:04:09'),
(87, '2019104516481', 'UNUSED', '2018-11-07 20:04:09'),
(88, '2019109117123', 'UNUSED', '2018-11-07 20:04:09'),
(89, '2019102368361', 'UNUSED', '2018-11-07 20:04:09'),
(90, '2019104669530', 'UNUSED', '2018-11-07 20:04:09'),
(91, '2019101648248', 'UNUSED', '2018-11-07 20:04:09'),
(92, '2019102974789', 'UNUSED', '2018-11-07 20:04:09'),
(93, '2019103528956', 'UNUSED', '2018-11-07 20:04:09'),
(94, '2019109549462', 'UNUSED', '2018-11-07 20:04:09'),
(95, '2019108835798', 'UNUSED', '2018-11-07 20:04:10'),
(96, '2019103152611', 'UNUSED', '2018-11-07 20:04:10'),
(97, '2019104146583', 'UNUSED', '2018-11-07 20:04:10'),
(98, '2019110845800', 'UNUSED', '2018-11-07 20:04:10'),
(99, '2019103491627', 'UNUSED', '2018-11-07 20:04:10'),
(100, '2019105133090', 'UNUSED', '2018-11-07 20:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `result_id` int(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `subject1` varchar(255) NOT NULL,
  `subject2` varchar(255) NOT NULL,
  `subject3` varchar(255) NOT NULL,
  `subject4` varchar(255) NOT NULL,
  `subject1_score` varchar(255) NOT NULL,
  `subject2_score` varchar(255) NOT NULL,
  `subject3_score` varchar(255) NOT NULL,
  `subject4_score` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `resultdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id_school` int(255) NOT NULL,
  `school` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id_school`, `school`) VALUES
(1, ' 	Abia State University'),
(2, ' 	Abubakar Tafawa Balewa University'),
(3, 'Achievers University, Owo'),
(4, 'Adamawa State University'),
(5, ' 	Adekunle Ajasin University'),
(6, 'Adeleke University'),
(7, 'Afe Babalola University'),
(8, ' 	African University of Science and Technology'),
(9, 'Ahmadu Bello University'),
(10, 'Ajayi Crowther University'),
(11, ' 	Akwa Ibom State University'),
(12, 'Al-Hikmah University'),
(13, 'Al-Qalam University, Katsina'),
(14, 'Ambrose Alli University'),
(15, 'American University of Nigeria'),
(16, 'Anchor Univeristy, Lagos'),
(17, ' 	Arthur Jarvis University'),
(18, ' 	Augustine University'),
(19, ' 	Babcock University'),
(20, 'Bauchi State University'),
(21, 'Bayero University Kano'),
(22, 'Baze University'),
(23, 'Bells University of Technology'),
(24, 'Benson Idahosa University'),
(25, ' 	Benue State University'),
(26, 'Bingham University'),
(27, 'Borno State University'),
(28, ' 	Bowen University'),
(29, 'Caleb University'),
(30, ' 	Caritas University'),
(31, 'Chrisland University'),
(32, 'Chukwuemeka Odumegwu Ojukwu University'),
(33, 'Clifford University'),
(34, ' 	Coal City University'),
(35, ' 	Covenant University'),
(36, ' 	Crawford University'),
(37, ' 	Crescent University, Abeokuta'),
(38, ' 	Cross River University of Technology'),
(39, ' 	Crown Hill University'),
(40, ' 	Delta State University, Abraka'),
(41, 'Dominican University, Ibadan'),
(42, 'Eastern Palm University'),
(43, ' 	Ebonyi State University'),
(44, ' 	Edo University'),
(45, ' 	Edwin Clark University'),
(46, 'Ekiti State University, Ado Ekiti'),
(47, ' 	Eko University of Medical and Health Sciences'),
(48, ' 	Elizade University'),
(49, 'Enugu State University of Science and Technology'),
(50, 'Evangel University Akaeze'),
(51, ' 	Federal University of Agriculture, Abeokuta'),
(52, ' 	Federal University of Petroleum Resources'),
(53, ' 	Federal University of Technology, Akure'),
(54, ' 	Federal University of Technology, Minna'),
(55, 'Federal University of Technology, Owerri'),
(56, 'Federal University, Birnin Kebbi'),
(57, 'Federal University, Dutse'),
(58, 'Federal University, Dutsin-Ma'),
(59, ' 	Federal University, Gashua'),
(61, 'Federal University, Kashere'),
(62, 'Federal University, Lafia'),
(63, 'Federal University, Lokoja'),
(64, 'Federal University, Ndufu-Alike'),
(65, 'Federal University, Otuoke'),
(66, ' 	Federal University, Oye-Ekiti'),
(67, ' 	Federal University, Wukari'),
(68, ' 	Fountain University'),
(69, ' 	Godfrey Okoye University'),
(70, 'Gombe State University'),
(71, 'Gombe State University of Science and Technology'),
(72, 'Gregory University, Uturu'),
(73, 'Hallmark University, Ijebu-Itele'),
(74, ' 	Hezekiah University'),
(75, 'Ibrahim Badamasi Babangida University'),
(76, 'Igbinedion University Okada'),
(77, ' 	Ignatius Ajuru University of Education'),
(78, ' 	Imo State University'),
(79, ' 	Joseph Ayo Babalola University'),
(80, ' 	Kaduna State University'),
(81, ' 	Kano University of Science and Technology'),
(82, ' 	Kebbi State University of Science and Technology'),
(83, 'Kings University'),
(84, ' 	Kogi State University'),
(85, ' 	Kola Daisi University'),
(86, 'Kwara State University'),
(87, 'Kwararafa University Wukari'),
(88, 'Ladoke Akintola University of Technology'),
(89, ' 	Lagos State University'),
(90, 'Landmark University'),
(91, ' 	Lead City University'),
(92, 'Madonna University, Okija'),
(93, ' 	Mcpherson University'),
(94, 'Michael and Cecilia Ibru University'),
(95, 'Michael Okpara University of Agriculture'),
(96, 'Modibbo Adama University of Technology'),
(97, ' 	Mountain Top University'),
(98, 'Nasarawa State University'),
(99, 'Niger Delta University'),
(100, ' 	Nile University of Nigeria'),
(101, 'Nnamdi Azikiwe University'),
(102, ' 	Northwest University Kano'),
(103, ' 	Novena University'),
(104, ' 	Obafemi Awolowo University'),
(105, 'Obong University'),
(106, 'Oduduwa University'),
(107, 'Olabisi Onabanjo University'),
(108, 'Ondo State University of Science and Technology'),
(109, 'Osun State University'),
(110, 'Pan African University'),
(111, ' 	Paul University'),
(112, 'Plateau State University'),
(113, ' 	Redeemer\'s University'),
(114, ' 	Renaissance University'),
(115, ' 	Rhema University'),
(116, 'Ritman University'),
(117, 'Rivers State University of Science and Technology'),
(118, 'Salem University'),
(119, 'Samuel Adegboyega University'),
(120, ' 	Sokoto State University'),
(121, 'Southwestern University, Nigeria'),
(122, 'Sule Lamido University'),
(123, 'Summit University Offa'),
(124, 'Tai Solarin University of Education'),
(125, ' 	Tansian University'),
(126, ' 	Taraba State University'),
(127, ' 	The Technical University'),
(128, ' 	Umaru Musa Yar\'Adua University'),
(129, ' 	University of Abuja'),
(130, ' 	University of Africa'),
(131, ' 	University of Agriculture, Makurdi'),
(132, ' 	University of Benin'),
(133, ' 	University of Calabar'),
(134, ' 	University of Ibadan'),
(135, 'University of Ilorin'),
(136, ' 	University of Jos'),
(137, 'University of Lagos'),
(138, 'University of Maiduguri'),
(139, 'University of Medical Sciences'),
(140, 'University of Mkar'),
(141, ' 	University of Nigeria'),
(142, 'University of Port Harcourt'),
(143, 'University of Uyo'),
(144, 'Usmanu Danfodio University'),
(145, 'Veritas University'),
(146, 'Wellspring University'),
(147, 'Wesley University of Science and Technology'),
(148, ' 	Western Delta University'),
(149, 'Yobe State University');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id_state` int(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id_state`, `state`) VALUES
(1, 'Abia'),
(2, 'Adamawa'),
(3, 'Akwa-ibom'),
(4, 'Anambra'),
(5, 'Bauchi'),
(6, 'Bayelsa'),
(7, 'Benue'),
(8, 'Borno'),
(9, 'Cross-river'),
(10, 'Delta'),
(11, 'Ebonyi'),
(12, 'Edo'),
(13, 'Ekiti'),
(14, 'Enugu'),
(15, 'Gombe'),
(16, 'Imo'),
(17, 'Jigawa'),
(18, 'Kaduna'),
(19, 'Kano'),
(20, 'Katsina'),
(21, 'Kebbi'),
(22, 'Kogi'),
(23, 'Kwara'),
(24, 'lagos'),
(25, 'Nasarawa'),
(26, 'Niger'),
(27, 'Ogun'),
(28, 'Ondo'),
(29, 'Osun'),
(30, 'Oyo'),
(31, 'Plateau'),
(32, 'Rivers'),
(33, 'Sokoto'),
(34, 'Taraba'),
(35, 'Yobe'),
(36, 'Zamfara'),
(37, 'FCT');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(255) NOT NULL,
  `class_id` int(255) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `sub_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `class_id`, `sub_name`, `sub_regdate`) VALUES
(1, 1, 'Physics', '2018-11-16 00:46:35'),
(2, 1, 'Chemistry', '2018-11-16 00:46:43'),
(3, 1, 'Biology', '2018-11-16 00:46:49'),
(4, 1, 'Mathematics', '2018-11-16 00:46:57'),
(5, 1, 'Further Mathematics', '2018-11-16 00:47:12'),
(6, 1, 'Use of English ', '2018-11-16 00:51:29'),
(7, 1, 'Agricultural Science', '2018-11-16 00:47:34'),
(8, 1, 'Geography', '2018-11-16 00:47:42'),
(9, 1, 'Economics', '2018-11-16 00:47:51'),
(10, 2, 'Government', '2018-11-16 00:48:03'),
(11, 2, 'I.r.s', '2018-11-16 00:48:15'),
(12, 2, 'C.r.s', '2018-11-16 00:48:36'),
(13, 2, 'Literature in English', '2018-11-16 00:49:09'),
(14, 2, 'Use of English', '2018-11-16 00:49:37'),
(15, 3, 'Mathematics', '2018-11-16 00:49:53'),
(16, 3, 'Use of English', '2018-11-16 00:50:12'),
(17, 3, 'Account', '2018-11-16 00:50:27'),
(18, 3, 'Commerce', '2018-11-16 00:50:43'),
(19, 3, 'Government', '2018-11-16 00:50:54'),
(20, 3, 'Economics', '2018-11-16 00:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id_subject` int(255) NOT NULL,
  `subjects` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id_subject`, `subjects`) VALUES
(1, 'Use of English '),
(2, 'Mathematics'),
(3, 'Economics'),
(4, 'Biology'),
(5, 'Civic Education'),
(6, 'Agricultural Science'),
(7, 'Computer Studies'),
(8, 'Geography'),
(9, 'Literature-in-English'),
(10, 'Government'),
(11, 'C.r.s'),
(12, 'I.r.s'),
(13, 'Commerce'),
(14, 'Financial Accounting'),
(15, 'Physics'),
(16, 'Chemistry'),
(17, 'Further Mathematics'),
(18, 'Yoruba'),
(19, 'Animal Husbandry'),
(20, 'Igbo'),
(21, 'Hausa');

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `timer_id` int(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `timer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`timer_id`, `student_id`, `timer`) VALUES
(4, '2', '08:07:22'),
(5, '1', '06:28:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id_country`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id_course`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id_faculty`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id_grade`);

--
-- Indexes for table `jambpin`
--
ALTER TABLE `jambpin`
  ADD PRIMARY KEY (`jambpin_id`);

--
-- Indexes for table `lga`
--
ALTER TABLE `lga`
  ADD PRIMARY KEY (`id_lga`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regno`
--
ALTER TABLE `regno`
  ADD PRIMARY KEY (`regno_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id_school`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id_state`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id_subject`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`timer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id_country` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id_course` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id_faculty` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id_gender` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id_grade` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jambpin`
--
ALTER TABLE `jambpin`
  MODIFY `jambpin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `lga`
--
ALTER TABLE `lga`
  MODIFY `id_lga` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `que_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `regno`
--
ALTER TABLE `regno`
  MODIFY `regno_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `result_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id_school` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id_state` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id_subject` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `timer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
