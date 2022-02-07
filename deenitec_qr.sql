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
(67, 'ARZUMAN ARA', 50, 'Female', '572671626', 'BR0510778', '29-01-2022 07:51  PM', '30-01-2022 05:39  PM', 'COVID-19 PCR / Negative'),
(68, 'MD ATIAR RAHMAN', 68, 'Male', '572671626', 'EE0426560', '29-01-2022 07:57 PM', '30-01-2022 05:43 AM', 'COVID-19 PCR / Negative'),
(69, 'SYED ASHRAF ALI MUKUL', 53, 'Male', '572671626', 'BQ0811547', '29-01-2022 08:06 PM', '30-01-2022 05:50 AM', 'COVID-19 PCR / Negative'),
(70, 'FORIDA BEGUM', 55, 'Female', '572671626', 'EF0112891', '29-01-2022 08:12 PM', '30-01-2022 05:57 AM', 'COVID-19 PCR / Negative'),
(71, 'FAHAD SULTAN KHAN', 32, 'Male', '596671814', '600747517', '29-01-2022 11:54 AM', '29-01-2022 10:57 PM', 'COVID-19 PCR / Negative'),
(72, 'SELIM MARTUZ ALI', 37, 'Male', '572671626', 'A02498809', '29-01-2022 08:16 PM', '30-01-2022 06:10 AM', 'COVID-19 PCR / Negative'),
(73, 'MST SUPEIA KHATUN', 65, 'Female', '572671626', 'A00919212', '29-01-2022 08:22 PM', '30-01-2022 06:17 AM', 'COVID-19 PCR / Negative'),
(74, 'MD ALTAF HOSSAIN', 42, 'Male', '572671626', 'A02212461', '29-01-2022 08:28 PM', '30-01-2022 06:23 AM', 'COVID-19 PCR / Negative'),
(75, 'MD DHALA MEIA', 71, 'Male', '572671626', 'A01896222', '29-01-2022 08:37 PM', '30-01-2022 06:30 AM', 'COVID-19 PCR / Negative'),
(76, 'MD EKRAMUL HAQUE', 38, 'Male', '572671626', 'A02223746', '29-01-2022 08:45 PM', '30-01-2022 06:39 AM', 'COVID-19 PCR / Negative'),
(77, 'MD FATIQ SARDER', 79, 'Male', '572671626', 'A00871209', '29-01-2022 08:52 PM', '30-01-2022 06:42 AM', 'COVID-19 PCR / Negative'),
(78, 'MD KHEYAL UDDIN FOKIR', 79, 'Male', '572671626', 'A00919215', '29-01-2022 09:03 PM', '30-01-2022 06:47AM', 'COVID-19 PCR / Negative'),
(79, 'MD MOSHLEM UDDIN MOLLAH', 69, 'Male', '572671626', 'BT0439368', '29-01-2022 09:10 PM', '30-01-2022 06:49 AM', 'COVID-19 PCR / Negative'),
(80, 'MD MOZAMMEL HAQUE', 53, 'Male', '572671626', 'BY0786974', '29-01-2022 09:18 PM', '30-01-2022 06:55 AM', 'COVID-19 PCR / Negative'),
(81, 'MST ABIRON NESA', 69, 'Female', '572671626', 'A00871208', '29-01-2022 09:25 PM', '30-01-2022 07:02 AM', 'COVID-19 PCR / Negative'),
(82, 'MOSAMMAT NURUNNAHAR', 71, 'Female', '572671626', 'BX0654453', '29-01-2022 09:30 PM', '30-01-2022 07:08 AM', 'COVID-19 PCR / Negative'),
(83, 'MD ZAHID TAREQ ABU KHALED', 45, 'Male', '572671626', 'BW0707809', '29-01-2022 09:37 PM', '30-01-2022 07:15 AM', 'COVID-19 PCR / Negative'),
(84, 'MOHAMMAD ABDUL MATIN', 64, 'Male', '572671626', 'EG0710341', '29-01-2022 09:40 PM', '30-01-2022 07:21 AM', 'COVID-19 PCR / Negative'),
(85, 'MOHAMMAD FARUK HOSSAIN', 45, 'Male', '572671626', 'EF0623698', '29-01-2022 09:42 PM', '30-01-2022 07:29 AM', 'COVID-19 PCR / Negative'),
(86, 'NORUL AMIN COWSIR', 38, 'Male', '572671626', 'EA0143364', '29-01-2022 09:47 PM', '30-01-2022 07:35 AM', 'COVID-19 PCR / Negative'),
(87, 'MAHMUDUL HASAN', 24, 'Male', '572671626', 'A02444398', '29-01-2022 09:51 PM', '30-01-2022 07:40 AM', 'COVID-19 PCR / Negative'),
(88, 'MD ASRAF SIKDER', 69, 'Male', '572671626', 'A01896223', '29-01-2022 09:58 PM', '30-01-2022 07:44 AM', 'COVID-19 PCR / Negative'),
(89, 'ISRAFUL HUDA', 25, 'Male', '572671626', 'EG0378046', '29-01-2022 10:05 PM', '30-01-2022 07:50 AM', 'COVID-19 PCR / Negative'),
(90, 'MST AYESHA BEGUM', 54, 'Female', '572671626', 'A00857749', '29-01-2022 10:09 PM', '30-01-2022 07:54 AM', 'COVID-19 PCR / Negative'),
(91, 'GULESA KHATUN', 74, 'Female', '572671626', 'A02635798', '29-01-2022 10:15 PM', '30-01-2022 08:01 AM', 'COVID-19 PCR / Negative'),
(92, 'MD HABIBUR RAHMAN', 60, 'Male', '572671626', 'A00857744', '29-01-2022 10:21 PM', '30-01-2022 08:06 AM', 'COVID-19 PCR / Negative'),
(93, 'MD FAZLUL HAQUE BEPARY', 39, 'Male', '572671626', 'EG0900385', '29-01-2022 10:30 PM', '30-01-2022 08:10 AM', 'COVID-19 PCR / Negative'),
(94, 'MD SHAH JALAL SARDAR', 46, 'Male', '572671626', 'B00001632', '29-01-2022 10:36 PM', '30-01-2022 08:14 AM', 'COVID-19 PCR / Negative'),
(95, 'MD LUTFAR MOLLAH', 68, 'Male', '572671626', 'A01907443', '29-01-2022 10:40 PM', '30-01-2022 08:19 AM', 'COVID-19 PCR / Negative'),
(96, 'MD AL AMIN', 33, 'Male', '572671626', 'EA0411867', '29-01-2022 10:46 PM', '30-01-2022 08:25 AM', 'COVID-19 PCR / Negative'),
(97, 'MST ANOWARA BEGUM', 56, 'Female', '572671626', 'A00920226', '29-01-2022 10:51 PM', '30-01-2022 08:33 AM', 'COVID-19 PCR / Negative'),
(98, 'MD ZIAR UDDIN', 66, 'Male', '572671626', 'A00919937', '29-01-2022 10:52 PM', '30-01-2022 08:40 AM', 'COVID-19 PCR / Negative'),
(99, 'MOHAMMED GHALIB ALGODIMY', 45, 'Male', '537240468', '10304066', '30-01-2022 06:52 AM', '30-01-2022 04:40 PM', 'COVID-19 PCR / Negative'),
(100, 'NAZRUL ALAM', 63, 'Male', '598047530', 'A00455066', '30-01-2022 10:19 PM', '31-01-2022 08:39 PM', 'COVID-19 PCR / Negative'),
(101, 'MD MUINUL ISLAM', 41, 'Male', '598047530', 'EF0219762', '30-01-2022 10:24 PM', '31-01-2022 08:43 AM', 'COVID-19 PCR / Negative'),
(102, 'MOMOTAZ BEGUM', 47, 'Female', '598047530', 'A00944397', '30-01-2022 10:29 PM', '31-01-2022 08:50 AM', 'COVID-19 PCR / Negative'),
(103, 'SAYED MD ZOBAER', 37, 'Male', '598047530', 'BP0849575', '30-01-2022 10:34 PM', '31-01-2022 08:53 AM', 'COVID-19 PCR / Negative'),
(104, 'MOHAMMAD MIZANUR RAHMAN CHOWDHURY', 56, 'Male', '598047530', 'A01118355', '30-01-2022 10:38 PM', '31-01-2022 08:53 AM', 'COVID-19 PCR / Negative'),
(105, 'MD HANIF', 67, 'Male', '598047530', 'BT0144358', '30-01-2022 10:41 PM', '31-01-2022 08:57 AM', 'COVID-19 PCR / Negative'),
(106, 'MRS KULSUMARA BEGUM', 57, 'Female', '598047530', 'BY0960862', '30-01-2022 10:45 PM', '31-01-2022 09:01 AM', 'COVID-19 PCR / Negative'),
(107, 'SHAIKH MD NAZMUL ALAM', 58, 'Male', '598047530', 'A02325657', '30-01-2022 10:49 PM', '31-01-2022 09:07 AM', 'COVID-19 PCR / Negative'),
(108, 'MONOWARA KHATUN', 62, 'Female', '598047530', 'BY0368031', '30-01-2022 10:15 PM', '31-01-2022 09:16 AM', 'COVID-19 PCR / Negative'),
(109, 'SOHALY AKTER RINI', 35, 'Female', '598047530', 'BY0368406', '30-01-2022 10:20 PM', '31-01-2022 09:17 AM', 'COVID-19 PCR / Negative'),
(110, 'ZAKIR HOSSAIN', 37, 'Male', '598047530', 'A00133048', '30-01-2022 10:25 PM', '31-01-2022 09:19 AM', 'COVID-19 PCR / Negative'),
(111, 'MD ANWAR HOSSAIN', 44, 'Male', '598047530', 'A02316775', '30-01-2022 10:26 PM', '31-01-2022 09:24 AM', 'COVID-19 PCR / Negative'),
(112, 'ARIFA BINTE ANIKA', 20, 'Female', '598047530', 'A00943935', '30-01-2022 10:31 PM', '31-01-2022 09:30 AM', 'COVID-19 PCR / Negative'),
(113, 'MOSHAROF HOSSAIN', 46, 'Male', '501883074', 'EJ0423029', '30-01-2022 10:50 PM', '31-01-2022 11:52 AM', 'COVID-19 PCR / Negative'),
(114, 'HAZIMOMIZA BEGUM', 71, 'Female', '598047530', 'A02009330', '30-01-2022 10:33 PM', '31-01-2022 09:40 AM', 'COVID-19 PCR / Negative'),
(115, 'KHOSNEHERA BEGUM', 52, 'Female', '598047530', 'BR0213907', '30-01-2022 10:36 PM', '31-01-2022 09:45 AM', 'COVID-19 PCR / Negative'),
(116, 'JORINA KHATUN', 67, 'Female', '598047530', 'EE0405511', '30-01-2022 10:40 PM', '31-01-2022 09:48 AM', 'COVID-19 PCR / Negative'),
(117, 'FARIDA BEGUM', 41, 'Female', '598047530', 'EE0466301', '30-01-2022 10:44 PM', '31-01-2022 09:51 AM', 'COVID-19 PCR / Negative'),
(118, 'FATEMA BEGUM', 61, 'Female', '598047530', 'A01946670', '30-01-2022 10:49 PM', '31-01-2022 09:54 AM', 'COVID-19 PCR / Negative'),
(119, 'MALEKA BEGUM', 69, 'Female', '598047530', 'EB0908003', '30-01-2022 10:53 PM', '31-01-2022 09:58 AM', 'COVID-19 PCR / Negative'),
(120, 'TANVIRUL ALAM RAAZ', 12, 'Male', '598047530', 'A02316940', '30-01-2022 10:57 PM', '31-01-2022 10:03 AM', 'COVID-19 PCR / Negative'),
(121, 'HASEM BISWAS', 69, 'Male', '598047530', 'EE0742982', '30-01-2022 11:05 PM', '31-01-2022 10:08 AM', 'COVID-19 PCR / Negative'),
(122, 'MOHAMMAD ADNAN AKHTAR TONY', 39, 'Male', '598047530', 'BT0218143', '30-01-2022 11:14 PM', '31-01-2022 10:16 AM', 'COVID-19 PCR / Negative'),
(123, 'BELLAL HOSSAIN', 44, 'Male', '501883074', 'EH0909182', '30-01-2022 11:34 PM', '31-01-2022 11:58 AM', 'COVID-19 PCR / Negative'),
(124, 'MUHAMMAD ASLAM', 53, 'Male', '501351245', 'JU9995282', '01-02-2022 01:25 AM', '01-02-2022 04:58 PM', 'COVID-19 PCR / Negative'),
(125, 'ABDUS SAMAD', 46, 'Male', '569953667', 'BY0984036', '31-01-2022 11:05 PM', '01-02-2022 11:30 AM', 'COVID-19 PCR / Negative'),
(126, 'MD TANJID KHAN', 29, 'Male', '530930252', 'EJ0545100', '31-01-2022 11:12 PM', '01-02-2022 11:36 AM', 'COVID-19 PCR / Negative'),
(127, 'FOYSAL AHMED', 33, 'Male', '563973667', 'BK0632152', '31-01-2022 11:19 PM', '01-02-2022 11:43 AM', 'COVID-19 PCR / Negative'),
(128, 'SHANIN', 38, 'Male', '538903809', 'EA0404553', '31-01-2022 11:30 PM', '01-02-2022 11:50 AM', 'COVID-19 PCR / Negative'),
(129, 'MOHAMMAD IKBAL HOSSAIN', 27, 'Male', '549073404', 'EJ0339793', '31-01-2022 11:39 PM', '01-02-2022 11:59 AM', 'COVID-19 PCR / Negative'),
(130, 'MOHAMMED MORSHADUL ALAM', 43, 'Male', '562759394', 'EJ0391425', '01-02-2022 10:18 PM', '02-02-2022 11:30 AM', 'COVID-19 PCR / Negative'),
(131, 'LAILA SALAH ALTAYF', 52, 'Female', '568770651', 'K4N2KYYR', '01-02-2022 06:15 AM', '01-02-2022 07:30 PM', 'COVID-19 PCR / Negative'),
(132, 'ZAHRAH MASOUD NAJM', 58, 'Female', '568770651', 'KLF06CLJ', '01-02-2022 06:21 AM', '01-02-2022 07:36 PM', 'COVID-19 PCR / Negative'),
(133, 'BURNIYAH MOUSA QAREEWI', 60, 'Female', '568770651', 'AA558496', '01-02-2022 06:29 AM', '01-02-2022 07:41 PM', 'COVID-19 PCR / Negative'),
(134, 'SHEAHAD ELTAHER ENAJEM', 23, 'Female', '568770651', 'FR5RF0YP', '01-02-2022 06:39 AM', '01-02-2022 07:48 PM', 'COVID-19 PCR / Negative'),
(135, 'MARYAM AMHIMMID ABEED', 71, 'Female', '568770651', 'LKPF0JYN', '01-02-2022 06:45 AM', '01-02-2022 07:51 PM', 'COVID-19 PCR / Negative'),
(136, 'MABROUKAH ABU IEMAYD', 63, 'Female', '568770651', 'C3J4366L', '01-02-2022 06:49 AM', '01-02-2022 07:54 PM', 'COVID-19 PCR / Negative'),
(137, 'NADIYAH SALIM ALFAQIYAH', 35, 'Female', '568770651', 'AA415075', '01-02-2022 06:56 AM', '01-02-2022 08:01 PM', 'COVID-19 PCR / Negative'),
(138, 'ZEENAH AHMED YOUSUF', 62, 'Female', '568770651', 'N0H51Y07', '01-02-2022 07:01 AM', '01-02-2022 08:06 PM', 'COVID-19 PCR / Negative'),
(139, 'NAEIMA ALZAROUQ IMNEEA', 56, 'Female', '568770651', 'HK299PNY', '01-02-2022 07:10 AM', '01-02-2022 08:11 PM', 'COVID-19 PCR / Negative'),
(140, 'RUQAYAH ABOULQASIM  ALAMEEN', 53, 'Female', '568770651', 'HY83KY23', '01-02-2022 07:17 AM', '01-02-2022 08:16 PM', 'COVID-19 PCR / Negative'),
(141, 'MOHAMED ELTAHER ENAJEM', 25, 'Male', '568770651', 'AA753498', '01-02-2022 07:25 AM', '01-02-2022 08:21 PM', 'COVID-19 PCR / Negative'),
(142, 'NIZAR MOHAMMED ALATRAB', 21, 'Male', '568770651', 'JCF466HP', '01-02-2022 07:30 AM', '01-02-2022 08:28 PM', 'COVID-19 PCR / Negative'),
(143, 'SULAYMAN SALIM SALAMAH', 39, 'Male', '568770651', 'NJRY8NK3', '01-02-2022 07:41 AM', '01-02-2022 08:35 PM', 'COVID-19 PCR / Negative'),
(144, 'JUMAH ALHADI ABDULLAH', 82, 'Male', '568770651', 'AB156745', '01-02-2022 07:50 AM', '01-02-2022 08:42 PM', 'COVID-19 PCR / Negative'),
(145, 'BORHAN UDDIN', 34, 'Male', '539254243', 'EJ0183028', '01-02-2022 10:50 PM', '02-02-2022 11:42 AM', 'COVID-19 PCR / Negative'),
(146, 'ABDALLA ELAGAR MOHAMED AHMED', 63, 'Male', '559631297', 'P07987495', '02-02-2022 10:55 AM', '02-02-2022 09:42 PM', 'COVID-19 PCR / Negative'),
(147, 'MOHAMMAD ZAHID', 24, 'Male', '582337843', 'R1445308', '02-02-2022 01:55 PM', '03-02-2022 00:42 AM', 'COVID-19 PCR / Negative'),
(148, 'MOHAMMED AZARUDIN LUHAR', 35, 'Male', '568097196', 'N2888851', '02-02-2022 02:07 PM', '03-02-2022 00:56 AM', 'COVID-19 PCR / Negative'),
(149, 'SABBIR JAHANGIR HOSSAIN', 31, 'Male', '506036531', 'EF0893695', '02-02-2022 10:15 PM', '03-02-2022 11:56 AM', 'COVID-19 PCR / Negative'),
(150, 'ROHMOT NURUL ISLAM', 42, 'Male', '549332019', 'EG0777569', '02-02-2022 10:31 PM', '03-02-2022 01:14 PM', 'COVID-19 PCR / Negative'),
(151, 'MUHAMMAD MATLOOB', 44, 'Male', '544499577', 'AA0404683', '03-02-2022 11:31 AM', '03-02-2022 11:25 PM', 'COVID-19 PCR / Negative'),
(152, 'ABU SAYED', 39, 'Male', '558340062', 'EH0763544', '02-02-2022 11:19 PM', '03-02-2022 01:40PM', 'COVID-19 PCR / Negative'),
(153, 'SOHEL ABDUL AZIZ', 31, 'Male', '566288496', 'EJ0023037', '02-02-2022 11:35 PM', '03-02-2022 01:52 PM', 'COVID-19 PCR / Negative'),
(154, '', 0, 'Male', '', '', '21-09-2021 04:53PM', '21-09-2021 04:53PM', 'COVID-19 PCR / Negative'),
(155, 'ANUAR HOSSAIN', 27, 'Male', '576382160', 'T2208553', '03-02-2022 09:35 PM', '04-02-2022 10:52 AM', 'COVID-19 PCR / Negative'),
(156, 'MOHD SHARIF', 39, 'Male', '572540662', 'L1845376', '03-02-2022 10:44 AM', '03-02-2022 11:20  PM', 'COVID-19 PCR / Negative'),
(157, 'MD MIKAIL', 31, 'Male', '572206513', '12098049', '03-02-2022 03:39 PM', '04-02-2022 04:18 AM', 'COVID-19 PCR / Negative'),
(158, 'REAZ UDDIN', 43, 'Male', '557630036', 'EE0806209', '03-02-2022 11:48 PM', '04-02-2022 10:18 AM', 'COVID-19 PCR / Negative'),
(159, 'MUJAHID HUSSAIN', 34, 'Male', '583871503', 'JU6904432', '04-02-2022 06:48 AM', '04-02-2022 05:18 PM', 'COVID-19 PCR / Negative'),
(160, 'YASEEN ALI', 29, 'Male', '597781412', 'CV1811253', '04-02-2022 10:48 PM', '05-02-2022 11:18 AM', 'COVID-19 PCR / Negative'),
(161, 'MUHAMMAD AHSAN', 31, 'Male', '591760746', 'CJ1110182', '04-02-2022 08:30 AM', '04-02-2022 09:18 PM', 'COVID-19 PCR / Negative'),
(162, 'MOHAMMED AZMOL HUSSAIN MAMUN', 36, 'Male', '545877338', '524551323', '04-02-2022 08:43 AM', '04-02-2022 09:18 PM', 'COVID-19 PCR / Negative'),
(163, 'MOHAMMED JOYNUL ISLAM', 42, 'Male', '545877338', '535433276', '04-02-2022 08:50 AM', '04-02-2022 09:23 PM', 'COVID-19 PCR / Negative'),
(164, 'MUHAMMAD TAYAB MUGHAL', 19, 'Male', '545877338', '560061465', '04-02-2022 08:54 AM', '04-02-2022 21:27 PM', 'COVID-19 PCR / Negative'),
(165, 'HAFIZ MOHAMMED ABDUL WADUD', 58, 'Male', '545877338', '554214247', '04-02-2022 08:59 AM', '04-02-2022 09:32 PM', 'COVID-19 PCR / Negative'),
(166, 'SYFUL-ALOM JAAN MIAH', 57, 'Male', '545877338', 'PAE731040', '04-02-2022 09:05 AM', '04-02-2022 09:37 PM', 'COVID-19 PCR / Negative'),
(167, 'SARWAR JAHAN CHOUDHURY', 43, 'Male', '545877338', '514275614', '04-02-2022 09:14 AM', '04-02-2022 09:41 PM', 'COVID-19 PCR / Negative'),
(168, 'ATIQUL HAQUE', 46, 'Male', '545877338', '127579618', '04-02-2022 09:20 AM', '04-02-2022 09:46 PM', 'COVID-19 PCR / Negative'),
(169, 'SHELINA AKHOTAR', 44, 'Female', '545877338', '121048967', '04-02-2022 09:29 AM', '04-02-2022 09:51 PM', 'COVID-19 PCR / Negative'),
(170, 'RIMA BEGUM', 30, 'Female', '545877338', '122752477', '04-02-2022 09:35 AM', '04-02-2022 10:00 PM', 'COVID-19 PCR / Negative'),
(171, 'ABU SALEH MD NAFE UDDIN', 44, 'Male', '545877338', '125459801', '04-02-2022 09:45 AM', '04-02-2022 10:13 PM', 'COVID-19 PCR / Negative'),
(172, 'NURUL ISLAM', 37, 'Male', '572697800', 'EH0821914', '04-02-2022 11:35 PM', '05-02-2022 11:13 AM', 'COVID-19 PCR / Negative'),
(173, 'MUHAMMAD RAJA MIAH', 44, 'Male', '545877338', '120877426', '04-02-2022 09:39 AM', '04-02-2022 09:58 PM', 'COVID-19 PCR / Negative'),
(174, 'AMJAD SK', 25, 'Male', '504375074', 'P6093486', '05-02-2022 10:09 AM', '05-02-2022 09:46 PM', 'COVID-19 PCR / Negative'),
(175, 'MOHAMMED SHAHARUKH KHAN', 29, 'Male', '59307798', 'R4262577', '05-02-2022 07:32 PM', '06-02-2022 08:05 AM', 'COVID-19 PCR / Negative'),
(176, 'ZIBRAN', 24, 'Male', '581938340', 'S4625914', '05-02-2022 07:43 PM', '06-02-2022 08:12 AM', 'COVID-19 PCR / Negative'),
(177, 'MOHAMMAD TAHIR', 49, 'Male', '571487056', 'T1601736', '05-02-2022 04:20 PM', '06-02-2022 01:12 AM', 'COVID-19 PCR / Negative'),
(178, 'EKLASUR RAHMAN', 46, 'Male', '536675161', 'EF0326623', '05-02-2022 11:20 PM', '06-02-2022 10:12 AM', 'COVID-19 PCR / Negative'),
(179, 'IRFAN AHMAD', 30, 'Male', '556150263', 'SG1166962', '07-02-2022 01:40 PM', '08-02-2022 00:12 AM', 'COVID-19 PCR / Negative'),
(180, 'MD MOKSUD ALAM', 59, 'Male', '578328647', 'A00194691', '07-02-2022 01:40 AM', '07-02-2022 12:18 PM', 'COVID-19 PCR / Negative'),
(181, 'MUHAMMAD SALEEM', 32, 'Male', '545231112', 'AK5756783', '05-02-2022 10:40 AM', '05-02-2022 11:30 PM', 'COVID-19 PCR / Negative'),
(182, 'MD SUFIAN PRODAN', 37, 'Male', '538671017', 'EA0543673', '07-02-2022 10:40 AM', '07-02-2022 22:30 PM', 'COVID-19 PCR / Negative'),
(183, 'SHAHID ALI LASHARI', 33, 'Male', '591302164', 'AH8842412', '06-02-2022 07:30 AM', '06-02-2022 03:30 PM', 'COVID-19 PCR / Negative'),
(184, 'MD FUAD HASAN', 20, 'Male', '578328647', 'A01873910', '07-02-2022 01:44 AM', '07-02-2022 12:23 PM', 'COVID-19 PCR / Negative'),
(185, 'MOHAMMAD RUBBYAT AKRAM', 39, 'Male', '578328647', 'B00017676', '07-02-2022 01:50 AM', '07-02-2022 12:30 PM', 'COVID-19 PCR / Negative'),
(186, 'MOHAMMAD ENAN MUNKASIR', 13, 'Male', '578328647', 'A00338060', '07-02-2022 01:54 AM', '07-02-2022 12:34 PM', 'COVID-19 PCR / Negative'),
(187, 'MOHAMMAD MIZANUR RAHMAN', 39, 'Male', '578328647', 'BW0269090', '07-02-2022 01:59 AM', '07-02-2022 12:35 PM', 'COVID-19 PCR / Negative'),
(188, 'MD ABDUL HALIM MAHMUD', 62, 'Male', '578328647', 'A02619465', '07-02-2022 02:03 AM', '07-02-2022 12:39 PM', 'COVID-19 PCR / Negative'),
(189, 'MD SHAMSUL ISLAM', 54, 'Male', '578328647', 'BT0465556', '07-02-2022 02:08:00', '07-02-2022 12:42:14', 'COVID-19 PCR / Negative'),
(190, 'SHAHIDUL ISLAM ANIK', 16, 'Male', '578328647', 'A02454542', '07-02-2022 02:13 AM', '07-02-2022 12:47 PM', 'COVID-19 PCR / Negative'),
(191, 'MD HABIB AHSAN ULLAH', 61, 'Male', '578328647', 'EF0380347', '07-02-2022 02:16 AM', '07-02-2022 12:50 PM', 'COVID-19 PCR / Negative'),
(192, 'MOHAMMAD SHARIFUL ALAM', 39, 'Male', '578328647', 'EF0380347', '07-02-2022 02:10 AM', '07-02-2022 12:53 PM', 'COVID-19 PCR / Negative'),
(193, 'SAIFUL ISLAM', 51, 'Male', '578328647', 'EA0952573', '07-02-2022 02:14 AM', '07-02-2022 12:54 PM', 'COVID-19 PCR / Negative'),
(194, 'MD HUMAYUN KABIR', 69, 'Male', '578328647', 'A02508508', '07-02-2022 02:16 AM', '07-02-2022 12:56 PM', 'COVID-19 PCR / Negative'),
(195, 'MOHAMMAD MOBAROK HOSSAIN', 66, 'Male', '578328647', 'EA0201851', '07-02-2022 02:19 AM', '07-02-2022 12:58 PM', 'COVID-19 PCR / Negative'),
(196, 'MST MADINA BEGUM', 79, 'Female', '578328647', 'BR0305171', '07-02-2022 02:21 AM', '07-02-2022 01:00 PM', 'COVID-19 PCR / Negative'),
(197, 'MOONMOON SHORMIN', 38, 'Female', '578328647', 'A00060280', '07-02-2022 02:25 AM', '07-02-2022 01:05 PM', 'COVID-19 PCR / Negative'),
(198, 'FARHANA SEHARIN', 23, 'Female', '578328647', 'EB0381976', '07-02-2022 02:29 AM', '07-02-2022 01:08 PM', 'COVID-19 PCR / Negative'),
(199, 'MOHD RIYAZ', 47, 'Male', '559064360', 'Z3442075', '07-02-2022 11:19 AM', '07-02-2022 11:34 PM', 'COVID-19 PCR / Negative'),
(200, 'DILRUBA HALIM', 56, 'Female', '578328647', 'A02619463', '07-02-2022 02:28 AM', '07-02-2022 01:07 PM', 'COVID-19 PCR / Negative'),
(201, 'MOSSAMMAD AMINA BEGUM', 69, 'Female', '578328647', 'A02624857', '07-02-2022 02:34 AM', '07-02-2022 01:10 PM', 'COVID-19 PCR / Negative'),
(202, 'SHAHANAZ AKTHER', 43, 'Female', '578328647', 'A02435726', '07-02-2022 02:38 AM', '07-02-2022 01:15 PM', 'COVID-19 PCR / Negative'),
(203, 'GOLAPER NESA', 74, 'Female', '578328647', 'A02435728', '07-02-2022 02:42 AM', '07-02-2022 01:19 PM', 'COVID-19 PCR / Negative'),
(204, 'JASMIN AKHTER', 53, 'Female', '578328647', 'EG0298030', '07-02-2022 02:45 AM', '07-02-2022 01:20 PM', 'COVID-19 PCR / Negative'),
(205, 'AKTARA BEGUM', 53, 'Female', '578328647', 'A02508507', '07-02-2022 02:48 AM', '07-02-2022 01:24 PM', 'COVID-19 PCR / Negative'),
(206, 'SOFIA AKTER LIPI', 37, 'Female', '578328647', 'EJ0127721', '07-02-2022 02:51 AM', '07-02-2022 01:27 PM', 'COVID-19 PCR / Negative'),
(207, 'SALINA AKTER', 63, 'Female', '578328647', 'BY0163070', '07-02-2022 02:54 AM', '07-02-2022 01:35 PM', 'COVID-19 PCR / Negative'),
(208, 'FAHEEM AKRAM', 28, 'Male', '539383632', 'EK1325002', '07-02-2022 00:17 PM', '07-02-2022 11:35 PM', 'COVID-19 PCR / Negative');

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