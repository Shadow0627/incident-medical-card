-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Gru 2020, 14:13
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
('exco5fb44a38b93ae', '0'),
('exco5fb44aaf5146b', '0'),
('exco5fb44b46936ae', '0'),
('exco5fb44b5b635b6', '0'),
('exco5fb44b68004ac', '0'),
('exco5fb44b89bb841', '0'),
('exco5fb44b96a1e43', '0'),
('exco5fb44babae950', '0'),
('exco5fd0cd71b6cd8', 'asdasda');

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
('glcs5fb44a38be7b6', '0', '0', '0'),
('glcs5fb44aaf6618a', '0', '0', '0'),
('glcs5fb44b469aad1', '0', '0', '0'),
('glcs5fb44b5b6c088', '0', '0', '0'),
('glcs5fb44b68029b5', '0', '0', '0'),
('glcs5fb44b89c00a7', '0', '0', '0'),
('glcs5fb44b96aa55b', '0', '0', '0'),
('glcs5fb44babb42cd', '0', '0', '0'),
('glcs5fd0cd71b8cd2', 'asdasdasd', 'asdasd', 'asdas');

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

--
-- Zrzut danych tabeli `inci`
--

INSERT INTO `inci` (`IDIN`, `IDUS`, `IDPA`, `IDTR`, `IDTD`, `IDLO`, `IDNO`, `IDTO`, `IDUO`, `IDTI`, `IDEX`, `IDSA`, `IDGL`, `IDME`) VALUES
('inci5fb44a38d4efd', 1, 'pati5fb44a38c6a41', 'trau5fb44a38d0dba', 'tdon5fb44a38cabbd', 'loti5fb44a38c0898', 'note5fb44a38c4a57', 'toca5fb44a38ccca4', 'uote5fb44a38d2e1e', 'toni5fb44a38ced0b', 'exco5fb44a38b93ae', 'sale5fb44a38c8abc', 'glcs5fb44a38be7b6', 'medi5fb44a38c28d8'),
('inci5fb44ab100bd0', 1, 'pati5fb44aafca313', 'trau5fb44ab0af9cd', 'tdon5fb44aaff1253', 'loti5fb44aaf809de', 'note5fb44aafafaa4', 'toca5fb44ab00d46e', 'uote5fb44ab0d23bf', 'toni5fb44ab088eea', 'exco5fb44aaf5146b', 'sale5fb44aafda9fa', 'glcs5fb44aaf6618a', 'medi5fb44aaf992b9'),
('inci5fb44b46cdb74', 1, 'pati5fb44b46b120b', 'trau5fb44b46c9900', 'tdon5fb44b46b53ae', 'loti5fb44b46a4e08', 'note5fb44b46a8f73', 'toca5fb44b46bd53d', 'uote5fb44b46cb9f8', 'toni5fb44b46c781e', 'exco5fb44b46936ae', 'sale5fb44b46b3289', 'glcs5fb44b469aad1', 'medi5fb44b46a6e9d'),
('inci5fb44b5c0ef59', 1, 'pati5fb44b5bab4f9', 'trau5fb44b5be88d5', 'tdon5fb44b5bc7e5a', 'loti5fb44b5b82850', 'note5fb44b5ba526e', 'toca5fb44b5bce0d1', 'uote5fb44b5c02c1b', 'toni5fb44b5bda4da', 'exco5fb44b5b635b6', 'sale5fb44b5bb9a2d', 'glcs5fb44b5b6c088', 'medi5fb44b5b96dbc'),
('inci5fb44b6827b26', 1, 'pati5fb44b6816fbf', 'trau5fb44b6823a7a', 'tdon5fb44b681b11e', 'loti5fb44b680ac22', 'note5fb44b6814ec8', 'toca5fb44b681d169', 'uote5fb44b6825aa9', 'toni5fb44b681f227', 'exco5fb44b68004ac', 'sale5fb44b681903f', 'glcs5fb44b68029b5', 'medi5fb44b680ccd9'),
('inci5fb44b8a5d2e3', 1, 'pati5fb44b89ef616', 'trau5fb44b8a50e47', 'tdon5fb44b8a19d05', 'loti5fb44b89c6452', 'note5fb44b89dafd4', 'toca5fb44b8a34558', 'uote5fb44b8a570e0', 'toni5fb44b8a429bc', 'exco5fb44b89bb841', 'sale5fb44b8a119ee', 'glcs5fb44b89c00a7', 'medi5fb44b89d4e5c'),
('inci5fb44b97084ee', 1, 'pati5fb44b96d9c8e', 'trau5fb44b96ea1ab', 'tdon5fb44b96dde8a', 'loti5fb44b96bd1ae', 'note5fb44b96d380f', 'toca5fb44b96dff0f', 'uote5fb44b970025b', 'toni5fb44b96e1f98', 'exco5fb44b96a1e43', 'sale5fb44b96dbd82', 'glcs5fb44b96aa55b', 'medi5fb44b96c7495'),
('inci5fb44bac7a714', 1, 'pati5fb44babf14f0', 'trau5fb44bac61ee3', 'tdon5fb44bac0f946', 'loti5fb44babca9be', 'note5fb44babe51ab', 'toca5fb44bac21e6a', 'uote5fb44bac6e392', 'toni5fb44bac49801', 'exco5fb44babae950', 'sale5fb44bac0969d', 'glcs5fb44babb42cd', 'medi5fb44babdefa7'),
('inci5fd0cd71cf4cb', 1, 'pati5fd0cd71c0fa8', 'trau5fd0cd71cb2a5', 'tdon5fd0cd71c5076', 'loti5fd0cd71bad26', 'note5fd0cd71bee81', 'toca5fd0cd71c7137', 'uote5fd0cd71cd3ab', 'toni5fd0cd71c91b9', 'exco5fd0cd71b6cd8', 'sale5fd0cd71c3046', 'glcs5fd0cd71b8cd2', 'medi5fd0cd71bcddd');

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
('loti5fb44a38c0898', 'zadupie', '12-098', 'Wypizdowie'),
('loti5fb44aaf809de', 'zadupie', '12-098', 'Wypizdowie'),
('loti5fb44b46a4e08', 'zadupie', '12-098', 'Wypizdowie'),
('loti5fb44b5b82850', 'zadupie', '12-098', 'Wypizdowie'),
('loti5fb44b680ac22', 'zadupie', '12-098', 'Wypizdowie'),
('loti5fb44b89c6452', 'zadupie', '12-098', 'Wypizdowie'),
('loti5fb44b96bd1ae', 'zadupie', '12-098', 'Wypizdowie'),
('loti5fb44babca9be', 'zadupie', '12-098', 'Wypizdowie'),
('loti5fd0cd71bad26', 'dasdasdasds', 'sadasasd', 'asdasasda');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `medi`
--

