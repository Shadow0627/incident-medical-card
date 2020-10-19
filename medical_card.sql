-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Paź 2020, 00:03
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

--
-- Zrzut danych tabeli `exco`
--

INSERT INTO `exco` (`IDEX`, `NUEX`) VALUES
('exco5f8e0cb80b61d', '1'),
('exco5f8e0cf8a0ec9', '1');

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

--
-- Zrzut danych tabeli `glcs`
--

INSERT INTO `glcs` (`IDGL`, `EYGL`, `VOGL`, `MOGL`) VALUES
('glcs5f8e0cb81277e', '0', '0', '0'),
('glcs5f8e0cf8a615b', '0', '0', '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inci`
--

CREATE TABLE `inci` (
  `IDIN` int(11) NOT NULL,
  `IDMS` varchar(255) NOT NULL COMMENT 'ID MED STUFF',
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

--
-- Zrzut danych tabeli `inci`
--

INSERT INTO `inci` (`IDIN`, `IDMS`, `IDPA`, `IDTR`, `IDTD`, `IDLO`, `IDNO`, `IDTO`, `IDUO`, `IDTI`, `IDEX`, `IDSA`, `IDGL`, `IDME`) VALUES
(1, '1', 'pati5f8e0cb83d646', 'trau5f8e0cb83d64c', 'tdon5f8e0cb83d648', 'loti5f8e0cb83d642', 'note5f8e0cb83d644', 'toca5f8e0cb83d649', 'uote5f8e0cb83d64d', 'toni5f8e0cb83d64b', 'exco5f8e0cb83d636', 'sale5f8e0cb83d647', 'glcs5f8e0cb83d640', 'medi5f8e0cb83d643'),
(2, '1', 'pati5f8e0cf910482', 'trau5f8e0cf91048a', 'tdon5f8e0cf910485', 'loti5f8e0cf91047f', 'note5f8e0cf910481', 'toca5f8e0cf910487', 'uote5f8e0cf91048c', 'toni5f8e0cf910489', 'exco5f8e0cf910473', 'sale5f8e0cf910484', 'glcs5f8e0cf91047d', 'medi5f8e0cf910480');

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

--
-- Zrzut danych tabeli `loti`
--

INSERT INTO `loti` (`IDLO`, `CILO`, `ZCLO`, `STLO`) VALUES
('loti5f8e0cb81aa8c', 'szczecin', '70-203', 'Wesoła 98/1'),
('loti5f8e0cf8aa24e', 'szczecin', '70-203', 'Wesoła 98/1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `medi`
--

CREATE TABLE `medi` (
  `IDME` varchar(255) NOT NULL COMMENT 'ID MEDICAMENT',
  `MENA` varchar(255) NOT NULL COMMENT 'NAME OF MEDICMENT',
  `DEME` text NOT NULL COMMENT 'DESCRIPTION MEDICAMENT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `medi`
--

INSERT INTO `medi` (`IDME`, `MENA`, `DEME`) VALUES
('medi5f8e0cb820c56', 'brak', ''),
('medi5f8e0cf8ae465', 'brak', '');

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

--
-- Zrzut danych tabeli `note`
--

INSERT INTO `note` (`IDNO`, `CONO`) VALUES
('note5f8e0cb822c57', 'co tu duzo mówić. zabili chuja i tyle'),
('note5f8e0cf8b667a', 'co tu duzo mówić. zabili chuja i tyle');

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

--
-- Zrzut danych tabeli `pati`
--

INSERT INTO `pati` (`IDPA`, `NAPA`, `LAPA`, `PNPA`, `EMPA`, `CIPA`, `ZCPA`, `SNPA`) VALUES
('pati5f8e0cb824d6d', 'Kacper', 'Dupny', 'brak', 'nieznay@nieznay.pl', 'Daleko', 'Brak', 'bezdomny'),
('pati5f8e0cf8bae99', 'Kacper', 'Dupny', 'brak', 'nieznay@nieznay.pl', 'Daleko', 'Brak', 'bezdomny');

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

--
-- Zrzut danych tabeli `sale`
--

INSERT INTO `sale` (`IDSA`, `SYSA`, `ALSA`, `MESA`, `PASA`, `LASA`, `EVSA`) VALUES
('sale5f8e0cb826e02', 'brak', 'brak', 'brak', 'brak', 'brak', 'postrzal w glowe'),
('sale5f8e0cf8bf0c1', 'brak', 'brak', 'brak', 'brak', 'brak', 'postrzal w glowe');

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

--
-- Zrzut danych tabeli `tdon`
--

INSERT INTO `tdon` (`IDTD`, `DDTD`, `ARTD`, `BBTD`) VALUES
('tdon5f8e0cb828f03', '2020-10-19 00:00:00', '2020-10-19 00:00:00', '2020-10-19 00:00:00'),
('tdon5f8e0cf8c72e5', '2020-10-19 23:25:00', '2020-10-19 23:26:00', '2020-10-19 23:27:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `toca`
--

CREATE TABLE `toca` (
  `IDTO` varchar(255) NOT NULL COMMENT 'ID TYPE OF CALL',
  `NATO` varchar(255) NOT NULL COMMENT 'NAME OF TYPE OF CALL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `toca`
--

INSERT INTO `toca` (`IDTO`, `NATO`) VALUES
('toca5f8e0cb82b007', 'Pomoc spoleczna'),
('toca5f8e0cf8cb3d8', 'Pomoc spoleczna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `toin`
--

CREATE TABLE `toin` (
  `IDTO` varchar(255) NOT NULL COMMENT 'ID TYPE OF INCIDENT',
  `NATO` varchar(255) NOT NULL COMMENT 'NAME TYPE OF INCIDENT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `toin`
--

INSERT INTO `toin` (`IDTO`, `NATO`) VALUES
('toni5f8e0cb833247', 'morderstwo'),
('toni5f8e0cf8d9847', 'morderstwo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trau`
--

CREATE TABLE `trau` (
  `IDTR` varchar(255) NOT NULL COMMENT 'ID TRAUMA',
  `NATR` varchar(128) NOT NULL COMMENT 'NAME TRAUMA',
  `ICTR` varchar(50) NOT NULL COMMENT 'ICD CODE TRAUMA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `trau`
--

INSERT INTO `trau` (`IDTR`, `NATR`, `ICTR`) VALUES
('trau5f8e0cb837358', 'postrzał w głowe', ''),
('trau5f8e0cf8e7bf7', 'postrzał w głowe', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uote`
--

CREATE TABLE `uote` (
  `IDUO` varchar(255) NOT NULL COMMENT 'ID Urgency of the event',
  `NAUO` varchar(255) NOT NULL COMMENT 'NAME OF Urgency of the event'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uote`
--

INSERT INTO `uote` (`IDUO`, `NAUO`) VALUES
('uote5f8e0cb83b567', 'pilne'),
('uote5f8e0cf908120', 'pilne');

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
-- AUTO_INCREMENT dla tabeli `inci`
--
ALTER TABLE `inci`
  MODIFY `IDIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
