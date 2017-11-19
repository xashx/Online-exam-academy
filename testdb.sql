-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2017 at 11:05 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c'),
('5a1157029d16b', '5a115702abbcb'),
('5a115702c426b', '5a115702c697b'),
('5a115702d53dc', '5a115702d7aec');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm'),
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('558510a8a1234', 'sunnygkp10', 'sunnygkp10@gmail.com', 'dl;dsnklfn', 'fmdsfld fdj', '2015-06-20', '09:05:12am'),
('5585509097ae2', 'sunny', 'sunnygkp10@gmail.com', 'kcsncsk', 'l.mdsavn', '2015-06-20', '01:37:52pm'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm'),
('5589858b6c43b', 'nik', 'nik1@gmail.com', 'good', 'good site', '2015-06-23', '06:12:59pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('ash@gmail.com', '5589741f9ed52', 7, 5, 4, 1, '2017-11-19 09:19:42'),
('sunnygkp10@gmail.com', '5a11564905a87', 3, 3, 3, 0, '2017-11-19 10:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', 'usermod', '55892169d2efc'),
('55892169bf6a7', 'useradd', '55892169d2f05'),
('55892169bf6a7', 'useralter', '55892169d2f09'),
('55892169bf6a7', 'groupmod', '55892169d2f0c'),
('5589216a3646e', '751', '5589216a48713'),
('5589216a3646e', '752', '5589216a4871a'),
('5589216a3646e', '754', '5589216a4871f'),
('5589216a3646e', '755', '5589216a48722'),
('558922117fcef', 'echo', '5589221195248'),
('558922117fcef', 'print', '558922119525a'),
('558922117fcef', 'printf', '5589221195265'),
('558922117fcef', 'cout', '5589221195270'),
('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),
('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('558973f4389ac', 'containing root file-system required during bootup', '558973f462e44'),
('558973f4389ac', ' Contains only scripts to be executed during bootup', '558973f462e56'),
('558973f4389ac', ' Contains root-file system and drivers required to be preloaded during bootup', '558973f462e61'),
('558973f4389ac', 'None of the above', '558973f462e6b'),
('558973f4c46f2', 'Kernel', '558973f4d4abe'),
('558973f4c46f2', 'Shell', '558973f4d4acf'),
('558973f4c46f2', 'Commands', '558973f4d4ad9'),
('558973f4c46f2', 'Script', '558973f4d4ae3'),
('558973f51600d', 'Boot Loading', '558973f526f9d'),
('558973f51600d', ' Boot Record', '558973f526fb9'),
('558973f51600d', ' Boot Strapping', '558973f526fc5'),
('558973f51600d', ' Booting', '558973f526fce'),
('558973f55d269', ' Quick boot', '558973f57aef1'),
('558973f55d269', 'Cold boot', '558973f57af07'),
('558973f55d269', ' Hot boot', '558973f57af17'),
('558973f55d269', ' Fast boot', '558973f57af27'),
('558973f5abb1a', 'bash', '558973f5e7623'),
('558973f5abb1a', ' Csh', '558973f5e7636'),
('558973f5abb1a', ' ksh', '558973f5e7640'),
('558973f5abb1a', ' sh', '558973f5e764a'),
('5589751a63091', 'q', '5589751a81bd6'),
('5589751a63091', 'wq', '5589751a81be8'),
('5589751a63091', ' both (a) and (b)', '5589751a81bf4'),
('5589751a63091', ' none of the mentioned', '5589751a81bfd'),
('5589751ad32b8', ' moves screen down one page', '5589751adbdbd'),
('5589751ad32b8', 'moves screen up one page', '5589751adbdce'),
('5589751ad32b8', 'moves screen up one line', '5589751adbdd8'),
('5589751ad32b8', ' moves screen down one line', '5589751adbde2'),
('5589751b304ef', ' yy', '5589751b3b04d'),
('5589751b304ef', 'yw', '5589751b3b05e'),
('5589751b304ef', 'yc', '5589751b3b069'),
('5589751b304ef', ' none of the mentioned', '5589751b3b073'),
('5589751b749c9', 'X', '5589751b9a98c'),
('5589751b749c9', 'x', '5589751b9a9a5'),
('5589751b749c9', 'D', '5589751b9a9b7'),
('5589751b749c9', 'd', '5589751b9a9c9'),
('5589751bd02ec', 'autoindentation is not possible in vi editor', '5589751bdadaa'),
('5a1157029d16b', '2 Only', '5a115702abbcb'),
('5a1157029d16b', '1 and 2', '5a115702abbcb'),
('5a1157029d16b', '1 and 3', '5a115702abbcb'),
('5a1157029d16b', '2 and 3', '5a115702abbcb'),
('5a115702c426b', ' 1, 2 and 4', '5a115702c697b'),
('5a115702c426b', '1 and 2', '5a115702c697b'),
('5a115702c426b', '2 and 3', '5a115702c697b'),
('5a115702c426b', '1 only ', '5a115702c697b'),
('5a115702d53dc', 'True', '5a115702d7aec'),
('5a115702d53dc', 'False', '5a115702d7aec'),
('5a115702d53dc', '', '5a115702d7aec'),
('5a115702d53dc', '', '5a115702d7aec');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),
('558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),
('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
('55897338a6659', '558973f4389ac', 'On Linux, initrd is a file', 4, 1),
('55897338a6659', '558973f4c46f2', 'Which is loaded into memory when system is booted?', 4, 2),
('55897338a6659', '558973f51600d', ' The process of starting up a computer is known as', 4, 3),
('55897338a6659', '558973f55d269', ' Bootstrapping is also known as', 4, 4),
('55897338a6659', '558973f5abb1a', 'The shell used for Single user mode shell is:', 4, 5),
('5589741f9ed52', '5589751a63091', ' Which command is used to close the vi editor?', 4, 1),
('5589741f9ed52', '5589751ad32b8', ' In vi editor, the key combination CTRL+f', 4, 2),
('5589741f9ed52', '5589751b304ef', ' Which vi editor command copies the current line of the file?', 4, 3),
('5589741f9ed52', '5589751b749c9', ' Which command is used to delete the character before the cursor location in vi editor?', 4, 4),
('5589741f9ed52', '5589751bd02ec', ' Which one of the following statement is true?', 4, 5),
('5a11564905a87', '5a1157029d16b', ' Movie Recommendation systems are an example of:\r\n\r\n  1)  Classification\r\n   2) Clustering\r\n 3)   Reinforcement Learning\r\n 4)   Regression\r\n', 4, 1),
('5a11564905a87', '5a115702c426b', ' Sentiment Analysis is an example of:\r\n\r\n 1)   Regression\r\n  2)  Classification\r\n   3) Clustering\r\n   4) Reinforcement Learning\r\n', 4, 2),
('5a11564905a87', '5a115702d53dc', 'Can decision trees be used for performing clustering?', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('558920ff906b8', 'Linux : File Managment', 2, 1, 2, 5, '', 'linux', '2015-06-23 09:03:59'),
('558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2015-06-23 09:06:12'),
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 09:09:03'),
('558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2015-06-23 09:12:12'),
('55897338a6659', 'Linux:startup', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:54:48'),
('5589741f9ed52', 'Linux :vi Editor', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:58:39'),
('5a115473947bb', 'Data Analytics', 1, 0, 20, 20, 'Take data anyalitics test to see where you stand among your friends', '#data#anaytics', '2017-11-19 09:52:51'),
('5a11564905a87', 'Data Analytics Quiz', 1, 0, 3, 10, 'analytics', '#analytics', '2017-11-19 10:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('ash@gmail.com', 7, '2017-11-19 09:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Ashwins', 'M', 'PESIT', 'ash12@gmail.com', 455343543, 'ab56b4d92b40713acc5af89985d4b786'),
('Ashwin', 'M', 'PESIT', 'ash@gmail.com', 76545631156, 'ab56b4d92b40713acc5af89985d4b786');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
