-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2023 at 08:40 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iproger`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_sellers`
--

CREATE TABLE `list_sellers` (
  `ID_List_Sellers` int(11) NOT NULL,
  `Post` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Surname` varchar(100) NOT NULL,
  `Middlename` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_sellers`
--

INSERT INTO `list_sellers` (`ID_List_Sellers`, `Post`, `Name`, `Surname`, `Middlename`, `Phone`) VALUES
(1, 'Менеджер', 'Иван', 'Иванов', 'Иванович', '89001234567'),
(2, 'Менеджер', 'Петр', 'Петров', 'Петрович', '89002345678'),
(3, 'Менеджер', 'Сергей', 'Сергеев', 'Сергеевич', '89003456789'),
(4, 'Менеджер', 'Алексей', 'Алексеев', 'Алексеевич', '89004567890'),
(5, 'Менеджер', 'Дмитрий', 'Дмитриев', 'Дмитриевич', '89005678901'),
(6, 'Менеджер', 'Андрей', 'Андреев', 'Андреевич', '89006789012'),
(7, 'Менеджер', 'Николай', 'Николаев', 'Николаевич', '89007890123'),
(8, 'Менеджер', 'Владимир', 'Владимиров', 'Владимирович', '89008901234'),
(9, 'Менеджер', 'Геннадий', 'Геннадиев', 'Геннадиевич', '89009012345'),
(10, 'Стар продавец', 'Олег', 'Олегов', 'Олегович', '89010123456'),
(11, 'Менеджер', 'Артем', 'Артемов', 'Артемович', '89011234567'),
(12, 'Менеджер', 'Максим', 'Максимов', 'Максимович', '89012345678'),
(13, 'Менеджер', 'Игорь', 'Игорев', 'Игоревич', '89023456789'),
(14, 'Менеджер', 'Виктор', 'Викторов', 'Викторович', '89034567890'),
(15, 'Менеджер', 'Роман', 'Романов', 'Романович', '89045678901');

-- --------------------------------------------------------

--
-- Table structure for table `list_suppliers`
--

CREATE TABLE `list_suppliers` (
  `ID_List_Suppliers` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Surname` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `Addres` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_suppliers`
--

INSERT INTO `list_suppliers` (`ID_List_Suppliers`, `Name`, `Surname`, `Phone`, `Price`, `Addres`) VALUES
(1, 'Иван', 'Иванов', '8-800-555-35-35', '10000', 'ул. Ленина, д. 10'),
(2, 'Петр', 'Петров', '8-800-555-35-36', '12000', 'ул. Гагарина, д. 15'),
(3, 'Сергей', 'Сергеев', '8-800-555-35-37', '15000', 'ул. Кирова, д. 20'),
(4, 'Алексей', 'Алексеев', '8-800-555-35-38', '9000', 'ул. Мира, д. 25'),
(5, 'Дмитрий', 'Дмитриев', '8-800-555-35-39', '11000', 'ул. Пушкина, д. 30'),
(6, 'Андрей', 'Андреев', '8-800-555-35-40', '13000', 'ул. Лермонтова, д. 35'),
(7, 'Михаил', 'Михайлов', '8-800-555-35-41', '14000', 'ул. Толстого, д. 40'),
(8, 'Николай', 'Николаев', '8-800-555-35-42', '9500', 'ул. Достоевского, д. 45'),
(9, 'Евгений', 'Евгеньев', '8-800-555-35-43', '10500', 'ул. Чехова, д. 50'),
(10, 'Олег', 'Олегов', '8-800-555-35-44', '12500', 'ул. Горького, д. 55'),
(11, 'Владимир', 'Владимиров', '8-800-555-35-45', '13500', 'ул. Тургенева, д. 60'),
(12, 'Григорий', 'Григорьев', '8-800-555-35-46', '8000', 'ул. Шолохова, д. 65'),
(13, 'Роман', 'Романов', '8-800-555-35-47', '11500', 'ул. Булгакова, д. 70'),
(14, 'Артем', 'Артемов', '8-800-555-35-48', '14500', 'ул. Федорова, д. 75'),
(15, 'Константин', 'Константинов', '8-800-555-35-49', '10000', 'ул. Гоголя, д. 80');

-- --------------------------------------------------------

--
-- Table structure for table `price_list_metal`
--

CREATE TABLE `price_list_metal` (
  `ID_Price_List_Metal` int(11) NOT NULL,
  `Denomination` varchar(100) NOT NULL,
  `Price` int(100) NOT NULL,
  `Measurement` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price_list_metal`
--

INSERT INTO `price_list_metal` (`ID_Price_List_Metal`, `Denomination`, `Price`, `Measurement`, `Quantity`) VALUES
(1, 'Балка двутавровая', 1500, 'метр', 100),
(2, 'Уголок стальной', 500, 'штука', 200),
(3, 'Труба круглая', 1200, 'метр', 150),
(4, 'Лист стальной', 2000, 'метр квадратный', 50),
(5, 'Швеллер', 1800, 'метр', 80),
(6, 'Квадратная труба', 1400, 'метр', 120),
(7, 'Профиль гнутый', 2500, 'метр', 30),
(8, 'Полоса стальная', 900, 'метр', 250),
(9, 'Круг стальной', 1100, 'метр', 180),
(10, 'Труба прямоугольная', 1600, 'метр', 100),
(11, 'Уголок равнополочный', 700, 'штука', 150),
(12, 'Лист оцинкованный', 2200, 'метр квадратный', 40),
(13, 'Шестигранник', 1200, 'метр', 90),
(14, 'Труба электросварная', 1300, 'метр', 200),
(15, 'Профиль трубчатый', 1900, 'метр', 70);

-- --------------------------------------------------------

--
-- Table structure for table `sales_accounting_jurnal`
--

CREATE TABLE `sales_accounting_jurnal` (
  `ID_Sales_Accounting_Jurnal` int(11) NOT NULL,
  `ID_List_Sellers` int(11) NOT NULL,
  `ID_List_Suppliers` int(11) NOT NULL,
  `ID_Price_List_Metal` int(11) NOT NULL,
  `Worth` varchar(100) NOT NULL,
  `Agreement_Number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_accounting_jurnal`
--

INSERT INTO `sales_accounting_jurnal` (`ID_Sales_Accounting_Jurnal`, `ID_List_Sellers`, `ID_List_Suppliers`, `ID_Price_List_Metal`, `Worth`, `Agreement_Number`) VALUES
(1, 2, 3, 4, '5000', 'A001'),
(2, 1, 4, 2, '10000', 'B002'),
(3, 3, 2, 1, '7500', 'C003'),
(4, 4, 1, 3, '12000', 'D004'),
(5, 2, 3, 4, '8000', 'E005'),
(6, 1, 4, 2, '15000', 'F006'),
(7, 3, 2, 1, '9000', 'G007'),
(8, 4, 1, 3, '11000', 'H008'),
(9, 2, 3, 4, '6000', 'I009'),
(10, 1, 4, 2, '13000', 'J010'),
(11, 3, 2, 1, '8500', 'K011'),
(12, 4, 1, 3, '11500', 'L012'),
(13, 2, 3, 4, '7000', 'M013'),
(14, 1, 4, 2, '14000', 'N014'),
(15, 3, 2, 1, '9500', 'O015');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `pass`, `name`, `surname`) VALUES
(15, 'ded', '123', 'xxxczxc', 'vcvc'),
(16, 'das', '123', 'dsdss', 'cxcxc'),
(18, 'вв', '123', 'dsdsd', 'cxc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_sellers`
--
ALTER TABLE `list_sellers`
  ADD PRIMARY KEY (`ID_List_Sellers`);

--
-- Indexes for table `list_suppliers`
--
ALTER TABLE `list_suppliers`
  ADD PRIMARY KEY (`ID_List_Suppliers`);

--
-- Indexes for table `price_list_metal`
--
ALTER TABLE `price_list_metal`
  ADD PRIMARY KEY (`ID_Price_List_Metal`);

--
-- Indexes for table `sales_accounting_jurnal`
--
ALTER TABLE `sales_accounting_jurnal`
  ADD PRIMARY KEY (`ID_Sales_Accounting_Jurnal`),
  ADD KEY `ID_List_Sellers` (`ID_List_Sellers`,`ID_List_Suppliers`,`ID_Price_List_Metal`),
  ADD KEY `ID_Price_List_Metal` (`ID_Price_List_Metal`),
  ADD KEY `ID_List_Suppliers` (`ID_List_Suppliers`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales_accounting_jurnal`
--
ALTER TABLE `sales_accounting_jurnal`
  ADD CONSTRAINT `sales_accounting_jurnal_ibfk_1` FOREIGN KEY (`ID_Price_List_Metal`) REFERENCES `price_list_metal` (`ID_Price_List_Metal`),
  ADD CONSTRAINT `sales_accounting_jurnal_ibfk_2` FOREIGN KEY (`ID_List_Suppliers`) REFERENCES `list_suppliers` (`ID_List_Suppliers`),
  ADD CONSTRAINT `sales_accounting_jurnal_ibfk_3` FOREIGN KEY (`ID_List_Sellers`) REFERENCES `list_sellers` (`ID_List_Sellers`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
