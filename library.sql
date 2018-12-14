-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2018 at 09:28 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `idauthor` int(11) NOT NULL,
  `authorname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`idauthor`, `authorname`) VALUES
(1, 'jone'),
(2, 'mohamed'),
(3, 'jone');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `idbooks` int(11) NOT NULL,
  `bookname` text NOT NULL,
  `ISNBnumber` int(11) NOT NULL,
  `publishingdate` date NOT NULL,
  `multipleeditions` int(11) NOT NULL,
  `numberofpages` int(11) NOT NULL,
  `bestofcollections` varchar(45) NOT NULL,
  `numberofbooks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`idbooks`, `bookname`, `ISNBnumber`, `publishingdate`, `multipleeditions`, `numberofpages`, `bestofcollections`, `numberofbooks`) VALUES
(3, 'loinboy', 147, '2000-06-09', 1, 405, 'best', 36),
(4, 'ggggg', 564, '2018-12-19', 7, 256, 'best 1', 3005);

-- --------------------------------------------------------

--
-- Table structure for table `books_has_author`
--

CREATE TABLE `books_has_author` (
  `books_idbooks` int(11) NOT NULL,
  `author_idauthor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books_has_author`
--

INSERT INTO `books_has_author` (`books_idbooks`, `author_idauthor`) VALUES
(3, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `books_has_genre`
--

CREATE TABLE `books_has_genre` (
  `books_idbooks` int(11) NOT NULL,
  `genre_genreid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books_has_genre`
--

INSERT INTO `books_has_genre` (`books_idbooks`, `genre_genreid`) VALUES
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books_has_type`
--

CREATE TABLE `books_has_type` (
  `books_idbooks` int(11) NOT NULL,
  `type_idtype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books_has_type`
--

INSERT INTO `books_has_type` (`books_idbooks`, `type_idtype`) VALUES
(4, 1),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genreid` int(11) NOT NULL,
  `genrename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genreid`, `genrename`) VALUES
(1, 'comedy'),
(2, 'action2'),
(3, 'action3');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`idlogin`, `username`, `password`, `firstname`, `lastname`, `email`) VALUES
(1, 'admin', 'admin', 'mohamed', 'elgendy', 'moh@gmail.com'),
(2, 'elgendy', '123', 'mohamed2', 'Ahmed', 'daksl@fldas.com');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `idtype` int(11) NOT NULL,
  `typename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`idtype`, `typename`) VALUES
(1, 'CD'),
(2, 'DVD'),
(3, 'E-book');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`idauthor`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`idbooks`);

--
-- Indexes for table `books_has_author`
--
ALTER TABLE `books_has_author`
  ADD PRIMARY KEY (`books_idbooks`,`author_idauthor`),
  ADD KEY `fk_books_has_author_author1` (`author_idauthor`);

--
-- Indexes for table `books_has_genre`
--
ALTER TABLE `books_has_genre`
  ADD PRIMARY KEY (`books_idbooks`,`genre_genreid`),
  ADD KEY `fk_books_has_genre_genre1` (`genre_genreid`);

--
-- Indexes for table `books_has_type`
--
ALTER TABLE `books_has_type`
  ADD PRIMARY KEY (`books_idbooks`,`type_idtype`),
  ADD KEY `fk_books_has_type_type1` (`type_idtype`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genreid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idlogin`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idtype`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `idauthor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `idbooks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `books_has_genre`
--
ALTER TABLE `books_has_genre`
  MODIFY `books_idbooks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genreid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `idlogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `idtype` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books_has_author`
--
ALTER TABLE `books_has_author`
  ADD CONSTRAINT `fk_books_has_author_author1` FOREIGN KEY (`author_idauthor`) REFERENCES `author` (`idauthor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_books_has_author_books1` FOREIGN KEY (`books_idbooks`) REFERENCES `books` (`idbooks`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_has_genre`
--
ALTER TABLE `books_has_genre`
  ADD CONSTRAINT `fk_books_has_genre_books1` FOREIGN KEY (`books_idbooks`) REFERENCES `books` (`idbooks`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_books_has_genre_genre1` FOREIGN KEY (`genre_genreid`) REFERENCES `genre` (`genreid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_has_type`
--
ALTER TABLE `books_has_type`
  ADD CONSTRAINT `fk_books_has_type_books1` FOREIGN KEY (`books_idbooks`) REFERENCES `books` (`idbooks`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_books_has_type_type1` FOREIGN KEY (`type_idtype`) REFERENCES `type` (`idtype`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
