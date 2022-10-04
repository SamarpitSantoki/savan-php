-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 14, 2019 at 07:17 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Woman Fashion', 'details of woman fashion cat', '2019-10-11 08:04:43', NULL),
(8, 'Woman Shoes', 'Woman Shoes details', '2019-10-11 10:07:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 1, '1', 1, '2019-10-11 09:26:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 7, 13, 'B Collection Womens Long Legging - Black', 'Adidass', 1599, 1999, '<div class=\"ajaxProductDetailsPanel\" data-productcode=\"BIGW550519\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: GT-Big-Walsheim-Regular, Montserrat, Helvetica, sans-serif; font-size: 14px;\"><div class=\"ajaxProductDetailsPanel\" data-productcode=\"BIGW550519\" style=\"box-sizing: border-box;\"><div class=\"productDetailsPanel\" itemscope=\"\" itemtype=\"http://schema.org/Product\" style=\"box-sizing: border-box; margin-left: -15px; margin-right: -15px;\"><div class=\"tabAsAccordion\" style=\"box-sizing: border-box; padding: 20px 15px; font-size: 16px; clear: both;\"><div class=\"tab-content\" style=\"box-sizing: border-box; border: 1px solid rgb(204, 204, 204); padding: 40px;\"><div class=\"tab-pane active\" id=\"tab1\" style=\"box-sizing: border-box;\"><div class=\"panel panel-default\" style=\"box-sizing: border-box; border: none; box-shadow: none;\"><div id=\"collapseOne\" class=\"panel-collapse collapse in\" style=\"box-sizing: border-box;\"><div class=\"panel-body\" style=\"box-sizing: border-box; position: relative; padding: 0px;\"><div style=\"box-sizing: border-box;\"><div class=\"contentList\" style=\"box-sizing: border-box; padding: 0px; color: rgb(64, 64, 65) !important;\"><span itemprop=\"description\" style=\"box-sizing: border-box;\">Boost your basics with the Long Leggings by B Collection. These classic full length leggings have an elasticized waistband and are made from a stretch fabric for your comfort. Pair them with an oversized sweater and snug socks for a lazy day at home.</span><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Product Features:</span></p><ul style=\"box-sizing: border-box;\"><li style=\"box-sizing: border-box;\">Full length</li><li style=\"box-sizing: border-box;\">Stretch fabric</li><li style=\"box-sizing: border-box;\">Elasticised waistband</li><li style=\"box-sizing: border-box;\">Great for casual wear</li><li style=\"box-sizing: border-box;\">Cotton/elastane blend</li><li style=\"box-sizing: border-box;\">Machine washable</li></ul></div></div></div></div></div></div></div></div></div></div></div>', 'women-s-swimming-leggings-black (2).jpg', 'women-s-swimming-leggings-black (1).jpg', 'women-s-swimming-leggings-black.jpg', 49, 'In Stock', '2019-10-11 09:02:08', NULL),
(2, 7, 13, 'Mila High-Waisted Pocket Leggings', 'Adidass', 999, 1299, '<h2 class=\"product-details-heading product-section-heading\" style=\"padding: 0px; margin-bottom: 15px; font-size: 18px; text-transform: capitalize; color: rgb(0, 0, 0); font-family: Assistant, &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, Arial, sans-serif;\">Features</h2><div class=\"product-details-features\" style=\"color: rgba(0, 0, 0, 0.75); margin-bottom: 16px; font-family: Assistant, &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, Arial, sans-serif; font-size: 14px;\"><ul class=\"noindent\" style=\"margin-left: 5px; padding-left: 15px;\"><li data-feature=\"-external-pocket\" style=\"list-style: disc;\">(External) Pocket</li><li data-feature=\"all-way-stretch\" style=\"list-style: disc;\">All-way Stretch</li><li data-feature=\"breathable\" style=\"list-style: disc;\">Breathable</li><li data-feature=\"chafe-resistant\" style=\"list-style: disc;\">Chafe-Resistant</li><li data-feature=\"hidden-pockets\" style=\"list-style: disc;\">Hidden Pockets</li><li data-feature=\"moisture-wicking\" style=\"list-style: disc;\">Moisture-Wicking</li><li data-feature=\"upf-protection\" style=\"list-style: disc;\">UPF Protection</li></ul></div><div class=\"product-details-section product-details-fabric\" style=\"color: rgb(0, 0, 0); font-family: Assistant, &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, Arial, sans-serif; font-size: 14px;\"><h2 class=\"product-details-heading product-section-heading\" style=\"padding: 0px; margin-bottom: 15px; font-size: 18px; text-transform: capitalize;\">Fabric &amp; Care</h2><div class=\"product-details-fabrics\" style=\"color: rgba(0, 0, 0, 0.75);\"><div class=\"fabric-title\" style=\"font-weight: 600; color: rgb(0, 0, 0);\">PowerHold Â®</div><div class=\"fabric-description\" style=\"margin-bottom: 25px;\">Our famous signature fabric, PowerHold is designed with the highest compression to flatter your figure and hold you in without holding you back. Reach for this when youâ€™re boxing, squatting and everything in between.</div><div class=\"fabric-content\" style=\"margin-bottom: 25px;\">88% Poly 12% Elastane</div></div></div>', 'PT1722673-6810-1_577x866.jpg', 'PT1722673-6810-2_998x1498.jpg', 'PT1722673-6810-3_998x1498.jpg', 49, 'In Stock', '2019-10-11 09:10:10', NULL),
(3, 8, 14, 'HRX by Hrithik Roshan', 'HRX ', 1799, 2999, '<span style=\"box-sizing: inherit; display: inline-block; margin-top: 0px; color: rgb(40, 44, 63); font-family: Whitney; font-size: 16px;\"><b>Special Technologies:</b></span><ul style=\"box-sizing: inherit; list-style: none; margin-left: 0px; color: rgb(40, 44, 63); font-family: Whitney; font-size: 16px;\"><li style=\"box-sizing: inherit;\">Ideal for running on roads Designed to provide neutral support to your feet and ankle</li><li style=\"box-sizing: inherit;\">Stretch lycra upper customizes the fit to your feet</li><li style=\"box-sizing: inherit;\">EVA sole makes the shoe lightweight</li><li style=\"box-sizing: inherit;\">The cup-shaped insole gives additional support and comfort</li><li style=\"box-sizing: inherit;\">Soft EVA / latex on the bottom of the insole gives extra cushioning to the heel</li></ul><br style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-family: Whitney; font-size: 16px;\"><span style=\"box-sizing: inherit; display: inline-block; margin-top: 16px; color: rgb(40, 44, 63); font-family: Whitney; font-size: 16px;\"><b>Product Design Detail:</b></span><ul><li style=\"box-sizing: inherit;\">Sea green sports shoes, has regular styling, lace-up detail</li><li style=\"box-sizing: inherit;\">Canvas upper</li><li style=\"box-sizing: inherit;\">Weight: Lightweight Fastening&nbsp;</li><li style=\"box-sizing: inherit;\">Slip-On Fit: Snug</li><li style=\"box-sizing: inherit;\">Cushioned footbed</li><li style=\"box-sizing: inherit;\">Textured and patterned outsole</li><li style=\"box-sizing: inherit;\">Warranty: 3 months</li><li style=\"box-sizing: inherit;\">Warranty provided by Brand Owner / Manufacturer</li></ul>', '1.jpg', '2.jpg', '3.jpg', 49, 'In Stock', '2019-10-11 10:13:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'leggings', '2019-10-11 08:05:33', '11-10-2019 01:39:29 PM'),
(14, 8, 'Canvas', '2019-10-11 10:08:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'priya@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-11 08:03:12', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'priya', 'priya@gmail.com', 1234567894, '6d0361d5777656072438f6e314a852bc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-11 08:02:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
