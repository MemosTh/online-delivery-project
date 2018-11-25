-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: localhost
-- Χρόνος δημιουργίας: 30 Σεπ 2018 στις 21:27:38
-- Έκδοση διακομιστή: 5.7.21
-- Έκδοση PHP: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `web`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `dianomeas`
--

CREATE TABLE `dianomeas` (
  `onoma` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `epitheto` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `afm` int(10) NOT NULL,
  `amka` int(12) NOT NULL,
  `IBAN` varchar(34) COLLATE utf8_unicode_ci NOT NULL,
  `katastasi` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longtitude` float DEFAULT NULL,
  `langtitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `dianomeas`
--

INSERT INTO `dianomeas` (`onoma`, `epitheto`, `username`, `password`, `afm`, `amka`, `IBAN`, `katastasi`, `longtitude`, `langtitude`) VALUES
('Αλεξ', 'Μοκας', 'amokas', '123', 123, 123, '123', 'offline', 21.7364, 38.2463),
('Γιώργος', 'Αργυρός', 'gargiros', '123', 123, 123, '123', 'offline', 0, 0),
('Μηχάλης', 'Γιαννακόπουλος', 'mgiannakopoulos', '123', 123, 123, '123', 'offline', 0, 0),
('Μάκης', 'Περγάλιας', 'mpergalias', '123', 123, 123, '123', 'offline', 0, 0),
('Νίκος', 'Μακρής', 'nmakris', '123', 123, 123, '123', 'offline', 0, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `Manager`
--

CREATE TABLE `Manager` (
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `afm` int(10) NOT NULL,
  `amka` int(11) NOT NULL,
  `iban` varchar(34) COLLATE utf8_unicode_ci NOT NULL,
  `directing` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `Manager`
--

INSERT INTO `Manager` (`name`, `surname`, `user`, `pass`, `afm`, `amka`, `iban`, `directing`) VALUES
('Αγγελος', 'Τσουκαλας', 'agelos', '123', 54654654, 654651654, 'GR354654654654165654', 'Κατάστημα Πανεπιστημιου '),
('Γιωργος', 'Παπαδοπουλος', 'giorgos', '123', 65465698, 656566566, 'GR654654646546546546546', 'Κατάστημα Αμερικής 45'),
('Κωστας', 'Παναγιοτου', 'kostas', '123', 65165161, 32165165, 'GR6515654654654654654654654654', 'Κατάστημα Κορινθου 183'),
('Κώστας', 'Πρέσας', 'kpresas', '123', 123, 123, '123', 'Κατάστημα Κορίνθου 336'),
('Μακης ', 'Καγιας', 'makis', '123', 36541654, 56465465, 'GR654654654654654', 'Κατάστημα Υψηλά Αλώνια'),
('Θωμάς', 'Μάτσιος', 'matsios', '123', 123, 123, '123', 'Κατάστημα Τριών Ναυάρχων'),
('Mina', 'Diamond', 'mdiamond', '123', 123, 123, '123', 'Κατάστημα Erasmus'),
('Νικος', 'Κουκος', 'nkoukos', '12345', 1234, 1234, '1234', 'Κατάστημα Αγίου Ανδρέου'),
('Παυλος', 'Σκουρτας', 'paulos', '123', 65462165, 541654654, 'GR654654654654654654', 'Κατάστημα Βενιζέλου'),
('Thomas', 'Kouk', 'tkouk', '123', 123, 123, '123', 'Κατάστημα Αχιλέως'),
('Ζαχαρίας', 'Γεωργόπουλος', 'zgeorgopoulos', '123', 123, 123, '123', 'Κατάστημα Ολυμπίου');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `paragelia`
--

CREATE TABLE `paragelia` (
  `id` int(9) NOT NULL,
  `idx` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `dieuthinsi` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `bell` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `idk` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seenbyk` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seenbyd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sum` float DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `delivered` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `pelaths`
--

CREATE TABLE `pelaths` (
  `email` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `thlefwno` varchar(13) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `pelaths`
--

INSERT INTO `pelaths` (`email`, `pass`, `thlefwno`) VALUES
('geosaxodark@gmail.com', '3398426754', '6978202988'),
('saxodark@gmail.com', '3398426754', '6978202998'),
('troll@gmail.com', '3398426754', '6978202998');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `periexomeno`
--

CREATE TABLE `periexomeno` (
  `idp` int(9) NOT NULL,
  `proion` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `posothta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `plhromesdel`
--

CREATE TABLE `plhromesdel` (
  `idd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euros` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `plhromesdel`
--

INSERT INTO `plhromesdel` (`idd`, `month`, `year`, `euros`) VALUES
('amokas', '09', '18', 23.1984),
('gargiros', '09', '18', 2.7513);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `plhromesman`
--

CREATE TABLE `plhromesman` (
  `idx` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euros` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `plhromesman`
--

INSERT INTO `plhromesman` (`idx`, `month`, `year`, `euros`) VALUES
('makis', '09', '18', 800.078),
('matsios', '09', '18', 800.234),
('kpresas', '09', '18', 800.026),
('kostas', '09', '18', 800.888),
('agelos', '09', '18', 800.132),
('paulos', '09', '18', 800.026),
('mdiamond', '09', '18', 800.966),
('tkouk', '09', '18', 800.666),
('giorgos', '09', '18', 800.078);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `Product`
--

CREATE TABLE `Product` (
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `Product`
--

INSERT INTO `Product` (`name`, `price`) VALUES
('ελληνικος', 1.3),
('εσπρεσο', 1.6),
('καπουτσινο', 1.8),
('κεικ', 1.1),
('κουλουρι', 0.5),
('τοστ', 1.5),
('τραχανας', 12.6),
('τυροπιτα', 1),
('φιλτρου', 1.4),
('φραπε', 1.5),
('χορτοπιτα', 1.2);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `Reserve`
--

CREATE TABLE `Reserve` (
  `idS` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `idP` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `Reserve`
--

INSERT INTO `Reserve` (`idS`, `idP`, `quantity`) VALUES
('Κατάστημα Πανεπιστημιου ', 'τραχανας', 94),
('Κατάστημα Πανεπιστημιου ', 'τυροπιτα', 1),
('Κατάστημα Πανεπιστημιου ', 'τοστ', 5),
('Κατάστημα Πανεπιστημιου ', 'κεικ', 2),
('Κατάστημα Πανεπιστημιου ', 'κουλουρι', 27),
('Κατάστημα Πανεπιστημιου ', 'χορτοπιτα', 2),
('Κατάστημα Βενιζέλου', 'τραχανας', 0),
('Κατάστημα Βενιζέλου', 'τυροπιτα', 0),
('Κατάστημα Βενιζέλου', 'τοστ', 0),
('Κατάστημα Βενιζέλου', 'κεικ', 0),
('Κατάστημα Βενιζέλου', 'κουλουρι', 0),
('Κατάστημα Βενιζέλου', 'χορτοπιτα', 0),
('Κατάστημα Erasmus', 'τραχανας', 0),
('Κατάστημα Erasmus', 'τυροπιτα', 0),
('Κατάστημα Erasmus', 'τοστ', 0),
('Κατάστημα Erasmus', 'κεικ', 10),
('Κατάστημα Erasmus', 'κουλουρι', 0),
('Κατάστημα Erasmus', 'χορτοπιτα', 0),
('Κατάστημα Αχιλέως', 'τραχανας', 0),
('Κατάστημα Αχιλέως', 'τυροπιτα', 0),
('Κατάστημα Αχιλέως', 'τοστ', 0),
('Κατάστημα Αχιλέως', 'κεικ', 0),
('Κατάστημα Αχιλέως', 'κουλουρι', 0),
('Κατάστημα Αχιλέως', 'χορτοπιτα', 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `Store`
--

CREATE TABLE `Store` (
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lattitude` float NOT NULL,
  `longtitude` float NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(13) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `Store`
--

INSERT INTO `Store` (`name`, `lattitude`, `longtitude`, `address`, `phone`) VALUES
('Κατάστημα Erasmus', 38.2869, 21.7873, 'Erasmus', '2610012345'),
('Κατάστημα Αγίου Ανδρέου', 38.2449, 21.73, 'Αγίου Ανδρέου 144', '261012345'),
('Κατάστημα Αμερικής 45', 38.2634, 21.745, 'Αμερικής 45', '26105987456'),
('Κατάστημα Αχιλέως', 38.29, 21.7699, 'Αχιλέως 75', '2610012345'),
('Κατάστημα Βενιζέλου', 38.2295, 21.7412, 'Ελευθερίου Βενιζέλου', '2610012345'),
('Κατάστημα Κορινθου 183', 38.2499, 21.7404, 'Κορίνθου 183', '26105642589'),
('Κατάστημα Κορίνθου 336', 38.2409, 21.7288, 'Κορίνθου 336', '261012345'),
('Κατάστημα Ολυμπίου', 38.2348, 21.7308, 'Ολυμπίου 2', '2610012345'),
('Κατάστημα Πανεπιστημιου ', 38.2632, 21.754, 'Πανεπιστημίου 148', '26102545874'),
('Κατάστημα Τριών Ναυάρχων', 38.2428, 21.73, 'Τριών Ναυάρχων', '261012345'),
('Κατάστημα Υψηλά Αλώνια', 38.2405, 21.7351, 'Υψηλών Αλωνίων 19', '261012345');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `dianomeas`
--
ALTER TABLE `dianomeas`
  ADD PRIMARY KEY (`username`);

--
-- Ευρετήρια για πίνακα `Manager`
--
ALTER TABLE `Manager`
  ADD PRIMARY KEY (`user`),
  ADD KEY `directing` (`directing`);

--
-- Ευρετήρια για πίνακα `paragelia`
--
ALTER TABLE `paragelia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx` (`idx`),
  ADD KEY `idk` (`idk`),
  ADD KEY `idd` (`idd`);

--
-- Ευρετήρια για πίνακα `pelaths`
--
ALTER TABLE `pelaths`
  ADD PRIMARY KEY (`email`);

--
-- Ευρετήρια για πίνακα `periexomeno`
--
ALTER TABLE `periexomeno`
  ADD KEY `idp` (`idp`),
  ADD KEY `proion` (`proion`);

--
-- Ευρετήρια για πίνακα `plhromesdel`
--
ALTER TABLE `plhromesdel`
  ADD KEY `idd` (`idd`);

--
-- Ευρετήρια για πίνακα `plhromesman`
--
ALTER TABLE `plhromesman`
  ADD KEY `idx` (`idx`);

--
-- Ευρετήρια για πίνακα `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`name`);

--
-- Ευρετήρια για πίνακα `Reserve`
--
ALTER TABLE `Reserve`
  ADD KEY `idS` (`idS`),
  ADD KEY `idP` (`idP`);

--
-- Ευρετήρια για πίνακα `Store`
--
ALTER TABLE `Store`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `paragelia`
--
ALTER TABLE `paragelia`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `Manager`
--
ALTER TABLE `Manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`directing`) REFERENCES `Store` (`name`);

--
-- Περιορισμοί για πίνακα `paragelia`
--
ALTER TABLE `paragelia`
  ADD CONSTRAINT `paragelia_ibfk_1` FOREIGN KEY (`idx`) REFERENCES `pelaths` (`email`),
  ADD CONSTRAINT `paragelia_ibfk_2` FOREIGN KEY (`idk`) REFERENCES `Store` (`name`),
  ADD CONSTRAINT `paragelia_ibfk_3` FOREIGN KEY (`idd`) REFERENCES `dianomeas` (`username`);

--
-- Περιορισμοί για πίνακα `periexomeno`
--
ALTER TABLE `periexomeno`
  ADD CONSTRAINT `periexomeno_ibfk_1` FOREIGN KEY (`idp`) REFERENCES `paragelia` (`id`),
  ADD CONSTRAINT `periexomeno_ibfk_2` FOREIGN KEY (`proion`) REFERENCES `Product` (`name`);

--
-- Περιορισμοί για πίνακα `plhromesdel`
--
ALTER TABLE `plhromesdel`
  ADD CONSTRAINT `plhromesdel_ibfk_1` FOREIGN KEY (`idd`) REFERENCES `dianomeas` (`username`);

--
-- Περιορισμοί για πίνακα `plhromesman`
--
ALTER TABLE `plhromesman`
  ADD CONSTRAINT `plhromesman_ibfk_1` FOREIGN KEY (`idx`) REFERENCES `Manager` (`user`);

--
-- Περιορισμοί για πίνακα `Reserve`
--
ALTER TABLE `Reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`idS`) REFERENCES `Store` (`name`),
  ADD CONSTRAINT `reserve_ibfk_2` FOREIGN KEY (`idP`) REFERENCES `Product` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