CREATE TABLE `medi` (
  `IDME` varchar(255) NOT NULL COMMENT 'ID MEDICAMENT',
  `NAME` varchar(255) NOT NULL COMMENT 'NAME OF MEDICMENT',
  `DEME` text NOT NULL COMMENT 'DESCRIPTION MEDICAMENT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `medi`
--

INSERT INTO `medi` (`IDME`, `NAME`, `DEME`) VALUES
('medi5fb44a38c28d8', 'brak', ''),
('medi5fb44aaf992b9', 'dupny fest', ''),
('medi5fb44b46a6e9d', '1`12`2', ''),
('medi5fb44b5b96dbc', '1`12`2', ''),
('medi5fb44b680ccd9', '1`12`2', ''),
('medi5fb44b89d4e5c', '1`12`2', ''),
('medi5fb44b96c7495', 'asdasda', ''),
('medi5fb44babdefa7', 'fdsffsfsd', ''),
('medi5fd0cd71bcddd', 'asdasda', '');

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
('note5fb44a38c4a57', 'umarł i jest zimy od miesiaca'),
('note5fb44aafafaa4', 'umarł i jest zimy od miesiaca'),
('note5fb44b46a8f73', 'umarł i jest zimy od miesiaca'),
('note5fb44b5ba526e', 'umarł i jest zimy od miesiaca'),
('note5fb44b6814ec8', 'umarł i jest zimy od miesiaca'),
('note5fb44b89dafd4', 'umarł i jest zimy od miesiaca'),
('note5fb44b96d380f', 'umarł i jest zimy od miesiaca'),
('note5fb44babe51ab', 'umarł i jest zimy od miesiaca'),
('note5fd0cd71bee81', 'asdasdasd');

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
('pati5fb44a38c6a41', 'Adam', 'Szeroki', '567432098', 'brak@brak.pl', 'niewiem', 'dlugi', 'nieznany'),
('pati5fb44aafca313', 'Adam123', 'Szeroki', '567432098', 'brak@brak.pl', 'niewiem', 'dlugi', 'nieznany'),
('pati5fb44b46b120b', 'Adam123', 'Szeroki321', '567432098', 'brak@brak.pl', 'niewiem', 'dlugi', 'nieznany'),
('pati5fb44b5bab4f9', 'Adam123', 'Szeroki321', '567432098', 'brak@brak.pl', 'niewiem', 'dlugi', 'nieznany'),
('pati5fb44b6816fbf', 'Adam123', 'Szeroki321312', '567432098', 'brak@brak.pl', 'niewiem', 'dlugi', 'nieznany'),
('pati5fb44b89ef616', 'Adam123', 'Szeroki321312', '567432098', 'brak@brak.pl', 'niewiem', 'dlugi', 'nieznany'),
('pati5fb44b96d9c8e', 'Adam123', 'dupa', '567432098', 'brak@brak.pl', 'niewiem', 'dlugi', 'nieznany'),
('pati5fb44babf14f0', 'Adam123', 'dupa', '567432098', 'brak@brak.pl', 'niewiem', 'dlugi', 'nieznany'),
('pati5fd0cd71c0fa8', 'asdasd', 'asdasd', 'asdasd@asas.', 'asdasdas', 'dasdasd', 'asdasda', 'asdasdsa');

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
('sale5fb44a38c8abc', 'brak', 'brak', 'brak', 'brak', 'brak', 'brak'),
('sale5fb44aafda9fa', 'brak', 'brak', 'brak', 'brak', 'brak', 'brak'),
('sale5fb44b46b3289', 'brak', 'brak', 'brak', 'brak', 'brak', 'brak'),
('sale5fb44b5bb9a2d', 'brak', 'brak', 'brak', 'brak', 'brak', 'brak'),
('sale5fb44b681903f', 'brak', 'brak', 'brak', 'brak', 'brak', 'brak'),
('sale5fb44b8a119ee', 'brak', 'brak', 'brak', 'brak', 'brak', 'brak'),
('sale5fb44b96dbd82', 'brak', 'brak', 'brak', 'brak', 'brak', 'brak'),
('sale5fb44bac0969d', 'brak', 'brak', 'brak', 'brak', 'brak', 'brak'),
('sale5fd0cd71c3046', 'asdasd', 'sdasdasd', 'sdasdasa', 'dasdasd', 'asdasdas', 'dasdasd');

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
('tdon5fb44a38cabbd', '2020-11-17 23:09:00', '2020-11-17 23:09:00', '2020-11-17 23:09:00'),
('tdon5fb44aaff1253', '2020-11-17 23:09:00', '2020-11-17 23:09:00', '2020-11-17 23:09:00'),
('tdon5fb44b46b53ae', '2020-11-17 23:09:00', '2020-11-17 23:09:00', '2020-11-26 05:09:00'),
('tdon5fb44b5bc7e5a', '2020-11-17 23:09:00', '2020-11-17 23:09:00', '2020-11-26 05:09:00'),
('tdon5fb44b681b11e', '2020-11-17 23:09:00', '2020-11-17 23:09:00', '2020-12-04 05:09:00'),
('tdon5fb44b8a19d05', '2020-11-17 23:09:00', '2020-11-17 23:09:00', '2020-12-04 05:09:00'),
('tdon5fb44b96dde8a', '2020-11-17 23:09:00', '2020-11-17 23:09:00', '2020-12-04 05:09:00'),
('tdon5fb44bac0f946', '2020-11-17 23:09:00', '2020-11-17 23:09:00', '2021-01-10 10:09:00'),
('tdon5fd0cd71c5076', '2020-12-09 14:13:00', '2020-12-09 14:13:00', '2020-12-09 14:13:00');

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
('toca5fb44a38ccca4', 'Kolorowe'),
('toca5fb44ab00d46e', 'Kolorowe'),
('toca5fb44b46bd53d', 'Kolorowe'),
('toca5fb44b5bce0d1', 'Kolorowe'),
('toca5fb44b681d169', 'Kolorowe'),
('toca5fb44b8a34558', 'Kolorowe'),
('toca5fb44b96dff0f', 'Kolorowe'),
('toca5fb44bac21e6a', 'Kolorowe'),
('toca5fd0cd71c7137', 'asdasd');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `toin`
--

CREATE TABLE `toin` (
  `IDTO` varchar(255) NOT NULL COMMENT 'ID TYPE OF INCIDENT',
  `NOTO` varchar(255) NOT NULL COMMENT 'NAME TYPE OF INCIDENT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `toin`
--

INSERT INTO `toin` (`IDTO`, `NOTO`) VALUES
('toni5fb44a38ced0b', 'Brak'),
('toni5fb44ab088eea', 'Brak'),
('toni5fb44b46c781e', 'Brak'),
('toni5fb44b5bda4da', 'Brak'),
('toni5fb44b681f227', 'Brak'),
('toni5fb44b8a429bc', 'Brak'),
('toni5fb44b96e1f98', 'Brak'),
('toni5fb44bac49801', 'Brak'),
('toni5fd0cd71c91b9', 'asdasdasd');

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
('trau5fb44a38d0dba', 'od chuja', ''),
('trau5fb44ab0af9cd', 'od chuja', ''),
('trau5fb44b46c9900', 'od chuja', ''),
('trau5fb44b5be88d5', 'od chuja', ''),
('trau5fb44b6823a7a', 'od chuja', ''),
('trau5fb44b8a50e47', 'od chuja', ''),
('trau5fb44b96ea1ab', 'od chuja', ''),
('trau5fb44bac61ee3', 'od chuja', ''),
('trau5fd0cd71cb2a5', 'asdasd', '');

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
('uote5fb44a38d2e1e', 'zadne'),
('uote5fb44ab0d23bf', 'zadne'),
('uote5fb44b46cb9f8', 'zadne'),
('uote5fb44b5c02c1b', 'zadne'),
('uote5fb44b6825aa9', 'zadne'),
('uote5fb44b8a570e0', 'zadne'),
('uote5fb44b970025b', 'zadne'),
('uote5fb44bac6e392', 'zadne'),
('uote5fd0cd71cd3ab', 'asasdasd');

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
  ADD CONSTRAINT `inci_ibfk_1` FOREIGN KEY (`IDEX`) REFERENCES `exco` (`IDEX`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_10` FOREIGN KEY (`IDTO`) REFERENCES `toca` (`IDTO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_11` FOREIGN KEY (`IDTR`) REFERENCES `trau` (`IDTR`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_12` FOREIGN KEY (`IDUO`) REFERENCES `uote` (`IDUO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_13` FOREIGN KEY (`IDUS`) REFERENCES `user` (`IDUS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_2` FOREIGN KEY (`IDGL`) REFERENCES `glcs` (`IDGL`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_3` FOREIGN KEY (`IDLO`) REFERENCES `loti` (`IDLO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_4` FOREIGN KEY (`IDME`) REFERENCES `medi` (`IDME`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_5` FOREIGN KEY (`IDNO`) REFERENCES `note` (`IDNO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_6` FOREIGN KEY (`IDPA`) REFERENCES `pati` (`IDPA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_7` FOREIGN KEY (`IDSA`) REFERENCES `sale` (`IDSA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_8` FOREIGN KEY (`IDTD`) REFERENCES `tdon` (`IDTD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inci_ibfk_9` FOREIGN KEY (`IDTI`) REFERENCES `toin` (`IDTO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
