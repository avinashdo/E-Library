-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2020 at 03:23 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lib`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` varchar(255) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `authorname` varchar(50) NOT NULL,
  `copies` varchar(20) NOT NULL,
  `avl_cpy` int(100) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `path` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `booksname`, `authorname`, `copies`, `avl_cpy`, `dept`, `file_name`, `path`) VALUES
('CS001', 'learning Python', 'Test Author', '12', 10, 'cse', 'CS001.pdf', 'librarybooks/CS001.pdf'),
('CS002', 'Test Book', 'Test Author', '12', 12, 'cse', 'CS002.pdf', 'librarybooks/CS002.pdf'),
('CS003', 'Test Book', 'Test Author', '12', 12, 'cse', 'CS003.pdf', 'librarybooks/CS003.pdf'),
('CS031', 'learning java', 'Test Author', '12', 12, 'cse', 'CS031.pdf', 'librarybooks/CS031.pdf'),
('CS005', 'Test Book', 'Test Author2', '12', 12, 'cse', 'CS005.pdf', 'librarybooks/CS005.pdf'),
('CS006', 'Test Book', 'Test Author', '12', 12, 'cse', 'CS006.pdf', 'librarybooks/CS006.pdf'),
('CS008', 'Test Book', 'Test Author', '10', 10, 'cse', 'CS008.pdf', 'librarybooks/CS008.pdf'),
('CS009', 'Book One', 'Test Author', '12', 12, 'cse', 'CS009.pdf', 'librarybooks/CS009.pdf'),
('CS010', 'Test Book', 'Test Author', '10', 10, 'cse', 'CS010.pdf', 'librarybooks/CS010.pdf'),
('CS011', 'Test Book', 'Test Author', '1', 1, 'cse', 'CS011.pdf', 'librarybooks/CS011.pdf'),
('CS012', 'Test Book', 'Test Author', '1', 1, 'cse', 'CS012.pdf', 'librarybooks/CS012.pdf'),
('CS013', 'Test Book', 'Test Author', '12', 12, 'cse', 'CS013.pdf', 'librarybooks/CS013.pdf'),
('EE001', 'Test Book', 'Test Author', '12', 12, 'ee', 'EE001.pdf', 'librarybooks/EE001.pdf'),
('ME001', 'Test Book', 'Test Author', '12', 12, 'me', 'ME001.pdf', 'librarybooks/ME001.pdf'),
('CS055', 'Test Book', 'Test Author', '10', 10, 'cse', 'CS055.pdf', 'librarybooks/CS055.pdf'),
('B001', 'Let Us c', 'YK', '10', 10, 'cse', 'B001.pdf', 'librarybooks/B001.pdf'),
('IT001','AJWt','Test Author','20',18,'it','IT001.pdf','librarybooks/AJWT.pdf'),
('IT002','OS','Test Author','23',03,'it','IT002.pdf','librarybooks/OS.pdf'),
('IT003','R','Test Author','20',18,'it','IT003.pdf','librarybooks/R.pdf'),
('IT004','CN','Test Author','23',3,'it','IT004.pdf','librarybooks/CN.pdf'),
('IT005','COA','Test Author','25',15,'it','IT005.pdf','librarybooks/COA.pdf'),
('IT006','C','Balaguru swamy','23',03,'it','IT006.pdf','librarybooks/C.pdf'),
('IT007','DWDM','Test Author','20',18,'it','IT007.pdf','librarybooks/DWDM.pdf'),
('IT008','C++','Test Author','20',18,'it','IT001.pdf','librarybooks/OOPs C++.pdf'),
('IT010','JAVA','Test Author','23',3,'it','IT009.pdf','librarybooks/JAVA.pdf');


-- --------------------------------------------------------

--
-- Table structure for table `student_book`
--

CREATE TABLE `student_book` (
  `emailid` varchar(200) NOT NULL,
  `book_1_id` varchar(100) NOT NULL,
  `book_1` varchar(100) NOT NULL,
  `recive_date_1` varchar(100) NOT NULL,
  `submisson_date_1` varchar(100) NOT NULL,
  `book_2_id` varchar(100) DEFAULT NULL,
  `book_2` varchar(100) DEFAULT NULL,
  `recive_date_2` varchar(100) DEFAULT NULL,
  `submisson_date_2` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_book`
--

INSERT INTO `student_book` (`emailid`, `book_1_id`, `book_1`, `recive_date_1`, `submisson_date_1`, `book_2_id`, `book_2`, `recive_date_2`, `submisson_date_2`) VALUES
('waseemmohammad@gmail.com', 'CS001', 'learning Python', '13-07-2018', '28-07-2018', 'CS001', 'learning Python', '13-07-2018', '28-07-2018'),
('pavankasi@gmail.com', 'CS001', 'learning Python', '13-07-2018', '28-07-2018', 'CS031', 'learning java', '13-07-2018', '28-07-2018');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(10) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'student',
  `gender` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `roll`, `type`, `gender`, `name`, `dept`, `year`, `emailid`, `password`) VALUES
(1, '19L31A1287', 'admin', 'm', 'Avinash', 'blank', 'blank', 'avinashpeddapati@gmail.com', 'Avinash@123'),
(2, '19L31A1286', 'student', 'm', 'Gaffur', 'it', '2nd_year', 'gaffurshaik@gmail.com', 'gaffur@123'),
(3, '19L31A1262', 'student', 'm', 'Yashwanth', 'it', '2nd_year', 'yashwanthsatyavarapu@gmail.com', 'yashwanth@123'),
(4, '19L31A1266', 'student', 'm', 'Naveen', 'it', '2nd_year', 'naveenkolli01234@gmail.com', 'naveen@123'),
(5, '19L31A1249', 'student', 'm', 'Vamsi', 'it', '2nd_year', 'vamsikrishnashauri@gmail.com', 'vamsi@123'),
(6, '19L31A1248', 'student', 'm', 'Raviteja', 'it', '2nd_year', 'ravitejakommalapudi@gmail.com', 'raviteja@123'),
(7, '19L31A1207', 'student', 'm', 'Pavan kalyan', 'it', '2nd_year', 'pavanjampa@gmail.com', 'pavankalyan@123'),
(8, '19L31A1217', 'student', 'm', 'Waseem', 'it', '2nd_year', 'waseemmohammad@gmail.com', 'waseem@123'),
(9, '19L31A1274', 'student', 'm', 'BLV Krishna', 'it', '2nd_year', 'blvkrishna2002@gmail.com', 'krishna@123'),
(10, '19L31A1246', 'student', 'm', 'Pavan kasi', 'it', '2nd_year', 'pavankasi@gmail.com', 'pavan@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`),
  ADD UNIQUE KEY `b_id` (`b_id`);

--
-- Indexes for table `student_book`
--
ALTER TABLE `student_book`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll` (`roll`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
