-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Paź 2020, 08:58
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.6

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
  `IDEX` varchar(255) NOT NULL COMMENT 'ID EXIC CODE',
  `NUEX` varchar(255) NOT NULL COMMENT 'NUMBER OF EXIC CODE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `glcs`
--

CREATE TABLE `glcs` (
  `IDGL` varchar(255) NOT NULL COMMENT 'ID GLASGOW COMA SCALE',
  `EYGL` varchar(255) NOT NULL COMMENT 'EYE CONTACT',
  `VOGL` varchar(255) NOT NULL COMMENT 'VOICE CONTACT',
  `MOGL` varchar(255) NOT NULL COMMENT 'MOVE CONTACT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inci`
--

CREATE TABLE `inci` (
  `IDIN` varchar(255) NOT NULL,
  `IDUS` int(11) NOT NULL COMMENT 'ID USER',
  `IDPA` varchar(255) NOT NULL COMMENT 'ID PATIENT',
  `IDTR` varchar(255) NOT NULL COMMENT 'ID TRAUMA',
  `IDTD` varchar(255) NOT NULL COMMENT 'ID Times and dates of the incident',
  `IDLO` varchar(255) NOT NULL COMMENT 'ID LOCATION',
  `IDNO` varchar(255) NOT NULL COMMENT 'ID NOTE',
  `IDTO` varchar(255) NOT NULL COMMENT 'ID TYPE OFF CALL',
  `IDUO` varchar(255) NOT NULL COMMENT 'ID Urgency of the event',
  `IDTI` varchar(255) NOT NULL COMMENT 'ID TYPE OF INCIDENT',
  `IDEX` varchar(255) NOT NULL COMMENT 'ID EXIC CODE',
  `IDSA` varchar(255) NOT NULL COMMENT 'ID SAMPLE',
  `IDGL` varchar(255) NOT NULL COMMENT 'ID GLASGOW SCALE',
  `IDME` varchar(255) NOT NULL COMMENT 'ID MEDICINE'
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
  `IDLO` varchar(255) NOT NULL COMMENT 'ID LOCATION OF INCIDENT',
  `CILO` varchar(128) NOT NULL COMMENT 'CITY NAME',
  `ZCLO` varchar(11) NOT NULL COMMENT 'ZIP CODE',
  `STLO` varchar(128) NOT NULL COMMENT 'STREET LOCATION'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `medi`
--

CREATE TABLE `medi` (
  `IDME` varchar(255) NOT NULL COMMENT 'ID MEDICAMENT',
  `MENA` varchar(255) NOT NULL COMMENT 'NAME OF MEDICMENT',
  `DEME` text NOT NULL COMMENT 'DESCRIPTION MEDICAMENT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mest`
--

CREATE TABLE `mest` (
  `IDME` int(11) NOT NULL COMMENT 'ID MED STUFF',
  `MENA` varchar(64) NOT NULL COMMENT 'NAME MED STUFF',
  `LAME` varchar(64) NOT NULL COMMENT 'LAST NAME MED STUFF',
  `LOME` varchar(64) NOT NULL COMMENT 'LOCALISATION ME STUFF',
  `IDQU` int(11) NOT NULL COMMENT 'ID QUALIFICATION',
  `IDUS` int(11) NOT NULL COMMENT 'ID USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `mest`
--

INSERT INTO `mest` (`IDME`, `MENA`, `LAME`, `LOME`, `IDQU`, `IDUS`) VALUES
(1, 'Piotr', 'Porwit', 'Gryfino', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `note`
--

CREATE TABLE `note` (
  `IDNO` varchar(255) NOT NULL COMMENT 'ID NOTE',
  `CONO` varchar(255) NOT NULL COMMENT 'CONTENT NOTE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pati`
--

CREATE TABLE `pati` (
  `IDPA` varchar(255) NOT NULL COMMENT 'ID PATIENT',
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

--
-- Zrzut danych tabeli `qual`
--

INSERT INTO `qual` (`IDQU`, `NAQU`) VALUES
(1, 'Ratownik KPP'),
(2, 'Ratownik medyczny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sale`
--

CREATE TABLE `sale` (
  `IDSA` varchar(255) NOT NULL COMMENT 'ID SAMPLE',
  `SYSA` varchar(255) NOT NULL COMMENT 'SYMPTOMS',
  `ALSA` varchar(255) NOT NULL COMMENT 'ALERGY',
  `MESA` varchar(255) NOT NULL COMMENT 'MEDICAMNT',
  `PASA` varchar(255) NOT NULL COMMENT 'PAST',
  `LASA` varchar(255) NOT NULL COMMENT 'LAUNCH',
  `EVSA` varchar(255) NOT NULL COMMENT 'EVIDENSE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tdon`
--

CREATE TABLE `tdon` (
  `IDTD` varchar(255) NOT NULL COMMENT 'ID Times and dates of the incident',
  `DDTD` datetime NOT NULL COMMENT 'DEPARTURE DATE',
  `ARTD` datetime NOT NULL COMMENT 'ARRIVED TIME AND DATA',
  `BBTD` datetime NOT NULL COMMENT 'BCK TO BASE TIME AND DATE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `toca`
--

CREATE TABLE `toca` (
  `IDTO` varchar(255) NOT NULL COMMENT 'ID TYPE OF CALL',
  `NATO` varchar(255) NOT NULL COMMENT 'NAME OF TYPE OF CALL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `toin`
--

CREATE TABLE `toin` (
  `IDTO` varchar(255) NOT NULL COMMENT 'ID TYPE OF INCIDENT',
  `NATO` varchar(255) NOT NULL COMMENT 'NAME TYPE OF INCIDENT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trau`
--

CREATE TABLE `trau` (
  `IDTR` varchar(255) NOT NULL COMMENT 'ID TRAUMA',
  `NATR` varchar(128) NOT NULL COMMENT 'NAME TRAUMA',
  `ICTR` varchar(50) NOT NULL COMMENT 'ICD CODE TRAUMA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uote`
--

CREATE TABLE `uote` (
  `IDUO` varchar(255) NOT NULL COMMENT 'ID Urgency of the event',
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
  `IPUS` varchar(13) NOT NULL COMMENT 'IP USER',
  `PEUS` int(5) NOT NULL COMMENT 'PERMISSION USER',
  `JDUS` date NOT NULL COMMENT 'JOIN DATE USER',
  `POUS` int(1) NOT NULL COMMENT 'POLICY ACCEPT USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`IDUS`, `LOUS`, `PAUS`, `EMUS`, `IPUS`, `PEUS`, `JDUS`, `POUS`) VALUES
(1, 'shadow0627', 'fa6863b13a4aff467e7ab0de90beb52e63525e2b', 'piorom12@gmail.com', '::1', 15, '2020-10-01', 1);

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
  ADD KEY `IDMS` (`IDUS`),
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
-- AUTO_INCREMENT dla tabeli `mest`
--
ALTER TABLE `mest`
  MODIFY `IDME` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID MED STUFF', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `qual`
--
ALTER TABLE `qual`
  MODIFY `IDQU` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID QUALIFICATION', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `IDUS` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID USER', AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `inci`
--
ALTER TABLE `inci`
  ADD CONSTRAINT `inci_ibfk_1` FOREIGN KEY (`IDEX`) REFERENCES `exco` (`IDEX`),
  ADD CONSTRAINT `inci_ibfk_10` FOREIGN KEY (`IDTO`) REFERENCES `toca` (`IDTO`),
  ADD CONSTRAINT `inci_ibfk_11` FOREIGN KEY (`IDTR`) REFERENCES `trau` (`IDTR`),
  ADD CONSTRAINT `inci_ibfk_12` FOREIGN KEY (`IDUO`) REFERENCES `uote` (`IDUO`),
  ADD CONSTRAINT `inci_ibfk_13` FOREIGN KEY (`IDUS`) REFERENCES `user` (`IDUS`),
  ADD CONSTRAINT `inci_ibfk_2` FOREIGN KEY (`IDGL`) REFERENCES `glcs` (`IDGL`),
  ADD CONSTRAINT `inci_ibfk_3` FOREIGN KEY (`IDLO`) REFERENCES `loti` (`IDLO`),
  ADD CONSTRAINT `inci_ibfk_4` FOREIGN KEY (`IDME`) REFERENCES `medi` (`IDME`),
  ADD CONSTRAINT `inci_ibfk_5` FOREIGN KEY (`IDNO`) REFERENCES `note` (`IDNO`),
  ADD CONSTRAINT `inci_ibfk_6` FOREIGN KEY (`IDPA`) REFERENCES `pati` (`IDPA`),
  ADD CONSTRAINT `inci_ibfk_7` FOREIGN KEY (`IDSA`) REFERENCES `sale` (`IDSA`),
  ADD CONSTRAINT `inci_ibfk_8` FOREIGN KEY (`IDTD`) REFERENCES `tdon` (`IDTD`),
  ADD CONSTRAINT `inci_ibfk_9` FOREIGN KEY (`IDTI`) REFERENCES `toin` (`IDTO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
