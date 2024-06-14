-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 01:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_name` varchar(100) NOT NULL DEFAULT 'MichaelDev',
  `a_password` varchar(100) NOT NULL DEFAULT '@SecretKey#MichaelDev#',
  `admin_phone` varchar(50) NOT NULL,
  `admin_inbox` longtext NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_name`, `a_password`, `admin_phone`, `admin_inbox`, `username`) VALUES
('MichaelDev', '@SecretKey#MichaelDev254#', '+254701136880', '', ''),
('MichaelDev', '@SecretKey#MichaelDev#', '', '', ''),
('MichaelDev', '@SecretKey#MichaelDev#', '', 'Hello Admin', ''),
('MichaelDev', '@SecretKey#MichaelDev#', '', 'Hello Admin', ''),
('MichaelDev', '@SecretKey#MichaelDev#', '', 'Hello. I did not see a message that i posted', ''),
('MichaelDev', '@SecretKey#MichaelDev#', '', 'Hello...i need help', 'Maxwell');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_name` varchar(100) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `main_role` varchar(100) NOT NULL,
  `employee_contact` varchar(100) NOT NULL,
  `employee_email` varchar(100) NOT NULL,
  `employee_website` varchar(100) NOT NULL,
  `date_posted` date NOT NULL DEFAULT current_timestamp(),
  `number_of_vacancies` varchar(100) NOT NULL,
  `attatched_message` varchar(250) NOT NULL,
  `requirement_1` varchar(100) NOT NULL,
  `requirement_2` varchar(100) NOT NULL,
  `requirement_3` varchar(100) NOT NULL,
  `requirement_4` varchar(100) NOT NULL,
  `requirement_5` varchar(100) NOT NULL,
  `requirement_6` varchar(100) NOT NULL,
  `requirement_7` varchar(100) NOT NULL,
  `requirement_8` varchar(100) NOT NULL,
  `requirement_9` varchar(100) NOT NULL,
  `requirement_10` varchar(100) NOT NULL,
  `job_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_name`, `employee_name`, `main_role`, `employee_contact`, `employee_email`, `employee_website`, `date_posted`, `number_of_vacancies`, `attatched_message`, `requirement_1`, `requirement_2`, `requirement_3`, `requirement_4`, `requirement_5`, `requirement_6`, `requirement_7`, `requirement_8`, `requirement_9`, `requirement_10`, `job_id`) VALUES
('Cyber Security Expert', 'Safaricom', 'Server monitoring', '254789909887', 'mickyonyango1544@gmail.com', 'www.safaricom.co.ke', '2023-05-10', '40', 'We are hiring cyber security experts. Reach us through the provided contacts', 'University graduate with BS in computer science or any other IT related field', '2 years of work experience', '18 years and over', '', '', '', '', '', '', '', 1),
('Driver', 'Kisumu School', 'High School  Bus Driver', '254789989990', 'ks@gmail.com', 'www.kisumuschool.co.', '2023-05-13', '9', 'Kisumuschool is hiring  drivers hurry and apply', 'Form 4 leaver', '5 years of work experience', '', '', '', '', '', '', '', '', 16),
('PythonFullStack Developer', 'Modcom Company', 'Maintain web server', '254709989990', 'modcom@gmail.com', 'www.modcom.co.ke', '2023-05-14', '5', 'Modcom Limited is looking for a Python Fullstack developer. Hurry and apply if you meet the below qualifications.', 'University graduate with BS in computer ', '2 years of work experience', 'Must be familiar with either Flask or Dj', 'Must be between age 22 and 30', 'Must have certificate of good conduct', 'Must be a Kenyan citzen', 'Must be able to work in odd hours', '', '', '', 17);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(20) NOT NULL,
  `message_body` varchar(250) NOT NULL,
  `message_cat` varchar(20) NOT NULL DEFAULT 'sent',
  `message_time` time(2) NOT NULL DEFAULT current_timestamp(),
  `message_date` date NOT NULL DEFAULT current_timestamp(),
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `message_body`, `message_cat`, `message_time`, `message_date`, `username`) VALUES
(91, 'Hello this is Rotich', 'sent', '12:43:00.00', '2023-05-14', 'Rotich'),
(94, 'Hello. My name is maxwell and i need someone to teach me Java programming', 'sent', '14:22:31.00', '2023-05-14', 'Maxwell'),
(95, 'Hello Maxwell, I am a Java  developer. i can teach you java', 'sent', '14:35:42.00', '2023-05-14', 'Tom'),
(96, 'Hello. I want to start an online Job can someone please guide me please 🙏🙏              ', 'sent', '13:39:36.00', '2023-05-14', 'Elizabeth'),
(97, 'Hello Elizabeth. For you to start an online business, first know your target customers', 'sent', '13:41:14.00', '2023-05-14', 'Maxwell');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_password` varchar(30) NOT NULL,
  `user_phone` varchar(30) NOT NULL,
  `user_date_of_registration` date NOT NULL DEFAULT current_timestamp(),
  `user_avatar` varchar(20) DEFAULT 'dafault.jpg',
  `user_website_link` varchar(50) NOT NULL,
  `user_bio` varchar(200) NOT NULL,
  `user_skill_1` varchar(50) NOT NULL DEFAULT 'none',
  `user_skill_2` varchar(50) NOT NULL DEFAULT 'none',
  `user_skill_3` varchar(50) NOT NULL DEFAULT 'none',
  `user_skill_4` varchar(50) NOT NULL DEFAULT 'none',
  `user_skill_5` varchar(50) NOT NULL DEFAULT 'none',
  `user_skill_6` varchar(50) NOT NULL DEFAULT 'none',
  `user_skill_7` varchar(50) NOT NULL DEFAULT 'none',
  `user_skill_8` varchar(50) NOT NULL DEFAULT 'none',
  `user_skill_9` varchar(50) NOT NULL DEFAULT 'none',
  `user_skill_10` varchar(50) NOT NULL DEFAULT 'none',
  `user_location` varchar(20) NOT NULL DEFAULT 'none',
  `recovery_quiz` varchar(50) NOT NULL,
  `recovery_ans` varchar(50) NOT NULL,
  `user_pay` int(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_password`, `user_phone`, `user_date_of_registration`, `user_avatar`, `user_website_link`, `user_bio`, `user_skill_1`, `user_skill_2`, `user_skill_3`, `user_skill_4`, `user_skill_5`, `user_skill_6`, `user_skill_7`, `user_skill_8`, `user_skill_9`, `user_skill_10`, `user_location`, `recovery_quiz`, `recovery_ans`, `user_pay`, `user_email`, `username`) VALUES
('12345678', '2548817829', '2023-05-09', 'default.jpg', 'edwin.co.ke', 'I am a python fullstack developer', 'Python Developer', 'UI/UX design', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'Mombasa', 'what is your pet name?', 'Scubby', 100, 'betty@gmail.com', 'Betty'),
('12345678', '2544966858649', '2023-05-09', 'default.jpg', 'bravin.co.ke', 'I am a python Kyiv developer', 'Python Developer', 'UI/UX design', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'Mombasa', 'what is your pet name?', 'Sonko', 16, 'bravin@gmail.com', 'Bravin'),
('12345678', '254787886579', '2023-05-09', 'default.jpg', 'clinton.co.ke', 'I do video production.Link and portfolios in my bi', 'Video Producer ', 'Theatre expert', 'Graphic Design', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'Embu', 'what is your favourite animal?', 'cat', 90, 'clinton@gmail.com', 'Clinton'),
('12345678', '2540586977579', '2023-05-09', 'default.jpg', 'www.gasper.co.ke', 'I am a game developer', 'Game developer', 'C++  Developer', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'Kisumu', 'what is your favourite City?', 'Texas', 60, 'gasper@gmail.com', 'Gasper'),
('vvvvvvvv', '25467788990', '2023-05-10', 'dafault.jpg', 'www.glo.co.ke', 'My name is glo and i am a cloud engineer', 'Cloud Engineering', '', '', '', '', '', '', '', '', '', 'Kisumu', 'What\'s your favourite gal', 'I don\'t have one', 40, 'glo@gmail.com', 'Gloriaz'),
('12345678', '254787846829', '2023-05-09', 'default.jpg', 'guru.co.ke', 'I do video editing and Animations.Link and portfol', 'Video Editing ', 'Animations', 'Graphic Design', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'Embu', 'what is your favourite animal?', 'zebra', 100, 'isaiahke@gmail.com', 'Isaiah'),
('eeeeeeee', '254709987889', '2023-05-11', 'dafault.jpg', 'www.liz@.co.ke', 'I am A model', 'Modelling', '', '', '', '', '', '', '', '', '', 'Kisumu', 'What\'s your favourite color', 'pink', 40, 'liz@gmail.com', 'Elizabeth'),
('12345678', '25445667784', '2023-05-09', 'default.jpg', 'www.maxwell.co.ke', 'I am an Enthusiastic Web Developer in C#', 'Web Designer/DVELOPER', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'Nairobi', 'what is your favourite color?', 'green', 40, 'max@gmail.com', 'Maxwell'),
('12345678', '254742699829', '2023-05-09', 'default.jpg', 'tuko.co.ke', 'I am a full stack javascript developer', 'JavaScript Development', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'Migori', 'what is your favourite food?', 'beef', 100, 'morris@gmail.com', 'Morris'),
('12345678', '254701136880', '2023-05-12', 'dafault.jpg', 'www.tommy.co.ke', 'I am a flutter developer', 'Flutter developer', '', '', '', '', '', '', '', '', '', 'Kisumu', 'What\'s your favourite color', 'tom', 20, 'owino@gmail.com', 'Owino'),
('cccccccc', '254708897889', '2023-05-11', 'dafault.jpg', 'www.phillip.co.ke', 'My name is Phillip and i am here Just for Job connections', 'Driver', 'Sports coach', 'Dog trainer', 'Car wash machine handler', '', '', '', '', '', '', 'Malindi', 'What is your favourite car?', 'benz', 30, 'phillip@gmail.com', 'Phillip'),
('rrrrrrrr', '254701136880', '2023-05-11', 'dafault.jpg', 'I have no website', 'I am a Carpenter', 'capentry', '', '', '', '', '', '', '', '', '', 'Kisumu', 'What\'s your favourite gal', 'I don\'t have one', 14, 'rotich@gmail.com', 'Rotich'),
('bbbbbbbb', '254701135667', '2023-05-11', 'dafault.jpg', 'sarah@gmail.com', 'I am a Data analyst with experience in python pandas', 'Data Science', 'Machine learning', 'Computer maintainanca and repair', '', '', '', '', '', '', '', 'Rwanda', 'What\'s your favourite color', 'magenta', 30, 'saraw@gmail.com', 'SarahWayne'),
('tttttttt', '254701136880', '2023-05-14', 'dafault.jpg', 'www.tommy.co.ke', 'I am an energetic computer hardware engineer. I repair televisions,computers,radios,phones,laptops,speakers and amplifiers. Reach me via my contact details below to access my services. at fair prices', 'Computer hardware engineer', 'Junior python developer', '', '', '', '', '', '', '', '', 'Kisumu', 'WhWhere do you work', 'cyber', 30, 'tommydmore@gmail.com', 'Tom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);
ALTER TABLE `jobs` ADD FULLTEXT KEY `attatched_message` (`attatched_message`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
