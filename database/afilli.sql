-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Haz 2024, 16:05:59
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `afilli`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(6, 'Çocuk Premium');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(79, 11, '0.0.0.0', 2, 'Baby Shirt', 'babyshirt.JPG', 1, 500, 500),
(80, 2, '0.0.0.0', 2, 'iPhone 5s', 'iphonemobile.JPG', 1, 25000, 25000);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Cocuk Spor'),
(2, 'Yazlik'),
(3, 'Aksesuar'),
(4, 'Son Son Cikanlar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `tr_id`) VALUES
(30, 2, 6, 'LG Aqua 2', 15000, 1, 'CONFIRMED', '15179'),
(31, 2, 15, 'Football Shoes', 2500, 1, 'CONFIRMED', '15179'),
(32, 2, 16, 'Football', 600, 1, 'CONFIRMED', '15179'),
(33, 6, 1, 'Samsung Duos 2', 5000, 1, 'CONFIRMED', '1334754920'),
(34, 6, 2, 'iPhone 5s', 25000, 1, 'CONFIRMED', '1334754920'),
(35, 6, 1, 'Samsung Duos 2', 5000, 1, 'CONFIRMED', '779361327'),
(36, 7, 1, 'T shirt', 13, 1, 'CONFIRMED', '1967155587'),
(37, 7, 3, 'Esofman ust', 55, 1, 'CONFIRMED', '1967155587'),
(38, 7, 11, 'Mont', 70, 1, 'CONFIRMED', '1967155587'),
(39, 8, 1, 'T shirt', 13, 1, 'CONFIRMED', '1363049654'),
(40, 8, 2, 'Kazak', 114, 3, 'CONFIRMED', '1363049654'),
(41, 8, 3, 'Esofman ust', 55, 1, 'CONFIRMED', '1363049654'),
(42, 8, 2, 'Kazak', 38, 1, 'CONFIRMED', '572821955'),
(43, 8, 3, 'Esofman ust', 55, 1, 'CONFIRMED', '572821955'),
(44, 8, 4, 'Esofman Alt', 42, 1, 'CONFIRMED', '572821955'),
(45, 8, 1, 'T shirt', 13, 1, 'CONFIRMED', '572821955');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, '1', '2', 'T shirt', 13, '100 de 100 pamuk ile kaliteyi hissedin.', 'kavrulmuskahve.jpg', 'T shirt'),
(2, '1', '3', 'Kazak', 38, 'Bu kis günlerinde sicacik bir kazak', 'filtre.jpg', 'Kazak'),
(3, '1', '3', 'Esofman ust', 55, 'Hareketi kisitlamaz rahat edersiniz', '40li.jpg', 'Esofman'),
(4, '1', '2', 'Esofman Alt', 42, 'Yüksek kalite cazip urun', 'karamel.jpg', 'Esofman'),
(5, '1', '4', 'Gözlük', 45, 'Cam/cerceve garanti dahilindedir.', 'sicakcikolata.jpg\r\n', 'Gozluk'),
(7, '2', '6', 'Bileklik', 31, '%100 deri', 'kovacikolata.jpg', 'Bileklik'),
(8, '2', '6', 'Spor Ayakkabi', 14, 'Ergonomik taban, uygun fiyat', 'kasikcikolata.jpg', 'Spor Ayakkabi'),
(9, '3', '7', 'Bere', 25, 'Celik gibi korur.', 'bardak.jpg\r\n', 'Bere'),
(10, '3', '7', 'Bot', 69, 'Suya kara karsi dayananikli.', 'yesiltermos.jpg\r\n', 'Deri Bot'),
(11, '4', '10', 'Mont', 70, '100 de 100 deri soguga karsi sizi korur.', 'fit1.jpg', 'Deri mont'),
(12, '4', '10', 'SweatShirt', 30, 'Yeni sezon sweat', 'fit2.jpg', 'Yuksek kalite urun');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `received_payment`
--

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `amt` int(100) NOT NULL,
  `tr_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Satyam', 'Raj', 'satyammast@gmail.com', '3814d460c26c2dbab2d80294d2cc9882', '8235639917', 'Prem Electronics Block Road Ratu', 'Prem Electronics Block Road Ratu'),
(2, 'Abhijeet', 'Kumar', 'abhinav@krotos.com', '6cebe3b43c4495fdf87fcaa43b485236', '7631649503', 'West Lohanipur, Kadamkuan, MNS Lane', 'Patna'),
(3, 'Krotos', 'Kumar', 'kroto@star.com', 'e3daab6a6b16a140aaf0f1df98d3be24', '7631649503', 'West Lohanipur, Kadamkuan, MNS Lane', 'Patna'),
(4, 'Pranav', 'Prem', 'pranav.prem@gmail.com', '929847725b8d48b47ecba736b0d04520', '8235639917', 'Prem Electronics Block Road Ratu', 'sdsd'),
(5, 'Shubham', 'Raj', 'shubham@gmail.com', '5568fda880263b9be0b72104354fa3dc', '8235639917', 'Prem Electronics Block Road Ratu', 'bangalore'),
(7, 'Murat', 'Yilmaz', 'murat@gmail.com', 'bb0aba2cee8c7d95b161a18fcb3592bc', '5869654123', 'Ordu', 'Trabzon'),
(8, 'Asuman', 'Afife', 'asuman@mail.com', 'e6a718c28ad60ecdfa728443380808bf', '9638526743', 'Ordu', 'Samsun');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Tablo için indeksler `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Tablo için indeksler `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Tablo için indeksler `received_payment`
--
ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `received_payment`
--
ALTER TABLE `received_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
