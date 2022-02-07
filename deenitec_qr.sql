-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- হোষ্ট: localhost:3306
-- তৈরী করতে ব্যবহৃত সময়: ফেব 07, 2022 at 07:37 PM
-- সার্ভার সংস্করন: 10.3.32-MariaDB-cll-lve
-- পিএইছপির সংস্করন: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- ডাটাবেইজ: `deenitec_qr`
--

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `qrusers`
--

CREATE TABLE `qrusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `age` int(11) NOT NULL,
  `gender` text NOT NULL,
  `mobile` text NOT NULL,
  `identification` text NOT NULL,
  `collectiontime` text NOT NULL,
  `resultime` text NOT NULL,
  `testnameresult` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `qrusers`
--

INSERT INTO `qrusers` (`id`, `name`, `age`, `gender`, `mobile`, `identification`, `collectiontime`, `resultime`, `testnameresult`) VALUES
(67, 'ARZUMAN ARA', 50, 'Female', '572671626', 'BR0510778', '29-01-2022 07:51  PM', '30-01-2022 05:39  PM', 'COVID-19 PCR / Negative');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `resultpage`
--

CREATE TABLE `resultpage` (
  `id` int(20) NOT NULL,
  `toptext` text NOT NULL,
  `thankstext` text NOT NULL,
  `copyright` text NOT NULL,
  `resultlogo` text NOT NULL,
  `copyrightyear` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `resultpage`
--

INSERT INTO `resultpage` (`id`, `toptext`, `thankstext`, `copyright`, `resultlogo`, `copyrightyear`) VALUES
(1, 'AlFarabiLab', 'AlFarabi Medical Labs', 'AlFarabi Medical Labs', 'assets/logo.png', '2022');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'zane', 'ba0597b3bac6dc1677aaadae341b3cc4');

--
-- স্তুপকৃত টেবলের ইনডেক্স
--

--
-- টেবিলের ইনডেক্সসমুহ `qrusers`
--
ALTER TABLE `qrusers`
  ADD PRIMARY KEY (`id`);

--
-- টেবিলের ইনডেক্সসমুহ `resultpage`
--
ALTER TABLE `resultpage`
  ADD PRIMARY KEY (`id`);

--
-- টেবিলের ইনডেক্সসমুহ `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- স্তুপকৃত টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT)
--

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `qrusers`
--
ALTER TABLE `qrusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `resultpage`
--
ALTER TABLE `resultpage`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
