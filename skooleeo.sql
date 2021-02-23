-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 03:32 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skooleeo`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(10) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `viewcount` int(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `author` varchar(256) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `title`, `description`, `viewcount`, `text`, `author`, `date`) VALUES
(1, 'Man must explore, and this is exploration at its greatest', 'Problems look mighty small from 150 miles up', 0, 'Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center — an equal earth which all men occupy as equals. The airman\'s earth, if free men make it, will be truly round: a globe in practice, not in theory.\r\n\r\nScience cuts two ways, of course; its products can be used for both good and evil. But there\'s no turning back from science. The early warnings about technological dangers also come from science.\r\n\r\nWhat was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.\r\n\r\nA Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That\'s how I felt seeing the Earth for the first time. I could not help but love and cherish her.\r\n\r\nFor those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those which divide us.', 'Kisame Holmes', '2021-02-23'),
(2, 'Lorem Ipsum', 'the words of my father', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac sapien vehicula, porttitor diam ut, maximus nulla. Maecenas et diam eu neque venenatis maximus et eu turpis. Aliquam ac tellus semper, aliquam ante sed, pretium neque. Vestibulum pulvinar euismod tellus non consequat. Suspendisse sit amet lorem ut orci vestibulum iaculis vitae in leo. Curabitur luctus elementum nibh, eu fringilla arcu. Nunc quis feugiat sapien. Praesent feugiat porta magna, et feugiat lectus tempus at. Nulla diam leo, sodales et gravida eget, feugiat id ante. Quisque diam mi, ornare eget placerat a, scelerisque scelerisque tellus. Nunc egestas vel mi at semper. Praesent vel magna diam. Donec et lorem congue, vehicula orci vel, lacinia purus. Donec molestie odio sem, id vehicula nunc accumsan vitae. Donec eu mauris sed sapien pharetra finibus id at orci.\r\n\r\nMaecenas urna turpis, tempus dignissim egestas ut, aliquam varius felis. Vivamus finibus tristique erat, at hendrerit lorem scelerisque ut. Suspendisse porttitor magna eget ex consequat molestie. Integer placerat lorem orci, congue lacinia nisl ultrices in. Proin eget laoreet diam. Phasellus et commodo ipsum, id hendrerit lectus. Pellentesque justo turpis, euismod id tristique sed, lobortis eu nisi. Fusce odio elit, dignissim sed sem et, mollis pulvinar lectus. Aliquam pellentesque cursus eros, ac euismod turpis efficitur eu. Donec consectetur arcu nulla, eu lobortis ex interdum ac.\r\n\r\nSed rhoncus libero a turpis egestas, at venenatis ex euismod. Suspendisse nunc velit, molestie in pharetra ut, sollicitudin sit amet risus. Duis ornare nunc non mi maximus, id facilisis risus maximus. In viverra augue blandit justo aliquam, at fringilla lectus auctor. Fusce ut dolor metus. Suspendisse finibus auctor odio, et fermentum nisl accumsan eget. Nulla facilisi.\r\n\r\nEtiam semper massa fringilla, iaculis mi sed, laoreet lorem. Fusce ultricies nisi vitae leo suscipit, in ultrices ligula suscipit. Nullam auctor sem a ex convallis, in euismod leo tempor. Aliquam nec nisl sed libero semper ullamcorper vel sed leo. Phasellus ac pretium quam. Integer quis auctor turpis. Pellentesque lobortis orci vitae ultricies tristique. Donec suscipit felis et turpis fermentum finibus.\r\n\r\nDonec pharetra ligula vel ante iaculis, nec ultricies nulla egestas. Sed mattis, erat vitae mattis fermentum, elit turpis tincidunt massa, eu pellentesque felis leo vel massa. Vestibulum pellentesque, felis vitae rhoncus sodales, orci lectus consectetur sem, quis pharetra ligula leo vitae velit. Donec ut sollicitudin velit. Pellentesque tincidunt, mi et ornare lobortis, mauris quam tincidunt nibh, nec tempor lectus augue vitae purus. Morbi iaculis, ex vitae suscipit blandit, justo velit tincidunt dolor, sed fermentum lacus erat ac augue. Cras ac vulputate ex. Phasellus auctor nisl ante, vel tempus elit tempor sit amet. Nullam vitae nibh in velit egestas ultricies. Cras hendrerit congue rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Kisame Holmes', '2021-02-23'),
(3, 'Lorem', 'the words f my Father', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac sapien vehicula, porttitor diam ut, maximus nulla. Maecenas et diam eu neque venenatis maximus et eu turpis. Aliquam ac tellus semper, aliquam ante sed, pretium neque. Vestibulum pulvinar euismod tellus non consequat. Suspendisse sit amet lorem ut orci vestibulum iaculis vitae in leo. Curabitur luctus elementum nibh, eu fringilla arcu. Nunc quis feugiat sapien. Praesent feugiat porta magna, et feugiat lectus tempus at. Nulla diam leo, sodales et gravida eget, feugiat id ante. Quisque diam mi, ornare eget placerat a, scelerisque scelerisque tellus. Nunc egestas vel mi at semper. Praesent vel magna diam. Donec et lorem congue, vehicula orci vel, lacinia purus. Donec molestie odio sem, id vehicula nunc accumsan vitae. Donec eu mauris sed sapien pharetra finibus id at orci.\r\n\r\nMaecenas urna turpis, tempus dignissim egestas ut, aliquam varius felis. Vivamus finibus tristique erat, at hendrerit lorem scelerisque ut. Suspendisse porttitor magna eget ex consequat molestie. Integer placerat lorem orci, congue lacinia nisl ultrices in. Proin eget laoreet diam. Phasellus et commodo ipsum, id hendrerit lectus. Pellentesque justo turpis, euismod id tristique sed, lobortis eu nisi. Fusce odio elit, dignissim sed sem et, mollis pulvinar lectus. Aliquam pellentesque cursus eros, ac euismod turpis efficitur eu. Donec consectetur arcu nulla, eu lobortis ex interdum ac.\r\n\r\nSed rhoncus libero a turpis egestas, at venenatis ex euismod. Suspendisse nunc velit, molestie in pharetra ut, sollicitudin sit amet risus. Duis ornare nunc non mi maximus, id facilisis risus maximus. In viverra augue blandit justo aliquam, at fringilla lectus auctor. Fusce ut dolor metus. Suspendisse finibus auctor odio, et fermentum nisl accumsan eget. Nulla facilisi.\r\n\r\nEtiam semper massa fringilla, iaculis mi sed, laoreet lorem. Fusce ultricies nisi vitae leo suscipit, in ultrices ligula suscipit. Nullam auctor sem a ex convallis, in euismod leo tempor. Aliquam nec nisl sed libero semper ullamcorper vel sed leo. Phasellus ac pretium quam. Integer quis auctor turpis. Pellentesque lobortis orci vitae ultricies tristique. Donec suscipit felis et turpis fermentum finibus.\r\n\r\nDonec pharetra ligula vel ante iaculis, nec ultricies nulla egestas. Sed mattis, erat vitae mattis fermentum, elit turpis tincidunt massa, eu pellentesque felis leo vel massa. Vestibulum pellentesque, felis vitae rhoncus sodales, orci lectus consectetur sem, quis pharetra ligula leo vitae velit. Donec ut sollicitudin velit. Pellentesque tincidunt, mi et ornare lobortis, mauris quam tincidunt nibh, nec tempor lectus augue vitae purus. Morbi iaculis, ex vitae suscipit blandit, justo velit tincidunt dolor, sed fermentum lacus erat ac augue. Cras ac vulputate ex. Phasellus auctor nisl ante, vel tempus elit tempor sit amet. Nullam vitae nibh in velit egestas ultricies. Cras hendrerit congue rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Kisame Holmes', '2021-02-23'),
(4, 'Ipsum', 'the words f my Father', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac sapien vehicula, porttitor diam ut, maximus nulla. Maecenas et diam eu neque venenatis maximus et eu turpis. Aliquam ac tellus semper, aliquam ante sed, pretium neque. Vestibulum pulvinar euismod tellus non consequat. Suspendisse sit amet lorem ut orci vestibulum iaculis vitae in leo. Curabitur luctus elementum nibh, eu fringilla arcu. Nunc quis feugiat sapien. Praesent feugiat porta magna, et feugiat lectus tempus at. Nulla diam leo, sodales et gravida eget, feugiat id ante. Quisque diam mi, ornare eget placerat a, scelerisque scelerisque tellus. Nunc egestas vel mi at semper. Praesent vel magna diam. Donec et lorem congue, vehicula orci vel, lacinia purus. Donec molestie odio sem, id vehicula nunc accumsan vitae. Donec eu mauris sed sapien pharetra finibus id at orci.\r\n\r\nMaecenas urna turpis, tempus dignissim egestas ut, aliquam varius felis. Vivamus finibus tristique erat, at hendrerit lorem scelerisque ut. Suspendisse porttitor magna eget ex consequat molestie. Integer placerat lorem orci, congue lacinia nisl ultrices in. Proin eget laoreet diam. Phasellus et commodo ipsum, id hendrerit lectus. Pellentesque justo turpis, euismod id tristique sed, lobortis eu nisi. Fusce odio elit, dignissim sed sem et, mollis pulvinar lectus. Aliquam pellentesque cursus eros, ac euismod turpis efficitur eu. Donec consectetur arcu nulla, eu lobortis ex interdum ac.\r\n\r\nSed rhoncus libero a turpis egestas, at venenatis ex euismod. Suspendisse nunc velit, molestie in pharetra ut, sollicitudin sit amet risus. Duis ornare nunc non mi maximus, id facilisis risus maximus. In viverra augue blandit justo aliquam, at fringilla lectus auctor. Fusce ut dolor metus. Suspendisse finibus auctor odio, et fermentum nisl accumsan eget. Nulla facilisi.\r\n\r\nEtiam semper massa fringilla, iaculis mi sed, laoreet lorem. Fusce ultricies nisi vitae leo suscipit, in ultrices ligula suscipit. Nullam auctor sem a ex convallis, in euismod leo tempor. Aliquam nec nisl sed libero semper ullamcorper vel sed leo. Phasellus ac pretium quam. Integer quis auctor turpis. Pellentesque lobortis orci vitae ultricies tristique. Donec suscipit felis et turpis fermentum finibus.\r\n\r\nDonec pharetra ligula vel ante iaculis, nec ultricies nulla egestas. Sed mattis, erat vitae mattis fermentum, elit turpis tincidunt massa, eu pellentesque felis leo vel massa. Vestibulum pellentesque, felis vitae rhoncus sodales, orci lectus consectetur sem, quis pharetra ligula leo vitae velit. Donec ut sollicitudin velit. Pellentesque tincidunt, mi et ornare lobortis, mauris quam tincidunt nibh, nec tempor lectus augue vitae purus. Morbi iaculis, ex vitae suscipit blandit, justo velit tincidunt dolor, sed fermentum lacus erat ac augue. Cras ac vulputate ex. Phasellus auctor nisl ante, vel tempus elit tempor sit amet. Nullam vitae nibh in velit egestas ultricies. Cras hendrerit congue rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Kisame Holmes', '2021-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `s/n` int(10) NOT NULL,
  `email` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`s/n`, `email`, `username`, `password`) VALUES
(1, 'adesinak4@gmail.com', 'Kisame Holmes', '$2y$10$AWUbAP9oCW05sREm.A2mFeb9m8vaWc/pu6DepIMpTimb1qn3KjeCW'),
(2, 'awesomeuser@gmail.com', 'user6', '$2y$10$jIpNFyLAFb/O2SoKzQQoWOqcunK5WsxQXggYTH5Qql4bHjOKSdH32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`s/n`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `s/n` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
