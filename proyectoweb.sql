-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 07:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyectoweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `fichas`
--

CREATE TABLE `fichas` (
  `IdFicha` int(11) NOT NULL,
  `Nombre_Ficha` varchar(200) NOT NULL,
  `IdAsignado` int(11) NOT NULL,
  `Asignado` varchar(100) NOT NULL,
  `Fecha_Creacion` date NOT NULL,
  `PDF` varchar(200) NOT NULL,
  `Creado_Por` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fichas`
--

INSERT INTO `fichas` (`IdFicha`, `Nombre_Ficha`, `IdAsignado`, `Asignado`, `Fecha_Creacion`, `PDF`, `Creado_Por`) VALUES
(5, 'Ficha - 97448', 2, 'Anderson', '2020-03-08', 'titulo itla.pdf', 'Ryan'),
(6, 'Ficha - 97448', 2, 'Anderson', '2020-03-08', 'titulo itla.pdf', 'Ryan'),
(7, 'Ficha - 81014', 2, 'Anderson', '2020-03-08', 'titulo itla.pdf', 'Ryan'),
(8, 'Ficha - 81014', 2, 'Anderson', '2020-03-08', 'titulo itla.pdf', 'Ryan'),
(10, 'Ficha - 75479', 1, 'Ryan', '2020-03-08', 'CV RYAN MERCEDES.pdf', 'Ryan'),
(11, 'Ficha - 93304', 1, 'Ryan', '2020-03-08', 'Doc Nov 06, 2019, 11_56 (1).pdf', 'Ryan'),
(12, 'Ficha - 93304', 1, 'Ryan', '2020-03-08', 'Doc Nov 06, 2019, 11_56 (1).pdf', 'Ryan'),
(13, 'Ficha - 95035', 1, 'Ryan', '2020-03-08', 'RefactorU-Additional-Resources.pdf', 'Ryan'),
(14, 'Ficha - 5322', 2, 'Anderson', '2020-03-09', 'CV Ryan Mercedes 3.0.pdf', 'Ryan'),
(15, 'Ficha - 3929', 2, 'Anderson', '2020-03-09', '1583772506archivo_pdf', 'Ryan'),
(16, 'Ficha - 45931', 1, 'Ryan', '2020-03-09', '1583773058_', 'Ryan'),
(17, 'Ficha - 56126', 1, 'Ryan', '2020-03-09', '1583773164_pdf', 'Ryan');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Clave` varchar(100) NOT NULL,
  `Rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `Nombre`, `Apellido`, `Correo`, `Clave`, `Rol`) VALUES
(1, 'Ryan', 'Mercedes', 'ryan-mercedes@hotmail.com', 'mercedes', 1),
(2, 'Anderson', 'Villanueva', 'ryan-mercedes@hotmail.com', 'usuarionormal', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fichas`
--
ALTER TABLE `fichas`
  ADD PRIMARY KEY (`IdFicha`),
  ADD KEY `FK_IdAsociado` (`IdAsignado`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fichas`
--
ALTER TABLE `fichas`
  MODIFY `IdFicha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fichas`
--
ALTER TABLE `fichas`
  ADD CONSTRAINT `FK_IdAsociado` FOREIGN KEY (`IdAsignado`) REFERENCES `usuarios` (`IdUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
