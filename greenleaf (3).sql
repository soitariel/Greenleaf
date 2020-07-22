-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2019 at 11:06 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `greenleaf`
--
CREATE DATABASE IF NOT EXISTS `greenleaf` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `greenleaf`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(50) NOT NULL AUTO_INCREMENT,
  `Email_Id` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `Email_Id`, `password`) VALUES
(1, 'Admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Rose'),
(2, 'Flower'),
(3, 'Fruit'),
(4, 'Yes'),
(5, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(20) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(14, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'FLOWERS'),
(2, 'HERBS'),
(3, 'TREES'),
(4, 'FRUITS');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `County` varchar(50) NOT NULL,
  `Subject` varchar(300) NOT NULL,
  `Message` varchar(255) NOT NULL,
  `Contacts` int(10) NOT NULL,
  PRIMARY KEY (`Subject`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`FirstName`, `LastName`, `County`, `Subject`, `Message`, `Contacts`) VALUES
('mbuvi', 'tom', 'Mombasa', 'cat', 'not clear', 703523),
('susan', 'monicah', 'Nairobi', 'login', 'good and easy', 78976543),
('Donald', 'Kibet', 'Uasin Gishu', 'Order', 'Did not get my shipment', 2147483647),
('Truth', '.Com', 'Uasin Gishu', 'Shipment', 'RECEIVED', 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
  `delivery_id` int(20) NOT NULL,
  `delivery_status` varchar(20) NOT NULL,
  `delivery_date` date NOT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE IF NOT EXISTS `farmer` (
  `admin_id` int(50) NOT NULL AUTO_INCREMENT,
  `Email_Id` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`admin_id`, `Email_Id`, `password`) VALUES
(1, 'fam@gmail.com', '10');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `Order_id` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(15) DEFAULT NULL,
  `LastName` varchar(15) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `County` varchar(20) NOT NULL,
  `Town` varchar(20) NOT NULL,
  `contactNo` varchar(11) DEFAULT NULL,
  `ExpirationDate` varchar(20) DEFAULT NULL,
  `Address` int(10) NOT NULL,
  `Cardname` varchar(30) NOT NULL,
  `Cardnumber` varchar(14) NOT NULL,
  PRIMARY KEY (`Order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1016 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_id`, `FirstName`, `LastName`, `Email`, `County`, `Town`, `contactNo`, `ExpirationDate`, `Address`, `Cardname`, `Cardnumber`) VALUES
(1005, 'POZZ', 'mbuvi', '16g01abt01@anu.ac.ke', 'Makueni', 'Matuu', '987', '01/2017', 78, '', '0'),
(1006, 'fff', 'dgg', '16g01ab001@anu.ac.ke', 'Tana', 'Eldoret', '45', '02/2017', 6, '', '0'),
(1007, 'mbuvi', 'pat', 'pat1@anu.ac.ke', 'Nakuru', 'Malindi', '3455', '09/2018', 98, '', '0'),
(1008, 'pffd', 'ddf', '16g01abt1@anu.ac.ke', 'Nakuru', 'Malindi', '2543', '02/2017', 9, 'jhdy', '0'),
(1009, 'paul', 'mbuvi', '16g01abt001@anu.ac.ke', 'Nakuru', 'Malindi', '88877', 'Month/Year', 67, 'jhdy', '776'),
(1010, 'tom', 'joy', '16g01ab@anu.ac.ke', 'Kisumu', 'Rongai', '095743', '12/2018', 8, 'tom joy', '1234557789'),
(1011, 'Donald', 'Kibet', 'kibetdonald97@gmail.com', 'Nakuru', 'Malindi', '0703959145', '02/2021', 0, 'visa', '0'),
(1012, 'Truth', 'Kibet', 'donald97@gmail.com', 'Nakuru', 'Malindi', '070395914', '08/2023', 123, 'visa', ''),
(1013, 'Shiku', 'Doreen', 'shikudoreen@gmail.com', 'Uasin Gishu', 'Eldoret', '0790369852', '02/2025', 89999, 'Mpesa', ''),
(1014, 'Shiku', 'Doreen', 'shikudoreen@gmail.com', 'Nakuru', 'Malindi', '0790369852', '02/2025', 455, 'Mpesa', ''),
(1015, 'Paulyne', 'Alayne', 'alayne@gmail.com', 'Mombasa', 'Malindi', '071458963', '04/2025', 5555, 'Smart', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `prd_id` int(100) NOT NULL AUTO_INCREMENT,
  `prd_cat` int(100) NOT NULL,
  `prd_brand` int(100) NOT NULL,
  `prd_title` varchar(255) NOT NULL,
  `prd_price` int(100) NOT NULL,
  `prd_desc` text NOT NULL,
  `prd_img` text NOT NULL,
  `prd_keyword` text NOT NULL,
  PRIMARY KEY (`prd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prd_id`, `prd_cat`, `prd_brand`, `prd_title`, `prd_price`, `prd_desc`, `prd_img`, `prd_keyword`) VALUES
(14, 5, 5, 'Flowers', 6500, 'Losi 1/5 5ive-T * 29cc HI-PERFORMANCE 2 CYCLE GAS DYNAMITE ENGINE * Oil High', 'garden-piano.jpg', 'Flowers '),
(15, 2, 7, 'Garden-peach-vuvuzela', 3800, 'NMRV040 Worm Gearbox Worm Gear Reducer NEMA34 Speed Ratio 10:1 for Stepper Motor', 'Garden-peach-vuvuzela.jpg', 'gearbox'),
(16, 4, 7, 'Rose-pastel-h3o', 4800, 'Matte black with red TRD logo on center cap. Toyota Tacoma, 4Runner, & FJ Cruiser. 2007-2015 FJ Cruiser', 'rose-pastel-h3o.jpg', 'Rose-pastel-h3o'),
(18, 2, 5, 'Palm Tree', 5000, '85mm 3.3'' Waterproof Speedometer Gauge Car High Beam & Light Turnning 120KM/H', 'king-palm-tree-archontophoenix-alexandrae-10-01-b-realpalmtrees.com.jpg', 'Palm Tree'),
(19, 2, 8, 'home-plant', 6999, '350mm 14" 6 Hole Leather Black Corsica Deep Dish Modified Racing Steering Wheel', 'home-plant.png', 'Home-plant'),
(20, 1, 2, 'white-azalea', 3895, 'Auto Tilt Driver Assistance package for Audi A3, S3 and RS3', 'white-azalea.jpg', 'White-azalea'),
(21, 2, 1, 'pastel-babyface', 33990, 'PIONEER DEH-S6000BS CD MP3 USB BLUETOOTH CAR STEREO RADIO SIRIUS XM READY NEW ', 'pastel-babyface.jpg', 'pastel-babyface'),
(24, 4, 2, 'bush-of-azalea-flowers', 2000, 'bush-of-azalea-flowers', 'bush-of-azalea-flowers.jpg', 'bush-of-azalea-flowers'),
(26, 4, 3, 'Grafted Ovacado', 450, 'It is a grafted Ovacado , 4 inches high.', 'king-palm-tree-archontophoenix-alexandrae-10-01-b-realpalmtrees.com.jpg', 'Ovacado'),
(27, 3, 5, 'Gravelia', 50, 'Its an indigenous tree.', 'potted-basil.jpg', 'Gravelia'),
(28, 3, 4, 'Cypress', 550, 'HAHAHAHAHAHAHA', 'cerise-vuvuzela.jpg', 'Cypress'),
(29, 2, 1, 'hcxvx', 77, 'hfhfufuefh', 'hqdefault.jpg', 'jj'),
(30, 3, 4, 'Blue Gum', 100, 'A 5 inch tree.', 'home-plant.png', 'Blue Gum'),
(31, 4, 3, 'Orange', 2000, 'Orange is  a 4 inches grafted fruit with a life span of 4 years before maturity. ', 'Donald.png', 'Orange'),
(32, 1, 3, 'lyon', 1200, 'Ni Fifa 19', 'Screenshot (24).png', 'Orange'),
(33, 1, 1, 'Haha', 110, 'Haiii', 'pastel-babyface.jpg', 'jj');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `ContactNo` int(100) NOT NULL,
  `EmailId` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`user_id`, `FirstName`, `LastName`, `Gender`, `ContactNo`, `EmailId`, `Password`) VALUES
(46, 'paul', 'mbuvi', 'male', 234567, '16g01abt001@anu.ac.ke', 'e10adc3949ba59abbe56e057f20f883e'),
(47, 'DFHH', 'FDD', 'female', 56789954, '16g01abt01@anu.ac.ke', 'c33367701511b4f6020ec61ded352059'),
(48, 'mbuvi', 'patrick', 'male', 123454, 'pat1@anu.ac.ke', 'a8698009bce6d1b8c2128eddefc25aad'),
(49, 'albanus ', 'mutua', 'male', 987764678, '16g01abt011@anu.ac.ke', '25d55ad283aa400af464c76d713c07ad'),
(51, 'mbuvi', 'pozz', 'male', 45326, '16g01abt@anu.ac.ke', 'e10adc3949ba59abbe56e057f20f883e'),
(52, 'tom', 'joy', 'male', 133434, '16g01ab@anu.ac.ke', 'e10adc3949ba59abbe56e057f20f883e'),
(53, 'kip', 'kip', 'male', 0, 'kip@gmail.com', '1ae727a3a8cc819aba24c3d8807e4ccb'),
(54, 'kip', 'kip', 'male', 0, 'kip@gmail.com', '1ae727a3a8cc819aba24c3d8807e4ccb'),
(55, 'Donald', 'Kibet', 'male', 703959145, 'kibetdonald97@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(56, 'Ok', 'Ok', 'female', 701058966, 'ki@gmail.com', '68053af2923e00204c3ca7c6a3150cf7');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `customer_id` int(3) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(70) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `gender` varchar(70) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `Email_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`customer_id`, `firstname`, `lastname`, `gender`, `contact_no`, `Email_id`, `password`) VALUES
(1, 'Donald', 'Kibet', 'male', '0703959145', 'kibetdonald@gmail.com', '1234'),
(2, 'Donald', 'Kibet', 'Male', '0703959145', 'kibetdonald97@gmail.com', '1234');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `products` (`prd_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
