-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 13, 2019 at 04:02 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodetest`
--

-- --------------------------------------------------------

--
-- Table structure for table `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `estados` int(255) NOT NULL,
  `tarea` int(255) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `tarea` varchar(255) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `tarea`, `comentario`, `user`, `estado`, `Nombre`) VALUES
(1, 'fsd', 'fsqd', '1', '1', 'Andres'),
(2, 'dsfs', 'fqsdf', '0', '1', 'Selecione Usuario'),
(3, 'sdqfqds', 'fqds', '0', '1', 'Selecione Usuario'),
(4, 'fsdqf', 'fd', '1', '1', 'Andres'),
(5, 'fdsqf', 'fqsdf', '1', '1', 'Andres'),
(6, 'dsq', 'qsdf', '1', '1', 'Andres'),
(7, '', 'fdsqf', '1', '1', 'Andres'),
(8, 'fdsq', 'fdsqf', '3', '1', 'Luisa'),
(9, 'dfs', 'dfsq', '0', '1', 'Selecione Usuario'),
(10, 'dfs', 'dfsq', '0', '1', 'Selecione Usuario'),
(11, 'dfs', 'dfsq', '0', '1', 'Selecione Usuario'),
(12, 'dfs', 'dfsq', '0', '1', 'Selecione Usuario'),
(13, 'dfs', 'dfsq', '0', '1', 'Selecione Usuario'),
(14, 'dfs', 'dfsq', '0', '1', 'Selecione Usuario');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
