

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Table structure for table `datos`
--

CREATE TABLE `datos` (
  `iddata` int(11) NOT NULL,
  `id_sender` int(11) DEFAULT NULL,
  `id_for` int(11) DEFAULT NULL,
  `texto` text,
  `subject` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datos`
--

INSERT INTO `datos` (`iddata`, `id_sender`, `id_for`, `texto`, `subject`, `date`) VALUES
(13, 9, 8, 'VGVzdGluZyBtZXNzYWdl', 'check message system', '2023-04-27 14:33:33'),
(14, 8, 9,'QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB', 'check message system','2023-04-27 14:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `iduser` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` text,
  `Password` text,
  `DateCreation` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`iduser`, `FirstName`, `LastName`, `Email`, `Password`, `DateCreation`) VALUES
(6, 'Artyom', 'Pak', 'pak_art03@mail.ru', '50e04af2672b3dac353c42f75abbb6f4', '2023-04-27 14:29:55'),
(7, 'Test', 'Test', 'test@mail.ru', '322fedc80844cb28e95408c882790137', '2023-04-27 14:32:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`iddata`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datos`
--
ALTER TABLE `datos`
  MODIFY `iddata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

