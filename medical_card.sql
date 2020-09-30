-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Wrz 2020, 12:53
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `medical_card`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `exco`
--

CREATE TABLE `exco` (
  `IDEX` int(11) NOT NULL COMMENT 'ID EXIC CODE',
  `NUEX` varchar(255) NOT NULL COMMENT 'NUMBER OF EXIC CODE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `glcs`
--

CREATE TABLE `glcs` (
  `IDGL` int(11) NOT NULL COMMENT 'ID GLASGOW COMA SCALE',
  `REGL` varchar(255) NOT NULL COMMENT 'RESULT OF GLASGOW COMA SCALE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inci`
--

CREATE TABLE `inci` (
  `IDIN` int(11) NOT NULL,
  `IDMS` int(11) NOT NULL COMMENT 'ID MED STUFF',
  `IDPA` int(11) NOT NULL COMMENT 'ID PATIENT',
  `IDTR` int(11) NOT NULL COMMENT 'ID TRAUMA',
  `IDTD` int(11) NOT NULL COMMENT 'ID Times and dates of the incident',
  `IDLO` int(11) NOT NULL COMMENT 'ID LOCATION',
  `IDNO` int(11) NOT NULL COMMENT 'ID NOTE',
  `IDTO` int(11) NOT NULL COMMENT 'ID TYPE OFF CALL',
  `IDUO` int(11) NOT NULL COMMENT 'ID Urgency of the event',
  `IDTI` int(11) NOT NULL COMMENT 'ID TYPE OF INCIDENT',
  `IDEX` int(11) NOT NULL COMMENT 'ID EXIC CODE',
  `IDSA` int(11) NOT NULL COMMENT 'ID SAMPLE',
  `IDGL` int(11) NOT NULL COMMENT 'ID GLASGOW SCALE',
  `IDME` int(11) NOT NULL COMMENT 'ID MEDICINE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logs`
--

CREATE TABLE `logs` (
  `IDLO` int(11) NOT NULL COMMENT 'ID LOGS',
  `USID` int(11) NOT NULL COMMENT 'USER ID LOGS',
  `EVLO` int(11) NOT NULL COMMENT 'EVENT LOGS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `loti`
--

CREATE TABLE `loti` (
  `IDLO` int(11) NOT NULL COMMENT 'ID LOCATION OF INCIDENT',
  `CILO` varchar(128) NOT NULL COMMENT 'CITY NAME',
  `ZCLO` varchar(11) NOT NULL COMMENT 'ZIP CODE',
  `STLO` varchar(128) NOT NULL COMMENT 'STREET LOCATION'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `medi`
--

CREATE TABLE `medi` (
  `IDME` int(11) NOT NULL COMMENT 'ID MEDICAMENT',
  `NAME` varchar(255) NOT NULL COMMENT 'NAME OF MEDICMENT',
  `DEME` text NOT NULL COMMENT 'DESCRIPTION MEDICAMENT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mest`
--

CREATE TABLE `mest` (
  `IDME` int(11) NOT NULL COMMENT 'ID MED STUFF',
  `NAME` varchar(64) NOT NULL COMMENT 'NAME MED STUFF',
  `LAME` varchar(64) NOT NULL COMMENT 'LAST NAME MED STUFF',
  `LOME` varchar(64) NOT NULL COMMENT 'LOCALISATION ME STUFF',
  `IDQU` int(11) NOT NULL COMMENT 'ID QUALIFICATION',
  `IDUS` int(11) NOT NULL COMMENT 'ID USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `note`
--

CREATE TABLE `note` (
  `IDNO` int(11) NOT NULL COMMENT 'ID NOTE',
  `CONO` varchar(255) NOT NULL COMMENT 'CONTENT NOTE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pati`
--

CREATE TABLE `pati` (
  `IDPA` int(11) NOT NULL COMMENT 'ID PATIENT',
  `NAPA` varchar(32) NOT NULL COMMENT 'NAME PATIENT',
  `LAPA` varchar(32) NOT NULL COMMENT 'LASTAME PATIENT',
  `PNPA` varchar(12) NOT NULL COMMENT 'PHONE NUMBER PATIENT',
  `EMPA` varchar(128) NOT NULL COMMENT 'EMAIL PATIENT',
  `CIPA` varchar(128) NOT NULL COMMENT 'CITI PATIENT',
  `ZCPA` varchar(10) NOT NULL COMMENT 'ZIP CODE PATIENT',
  `SNPA` varchar(255) NOT NULL COMMENT 'STREET AND HOUSE NUMBER PATINT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `qual`
--

CREATE TABLE `qual` (
  `IDQU` int(11) NOT NULL COMMENT 'ID QUALIFICATION',
  `NAQU` varchar(255) NOT NULL COMMENT 'NAME OF QUALIFICAION'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sale`
--

CREATE TABLE `sale` (
  `IDSA` int(11) NOT NULL COMMENT 'ID SAMPLE',
  `RESA` varchar(255) NOT NULL COMMENT 'RESULT OF SAMPLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tdon`
--

CREATE TABLE `tdon` (
  `IDTD` int(11) NOT NULL COMMENT 'ID Times and dates of the incident',
  `DDTD` date NOT NULL COMMENT 'DEPARTURE DATE',
  `ARTD` date NOT NULL COMMENT 'ARRIVED TIME AND DATA',
  `BBTD` date NOT NULL COMMENT 'BCK TO BASE TIME AND DATE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `toca`
--

CREATE TABLE `toca` (
  `IDTO` int(11) NOT NULL COMMENT 'ID TYPE OF CALL',
  `NATO` varchar(255) NOT NULL COMMENT 'NAME OF TYPE OF CALL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `toin`
--

CREATE TABLE `toin` (
  `IDTO` int(11) NOT NULL COMMENT 'ID TYPE OF INCIDENT',
  `NATO` varchar(255) NOT NULL COMMENT 'NAME TYPE OF INCIDENT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trau`
--

CREATE TABLE `trau` (
  `IDTR` int(11) NOT NULL COMMENT 'ID TRAUMA',
  `NATR` varchar(128) NOT NULL COMMENT 'NAME TRAUMA',
  `ICTR` varchar(50) NOT NULL COMMENT 'ICD CODE TRAUMA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uote`
--

CREATE TABLE `uote` (
  `IDUO` int(11) NOT NULL COMMENT 'ID Urgency of the event',
  `NAUO` varchar(255) NOT NULL COMMENT 'NAME OF Urgency of the event'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `IDUS` int(11) NOT NULL COMMENT 'ID USER',
  `LOUS` varchar(32) NOT NULL COMMENT 'LOGIN USER',
  `PAUS` varchar(128) NOT NULL COMMENT 'PASSWORD USER',
  `EMUS` varchar(128) NOT NULL COMMENT 'EMAIL USER',
  `IPUS` varchar(9) NOT NULL COMMENT 'IP USER',
  `PEUS` int(5) NOT NULL COMMENT 'PERMISSION USER',
  `JDUS` date NOT NULL COMMENT 'JOIN DATE USER',
  `POUS` int(1) NOT NULL COMMENT 'POLICY ACCEPT USER',
  `ADUS` int(11) NOT NULL COMMENT 'ADDED BY USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `exco`
--
ALTER TABLE `exco`
  ADD PRIMARY KEY (`IDEX`);

--
-- Indeksy dla tabeli `glcs`
--
ALTER TABLE `glcs`
  ADD PRIMARY KEY (`IDGL`);

--
-- Indeksy dla tabeli `inci`
--
ALTER TABLE `inci`
  ADD PRIMARY KEY (`IDIN`),
  ADD KEY `IDEX` (`IDEX`),
  ADD KEY `IDGL` (`IDGL`),
  ADD KEY `IDLO` (`IDLO`),
  ADD KEY `IDME` (`IDME`),
  ADD KEY `IDMS` (`IDMS`),
  ADD KEY `IDNO` (`IDNO`),
  ADD KEY `IDPA` (`IDPA`),
  ADD KEY `IDSA` (`IDSA`),
  ADD KEY `IDTD` (`IDTD`),
  ADD KEY `IDTI` (`IDTI`),
  ADD KEY `IDTO` (`IDTO`),
  ADD KEY `IDTR` (`IDTR`),
  ADD KEY `IDUO` (`IDUO`);

--
-- Indeksy dla tabeli `loti`
--
ALTER TABLE `loti`
  ADD PRIMARY KEY (`IDLO`);

--
-- Indeksy dla tabeli `medi`
--
ALTER TABLE `medi`
  ADD PRIMARY KEY (`IDME`);

--
-- Indeksy dla tabeli `mest`
--
ALTER TABLE `mest`
  ADD PRIMARY KEY (`IDME`),
  ADD KEY `USME` (`IDUS`),
  ADD KEY `IDQU` (`IDQU`);

--
-- Indeksy dla tabeli `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`IDNO`);

--
-- Indeksy dla tabeli `pati`
--
ALTER TABLE `pati`
  ADD PRIMARY KEY (`IDPA`);

--
-- Indeksy dla tabeli `qual`
--
ALTER TABLE `qual`
  ADD PRIMARY KEY (`IDQU`);

--
-- Indeksy dla tabeli `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`IDSA`);

--
-- Indeksy dla tabeli `tdon`
--
ALTER TABLE `tdon`
  ADD PRIMARY KEY (`IDTD`);

--
-- Indeksy dla tabeli `toca`
--
ALTER TABLE `toca`
  ADD PRIMARY KEY (`IDTO`);

--
-- Indeksy dla tabeli `toin`
--
ALTER TABLE `toin`
  ADD PRIMARY KEY (`IDTO`);

--
-- Indeksy dla tabeli `trau`
--
ALTER TABLE `trau`
  ADD PRIMARY KEY (`IDTR`);

--
-- Indeksy dla tabeli `uote`
--
ALTER TABLE `uote`
  ADD PRIMARY KEY (`IDUO`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `exco`
--
ALTER TABLE `exco`
  MODIFY `IDEX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID EXIC CODE';

--
-- AUTO_INCREMENT dla tabeli `glcs`
--
ALTER TABLE `glcs`
  MODIFY `IDGL` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID GLASGOW COMA SCALE';

--
-- AUTO_INCREMENT dla tabeli `inci`
--
ALTER TABLE `inci`
  MODIFY `IDIN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `loti`
--
ALTER TABLE `loti`
  MODIFY `IDLO` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID LOCATION OF INCIDENT';

--
-- AUTO_INCREMENT dla tabeli `medi`
--
ALTER TABLE `medi`
  MODIFY `IDME` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID MEDICAMENT';

--
-- AUTO_INCREMENT dla tabeli `mest`
--
ALTER TABLE `mest`
  MODIFY `IDME` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID MED STUFF';

--
-- AUTO_INCREMENT dla tabeli `note`
--
ALTER TABLE `note`
  MODIFY `IDNO` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID NOTE';

--
-- AUTO_INCREMENT dla tabeli `qual`
--
ALTER TABLE `qual`
  MODIFY `IDQU` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID QUALIFICATION';

--
-- AUTO_INCREMENT dla tabeli `sale`
--
ALTER TABLE `sale`
  MODIFY `IDSA` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID SAMPLE';

--
-- AUTO_INCREMENT dla tabeli `tdon`
--
ALTER TABLE `tdon`
  MODIFY `IDTD` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID Times and dates of the incident';

--
-- AUTO_INCREMENT dla tabeli `toca`
--
ALTER TABLE `toca`
  MODIFY `IDTO` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID TYPE OF CALL';

--
-- AUTO_INCREMENT dla tabeli `toin`
--
ALTER TABLE `toin`
  MODIFY `IDTO` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID TYPE OF INCIDENT';

--
-- AUTO_INCREMENT dla tabeli `trau`
--
ALTER TABLE `trau`
  MODIFY `IDTR` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID TRAUMA';

--
-- AUTO_INCREMENT dla tabeli `uote`
--
ALTER TABLE `uote`
  MODIFY `IDUO` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID Urgency of the event';

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `IDUS` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID USER';

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `inci`
--
ALTER TABLE `inci`
  ADD CONSTRAINT `inci_ibfk_1` FOREIGN KEY (`IDMS`) REFERENCES `mest` (`IDME`),
  ADD CONSTRAINT `inci_ibfk_10` FOREIGN KEY (`IDSA`) REFERENCES `sale` (`IDSA`),
  ADD CONSTRAINT `inci_ibfk_11` FOREIGN KEY (`IDTD`) REFERENCES `tdon` (`IDTD`),
  ADD CONSTRAINT `inci_ibfk_12` FOREIGN KEY (`IDTI`) REFERENCES `toin` (`IDTO`),
  ADD CONSTRAINT `inci_ibfk_13` FOREIGN KEY (`IDTO`) REFERENCES `toca` (`IDTO`),
  ADD CONSTRAINT `inci_ibfk_14` FOREIGN KEY (`IDTR`) REFERENCES `trau` (`IDTR`),
  ADD CONSTRAINT `inci_ibfk_15` FOREIGN KEY (`IDUO`) REFERENCES `uote` (`IDUO`),
  ADD CONSTRAINT `inci_ibfk_2` FOREIGN KEY (`IDPA`) REFERENCES `pati` (`IDPA`),
  ADD CONSTRAINT `inci_ibfk_3` FOREIGN KEY (`IDEX`) REFERENCES `exco` (`IDEX`),
  ADD CONSTRAINT `inci_ibfk_4` FOREIGN KEY (`IDGL`) REFERENCES `glcs` (`IDGL`),
  ADD CONSTRAINT `inci_ibfk_5` FOREIGN KEY (`IDLO`) REFERENCES `loti` (`IDLO`),
  ADD CONSTRAINT `inci_ibfk_6` FOREIGN KEY (`IDME`) REFERENCES `medi` (`IDME`),
  ADD CONSTRAINT `inci_ibfk_7` FOREIGN KEY (`IDMS`) REFERENCES `mest` (`IDME`),
  ADD CONSTRAINT `inci_ibfk_8` FOREIGN KEY (`IDNO`) REFERENCES `note` (`IDNO`),
  ADD CONSTRAINT `inci_ibfk_9` FOREIGN KEY (`IDPA`) REFERENCES `pati` (`IDPA`);

--
-- Ograniczenia dla tabeli `mest`
--
ALTER TABLE `mest`
  ADD CONSTRAINT `USME` FOREIGN KEY (`IDUS`) REFERENCES `user` (`IDUS`),
  ADD CONSTRAINT `mest_ibfk_1` FOREIGN KEY (`IDQU`) REFERENCES `qual` (`IDQU`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
