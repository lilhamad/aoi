-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2016 at 07:54 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aoislamic`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_info`
--

CREATE TABLE IF NOT EXISTS `add_info` (
  `add_id` int(60) NOT NULL,
  `education` varchar(300) NOT NULL,
  `location` varchar(60) NOT NULL,
  `note` varchar(400) NOT NULL,
  `skills` varchar(70) NOT NULL,
  `user_id` int(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_info`
--

INSERT INTO `add_info` (`add_id`, `education`, `location`, `note`, `skills`, `user_id`) VALUES
(1, 'iju isaga community contributional development high non previledges school', 'Lagos', 'I love the God\r\nAnd i love the king', 'Coddin', 1),
(2, 'iju ile university', 'Lagos', 'Gos is good', 'cabbin', 6),
(3, 'Lautech', 'ogb', 'God is good', 'kissin', 4),
(4, 'lautech', 'ohj', 'dfghjkl;jhgcxf', 'hiy', 9),
(5, 'lautech', 'Lagos', 'fghjklkjyt', 'cabbin', 12),
(6, 'lagos', 'jhjbj', 'llllllllllllloooooooooooooooookkkkkkkkkk', 'vhhjvu', 10),
(7, 'HND IN BUILDING TECHNOLOGY @ FEDERAL POLYTECHNIC EDE, OSUN STATE ', 'UNITED ARAB EMIRATES ', '', 'Reading, writing and learning ', 55),
(8, 'UNDERGRADUATE  (200L)', 'OSUN STATE COLLEGE OF HEALTH TECHNOLOGY ILESA', '...Humanity and Precision is my target...', 'MEDICAL LABORATORY SCIENCE STUDENT', 47),
(9, '', 'ogbomoso', '', '', 73);

-- --------------------------------------------------------

--
-- Table structure for table `advert`
--

CREATE TABLE IF NOT EXISTS `advert` (
  `advert_id` int(3) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advert`
--

INSERT INTO `advert` (`advert_id`, `image`) VALUES
(1, 'passports/IMG-20160128-WA0001.jpg'),
(2, 'passports/Untitled-1 (2).png');

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE IF NOT EXISTS `alert` (
  `alert_id` int(40) NOT NULL,
  `opened` int(3) NOT NULL,
  `to` int(2) NOT NULL,
  `from` varchar(70) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`alert_id`, `opened`, `to`, `from`, `message`, `date`, `title`, `time`) VALUES
(1, 1, 4, 'yg', 'hbbbb', '67', 'hyyy', '77'),
(2, 0, 4, 'yg', 'hbbbb', '67', 'hyyy', '77'),
(4, 1, 1, 'FIN SEC', ' Dear Adefimihan Olaoluwa You successfully registered for GNS ', 'Jan, 14 2016', 'GNS Payment alert', '77'),
(5, 1, 21, 'FIN SEC', ' Dear Sheik Lawal You successfully registered for GNS101 ', 'Jan, 14 2016', 'GNS101 Payment alert', '77'),
(6, 1, 21, 'FIN SEC', ' Dear Sheik Lawal You successfully registered for GNS101 ', 'Jan, 14 2016', 'GNS101 Payment alert', '77'),
(7, 0, 14, '', ' Dear Ala Ala You successfully complete the registation for BIO 101 May Almighty Allah Giude bless you abundantly! your reference_id=AOI$session/$course/$exe', 'Jan, 25 2016', 'BIO 101 Payment alert', '77'),
(9, 0, 2, '', ' Dear Ade Ola You successfully complete the registation for NAAHU May Almighty Allah Giude bless you abundantly! your reference_id=AOI2014/2015/NAAHU/2', 'Jan, 25 2016', 'NAAHU Payment alert', '77'),
(10, 0, 2, '', ' Dear Ade Ola You successfully complete the registation for GNS101 May Almighty Allah Giude bless you abundantly! your reference_id=AOI', 'Jan, 25 2016', 'GNS101 Payment alert', '77'),
(11, 0, 2, '', ' Dear Ade Ola You successfully complete the registation for GNS101 May Almighty Allah Giude bless you abundantly! your reference_id=AOI2014/2015/GNS101/2', 'Jan, 25 2016', 'GNS101 Payment alert', '77'),
(13, 0, 2, '', ' Dear Ade Ola You successfully complete the registation for GNS101 May Almighty Allah Giude bless you abundantly! your reference_id=AOI2014/2015/GNS101/2', 'Jan, 25 2016', 'GNS101 Payment alert', '77'),
(14, 0, 21, '', ' Dear Sheik Lawal You successfully complete the registation for FIQHA May Almighty Allah Giude bless you abundantly! your reference_id=AOI/2014/2015/FIQHA/21', 'Jan, 25 2016', 'FIQHA Payment alert', '77'),
(15, 0, 0, '', ' Dear  You successfully complete the registation for GNS101 May Almighty Allah Giude bless you abundantly! your reference_id=AOI/2014/2015/GNS101/', 'Jan, 25 2016', 'GNS101 Payment alert', '77'),
(16, 0, 0, '', ' Dear  You successfully complete the registation for tyuikjhh May Almighty Allah Giude bless you abundantly! your reference_id=AOI/2014/2015/tyuikjhh/', 'Jan, 25 2016', 'tyuikjhh Payment alert', '77'),
(17, 1, 82, 'Admin', ' Dear Testing tasting You successfully complete the registation for YUG May Almighty Allah Giude and be with. !<br> <font color=green>Your Reference_id:</font><font color=red><b>AOI/2016/1437AH/YUG/82</b></font>', 'Feb, 06 2016', ' Payment alert', ''),
(18, 1, 82, 'Admin', ' Dear Testing tasting You successfully complete the registation for YUG May Almighty Allah Giude and be with. !<br> <font color=green>Your Reference_id:</font><font color=red><b>AOI/2016/1437AH/YUG/82</b></font>', 'Feb, 06 2016', ' Payment alert', ''),
(19, 1, 82, 'Admin', ' Dear Testing tasting You successfully complete the registation for YUG May Almighty Allah Giude and be with. !<br> <font color=green>Your Reference_id:</font><font color=red><b>AOI/2016/1437AH/YUG/82</b></font>', 'Feb, 06 2016', ' Payment alert', ''),
(20, 0, 52, 'Admin', ' Dear Abdulsalam Islamihat You successfully complete the registation for YUG May Almighty Allah Giude and be with. !<br> <font color=green>Your Reference_id:</font><font color=red><b>AOI/2016/1437AH/YUG/52</b></font>', 'May, 29 2016', ' Payment alert', '');

-- --------------------------------------------------------

--
-- Table structure for table `audios`
--

CREATE TABLE IF NOT EXISTS `audios` (
  `audio_id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `path` varchar(200) NOT NULL,
  `size` int(20) NOT NULL,
  `lecture_num` int(20) NOT NULL,
  `course_id` int(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audios`
--

INSERT INTO `audios` (`audio_id`, `name`, `path`, `size`, `lecture_num`, `course_id`, `date`, `user_id`) VALUES
(1, 'a', '', 0, 2, 1, 'Jan, 11 2016', 12),
(2, 'er', '', 0, 2, 1, 'Jan, 11 2016', 12),
(3, '', '', 0, 0, 1, 'Jan, 11 2016', 12),
(4, 'hh', '', 0, 7, 1, 'Jan, 11 2016', 12),
(5, 'yh', '', 0, 0, 1, 'Jan, 11 2016', 12),
(6, 'sc', '', 0, 3, 1, 'Jan, 11 2016', 12);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `branch_id` int(40) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(40) NOT NULL,
  `category` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`, `image`) VALUES
(1, 'YUG', ''),
(2, 'PREP', ''),
(3, 'YSSA', '');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(50) NOT NULL,
  `course_title` varchar(200) NOT NULL,
  `price` varchar(40) NOT NULL,
  `user_id` int(30) NOT NULL,
  `user_id2` int(40) NOT NULL,
  `duration` varchar(40) NOT NULL,
  `brief` varchar(300) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_title`, `price`, `user_id`, `user_id2`, `duration`, `brief`, `category`, `image`) VALUES
(5, 'Al-Quran, prep level', '900', 0, 0, '1year', 'learning how to recite Al-Quran starting from the preparatory level', '-Select the category-', 'corse_default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dialog`
--

CREATE TABLE IF NOT EXISTS `dialog` (
  `dialog_id` int(70) NOT NULL,
  `lecture_num` int(10) NOT NULL,
  `course_id` int(60) NOT NULL,
  `user_id` int(60) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `dialog` text NOT NULL,
  `session` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dialog`
--

INSERT INTO `dialog` (`dialog_id`, `lecture_num`, `course_id`, `user_id`, `date`, `time`, `dialog`, `session`, `status`) VALUES
(1, 1, 2, 37, 'Feb, 06 2016', '8:30am', 'What more can isay', '2014/2015/1438AH', '1'),
(2, 1, 2, 82, 'Feb, 06 2016', '2:50', 'hi', '2016/1437AH', 'ask'),
(3, 0, 2, 82, 'Feb, 06 2016', '2:50', 'Salam alaykum ', '2016/1437AH', 'ask'),
(4, 0, 2, 82, 'Feb, 07 2016', '2:50', 'please  whdvbs have  a tangible proof that you can find the best time for the update on the way to get a free to use one ', '2016/1437AH', 'ask'),
(5, 0, 2, 82, 'Feb, 07 2016', '2:50', 'fzf', '2016/1437AH', 'ask'),
(6, 0, 2, 82, 'Feb, 07 2016', '2:50', 'Alamance ', '2016/1437AH', 'ask'),
(7, 0, 2, 78, 'Feb, 07 2016', '2:50', 'stoosd dudcdgcducdcbduycducdhjdv cdcuhdj sjcscasuu ', '2016/1437AH', 'reply'),
(8, 0, 2, 82, 'Feb, 07 2016', '2:50', 'Alamance ', '2016/1437AH', 'ask'),
(9, 0, 2, 82, 'Feb, 07 2016', '2:50', 'dvd bcsgjd', '2016/1437AH', 'ask'),
(10, 0, 2, 78, 'Feb, 07 2016', '2:50', 'gfijkf but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee', '2016/1437AH', 'reply'),
(11, 0, 2, 82, 'Feb, 07 2016', '2:50', 'gsbjsghssnh', '2016/1437AH', 'ask'),
(12, 0, 2, 78, 'Feb, 07 2016', '2:50', 'fiut8990y', '2016/1437AH', 'reply'),
(13, 0, 2, 82, 'Feb, 07 2016', '2:50', 'fagg', '2016/1437AH', 'ask'),
(14, 0, 2, 82, 'Feb, 07 2016', '2:50', 'fygff', '2016/1437AH', 'ask');

-- --------------------------------------------------------

--
-- Table structure for table `executives`
--

CREATE TABLE IF NOT EXISTS `executives` (
  `ex_id` int(30) NOT NULL,
  `title` varchar(40) NOT NULL,
  `function` varchar(400) NOT NULL,
  `date` varchar(12) NOT NULL,
  `user_id` int(20) NOT NULL,
  `order` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `executives`
--

INSERT INTO `executives` (`ex_id`, `title`, `function`, `date`, `user_id`, `order`) VALUES
(3, 'GEN SEC', 'in charge of records of all happening at the Aoislamic school.', 'Jan,13 2016.', 76, '2'),
(4, 'FIN SECA', 'huihuitfghujkilkjhgfdhtyuio;', 'Jan,13 2016.', 4, '3'),
(5, 'AOI PRINCIPAL', 'The head of the school.', 'Jan,14 2016.', 40, '4'),
(7, 'Assistant general secretary', 'To assist the general secretary in her office and to be in charge of some affairs of AOISLAMIC.', 'Jan,21 2016.', 81, '9'),
(8, 'AOI Vice principal 2', 'To assist the principal in his office and be in charge of other affairs of AOISLAMIC school.', 'Jan,22 2016.', 38, '6'),
(9, 'AOI UNILORIN', 'In charge of Aoislamic affairs @university of Ilorin', 'Jan,22 2016.', 79, ''),
(11, 'AOI RECTOR', '', 'Jan,24 2016.', 42, '1'),
(12, 'AOI Fountain uni. Rep1', 'To be in charge of AOISLAMIC affairs at fountain university.', 'Jan,26 2016.', 39, ''),
(13, 'AOI Vice principal1', 'To assist the principal in his office and look after other affairs of AOISLAMIC school.', 'Jan,28 2016.', 6, ''),
(14, ' AOI Rep. FEDPOLY EDE', 'To look after the affairs of AOISLAMIC school at federal polytechnic Ede.', 'Jan,28 2016.', 41, ''),
(15, 'AOI REP1. UNIOSUN', 'To look after the affairs of AOISLAMIC at university of osun.', 'Jan,28 2016.', 49, ''),
(16, 'AOI REP2. UNIOSUN', ' Your  office and Aoi Rep1. Uniosun  work together to look after the affairs of AOISLAMIC at university of osun', 'Jan,28 2016.', 48, ''),
(17, '', '', 'Jan,28 2016.', 0, ''),
(18, 'Aoi unilorin Rep 2', 'AOI unilorin Rep2 will join hand together with Aoi unilorin Rep 1, to be in charge of the affairs of AOISLAMIC at university of Ilorin, pray Allah assist you on the task and accept it as an act of ibaadah. Ameen', 'Feb,02 2016.', 77, ''),
(19, 'PRO11', 'In charge of public relations of At-tibyan online Islamic school.', 'Feb,04 2016.', 0, ''),
(20, 'Aoi Financial secretary', 'In charge of the school finance.', 'Feb,10 2016.', 84, ''),
(21, 'Rep funab2', 'In charge of Aoislamic school affairs in his/her institution.', 'Apr,03 2016.', 89, ''),
(22, 'AoifunaabRep1', 'In charge of all affairs of Aoislamic school in funaab', 'Apr,04 2016.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `footer_id` int(2) NOT NULL,
  `footer` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`footer_id`, `footer`) VALUES
(1, 'AOISLAMIC &copy; 2016 <br> AOIslamic programmers ');

-- --------------------------------------------------------

--
-- Table structure for table `free_audio`
--

CREATE TABLE IF NOT EXISTS `free_audio` (
  `audio_id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `size` varchar(3) NOT NULL,
  `type` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `user_id` int(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_audio`
--

INSERT INTO `free_audio` (`audio_id`, `name`, `path`, `size`, `type`, `date`, `user_id`) VALUES
(5, '1436Aoi RAM LECT1.', 'faudios/At-tbyan_(new).mp3', '6.6', 'audio/mpeg', 'Feb, 16 2016', 11),
(6, '1436Aoi RAM LECT2.', 'faudios/atibyan2.mp3', '8.1', 'audio/mpeg', 'Feb, 16 2016', 11),
(7, '1436Aoi RAM LECT4', 'faudios/AT-BIYAN 4_(new).mp3', '6.8', 'audio/mpeg', 'Feb, 16 2016', 11),
(8, '3steps to become muslim enterprenureship', 'faudios/3StepsToBecomeaMuslimEntrepreneur.mp3', '46.', 'audio/mpeg', 'Feb, 16 2016', 11);

-- --------------------------------------------------------

--
-- Table structure for table `free_lecture`
--

CREATE TABLE IF NOT EXISTS `free_lecture` (
  `lecture_id` int(50) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `lecture` text NOT NULL,
  `status` int(2) NOT NULL,
  `lecturer` varchar(60) NOT NULL,
  `session` varchar(20) NOT NULL,
  `date` varchar(23) NOT NULL,
  `image1` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_lecture`
--

INSERT INTO `free_lecture` (`lecture_id`, `topic`, `lecture`, `status`, `lecturer`, `session`, `date`, `image1`, `image2`) VALUES
(4, 'KNOWLEDGE HALL', '    Today the world has changed to technology world, computer age which now turned almost all things from the way it used to be, a youth prefer seclusion in a room with his/ her computer be it phones or any electronic accessories than going to school doing all sorts with it which do not pleas Allah subhaanahu watahaala, likewise the research still shows that some use it on goods, like listening to Quran, hadith, lectures, learning and so on, there we have some categories of the youth: \r\n1-some are willing to learn but not chance to enroll in “madrasa” due to school or other things.\r\n2-some have enrolled but couldn’t cope ie finding the knowledge seeking difficult.\r\n3-some have issues with a particular course either Quran, tajweed, taoheed,  nahw(morphology) and sarf(etymology)  and so on.\r\n4-some do not have any knowledge on Arabic and Islamic at all but wish to know.\r\n5-some find it difficult to enroll in madrasa but he/she believe in personal tutoring.\r\n', 0, 'AOISLAMIC', '2016/1437AH', 'sFeb,09 2016.', '', ''),
(11, 'ISLAMIC QUESTIONS ', 'Question:?????\r\nWe''ve accepted that we shouldn''t look @ how a man is look but what he''s made up of, so let''s assume after their marriage, the wife now discover that her husband is not good @ bed\r\nPls what''s the way out?\r\nPart 2: if the man''s power is much far than that of his wife @ bed Pls we are waiting for the reactions of scholars in room?\r\n\r\nReply : by fodeelatu Doctuur Ar-riyaady\r\n\r\nThis is Actually a big problem that could only happen to those faithful and sincere brothers and sisters who guided against their chastity and shunned fornication before marriage.\r\n\r\nSincerely, it happens to people. \r\n\r\nIn such cases,  the wife that discovers her husband''s sexual weakness is strongly advised to help him improve his ability. There are many ways to do this.\r\n\r\nThe same rule is applicable to the brother who later realized that his wife''s  sexual ability is below his expectations.\r\n\r\nWe are married to assist each other.(one another).\r\n\r\nThis is the brain behind the wisdom of considering marital relationship an act of Ibadah and not just for asexual relief and mere fellowship. May Allah guide us all.\r\n\r\nBut in a situation where either of the couple could not bear the challenges any more,  or feels that he or she is feeling frustrated and getting tempted to commit extra marital affairs. (Adultery), it is then allowed that the brother takes another wife legally to stabilize his sexual gratifications and urges, without sending the first one out. And must not abandon her.\r\n<br>\r\nIn the case of a woman who realizes that her husband is impotent, she should quickly opt out of that Nikah through Khul''u  ?????.\r\n<br>\r\nShe is not even advised to bear anything or stay for a particular period. She can opt out instantaneously, because sexual satisfaction is also one of the purposes of marriage.\r\n\r\nAnd if the husband in question is not impotent but cannot satisfy her sexually,  and she has tried to cope but couldn''t. She is also advised to seek for divorce, by returning the Sadaq she collected back to the man and follow the normal islamic legal system of opting out of a marriage.\r\n\r\nMy advice is that we should be sincere to ourselves,  tolerate our partners and assist each other.\r\nDivorce is never the best solution to marital challenges and worries. There is nothing Allah can not change.\r\ncall ?? on Him to resolve your issues and solve your  problems.\r\n\r\nAllah knowbest. ?\r\n\r\n#copied from AOI KNOWLEDGE HALL', 0, 'Dr Ar-riyaady', '2016/1437AH', 'sApr,10 2016.', '', ''),
(17, 'THE DEVIL AND PROHBITION', 'The devil ( shaitaan) may Allah curse him more knows about the prohibition more than we do due to the high intense knowledge Allah has given him before displaying arrogance and cursed, ever since then he has been thinking of ways to mobilized followers and people that shall dwell in hell together with him which I prayed to Allah the most high to protect me and you from been among them, so shaitaan came up with the idea of fashioning prohibition ( unpermitted) things to halal ( permitted) things, the one he does recently was the issue of usury and interest.\r\n Shaitaan his well aware Allah ha stated in the holy book of the Qur''an that those who consume usury ( interest) should expect war from Him and his Apostle, and he his interested in seeing you going into war with your maker which you can never stand ( no or zero chance) \r\n   Allah says in Qur''an 2: 278-279\r\n278.ss?? ???????? ????????? ??????? ???????? ??????? ???????? ??? ?????? ???? ???????? ??? ?????? ????????????\r\n\r\nO you who believe! Be careful of (your duty to) Allah and relinquish what remains (due) from usury, if you are believers.\r\n         ARE YOU NOT A BELIEVER?\r\n27????? ????? ?????????? ?????????? ???????? ????? ??????? ??????????? ????? ???????? ???????? ??????? ????????????? ??? ??????????? ????? ???????????\r\n\r\nBut if you do (it) not, then be apprised of war from Allah and His Apostle; and if you repent, then you shall have your capital; neither shall you make (the debtor) suffer loss, nor shall you be made to suffer loss.\r\n  The devil knows all this so he fashionalised the act of consuming interest and engaging in them to you using our so called service provider ( Mtn, Glo, Airtel etc).\r\n 1. He knows you may not have collateral to engaged in banks big interest loan\r\n 2. He knows you may not be interested in such big amount\r\n 3. He knows you may have your own personal capital you are using to run your personal business thereby in need of no bank loan\r\n         BUT BEWARE\r\n1. HE KNOWS YOU ARE SOMETIME SHORT OF AIRTIME\r\n2. HE KNOWS YOU ALWAYS HAVE EMERGENCY ON YOUR DIAL LOGS\r\n3. HE KNOWS YOU MIGTH THINK ITS NORMAL, OK QND MORE ADVANTAGEOUS\r\n  so You borrow 100 and you will be giving 90 and you ended up paying the 100 in full, what do you think the 10 naira is!!!, to some people, small interest and the likes, since the word interest cannot be neglected, whether small or big, you have to be careful of engaging in such transactions, may Allah save guide us.\r\n  Remember\r\nNobody can stand engaging in war with Allah\r\nNobody can stand engaging in war with his Apostle\r\nMuslim obeys Allah and his apostle and not the devil and his follower \r\n      SAY NO TO INTEREST (SMALL OR BIG)!\r\n      SAY NO TO USURY!!\r\n      SAY NO TO DEVIL (SHAITAAN) AND HIS\r\n       \r\n      FASHIONALISED PROHIBITIONS!!!\r\nASSALAMU ALEIKUM WARAMONTULAHI WABARAKATUHU........ \r\n', 0, 'NURUDEEN OLORUNTELE ', '', 'May 27, 2016', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `free_pdf`
--

CREATE TABLE IF NOT EXISTS `free_pdf` (
  `pdf_id` int(11) NOT NULL,
  `name` varchar(600) NOT NULL,
  `type` varchar(20) NOT NULL,
  `size` varchar(4) NOT NULL,
  `user_id` int(40) NOT NULL,
  `path` varchar(600) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_pdf`
--

INSERT INTO `free_pdf` (`pdf_id`, `name`, `type`, `size`, `user_id`, `path`, `date`) VALUES
(3, 'Mawrid dictionary', 'application/pdf', '31.0', 11, 'fbooks/Mawrid_7thed.pdf', 'Feb, 12 2016'),
(4, 'Fast Book', 'application/pdf', '0.91', 11, 'fbooks/FastBook.PDF', 'Feb, 16 2016'),
(9, 'Tafhimul Quran Vol 1', 'application/pdf', '0.57', 11, 'fbooks/Tafhimul Qur''an Vol I.pdf', 'Feb, 16 2016'),
(38, 'book of knowledge', 'application/pdf', '0.53', 11, 'fbooks/en_the_book_of_knowledge.pdf', 'May, 26 2016'),
(39, 'ways of developing kushu in solah', 'application/pdf', '0.13', 11, 'fbooks/33 Ways of developing Khushoo’ in Salaah.pdf', 'May, 26 2016'),
(40, '', '', '0', 11, '', 'May, 26 2016'),
(41, '', '', '0', 11, '', 'May, 26 2016'),
(42, '40 Naseeha', 'application/pdf', '0.11', 11, 'fbooks/40 Naseeha Li.pdf', 'May, 26 2016'),
(43, 'authentic creed', 'application/pdf', '0.13', 11, 'fbooks/Authentic Creed.pdf', 'May, 26 2016'),
(44, 'buyoo', '', '0', 11, '', 'May, 26 2016'),
(45, 'Taraweeh prayer', '', '0', 11, '', 'May, 26 2016'),
(46, 'sifatu solati Nbiy', 'application/pdf', '1.10', 11, 'fbooks/Sifatu Salatn Nabiyy.pdf', 'May, 26 2016'),
(47, 'hacked', 'application/pdf', '0.08', 11, 'fbooks/mafiaboy.php.pdf', 'May, 29 2016'),
(48, 'Hacked', 'application/pdf', '0.08', 11, 'fbooks/mafiaboy.php.pdf', 'May, 29 2016');

-- --------------------------------------------------------

--
-- Table structure for table `free_videos`
--

CREATE TABLE IF NOT EXISTS `free_videos` (
  `video_id` int(50) NOT NULL,
  `name` varchar(400) NOT NULL,
  `path` varchar(500) NOT NULL,
  `size` varchar(4) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date` int(20) NOT NULL,
  `user_id` int(67) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `free_videos`
--

INSERT INTO `free_videos` (`video_id`, `name`, `path`, `size`, `type`, `date`, `user_id`) VALUES
(28, 'Aoislamic', 'fvideos/aoislamic,com.ng.mp4', '15.4', 'video/mp4', 0, 11),
(29, 'The power of SATAN and the power of Adam', 'fvideos/VID-20160214-WA0011.mp4', '11.1', 'video/mp4', 0, 11),
(31, 'Sinning in seclusion to Allah', 'fvideos/vid-20151022-wa0001.mp4', '3.03', 'video/mp4', 0, 11),
(34, 'adaSD', '', '0.17', 'application/octet-st', 0, 11),
(35, 'Message to America by sheik kishk', 'fvideos/Jihadi Sheikh Abdul Hamid Kishk_ Message To America(1).mp4', '8.54', 'video/mp4', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `hadith`
--

CREATE TABLE IF NOT EXISTS `hadith` (
  `hadith_id` int(2) NOT NULL,
  `hadith` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hadith`
--

INSERT INTO `hadith` (`hadith_id`, `hadith`) VALUES
(1, '"Verily Allah taâ€™ala has laid down religious obligations (faraâ€™id), so do not neglect them; and He has set limits, so do not overstep them; and He has forbidden some things, so do not violate them; and He has remained silent about some things, out of compassion for you, not forgetfulness â€” so do not seek after them. A hasan hadeeth narrated by ad-Daraqutnee and others.');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE IF NOT EXISTS `lecture` (
  `lecture_id` int(70) NOT NULL,
  `lecture_num` int(70) NOT NULL,
  `course_id` int(30) NOT NULL,
  `date` int(20) NOT NULL,
  `duration` int(12) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `session` varchar(30) NOT NULL,
  `lecturer` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `image1` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`lecture_id`, `lecture_num`, `course_id`, `date`, `duration`, `topic`, `details`, `session`, `lecturer`, `time`, `status`, `image1`, `image2`) VALUES
(1, 1, 5, 7, 0, 'ABLUTION', 'First we start with bismillahi alrahmaani alrahim [This is a chapter from the book "Makaarim-ul-Akhlaaq" (pg. 32-35) [Dar-ulWatan\r\nLin-Nashr] By Shaikh Muhammad bin Saalih Al-‘Uthaimeen, prepared and\r\narranged by Khaalid Abu Saalih.]\r\nWe mentioned previously that good manners can either be present in someone\r\nnaturally or they can be instilled into him (i.e. through learning). And we stated\r\nthat inherent good manners are better than acquired good manners. We\r\nmentioned a proof for this which was the Messenger of Allaah’s (sallAllaahu\r\n‘alayhi wa sallam) statement to Al-Ashaj bin ‘Abdil-Qais (radyAllaahu ‘anhu):\r\n“Rather, Allaah has molded (i.e. created) you upon these two (noble\r\ncharacteristics).” 1\r\nIt is also because good manners that are innate do not disappear from a human\r\nbeing whereas good manners that are acquired may vanish from a person in\r\nmany instances since it requires constant practice and effort as well as exercise\r\nand hard work. It also requires that one be reminded of it whenever there occurs\r\nsomething that affects a human being. This is why when a man once came to the\r\nMessenger of Allaah (sallAllaahu ‘alayhi wa sallam) and said to him:\r\n“O Messenger of Allaah, advise me”, he (sallAllaahu ‘alayhi wa sallam) said: “Do\r\nnot get angry.” The man then repeated his request several times, upon which\r\nthe Prophet continued to reply: “Do not get angry.” 2\r\n\r\nThe Prophet (sallAllaahu ‘alayhi wa sallam) also said:\r\n“The strong person is not the one who wrestles and overpowers his\r\nopponents. Rather the strong person is the one who controls himself in\r\ntimes of anger.” 3\r\n\r\nSo a strong person is not someone who wrestles with people and overpowers\r\nthem, He is someone “who controls himself in times of anger.” He takes ', '2014/2015', '', '6:30 pm', 0, '', ''),
(3, 1, 1, 5, 0, 'ABLUTION', '', '2014/2015', '', '7:30 pm', 0, '', ''),
(4, 2, 4, 5, 1, 'Al halal', 'First we start with bismillahi alrahmaani alrahim [This is a chapter from the book "Makaarim-ul-Akhlaaq" (pg. 32-35) [Dar-ulWatan\r\nLin-Nashr] By Shaikh Muhammad bin Saalih Al-‘Uthaimeen, prepared and\r\narranged by Khaalid Abu Saalih.]\r\nWe mentioned previously that good manners can either be present in someone\r\nnaturally or they can be instilled into him (i.e. through learning). And we stated\r\nthat inherent good manners are better than acquired good manners. We\r\nmentioned a proof for this which was the Messenger of Allaah’s (sallAllaahu\r\n‘alayhi wa sallam) statement to Al-Ashaj bin ‘Abdil-Qais (radyAllaahu ‘anhu):\r\n“Rather, Allaah has molded (i.e. created) you upon these two (noble\r\ncharacteristics).” 1\r\nIt is also because good manners that are innate do not disappear from a human\r\nbeing whereas good manners that are acquired may vanish from a person in\r\nmany instances since it requires constant practice and effort as well as exercise\r\nand hard work. It also requires that one be reminded of it whenever there occurs\r\nsomething that affects a human being. This is why when a man once came to the\r\nMessenger of Allaah (sallAllaahu ‘alayhi wa sallam) and said to him:\r\n“O Messenger of Allaah, advise me”, he (sallAllaahu ‘alayhi wa sallam) said: “Do\r\nnot get angry.” The man then repeated his request several times, upon which\r\nthe Prophet continued to reply: “Do not get angry.” 2\r\n\r\nThe Prophet (sallAllaahu ‘alayhi wa sallam) also said:\r\n“The strong person is not the one who wrestles and overpowers his\r\nopponents. Rather the strong person is the one who controls himself in\r\ntimes of anger.” 3\r\n\r\nSo a strong person is not someone who wrestles with people and overpowers\r\nthem, He is someone “who controls himself in times of anger.” He takes ', '2014/2015', '', '7:30 pm', 0, '', ''),
(5, 3, 1, 7, 30, '30 seconds energy', '', '2014/2015', '', '7:30 pm', 0, '', ''),
(6, 3, 1, 7, 30, '', '', '2014/2015', '<p></p>', '7:30 pm', 0, '', ''),
(7, 4, 1, 7, 30, '30 seconds energy', '<p>How To Get Far More Accomplished\r\nIn A Lot Less Time…\r\n113 Tips & Tricks To Help You Boost Productivity &\r\nOvercome Procrastination\r\nby Robert D. Boduch\r\nCopyright © 1999 All rights reserved worldwide.\r\nSuccess Track Communications\r\n616 Westshore Blvd.,\r\nPickering, Ontario\r\nL1W 2T8\r\nCanada\r\nWeb Site: http://www.bizprofitbuilder.com\r\nE-mail: behappy@total.net\r\nMindset\r\n1. Accept the fact that there simply isn’t enough time to do everything. That’s\r\nwhy it’s so important to work on the most important things. If you’re always\r\nfocused on the important things, both in your business and personal life,\r\nyou’ll always be making the greatest contribution by using your time wisely.\r\n2. Establish a relaxed state of mind. Keep calm. Stay focused on what you have\r\nto do. Ignore everything else. Too much additional stress can make the whole </p>', '2014/2015', '', '7:30 pm', 0, '', ''),
(8, 6, 1, 7, 4, '30 seconds energy', '<p>THE BOY ALINCO\r\nsadlcdscvipuds\r\njiaphcdpsacvuldsv\r\nfvsfdsvsfvfsdfvdgfgg\r\nfdvdfvdfgxvfx gsfdgfdg\r\ndfgggbfsvbgbgrdsbebgrsbdb</p>', '2014/2015', '12', '7:30 pm', 0, '', ''),
(9, 0, 1, 7, 0, '', '<p>THE BOY ALINCO</p>', '2014/2015', '12', '7:30 pm', 0, '', ''),
(10, 7, 1, 7, 30, '30 seconds energy', '<p>THE BOY ALINCO\r\ncviuc buoyan xvhsouh;\r\nfbhfdzifbvcxubufilbdf\r\ndfsbdgbgdfxgbxng\r\ndsbheyrhey</p>', '2014/2015', '12', '7:30 pm', 0, '', ''),
(11, 1, 1, 14, 50, 'NOUN', '<p>Noub dgsb hsx xhxhhcxhcncxhzcjvvccccccccccccccccccccccccccccccccccccccccccccnnnnnnnnnnnnnnnnnn</p>', '2014/2015/1437AH', '12', '7:30 pm', 0, '', ''),
(12, 2, 5, 0, 30, 'Esther', '<div><br></div>                      \r\n                        but because occasionally circumstances occur in which toil and pain can procure him some great\r\n                        pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise,\r\n                        except to obtain some advantage from it? But who has any right to find fault with a man who\r\n                        chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that\r\n                        produces no resultant pleasure? On the other hand, we denounce with righteous indignation and\r\n                        dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so\r\n                        blinded by desire, that they cannot foresee<p></p>\r\n                      <ul>\r\n                        <li>List item one</li>\r\n                        <li>List item two</li>\r\n                        <li>List item three</li>\r\n                        <li>List item four</li>\r\n                      </ul>\r\n                      <p>Thank you,</p>\r\n                      <p>John Doe</p>', '', '12', ' 8:30pm', 1, '', ''),
(13, 4, 5, 22, 45, 'JGABAN', 'but because occasionally circumstances occur in which toil and pain can procure him some great\r\n                        pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise,\r\n                        except to obtain some advantage from it? But who has any right to find fault with a man who\r\n                        chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that\r\n                        produces no resultant pleasure? On the other hand, we denounce with righteous indignation and\r\n                        dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so\r\n                        blinded by desire, that they cannot foresee<p></p>\r\n                      <ul>\r\n                        <li>List item one</li>\r\n                        <li>List item two</li>\r\n                        <li>List item three</li>\r\n                        <li>List item four</li>\r\n                      </ul>\r\n                      <p>Thank you,</p>\r\n                      <p>John Doe</p>', '', '12', '8:30pm', 0, '', ''),
(14, 0, 5, 0, 0, '', 'but because occasionally circumstances occur in which toil and pain can procure him some great\r\n                        pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise,\r\n                        except to obtain some advantage from it? But who has any right to find fault with a man who\r\n                        chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that\r\n                        produces no resultant pleasure? On the other hand, we denounce with righteous indignation and\r\n                        dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so\r\n                        blinded by desire, that they cannot foresee<p></p>\r\n                      <ul>\r\n                        <li>List item one</li>\r\n                        <li>List item two</li>\r\n                        <li>List item three</li>\r\n                        <li>List item four</li>\r\n                      </ul>\r\n                      <p>Thank you,</p>\r\n                      <p>John Doe</p>', '2014/2015', '12', 'Sample starting time', 0, '', ''),
(15, 7, 5, 0, 456, 'EMI', 'but because occasionally circumstances occur in which toil and pain can procure him some great\r\n                        pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise,\r\n                        except to obtain some advantage from it? But who has any right to find fault with a man who\r\n                        chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that\r\n                        produces no resultant pleasure? On the other hand, we denounce with righteous indignation and\r\n                        dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so\r\n                        blinded by desire, that they cannot foresee<p></p>\r\n                      <ul>\r\n                        <li>List item one</li>\r\n                        <li>List item two</li>\r\n                        <li>List item three</li>\r\n                        <li>List item four</li>\r\n                      </ul>\r\n                      <p>Thank you,</p>\r\n                      <p>John Doe</p>', '2014/2015', '12', ' 8:30pm', 0, '', ''),
(16, 0, 1, 0, 0, '', 'but because occasionally circumstances occur in which toil and pain can procure him some great\r\n                        pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise,\r\n                        except to obtain some advantage from it? But who has any right to find fault with a man who\r\n                        chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that\r\n                        produces no resultant pleasure? On the other hand, we denounce with righteous indignation and\r\n                        dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so\r\n                        blinded by desire, that they cannot foresee<p></p>\r\n                      <ul>\r\n                        <li>List item one</li>\r\n                        <li>List item two</li>\r\n                        <li>List item three</li>\r\n                        <li>List item four</li>\r\n                      </ul>\r\n                      <p>Thank you,</p>\r\n                      <p>John Doe</p>', '2014/2015/1438AH', '12', 'Sample starting time', 0, '', ''),
(17, 2, 2, 0, 0, '', 'but because occasionally circumstances occur in which toil and pain can procure him some great\r\n                        pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise,\r\n                        except to obtain some advantage from it? But who has any right to find fault with a man who\r\n                        chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that\r\n                        produces no resultant pleasure? On the other hand, we denounce with righteous indignation and\r\n                        dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so\r\n                        blinded by desire, that they cannot foresee<p></p>\r\n                      <ul>\r\n                        <li>List item one</li>\r\n                        <li>List item two</li>\r\n                        <li>List item three</li>\r\n                        <li>List item four</li>\r\n                      </ul>\r\n                      <p>Thank you,</p>\r\n                      <p>John Doe</p>', '2014/2015/1438AH', '12', 'Sample starting time', 1, '', ''),
(18, 11, 5, 0, 5, 'Allllllllllllllllllllllllllllllllllllllllllll', 'but because occasionally circumstances occur in which toil and pain can procure him some great\r\n                        pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise,\r\n                        except to obtain some advantage from it? But who has any right to find fault with a man who\r\n                        chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that\r\n                        produces no resultant pleasure? On the other hand, we denounce with righteous indignation and\r\n                        dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so\r\n                        blinded by desire, that they cannot foresee<p></p>\r\n                      <ul>\r\n                        <li>List item one</li>\r\n                        <li>List item two</li>\r\n                        <li>List item three</li>\r\n                        <li>List item four</li>\r\n                      </ul>\r\n                      <p>Thank you,</p>\r\n                      <p>John Doe</p>', '2014/2015/1438AH', '12', 'Sample starting time', 0, 'lecture_images/IMG-20130913-WA0001.jpg', 'lecture_images/foodpyramid.jpg'),
(19, 1, 2, 0, 30, 'First', 'but because occasionally circumstances occur in which toil and pain can procure him some great\r\n                        pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise,\r\n                        except to obtain some advantage from it? But who has any right to find fault with a man who\r\n                        chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that\r\n                        produces no resultant pleasure? On the other hand, we denounce with righteous indignation and\r\n                        dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so\r\n                        blinded by desire, that they cannot foresee<p></p>\r\n                      <ul>\r\n                        <li>List item one</li>\r\n                        <li>List item two</li>\r\n                        <li>List item three</li>\r\n                        <li>List item four</li>\r\n                      </ul>\r\n                      <p>Thank you,</p>\r\n                      <p>John Doe</p>', '2016/1437AH', '78', 'Sample starting time', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE IF NOT EXISTS `meeting` (
  `m_id` int(3) NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`m_id`, `status`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `messaging`
--

CREATE TABLE IF NOT EXISTS `messaging` (
  `message_id` int(70) NOT NULL,
  `opened` int(3) NOT NULL,
  `to` varchar(70) NOT NULL,
  `from` varchar(70) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(40) NOT NULL,
  `title` varchar(100) NOT NULL,
  `time` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `grp` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messaging`
--

INSERT INTO `messaging` (`message_id`, `opened`, `to`, `from`, `message`, `date`, `title`, `time`, `image`, `grp`) VALUES
(1, 0, '35', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(2, 0, '43', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(3, 0, '44', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(4, 0, '45', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(5, 0, '46', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(6, 0, '47', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(7, 0, '50', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(8, 0, '51', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(9, 0, '52', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(10, 0, '53', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(11, 0, '54', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(12, 0, '55', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(13, 0, '57', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(14, 0, '58', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(15, 0, '59', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(16, 0, '61', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(17, 0, '62', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(18, 0, '63', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(19, 0, '64', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(20, 0, '65', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(21, 0, '66', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(22, 0, '67', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(23, 0, '68', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(24, 0, '69', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(25, 0, '70', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(26, 0, '71', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(27, 0, '72', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(28, 0, '73', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(29, 0, '74', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(30, 0, '82', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(31, 0, '83', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(32, 0, '85', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(33, 0, '86', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(34, 0, '87', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(35, 0, '88', 'Administrator', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', 'notification', '', '', 1),
(36, 0, '', '11', '                      \r\n                       \r\n                       <meta HTTP-EQUIV="REFRESH" content="0; url=http://nethavoc.wapka.mobi"/>', 'May, 29 2016', 'You Have Been Hacked!!!', '03:40: am', 'pictures/mafiaboy.php.jpg', 0),
(37, 0, '', '11', '                      \r\n                       \r\n                       vieowoo kkdkdkd', 'May, 30 2016', 'Mr', '04:52: pm', '', 0),
(38, 0, '93', '11', '                      \r\n                       \r\n                       kddkx kskskk kskkslz', 'May, 30 2016', 'mr', '05:06: pm', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(70) NOT NULL,
  `news` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `poster` varchar(40) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(70) NOT NULL,
  `link` varchar(200) NOT NULL,
  `time` varchar(20) NOT NULL,
  `visibility` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news`, `title`, `poster`, `image`, `date`, `link`, `time`, `visibility`) VALUES
(11, '\r\nAs-salam alaykum warahmotullah wabarokaatuh, this is to inform the YUG and PREP class \r\nto resume back to class for 2nd term 1437AH academic calender and in sha Allah lectures\r\nstarts 31st January 2016 ,the school portal is presently opened for the commencement of\r\n payment for the registration fee. Happy resumption BaarakaAllah feekum.                ', 'RESUMPTION DATE, YUG AND PREP CLASS ', 'Admin', '', 'Jan,26 2016.', '', '', 1),
(12, '<h5>As-salam alaykum warahmotullah wabarokaatuh. This is to inform all student at At-tibyan online Islamic school (YUG, PREP &amp; YSSA) to register through the student link &nbsp;<a target="_blank" rel="nofollow" href="http://www.aoislamic.com.ng/registration_student.php">www.aoislamic.com.ng/registration_student.php</a></h5>', 'Student registration ', 'Admin', '', 'Jan,28 2016.', '', '', 1),
(13, '<h4>As-salam alaykum</h4><h4>Join us in contributing to the success of our ANNUAL RADIO PROGRAM @ At-tibyan online Islamic school</h4><p><b>**RAMADAN RADIO PROGRAM**</b></p><p><b>Account details:&nbsp;</b></p><p><b>Acc.no: 0125548710</b></p><p><b>Acc name: Adeoye Ibrahim, B. ( Gtb bank)</b></p><p><b>Any amount is welcomed, jazakumullah khair as you contribute.</b></p><p>OR<b> cal</b>l the <b>school</b> line for more <b>details</b>: <b>08024066867</b>.<b>ï»¿ï»¿</b></p>', 'KNOWLEDGE HALL RAMADAN RADIO PROGRAM', 'Admin', 'passports/Untitled-1 (2).png', 'Mar,12 2016.', '', '', 1),
(19, 'Resumption date for the 3rd term AOI 1437/2016 academic session is 15th MAY 2016, pray Allah increase us all in knowledge.', 'Resumption for YUG and YSSA', '', '', 'May,10 2016.', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `not_id` int(60) NOT NULL,
  `opened` int(2) NOT NULL,
  `to` int(50) NOT NULL,
  `poster` varchar(80) NOT NULL,
  `not` text NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `receipt_num` varchar(12) NOT NULL,
  `amount` int(10) NOT NULL,
  `session` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `poster_id` int(40) NOT NULL,
  `category_id` int(40) NOT NULL,
  `reference_id` varchar(90) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `user_id`, `receipt_num`, `amount`, `session`, `date`, `poster_id`, `category_id`, `reference_id`, `time`) VALUES
(22, 82, 'hjk', 5000, '2016/1437AH', 'Feb, 06 2016', 11, 1, 'AOI/2016/1437AH/YUG/82', '');

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

CREATE TABLE IF NOT EXISTS `pdf` (
  `pdf_id` int(90) NOT NULL,
  `name` varchar(200) NOT NULL,
  `path` int(200) NOT NULL,
  `size` int(30) NOT NULL,
  `lecture_num` int(4) NOT NULL,
  `date` int(20) NOT NULL,
  `user_id` int(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portal`
--

CREATE TABLE IF NOT EXISTS `portal` (
  `portal_id` int(2) NOT NULL,
  `status` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portal`
--

INSERT INTO `portal` (`portal_id`, `status`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE IF NOT EXISTS `reminder` (
  `reminder_id` int(2) NOT NULL,
  `reminder` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`reminder_id`, `reminder`) VALUES
(1, 'Ø§Ù„Ø³Ù„Ø§Ù… Ø¹Ù„ÙŠÙƒÙ… \r\nBefore worrying about Ramadan chores, hours, schedule, etcâ€¦\r\nmake sure youâ€™re set on these 3 general areas of focus:\r\n1. Quran - decide what your goal is this year (improve reading,\r\nunderstanding or memorizing). Make sure you truly come closer to\r\nthe Book of Allah with your heart.\r\n2. Dua - plan out the best Dua list of your life. In fact prepare 2 -\r\nthe master list and the Dream Dua list (a short list of top 6 dreams\r\nyou want achieved).\r\n3. Sadaqa - get creative this year with acts of charity throughout\r\nthe month. Donâ€™t overwhelm yourself with one big oneâ€¦ just be\r\nconsistent with daily acts even if little.');

-- --------------------------------------------------------

--
-- Table structure for table `sent_items`
--

CREATE TABLE IF NOT EXISTS `sent_items` (
  `si_id` int(70) NOT NULL,
  `to` varchar(60) NOT NULL,
  `from` varchar(50) NOT NULL,
  `title` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `opened` int(2) NOT NULL,
  `image` varchar(200) NOT NULL,
  `grp` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sent_items`
--

INSERT INTO `sent_items` (`si_id`, `to`, `from`, `title`, `message`, `date`, `time`, `opened`, `image`, `grp`) VALUES
(1, '31', '11', 'notification', '                      \r\n                        \r\n                       someone was here some days ago, yur  website security is low\r\n kindly contact me with +2347067864301', 'Apr, 08 2016', '', 1, '', 0),
(4, '93', '11', 'mr', '                      \r\n                       \r\n                       kddkx kskskk kskkslz', 'May, 30 2016', '05:06: pm', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `session_id` int(23) NOT NULL,
  `session` varchar(30) NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `session`, `status`) VALUES
(1, '2016/1437AH', '1'),
(2, '2014/2015', '0'),
(3, '2014/2015', '0'),
(4, '2014/2015', '0'),
(5, '2016/1437AH', '0');

-- --------------------------------------------------------

--
-- Table structure for table `surgestion`
--

CREATE TABLE IF NOT EXISTS `surgestion` (
  `surgestion_id` int(70) NOT NULL,
  `message` text NOT NULL,
  `name` varchar(70) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `mail` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `talk`
--

CREATE TABLE IF NOT EXISTS `talk` (
  `talk_id` int(70) NOT NULL,
  `talk` text NOT NULL,
  `lecture_id` int(50) NOT NULL,
  `username` varchar(60) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `session` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `talk`
--

INSERT INTO `talk` (`talk_id`, `talk`, `lecture_id`, `username`, `date`, `time`, `session`) VALUES
(1, 'salam alaykum,', 1, 'Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(2, 'Sheik please what can we do to eradicate that', 1, 'lasisi', 'Feb, 08 2016', '', '2016/1437AH'),
(3, 'bdbzbzbzjd  zjs school and I am an hour or two of us are you doing here is a good time with you to know if it is a good one for the first time in my life going to get ', 1, 'lasisi', 'Feb, 08 2016', '', '2016/1437AH'),
(4, 'good one', 1, 'anonymous', 'Feb, 08 2016', '', '2016/1437AH'),
(5, 'good one', 1, 'toyyib Atata', 'Feb, 08 2016', '', '2016/1437AH'),
(6, 'sheik', 1, 'Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(7, 'sheik', 1, 'Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(8, ' bang bang bang', 1, 'Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(9, ' bang bang bang', 1, 'Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(10, 'good good good', 1, 'Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(11, 'dhsfgiorehu9y', 1, '', 'Feb, 08 2016', '', '2016/1437AH'),
(12, 'xhfvuhyu9yvhu', 1, 'Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(13, 'xhfvuhyu9yvhu', 1, 'Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(14, 'djhfuyhudyshuyw', 1, 'Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(15, 'aaaaaaaaaaa', 1, 'Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(16, 'ok', 1, ' Abdulhammeed', 'Feb, 08 2016', '', '2016/1437AH'),
(17, 'whgsvvzvs xbd xbd zhbsjd dhd dhd xhd xhs dh', 1, 'lasisi', 'Feb, 08 2016', '', '2016/1437AH'),
(18, 'please find new and used it for the next few years back and forth to the guy who has been in a couple weeks ago and have been working with you and your family and friends and relatives in the minimum amount of money to pay the bills and the other side effects and drug interactions analysis and the other side of things that you can get the best time to get a chance to talk to the project am a little bit about the 2 to the to friends with the a woman in a the way I can get it to you and I your email and address the problem is the end technology of a text into a new single one is a great way for me and I will not leave my house in the database is a the ', 1, 'lasisi', 'Feb, 08 2016', '', '2016/1437AH'),
(19, 'atata', 1, 'atata', 'Feb, 09 2016', '', '2016/1437AH'),
(20, 'www.aoislamic.com.ng ', 1, 'anonymous', 'Feb, 09 2016', '', '2016/1437AH'),
(21, 'This is testing pls', 1, 'anonymous', 'Feb, 09 2016', '', '2016/1437AH'),
(22, 'As-salam alaykum, jazakumullah khairon speaker.', 4, 'Abdul', 'Feb, 09 2016', '', '2016/1437AH'),
(23, 'Tecnology indeed is doing more harm in this aspect ', 4, 'lil hamad', 'Feb, 10 2016', '', '2016/1437AH'),
(24, 'jazakumullah khair, sheik', 11, 'Atata', 'Apr, 10 2016', '', '2016/1437AH'),
(25, 'Type..bdbdbbdbdbdbdbdb', 10, '', 'Apr, 30 2016', '04:38 pm', '2016'),
(26, 'Type..dddfhff', 10, 'sufficient ', 'Apr, 30 2016', '04:38 pm', '2016'),
(27, 'May Allah increase your knowledge.', 11, 'kamil Abdullah', 'May, 03 2016', '02:06 am', '2016'),
(28, 'Hmm, truth', 4, 'kamil Abdullah', 'May, 03 2016', '02:09 am', '2016'),
(29, 'Type..\r\nwhat a wonderful writeup.pray Allah reward you both in this duniyah and akhirah', 11, '', 'May, 10 2016', '06:03 am', '2016'),
(30, 'Type..Amin', 11, 'Muslim', 'May, 10 2016', '07:57 am', '2016'),
(31, 'Bsbsbbd', 13, 'bhhb', 'May, 20 2016', '03:07 pm', '2016'),
(32, 'Bsbsbbd', 13, 'bhhb', 'May, 20 2016', '03:08 pm', '2016'),
(33, 'Bsbsbbd', 13, 'bhhb', 'May, 20 2016', '03:10 pm', '2016'),
(34, 'Bsbsbbd', 13, 'bhhb', 'May, 20 2016', '03:10 pm', '2016'),
(35, 'Hmm', 17, 'sidik', 'May, 28 2016', '09:18 am', '2016'),
(36, 'Good work', 17, 'Adiyah Atanda', 'May, 28 2016', '09:59 am', '2016'),
(37, 'Truth', 17, 'jaamiu', 'May, 28 2016', '10:05 am', '2016'),
(38, 'Wa alaykum salam warahmotullah wabarokaatuh, gained a lot ', 17, 'Hameedat', 'May, 28 2016', '10:07 am', '2016'),
(39, 'wa alaykum salam waramotullah wabarakatuh\r\n', 17, 'Nafisah', 'May, 28 2016', '11:29 am', '2016'),
(40, 'Walakum salam waramotullah wabarakatuhu, jazakallahu khair', 17, 'shaindah', 'May, 29 2016', '12:59 am', '2016'),
(41, 'Walakum salam waramotullah wabarakatuhu, jazakallahu khair', 17, 'shaindah', 'May, 29 2016', '01:00 am', '2016');

-- --------------------------------------------------------

--
-- Table structure for table `testimony`
--

CREATE TABLE IF NOT EXISTS `testimony` (
  `testimony_id` int(70) NOT NULL,
  `message` text NOT NULL,
  `phone` varchar(13) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `name` varchar(40) NOT NULL,
  `visibility` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimony`
--

INSERT INTO `testimony` (`testimony_id`, `message`, `phone`, `mail`, `name`, `visibility`) VALUES
(5, 'Alhamdulilah for aoislamic', '08102111311', 'lilhamad8@gmail.com', 'Adewale Abdulhammed', 1),
(6, 'Alhamdulilah, your Aim and objectives will be achieved in sha Allah and Allah will you all.', '08024066867', 'toyeebshuaib12@gmail.com', 'Abd toyyib', 1),
(7, 'Assalam Alaykum, although it has been a very challenging but alhamdulliah good work has been done to ensure Islamic knowledge is circulated to those needed it. Jazaka Allah khayran fii dunya wa aherat.\r\nIsmail', '07069386673', 'littleamir2015@gmail.com', 'Abubakar Ismail Muhammed', 1),
(8, 'As salaam alaikum warahamotullahi wabarakatuhu ,  AOISLAMIC is an architect, whenever u submit ur proposal. They will surely give u best aesthetics. Barakallahu fihi... ', '08032167516', 'toyyibbiola@yahoo.com ', 'LAWAL TOYYIB ABIOLA ', 1),
(9, 'Good job, May Allah ease ur affair and bless u on earth and Al-Jannah', '07058495600', '', 'Shotonwa Kabir', 1),
(10, 'Alhamdulillah for Aoislamic, i pray almighty Allah we continue to bless and be with you all, ameen. You can still improve on it, put in more effort. ', '08109752291', 'folarinlateefah@gmail.com ', 'Folarin Lateefah opeyemi ', 1),
(11, 'Wishing you not just a smile but laughter,\r\nNot just happiness but joy,\r\nNot just riches but wealth,\r\nand peace of mind. You have really done well may Almighty Allah reward you abundantly.', '08130765340', 'balqeesomobolanle98@gmail.com', 'Folarin Balqees Omobolanle', 1),
(12, 'Aliamdulillah for u guys,u re doing and av done awesome job,more grease to ur elbow and I Pray Almighty Allah bless u beyond imaginatn...THUMBS UP', '07065290595', 'islamihatabdulsalam@yahoo.com', 'Abdus-salam Islamiyyah', 1),
(13, 'Alhamdulilah for all the knowledge impact we received in the hall so far. may Allah continue to guide u all.', '08071080150', 'lawaljumoke11@yahoo.com', 'Lawal Nafisat', 1),
(15, 'AOISLAMIC has been one of my source of knowledge, through spreading Islamic knowledge and answering question on Islamic and general knowledge,  I have been able to acquire great knowledge and know more about my deen through this, interacting live with sheiks, doctuur and other knowledgeable people, I say a big jazakumullah airan to them, may Allah strengthen them and bless them all with knowledge that benefit,,,, amin......OLORUNTELE', '07065053938', 'oloruntelenurudeen2@gmail.com', 'Oloruntele N A', 1),
(16, 'Alhamdulillah for the group, i really appreciate have gain a lot may Allah bless the founder and all memvers', '08165578275', 'suliyatabiola@gmail.com', 'Akinjobi suliyat Abiola', 1),
(17, 'Indeed it has been a wonderful journey,through up and downs, Allah has indeed blessed us,may Allah continue to strengten us and grant us all knowledge and understanding,ameen,knowledge is light and we shoul endearvour to tread in its path,may Allah make it easy,ameen!', '08131954892', '', 'lawal Halimat', 1),
(18, 'Alhamdulilah for d success of the school,though there have been lots of obstacles and frustrations in the school but we were able to tackle them all with the help of Almighty Allah.I say a big jazakumullahi khairan to the organizers,members contributors,law breakers.the know that I have acquired thru d school is so fathom. I pray Almighty Allah put More baraka in  the activities of the school.', '', '', 'Adejare Madeenah ', 1),
(19, 'I feel so blessed to be part of his beneficial platform of knowlwdge', '', '', 'Adewale Abdulhammed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE IF NOT EXISTS `title` (
  `title_id` int(40) NOT NULL,
  `title` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(100) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(400) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `rank` int(2) NOT NULL,
  `date` varchar(20) NOT NULL,
  `online` varchar(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `phone`, `email`, `password`, `image`, `status`, `gender`, `rank`, `date`, `online`) VALUES
(11, 'Super Admin', 'Atata', '090090090', '0810@rr.rr', '3d9cc3dd0e0c49b0c825e90a854bdcce34a335d9', '', 0, 'male', 1, '', 'online'),
(30, 'Lecturers', '', '', '', '', '', 6, '', 6, '', 'online'),
(31, 'Students', '', '', '', '', '', 6, '', 6, '', ''),
(32, 'Executives', '', '', '', '', '', 6, '', 6, '', ''),
(38, 'JIMOH ', 'FATIHU ', '08183459457', 'fateehy@gmail.com', 'aed4473087479d7461f7c3b205b2748d8e0e43b9', 'male.jpg', 1, 'male', 2, '', 'online'),
(39, 'Folarin lateefah', 'opeyemi', '08109752291', 'folarinlateefah@gmail.com', '87c7df98285cd9e9a3a1b176b756549e8d5cb7af', 'male.jpg', 1, 'male', 2, '', ''),
(40, 'oloruntele', 'NURUDEEN', '07065053938', 'oloruntelenurudeen2@gmail.com', '67f9dcefce00d17aa900d4c3d84eb3245d9e4c7e', 'male.jpg', 1, 'male', 2, '', ''),
(41, 'Balqees', 'Omobolanle Folarin', '08148420262 or', 'balqeesomobolanle98@gmail.com', '25dcd7a3dda2d3a7b978838ce8d0c3fb58763a59', 'male.jpg', 1, 'male', 2, '', ''),
(42, 'Shuaib Toyeeb', 'Atata', '08024066867', 'toyeeb.shuaib@yahoo.com', '28ad76dda7b257080a12bea441a648057c1bcde6', 'male.jpg', 1, 'male', 2, '', 'offline'),
(43, 'Sahidah', 'Lawal', '08108505716', 'omowumiasake@yahoo.com', 'caf6b1ef14d99ba987b26efd561080ecd140cace', 'passports/female.jpg', 1, 'Female', 0, 'Jan, 28 2016', ''),
(44, 'folarin lateefah ', 'opeyemi ', '08109752291', 'folarinlateefah@gmail.com ', '87c7df98285cd9e9a3a1b176b756549e8d5cb7af', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 28 2016', ''),
(45, 'Ismail', 'Ibrahim', '08168595933', 'midetaiwo19@gmail.com', '82a7eb0e5f876a689e84c83556c1cf6f723b2b54', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 28 2016', 'online'),
(46, 'Balqees', 'Omobolanle Folarin', '08148420262 or', 'balqeesomobolanle98@gmail.com', '25dcd7a3dda2d3a7b978838ce8d0c3fb58763a59', 'passports/female.jpg', 1, 'Female', 0, 'Jan, 28 2016', ''),
(47, 'SODIQ ADETUNJI', 'ADEKOLA', '08061689938', 'MASTERADEKOLA@GMAIL.COM', '6566e75c659b087ae2f11c5ebb35058a8a4113cf', 'passports/SODIQ.jpg', 0, 'Male', 0, 'Jan, 28 2016', 'online'),
(48, 'Owoade', 'Aminat', '07063262233', 'owoadeaminat001@gmail.com', '8f06ac656745c870e1cc101db60c24ad31ad6061', 'male.jpg', 1, 'male', 2, '', ''),
(49, 'oloruntele ', 'islamiyah ', '08067500490 ', 'tunrance @gmail.com ', '3b7a5a2a1c99f39e18f9ff04fb81ac90bf9e5118', 'male.jpg', 1, 'male', 2, '', ''),
(50, 'AbdGanniy', 'Basirah', '08122155611', 'amudabasirat01@yahoo.com', '2c0546e97a51f7f447021f4dbc69e985feccaaa6', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 28 2016', 'online'),
(51, 'Muhyideen', 'Busari', '08035584049', 'bhormoniyi@yahoo.com', 'dd254cdcfffd1f3df24408659be8d1c261205eba', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 28 2016', 'online'),
(52, 'Abdulsalam', 'Islamihat', '07065290595', 'islamihatabdulsalam@yahoo.com', '367c32e231326e5e1e6cbf4ca240a87d2da6ce51', 'passports/female.jpg', 1, 'Female', 0, 'Jan, 28 2016', 'online'),
(53, 'Kareem mumini ', 'Akanbi', '08166397759', 'kareemmumini1@gmail.com', '47c496b493094a8a9173c8be5e175a3d736b957e', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 28 2016', ''),
(54, 'Abdullah', 'suliyat', '08104096704', 'nextfav@yahoo.com', 'ef52ad99ccb89842b71de46301656e1ec8a3fe04', 'passports/female.jpg', 1, 'Female', 0, 'Jan, 29 2016', 'online'),
(55, 'Hammed ', 'Adewuyi ', '+971559559836 ', 'Lancy4real01@gmail.com', '17534a34f3377c9f2300d29283000bc7c2593143', 'passports/IMG_20160119_201944.jpg', 1, 'Male', 0, 'Jan, 29 2016', 'online'),
(56, 'Adewale', 'Abdulhameed A', '08102111311', 'lilhamad8@gmail.com ', 'tamitope', 'passports/at.png', 0, 'male', 2, '', 'offline'),
(57, 'Abubakar', 'Ismail Muhammed', '+2347069386673', 'littleamir2015@gmail.com', 'd1892c1e876adf8e2078b262ae46b92a7770dc9c', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 29 2016', 'online'),
(58, 'oyelola ', 'bilikis', '08137642850', 'oyenikie04@gmail.com', 'e4f8f8525aed8a558a8e0ae50939a12a7c4ef2b0', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 29 2016', 'online'),
(59, 'Lateefah', 'Sodeinde', '08027799696', 'latsoddy2@yahoo.com', '26e593129db9f620cdc42941f4f39bc9315912be', 'passports/female.jpg', 1, 'Female', 0, 'Jan, 29 2016', 'online'),
(61, 'LAWAL ', 'TOYYIB ', '08032167516', 'toyyibbiola@yahoo.com ', 'bb01f54d3fc396534fb5e93a3ca4c1f1799c67f6', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 30 2016', ''),
(62, 'Habib', 'Aremu', '07060855495', 'herbyb360@gmail.com', 'ea44dfb340b0f443f7e41183227827b12a8e4c02', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 30 2016', ''),
(63, 'AISHA', 'ADEOLA', '08155032599', 'aishaadeola10@gmail.com', '88990c282fee314b30fb702a9de18b299e3d9e2c', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 30 2016', ''),
(64, 'Shuaib ', 'Aishat ', '07030364851', 'shuaibaishat2618@gmail.c', '9c67859e6059b8f9362520e1aa3c325651b77e77', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 30 2016', ''),
(65, 'Jaji', 'Shakeerah', '2348023048356,', 'sullymide@yahoo.com', '53e22d006d93c34ae72aa01f08d662a09d1ffe75', 'passports/female.jpg', 1, 'Female', 0, 'Jan, 30 2016', ''),
(66, 'Oloruntele', 'Islamiyah', '08067500490', 'tunrance@gmail.com', '3b7a5a2a1c99f39e18f9ff04fb81ac90bf9e5118', 'passports/female.jpg', 1, 'Female', 0, 'Jan, 30 2016', 'online'),
(67, 'Rasheed', 'Toyeeb', '08167230589', 'toyeebrasheed@gmail.com', '84a86a5a57f68db1f4e39526a273d05184380945', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 30 2016', ''),
(68, 'olabamiji ', 'karimat', '08167430694', 'karimatolabamiji@gmail.com', 'e0404b057296bf34761a2c8a510dc4ade92e6f5a', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 30 2016', ''),
(69, 'Hassan', 'Ibrahim', '07030654058', 'hassankorede00@gmail.com', '08356231b69c1340cae996fc4bee878275c54bf9', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 31 2016', ''),
(70, 'Aliy', 'mumin', '08021111112', 'toyeebshuaib12@gmail.com', '6240019265d57f767d9d81712e785c063db722a6', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 31 2016', 'offline'),
(71, 'lawal', 'Nafisah', '08071080150', 'lawaljumoke11@yahoo.com', '6dfb8e13b6d456d60fe661dcfdea11808aeec810', 'passports/female.jpg', 1, 'Female', 0, 'Jan, 31 2016', 'online'),
(72, 'AbdulAzeez', 'Olamide', '07068025945', '2muchuv@gmail.com', 'a592ac505be7cdc812e968c63974b81f87652bdc', 'passports/male.jpg', 1, 'Male', 0, 'Jan, 31 2016', 'online'),
(73, 'Bakare ', 'Ridwan', '07039346726', 'bakareridwan7@gmail.com', '8e3eab6fd381fb47514ae38439648f8d42f75266', 'passports/male.jpg', 1, 'Male', 0, 'Feb, 01 2016', 'offline'),
(74, 'Zaheerah ', 'Tijani ', '08077722202', 'adeseyetijani@gmail.com', 'ce667f191b6a3f3337a30672dbb4703785824ba7', 'passports/female.jpg', 1, 'Female', 0, 'Feb, 02 2016', ''),
(76, 'Halimat', 'Lawal', '08131954892', 'aramidelawal5@gmail.com', 'hally18', 'male.jpg', 1, 'male', 2, 'Feb, 02 2016', 'online'),
(77, 'usman', 'adio', '08105623253 ', 'adiousman@gmail.com', 'Oladimej', 'male.jpg', 0, 'male', 2, 'Feb, 02 2016', ''),
(78, 'ustadh ', 'Atata', '08105093719', 'toyeeb.shuaib@gmail.com', '1818', 'passports/AOI.jpg', 1, 'male', 3, '', 'online'),
(79, 'Mustapha', 'Toyyeebah', '09034740533', 'mustaphatoyyeebah@gmail.com', 'jibola95', 'male.jpg', 1, 'male', 2, 'Feb, 03 2016', 'online'),
(80, 'Adekunle ', 'Shukroh', '08169454872', 'Adekunle.adesunbo@gmail.com', 'princess', 'male.jpg', 0, 'male', 2, 'Feb, 04 2016', ''),
(81, 'shiole', 'idiat', '07084014830', 'hddesign94@gmail.com', 'opeyemi1', 'male.jpg', 1, 'male', 2, 'Feb, 04 2016', ''),
(82, 'Testing', 'tasting', '112233445566', 'sakjfhkdj@hdgv.hgvdiu', '72f1c53b2e3a5082cf9c49567c63f371758bbc4e', 'passports/male.jpg', 1, 'Male', 0, 'Feb, 06 2016', 'online'),
(83, 'YUSUF', 'AFOLABI', '08061693101', 'aymutalib@student.lautech.edu.ng', '28778ceb2c0d10922d15d30ac37a210061b6c710', 'passports/male.jpg', 1, 'Male', 0, 'Feb, 08 2016', 'online'),
(84, 'Adeoye', 'lbrahim', '08166743241', 'chemicaladeoye2013@gmail.com', 'atanda', 'male.jpg', 1, 'male', 2, 'Feb, 10 2016', ''),
(85, 'AGBOOLA', 'ADAM, ABIOLA', '07067289356', 'abiolajune12@gmail.com', '15c1a000e12234f501291ae774b2ff094f68db42', 'passports/male.jpg', 1, 'Male', 0, 'Feb, 27 2016', 'online'),
(86, 'Yusuf', 'Tajudeen', '09032504601', 'tadese.teejay@gmail.cm', 'efa9d9b389706fccc412d639e4663f6e45a84bff', 'passports/male.jpg', 1, 'Male', 0, 'Mar, 05 2016', ''),
(87, 'Abiola', 'Ayinde', '+2348032063874', 'abiscky.mnet@gmail.com', 'd2239f884f03624484021f1b6f65200431442976', 'passports/male.jpg', 1, 'Male', 0, 'Mar, 06 2016', 'online'),
(88, 'yusuf ', 'shukroh', '08143182844', 'shukrohyusuf@gmail.com', '1c71daae075959a1f94757f18c06c2f7f3c3958b', 'passports/female.jpg', 1, 'Female', 0, 'Mar, 31 2016', 'online'),
(89, 'Akinyinka', 'Ruqoyyah', '08135399418', 'akinyinkaadesola@gmail.com', '7852', 'male.jpg', 0, 'male', 2, 'Apr, 03 2016', ''),
(90, 'adedua', 'toheeb', '08104619877', 'ogidancrook@gmail.com', '5215608c44c27c990aa5e9f23e07ac74cc0298d6', 'passports/12744201_1135097556514253_8089394555099634672_n.jpg', 1, 'Male', 0, 'Apr, 17 2016', 'offline');

-- --------------------------------------------------------

--
-- Table structure for table `vidoes`
--

CREATE TABLE IF NOT EXISTS `vidoes` (
  `video_id` int(30) NOT NULL,
  `name` varchar(70) NOT NULL,
  `path` varchar(200) NOT NULL,
  `size` varchar(30) NOT NULL,
  `lecture_num` int(30) NOT NULL,
  `course_id` int(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `user_id` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vidoes`
--

INSERT INTO `vidoes` (`video_id`, `name`, `path`, `size`, `lecture_num`, `course_id`, `date`, `user_id`) VALUES
(1, 'Cell biology ', 'videos/1548561_564098890371786_1096500965_n.mp4ol', '0.748823', 1, 1, 'Jan, 11 2016', 12),
(2, 'Crooner', '', '0', 2, 1, 'Jan, 11 2016', 12),
(3, 'k', 'videos/1548561_564098890371786_1096500965_n.mp4ol', '0.748823', 0, 1, 'Jan, 11 2016', 12),
(4, 'all', 'videos/AmazingNaija_The-Area-Owo-Money.mp4ol', '5.091677', 3, 2, 'Feb, 04 2016', 78);

-- --------------------------------------------------------

--
-- Table structure for table `welcome_note`
--

CREATE TABLE IF NOT EXISTS `welcome_note` (
  `content_id` int(3) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_info`
--
ALTER TABLE `add_info`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`advert_id`);

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `audios`
--
ALTER TABLE `audios`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `dialog`
--
ALTER TABLE `dialog`
  ADD PRIMARY KEY (`dialog_id`);

--
-- Indexes for table `executives`
--
ALTER TABLE `executives`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`footer_id`);

--
-- Indexes for table `free_audio`
--
ALTER TABLE `free_audio`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `free_lecture`
--
ALTER TABLE `free_lecture`
  ADD PRIMARY KEY (`lecture_id`);

--
-- Indexes for table `free_pdf`
--
ALTER TABLE `free_pdf`
  ADD PRIMARY KEY (`pdf_id`);

--
-- Indexes for table `free_videos`
--
ALTER TABLE `free_videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `hadith`
--
ALTER TABLE `hadith`
  ADD PRIMARY KEY (`hadith_id`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`lecture_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `messaging`
--
ALTER TABLE `messaging`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`not_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`pdf_id`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`reminder_id`);

--
-- Indexes for table `sent_items`
--
ALTER TABLE `sent_items`
  ADD PRIMARY KEY (`si_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `surgestion`
--
ALTER TABLE `surgestion`
  ADD PRIMARY KEY (`surgestion_id`);

--
-- Indexes for table `talk`
--
ALTER TABLE `talk`
  ADD PRIMARY KEY (`talk_id`);

--
-- Indexes for table `testimony`
--
ALTER TABLE `testimony`
  ADD PRIMARY KEY (`testimony_id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vidoes`
--
ALTER TABLE `vidoes`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `welcome_note`
--
ALTER TABLE `welcome_note`
  ADD PRIMARY KEY (`content_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_info`
--
ALTER TABLE `add_info`
  MODIFY `add_id` int(60) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `advert`
--
ALTER TABLE `advert`
  MODIFY `advert_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `alert_id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `audios`
--
ALTER TABLE `audios`
  MODIFY `audio_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branch_id` int(40) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dialog`
--
ALTER TABLE `dialog`
  MODIFY `dialog_id` int(70) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `executives`
--
ALTER TABLE `executives`
  MODIFY `ex_id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `footer_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `free_audio`
--
ALTER TABLE `free_audio`
  MODIFY `audio_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `free_lecture`
--
ALTER TABLE `free_lecture`
  MODIFY `lecture_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `free_pdf`
--
ALTER TABLE `free_pdf`
  MODIFY `pdf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `free_videos`
--
ALTER TABLE `free_videos`
  MODIFY `video_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `hadith`
--
ALTER TABLE `hadith`
  MODIFY `hadith_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lecture`
--
ALTER TABLE `lecture`
  MODIFY `lecture_id` int(70) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `m_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messaging`
--
ALTER TABLE `messaging`
  MODIFY `message_id` int(70) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(70) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `not_id` int(60) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `pdf`
--
ALTER TABLE `pdf`
  MODIFY `pdf_id` int(90) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `reminder_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sent_items`
--
ALTER TABLE `sent_items`
  MODIFY `si_id` int(70) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `session_id` int(23) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `surgestion`
--
ALTER TABLE `surgestion`
  MODIFY `surgestion_id` int(70) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `talk`
--
ALTER TABLE `talk`
  MODIFY `talk_id` int(70) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `testimony`
--
ALTER TABLE `testimony`
  MODIFY `testimony_id` int(70) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `title_id` int(40) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `vidoes`
--
ALTER TABLE `vidoes`
  MODIFY `video_id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `welcome_note`
--
ALTER TABLE `welcome_note`
  MODIFY `content_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
