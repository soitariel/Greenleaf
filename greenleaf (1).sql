-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 07:12 PM
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
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `year` int(12) NOT NULL,
  `purchase` int(12) NOT NULL,
  `sale` int(12) NOT NULL,
  `profit` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `year`, `purchase`, `sale`, `profit`) VALUES
(1, 2008, 1000, 1050, 50),
(2, 2009, 2000, 4500, 2500),
(3, 2010, 3000, 7500, 4500),
(4, 2011, 3000, 8500, 5000),
(5, 2012, 6500, 12000, 5500),
(6, 2013, 7000, 13000, 6000),
(7, 2014, 7200, 14000, 6600),
(8, 2015, 8000, 15000, 7000),
(9, 2016, 8000, 15000, 7000),
(10, 2017, 9000, 17000, 8000),
(11, 2018, 12000, 8000, 4000),
(12, 2019, 9000, 4000, 5000);

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
(27, '::1', 1),
(35, '::1', 1),
(38, '::1', 1);

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
  `farmer_id` int(50) NOT NULL AUTO_INCREMENT,
  `Email_Id` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`farmer_id`, `Email_Id`, `password`) VALUES
(1, 'fam@gmail.com', '10'),
(4, 'kibetdonald@gmail.co', '11'),
(6, 'kipp@gmail.com', 'e00406144c1e7e35240afed70f34166a'),
(7, 'fam@outlook.com', '28dd2c7955ce926456240b2ff0100bde');

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
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prd_id`, `prd_cat`, `prd_brand`, `prd_title`, `prd_price`, `prd_desc`, `prd_img`, `prd_keyword`) VALUES
(18, 2, 5, 'Palm Tree', 5000, '85mm 3.3'' Waterproof Speedometer Gauge Car High Beam & Light Turnning 120KM/H', 'king-palm-tree-archontophoenix-alexandrae-10-01-b-realpalmtrees.com.jpg', 'Palm Tree'),
(27, 3, 5, 'Gravelia', 50, 'Scientific Name:	Taxodium mucronatum\r\nCommon Name:	Montezuma Cypress\r\nPlant Type:	Deciduous\r\nHardiness Zone:	6, 7, 8, 9, 10 Determine Your Zone\r\nHeight:	30-50 feet\r\nSpread:	20- 30 feet\r\nFruit present:	Fall, Winter\r\nLight Exposure:	Sun\r\nDrainage:	Well drained, Moist, Dry\r\nRate of Growth:	Fast\r\nWater Requirement:	Medium\r\nMaintenance Level:	Low\r\nSusceptible to insects\r\nand diseases:	No\r\nComments:	This cypress grows mostly in very dry soils, not in the wet soils that the bald cypress will grow in. This cypress does not produce knees like the bald cypress. Needle drop is very late in the fall. This tree is a faster growing species than the bald cypress. This tree is worthy of much more use in upland landscapes.\r\n', 'potted-basil.jpg', 'Gravelia'),
(35, 4, 3, 'Grafted Purple passion', 120, 'Grafted purple passion are pest and disease resistant. They have a long lifespan of more than 6 years.They have a short maturity period of 8 months unlike the ungrafted ones. ', 'Grafted Purple passion.jpg', 'Passion'),
(36, 4, 3, 'Coconut', 120, 'Evergreen Broadleaf Perennial ; 2- 5 feet in height ; with a spread of 3 -5 feet ; blooms in Spring, Summer, Fall with Orange flowers ; grows in Sun, Part Sun, Filtered Shade', 'Coconut.jpg', 'Cocunut'),
(37, 3, 4, 'Bamboo', 80, 'Deciduous Broadleaf Shrub ; 2- 5 feet in height ; with a spread of 3 -5 feet ; blooms in Spring with Yellow flowers ; grows in Part Sun, Filtered Shade, Shade, Morning sun', 'Bamboo seedlings.jpg', 'Bamboo'),
(38, 4, 3, 'Brazilian Cherry', 200, 'The Brazilian cherry tree (Eugenia uniflora) is a member of the Myrtaceae family and is related to guava, mountain apple, jaboticaba and other Eugenia members. This shrub, often referred to as a tree, is also more commonly known as Surinam cherry or Florida cherry, due to the naturalization of the shrub throughout the state.\r\n\r\nRead more at Gardening Know How: Brazilian Cherry Tree Information: Learn About Growing Brazilian Cherry Trees https://www.gardeningknowhow.com/edible/fruits/brazilian-cherry-tree/brazilian-cherry-tree-information.htm', 'Brazilian Cherry.jpg', 'Cherry'),
(39, 4, 3, 'Arrow root', 50, ' 1-2 feet in height ; with a spread of 1-2 feet ; blooms in Summer with Blue flowers ; Spring, Summer fruit ; grows in Sun', 'Arrow root.jpg', 'Arrow root'),
(40, 3, 4, 'Cypress', 20, 'Deciduous Tree ; 30-50 feet in height ; with a spread of 20- 30 feet ; Fall, Winter fruit ; grows in Sun', 'Cypress.jpg', 'Cypress'),
(41, 4, 3, 'Grafted Mango', 250, 'is a deep-rooted, evergreen plant which can develop into huge trees, especially on deep soils. The height and shape varies considerably among seedlings and cultivars. Under optimum climatic conditions, the trees are erect and fast growing and the canopy can either be broad and rounded or more upright. Seedling trees can reach more than 20 m in height while grafted ones are usually half that size.\r\nMango is one of the most important fruit crops in the tropical and subtropical lowlands.', 'Grafted Mango.jpg', 'Mango'),
(42, 2, 5, 'Rosemary Herb', 100, 'Perfect For Decorating The Garden Or Accessorizing The Home; Indoor/Outdoor Use\r\nArtificial Herb Plant In Aged Terracotta Pot 4.2" X 4.2" X 9.6"\r\nTrue-To-Life Artificial Herb Plant In Hand-Crafted Aged Terracotta Pot\r\nNo Assembly Required', 'herb.jpg', 'Rosemary'),
(43, 4, 4, 'Tomato', 40, 'Although it looks much like a medium-sized tomato, the tree tomato is not a true tomato. Tasting somewhat like a tomato, it is usually eaten with sugar or boiled to make a popular and refreshing drink.\r\n\r\nDescription: An extremely fast growing shrub to 20ft. Flowers are self-pollinating, and tree tomatoes may bear from seed in just over a year.\r\n\r\nHardiness: Although it does better in climates where the temperature stays above 50F, the tree tomato is subtropical and will bear fruit in cooler climates. Hardy to 25F.', 'tomato.jpg', 'Tomato'),
(44, 4, 4, 'Tomato', 40, 'Zara F1 is a strong vigorous hybrid variety with good foliages cover for greenhouses and in open field production, with high yielding, long shelf life and it the best tomato plants that are most tolerant of bacterial wilt.', 'tomato.jpg', 'Tomato'),
(45, 4, 3, 'Melon', 20, 'produce sweetly flavored watermelons with deep red flesh with small seeds. Fruits are best when eaten fresh. Melons weight 20-25 pounds! They do require a bit of room to grow as the vines will spread 10-12-feet.\r\n\r\n', 'Melon.jpg', 'Melon'),
(46, 4, 3, 'Strawberries', 60, 'We are selling chandler strawberry seedlings. The seedlings are healthy and disease free. The farm where the seedlings have been propagated from is available for viewing. \r\nThe farm is in  the neighbourhood of thika town. Each seedling going for kshs.50. Large quantities available.', 'Strawberries.jpg', 'Strawberries'),
(47, 4, 3, 'Hass Ovacado', 250, 'The Hass avocado season runs from June to mid â€“ September with other varieties like Fuerte avocado starting a little earlier in March/April.\r\n\r\nThe nursery imports its Hass shoots from South Africa and grafts them with locally available indigenous avocado seedlings for root stock. The hass avocado scions are imported on a monthly basis and kept under specific conditions.', 'Hass Ovacado.jpg', 'Ovacado'),
(48, 4, 3, 'Banana', 50, 'The bananaâ€™s (Musa acuminata) origins go back to the ancient eras prior to the first cultivation of rice. Even though the banana was first found in Africa, it was also believed to be growing in East Asia. Interestingly, enough, the bananas our ancestors ate werenâ€™t the sweet yellow bananas that we know and love today, but the red and green bananas that we use for cooking. It wasnâ€™t until the early 1800s, that a man by the name of Jean Francois Poujot discovered this sweeter â€œmutant strandâ€ of banana, and it quickly became a hit.', 'banana.jpg', 'banana'),
(49, 4, 3, 'Pitango', 30, 'Pitango is a shrub that grows in semi-tropical climates. Also known as Surinam cherry, it produces a red fruit with a sweet yet tangy flavor.', 'pitango.jpg', 'pitango'),
(50, 4, 4, 'Apple', 80, 'The apple is the pomaceous fruit of the apple tree, species Malus domestica in the rose family (Rosaceae). It is one of the most widely cultivated tree fruits, and the most widely known of the many members of genus Malus that are used by humans. Apples grow on small, deciduous trees.\r\n\r\nDomestic apples are generally propagated by grafting, although wild apples grow readily from seed. Trees are prone to a number of fungal, bacterial and pest problems, which can be controlled by a number of organic and non-organic means.', 'Apple.jpg', 'apple');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`customer_id`, `firstname`, `lastname`, `gender`, `contact_no`, `Email_id`, `password`) VALUES
(1, 'Donald', 'Kibet', 'male', '0703959145', 'kibetdonald@gmail.com', '1234'),
(2, 'Donald', 'Kibet', 'Male', '0703959145', 'kibetdonald97@gmail.com', '1234'),
(44, 'Raymond', 'Reddington', 'Male', '07101011000', 'reddington@gmail.com', '111');

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
