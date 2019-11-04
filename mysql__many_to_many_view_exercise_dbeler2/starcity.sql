-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2019 at 01:41 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starcity`
--

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE `attraction` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`id`, `name`) VALUES
(1, 'ferris wheel'),
(2, 'bumper cars'),
(3, 'water sled'),
(4, 'carousel'),
(5, 'star flyer'),
(6, 'star frisbee');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `initial` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `lname`, `fname`, `initial`, `age`, `address`, `type`, `ticket_id`, `payment_id`) VALUES
(1, 'Mayville', 'Thomas', 'P', 30, '2099 Bailey Drive Danville, IA 52623', 'Regular', 1, 1),
(2, 'Robinson', 'Elijah', 'L', 40, '1168 Woodridge Lane Memphis, TN 38111', 'Regular', 2, 2),
(3, 'Gardner', 'Louis', 'R', 20, '1999 Jefferson Street Newport News, VA 23601', 'Regular', 3, 3),
(4, 'Lapp', 'Kirsten', 'K', 29, '65 Worley Avenue Farmville, VA 23901', 'Regular', 4, 4),
(5, 'Snow', 'Terrence', 'A', 34, '3417 Hill Croft Farm Road Sacramento, CA 9581', 'Regular', 5, 5),
(6, 'Everly', 'Edna', 'H', 50, '1927 Jett Lane Hawthorne, CA 90250', 'VIP', 6, 6),
(7, 'Word', 'Jimmie', 'E', 45, '1355 University Hill Road Bloomington, IL 617', 'VIP', 7, 7),
(8, 'Wilkes', 'Vickie', 'T', 32, '85 Harvest Lane Speed, MO 65233', 'VIP', 8, 8),
(9, 'Correa', 'Patricia', 'E', 29, '817 Walnut Hill Drive Cincinnati, OH 45227', 'VIP', 9, 9),
(10, 'Moyle', 'Gordon', 'L', 27, '4869 Ashwood Drive Sloan, IA 51055', 'VIP', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `deptname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `deptname`) VALUES
(1, 'Accounting'),
(2, 'HR'),
(3, 'Logistics'),
(4, 'Marketing'),
(5, 'Operations');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `initial` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `salary` int(11) NOT NULL,
  `bdate` int(11) NOT NULL,
  `deptid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `lname`, `fname`, `initial`, `address`, `salary`, `bdate`, `deptid`) VALUES
(1, 'Eler', 'Daniel', 'B', 'street1 lot1 city1 state1', 45000, 9151999, 1),
(2, 'Dionisio', 'Yobhel', 'V', 'street2 lot2 city2 state2', 30000, 12252000, 1),
(3, 'Johnston', 'Jenny', 'J', '995 Bassell Avenue Benton, AR 72015', 20000, 10211999, 2),
(4, 'Cameron', 'Victoria', 'G', '4939 Cambridge Court Clarksville, AR 72830', 25000, 12101984, 2),
(5, 'Gros', 'Sanda', 'F', '3329 Hanover Street New York, NY 10016', 30000, 7191971, 3),
(6, 'Gamble', 'Mike', 'M', '1192 Burke Street Foxboro, MA 02035', 30000, 11061944, 3),
(7, 'Perkins', 'Mary', 'J', '2759 Creekside Lane Thousand Oaks, CA 91362', 30000, 12121983, 4),
(8, 'Underwood', 'Marlon', 'L', '53 Locust Street Albany, GA 31701', 35000, 6131975, 4),
(9, 'Kelly', 'Lindsay', 'K', '1899 Scheuvront Drive Denver, CO 80202', 30000, 9141994, 5),
(10, 'Washington', 'Loretta', 'R', '3850 Lyon Avenue Marlboro, MA 01752', 40000, 11301985, 5);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_info`
-- (See below for the actual view)
--
CREATE TABLE `employee_info` (
`fname` varchar(45)
,`initial` varchar(45)
,`lname` varchar(45)
,`salary` int(11)
,`deptid` int(11)
,`deptname` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `type`, `description`) VALUES
(1, 1, 'Regular'),
(2, 1, 'Regular'),
(3, 1, 'Regular'),
(4, 1, 'Regular'),
(5, 1, 'Regular'),
(6, 2, 'VIP'),
(7, 2, 'VIP'),
(8, 2, 'VIP'),
(9, 2, 'VIP'),
(10, 2, 'VIP');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_sales`
--

CREATE TABLE `ticket_sales` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_sales`
--

INSERT INTO `ticket_sales` (`id`, `date`, `ticket_id`, `employee_id`) VALUES
(1, 9152020, 1, 9),
(2, 9152020, 2, 9),
(3, 9152020, 3, 9),
(4, 9152020, 4, 10),
(5, 10252020, 5, 9),
(6, 10252020, 6, 9),
(7, 10252020, 7, 10),
(8, 2062020, 8, 10),
(9, 2062020, 9, 10),
(10, 2062020, 10, 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ticket_sales_view`
-- (See below for the actual view)
--
CREATE TABLE `ticket_sales_view` (
`id` int(11)
,`date` int(11)
,`ticket_number` int(11)
,`description` varchar(45)
,`employee_fname` varchar(45)
,`employee_lname` varchar(45)
);

-- --------------------------------------------------------

--
-- Structure for view `employee_info`
--
DROP TABLE IF EXISTS `employee_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_info`  AS  select `employee`.`fname` AS `fname`,`employee`.`initial` AS `initial`,`employee`.`lname` AS `lname`,`employee`.`salary` AS `salary`,`employee`.`deptid` AS `deptid`,`department`.`deptname` AS `deptname` from (`employee` left join `department` on((`employee`.`deptid` = `department`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `ticket_sales_view`
--
DROP TABLE IF EXISTS `ticket_sales_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ticket_sales_view`  AS  select `ticket_sales`.`id` AS `id`,`ticket_sales`.`date` AS `date`,`ticket`.`id` AS `ticket_number`,`ticket`.`description` AS `description`,`employee`.`fname` AS `employee_fname`,`employee`.`lname` AS `employee_lname` from ((`ticket_sales` join `ticket` on((`ticket_sales`.`id` = `ticket`.`id`))) join `employee` on((`ticket_sales`.`employee_id` = `employee`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attraction`
--
ALTER TABLE `attraction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_sales`
--
ALTER TABLE `ticket_sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attraction`
--
ALTER TABLE `attraction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ticket_sales`
--
ALTER TABLE `ticket_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
