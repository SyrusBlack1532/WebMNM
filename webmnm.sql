-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 09:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webmnm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `pasword` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pasword`, `permission`) VALUES
(1, 'admin', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `nameBrand` varchar(200) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `nameBrand`) VALUES
(1, 'Casio'),
(2, 'Seiko'),
(3, 'Calvin Klein'),
(4, 'Tissot'),
(5, 'Orient'),
(6, 'Citizen'),
(7, 'Fossil'),
(8, 'Candino');

-- --------------------------------------------------------

--
-- Table structure for table `dt_order`
--

CREATE TABLE `dt_order` (
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_order`
--

INSERT INTO `dt_order` (`orderID`, `productID`, `quantity`, `price`) VALUES
(1, 2, 1, 4334000),
(7, 1, 10, 1000),
(7, 2, 20, 2000),
(7, 3, 30, 3000),
(7, 4, 40, 4000),
(8, 1, 10, 1000),
(8, 2, 20, 2000),
(8, 3, 30, 3000),
(8, 4, 40, 4000),
(10, 1, 3, 1000000),
(10, 1, 3, 1000000),
(10, 1, 3, 1000000),
(10, 1, 3, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `date` date NOT NULL,
  `totalQuantity` int(11) NOT NULL,
  `totalPrice` float NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userID`, `username`, `date`, `totalQuantity`, `totalPrice`, `status`) VALUES
(1, 1, 'user1', '2022-10-09', 1, 1000000, 0),
(7, 1, 'tester24', '2001-01-01', 4, 10000, 0),
(8, 1, 'tester24', '2001-01-01', 4, 10000, 0),
(10, 1, 'tester24', '2022-11-24', 4, 10000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `time` date NOT NULL,
  `paymentBy` int(11) NOT NULL,
  `is_succcess` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `brandID` int(11) NOT NULL,
  `productName` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `price` float NOT NULL,
  `priceAfter` float NOT NULL,
  `amount` int(11) NOT NULL,
  `origin` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(200) NOT NULL,
  `is_sale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brandID`, `productName`, `price`, `priceAfter`, `amount`, `origin`, `image`, `description`, `title`, `is_sale`) VALUES
(1, 1, 'CASIO MTP-1215A-7B2DF ??? NAM ??? QUARTZ (PIN) ??? D??Y KIM LO???I', 1086000, 1000000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2017/08/MTP-1215A-7B2DF.jpg', '?????ng h??? Casio MTP-1215A-7B2DF v???i m???t s??? tr??n truy???n th???ng, kim ch??? ???????c ph??? ph???n quang d??? nh??n trong ????m, v???ch ch??? gi??? ph??? m??u ??en n???i b???t, d??y ??eo kim lo???i nam t??nh l???ch l??m.', 'Hot', 1),
(2, 1, 'CASIO EQS -920DB-1BVUDF ??? SOLAR  ??? D??Y KIM LO???I', 4534000, 4334000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2019/07/150_EQS-920DB-1BVUDF-699x699.jpg', 'Phong c??ch thi???t k??? ???n t?????ng nh??? v??o l???p vi???n ??en n???i b???t ngay tr??n m???t s???, b??n d?????i n???n l?? b??? v??? b???c tr???ng khi???n s???n ph???m tr??? th??nh chi???c ?????ng h??? nam c???ng c??p\r\n', 'Hot', 1),
(3, 1, 'CASIO BEM-150D-1AVDF ??? QUARTZ (PIN) ??? D??Y KIM LO???I', 2996000, 2796000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2017/08/BEM-150D-1AVDF-699x699.jpg', '?????ng h??? Casio BEM-150D-1AVDF c?? v??? v?? d??y ??eo kim lo???i m??u b???c, n???n s??? m??u ??en c??ng kim ch??? v?? v???ch s??? ???????c d??t m???ng n???i b??t, c??n c?? ?? l???ch ng??y v??? tr?? 12h, mang l???i cho ph??i m???nh s??? thanh l???ch.\r\n', 'Hot', 1),
(4, 1, 'CASIO SGW-400H-1B2VDR ??? QUARTZ (PIN) ??? D??Y CAO SU', 2791000, 2591000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2017/08/SGW-400H-1B2VDR-699x699.jpg', '?????ng h??? Casio SGW-400H-1B2VDR c?? vi???n kim lo???i b???ng nh??m tinh t???, d??y ??eo cao su m??u ??en c?? t??nh, m???t s??? hi???n ?????i v???i s??? k???t h???p gi???a kim ch??? v?? s??? ??i???n t??? t???o n??n phong c??ch th??? thao c?? t??nh.\r\n', 'Hot', 1),
(5, 1, 'G-SHOCK GBA-400-1ADR ??? QUARTZ (PIN) ??? D??Y CAO SU', 5436000, 5036000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2016/12/119_GBA-400-1ADR-699x699.jpg', '?????ng h??? G-Shock GBA-400-1ADR c?? thi???t k??? th???i trang c?? t??nh n??ng ?????ng, v???i c???u t???o ?????c ????o khi m???t ?????ng h??? ???????c l??m n???i ba chi???u ??em ?????n nhi???u ?????c t??nh, ????n LED c?? ????? chi???u s??ng cao gi??p nh??n r?? trong', 'Hot', 1),
(6, 2, 'SEIKO SPC087P1 ??? QUARTZ (PIN) ??? D??Y DA', 5346000, 5246000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2017/06/SPC087P1.jpg', '?????ng h??? th???i trang cao c???p Seiko SPC087P1 mang phong c??ch thanh l???ch cho nam gi???i, m???t n???n tr???ng k???t h???p v???i c??c chi ti???t m??? v??ng, d??y da ch??nh h??ng c?? v??n.\r\n', 'Hot', 1),
(7, 2, 'SEIKO SRPD67K1 ??? AUTOMATIC (T??? ?????NG)  ??? D??Y KIM LO???I', 7929000, 7729000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2019/12/13_SRPD67K1-699x699.jpg', 'M???u Seiko SRPD67K1 phi??n b???n d??y l?????i m??? b???c th???i trang nam t??nh ??i k??m v???i thi???t k??? d??y d???n ph???n v??? m??y c?? ????? d??y 13,4mm n???i b???t v???i kh??? n??ng ch???ng n?????c 10ATM.\r\n', 'New', 1),
(8, 2, 'SEIKO SSB317P1 ??? NAM ??? QUARTZ (PIN) ??? D??Y KIM LO???I', 5103000, 5003000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2019/10/35_SSB317P1-699x699.jpg', 'M???u Seiko SSB317P1 thi???t k??? tr??? trung nam t??nh v???i ki???u d??ng 6 kim ??i k??m ch???c n??ng Chronograph tr??n n???n m???t tr???ng size 44mm, v??? ngo??i sang tr???ng v???i ph???n d??y v??? kim lo???i m??? b???c.\r\n', 'New', 1),
(9, 2, 'SEIKO SRPC67K1 ??? NAM ??? AUTOMATIC (T??? ?????NG) ??? D??Y V???I', 6336000, 6136000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2018/10/64_SRPC67K1-699x699.jpg', 'M???u Seiko SRPC67K1 v???i phi??n b???n d??y ??eo ch???t li???u v???i ?????m ch???t th??? thao c?? t??nh, ?????c ??i???m n???i tr???i nh?? ph???n v??? vi???n ngo??i t???o h??nh vi???n s??? ch??? tr???ng n???i b???t tr??n t??ng n???n ??en m???nh c??ng kh??? n??ng ch???u ', 'New', 1),
(10, 3, 'CALVIN KLEIN K3M21BZ6 ??? QUARTZ (PIN) ??? D??Y KIM LO???I', 4878000, 4878000, 10, 'Th???y S??', 'https://cdn3.dhht.vn/wp-content/uploads/2020/02/21_K3M21BZ6-699x699.jpg\r\n', 'M???u Calvin Klein K3M21BZ6 ????n gi???n 2 kim phong c??ch tr??? trung c??ng v???i logo ch??? CK ???????c in n???i b???t tone v??ng h???ng tr??n n???n m???t s??? size 40mm.\r\n', '', 0),
(11, 3, 'CALVIN KLEIN K9R31CD6 ??? QUARTZ (PIN) ??? D??Y CAO SU', 5091000, 5091000, 10, 'Th???y S??', 'https://cdn3.dhht.vn/wp-content/uploads/2020/02/110_K9R31CD6-699x699.jpg', '\"M???u Calvin Klein K9R31CD6 phi??n b???n d??y ??eo cao su v???i v??? ngo??i tr??? trung n??ng ?????ng v???i n???n c???c \r\ns??? t???o h??nh d??y d???n n???i b???t tr??n ph???n v??? vi???n bezel.\"\r\n', '', 0),
(12, 3, 'CALVIN KLEIN K8Q316C3 ??? QUARTZ (PIN) ??? D??Y DA', 6120000, 6120000, 10, 'Th???y S??', 'https://cdn3.dhht.vn/wp-content/uploads/2020/02/87_K8Q316C3-699x699.jpg\r\n', 'M???u Calvin Klein K8Q316C3 phi??n b???n d??y da th???i trang ki???u da tr??n ????n gi???n v???i thi???t k??? m???t s??? 3 kim c??ng c??c chi ti???t v???ch s??? ???????c ph???i tone m??u v??ng h???ng.\r\n', '', 0),
(13, 3, 'CALVIN KLEIN K9Q125Z1  ??? QUARTZ (PIN) ??? D??Y KIM LO???I', 7758000, 7758000, 10, 'Th???y S??', 'https://cdn3.dhht.vn/wp-content/uploads/2020/02/109_K9Q125Z1-699x699.jpg', 'M???u Calvin Klein K9Q125Z1 phi??n b???n kim ch??? ????? tr??? trung n???i b???t tr??n m???t s??? vu??ng size 38mm, v??? m??y pin v???i thi???t k??? m???ng c??ch t??n ????? d??y ch??? 7mm.\r\n', '', 0),
(14, 4, 'TISSOT T055.417.16.057.00  ??? QUARTZ (PIN) ??? D??Y DA', 11702000, 11702000, 10, 'Th???y S??', 'https://cdn3.dhht.vn/wp-content/uploads/2018/03/384_T055.417.16.057.00-1-699x699.jpg', 'M???u Tissot T055.417.16.057.00 n???i b???t t??nh n??ng Chronograph ??o th???i gian v???i ki???u d??ng ?????ng h??? 6 kim t???o n??n phong c??ch nam t??nh l???ch l??m ??i k??m m???u d??y da ??en c?? v??n.', '', 0),
(15, 4, 'TISSOT T101.451.11.051.00  ??? QUARTZ (PIN) ??? D??Y KIM LO???I', 14512000, 14512000, 10, 'Th???y S??', 'https://cdn3.dhht.vn/wp-content/uploads/2017/07/T101.451.11.051.00-699x699.jpg', '?????ng h??? nam Tissot T101.207.11.051.00 v???i thi???t k??? d??nh cho nam theo phong c??ch m???nh m???, kim ch??? v?? v???ch s??? to r?? n???i b???t tr??n n???n ??en nam t??nh, k???t h???p v???i d??y ??eo kim lo???i m??u b???c t???o v??? sang tr???ng.', '', 0),
(16, 4, 'TISSOT T095.417.36.037.00   ??? QUARTZ (PIN) ??? D??Y DA', 9344000, 9344000, 10, 'Th???y S??', 'https://cdn3.dhht.vn/wp-content/uploads/2017/09/T095.417.36.037.00-699x699.jpg\r\n', '?????ng h??? nam Tissot T095.417.17.037.07 v???i ki???u d??ng th??? thao, v??? m??y b???ng kim lo???i m??u b???c t???o v??? ch???c ch???n nam t??nh, 3 ?? ph??? v???i 3 ch???c n??ng kh??c nhau t???o n??n v??? hi???n ?????i, k???t h???p v???i d??y ??eo v???i m??u', '', 0),
(17, 4, 'TISSOT T109.610.36.032.00   ??? QUARTZ (PIN) ??? D??Y DA\r\n', 5848000, 5848000, 10, 'Th???y S??', 'https://cdn3.dhht.vn/wp-content/uploads/2019/05/236_T109.610.36.032.00-699x699.jpg', 'M???u Tissot T109.610.36.032.00 phi??n b???n c???c s??? h???c tr?? ph???i c??ng m???u d??y da tone n??u tr??? trung l???ch l??m d??nh cho ph??i m???nh, v??? m??y v??ng h???ng sang tr???ng thi???t k??? m???ng 6mm.\r\n', '', 0),
(18, 5, 'ORIENT FAC0000BW0  ??? AUTOMATIC (T??? ?????NG) ??? D??Y DA', 7510000, 7110000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2017/12/FAC0000BW0-699x699.jpg\r\n', 'Gi???n d??? c???a m???u ?????ng h??? 3 kim ki???u d??ng m???ng c???a s??? tinh t??? c??ng v???i s??? k???t h???p gi???a v??? m??y m??? v??ng ph???i c??ng m???u d??y da ??en t???o n??n y???u t??? l???ch l??m nam t??nh ?????y sang tr???ng ?????n t??? m???u Orient FAC0000BW', 'New', 1),
(19, 5, 'ORIENT OPEN HEART RA-AR0001S10B ??? AUTOMATIC ??? \r\n', 11760000, 10060000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2019/04/36_RA-AR0001S10B-699x699.jpg\r\n', 'M???u Orient RA-AR0001S10B thi???t k??? ?????c tr??ng Open Heart v???i ?? ch??n k??nh l??? ra 1 ph???n c???a b?? m??y c?? t???o n??n v??? ?????c ????o tr?????c m???t k??nh Sapphire.', 'New', 1),
(20, 5, 'ORIENT FAA02009D9 ??? AUTOMATIC (T??? ?????NG) ??? D??Y KIM LO???I', 8600000, 8000000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2017/05/FAA02009D9-2-699x699.jpg\r\n', '?????ng h??? nam Orient Mako 2 Pepsi FAA02009D9 v???i tr???i nghi???m b??? m??y c?? d??nh cho nam, c??c v???ch s??? v???i thi???t k??? d??y d???n nam t??nh tr??n n???n m???t s??? v???i t??ng m??u xanh t???o n??n v??? tr??? trung', 'New', 1),
(21, 5, 'ORIENT SK RA-AA0B02R19B ???  AUTOMATIC \r\n', 7800000, 7000000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2019/07/RA-AA0B02R19B-699x699.jpg\r\n', 'M???u Orient RA-AA0B02R19B phi??n b???n m??? v??ng v???i m???u kim ch??? n???i b???t tr??n m???t s??? size 41.7mm ??i k??m thi???t k??? 2 n??m v???n ??i???u ch???nh, v??? m??y kim lo???i m??? b???c ki???u d??ng d??y d???n c???a b?? m??y c??.', 'New', 1),
(22, 6, 'CITIZEN C7 NH8390-11X ??? AUTOMATIC', 8177000, 8177000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2020/10/NH8390-11X-699x699.jpg', 'M???u Citizen C7 NH8390-11X phi??n b???n da n??u tr??n l???ch l??m tr??? trung k???t h???p c??ng thi???t k??? ????n gi???n 3 kim tr??n n???n m???t s??? size 40mm ph???i tone m??u ????? n???i b???t.', '', 0),
(23, 6, 'CITIZEN BI5054-53L ??? QUARTZ (PIN) ??? D??Y KIM LO???I', 4270000, 4270000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2018/03/177_BI5054-53L-699x699.jpg\r\n', 'M???u Citizen BI5054-53L kh??ng kh???i ng?????c nh??n khi mang tr??n m??nh m???t v??? ngo??i m???t s??? t??ng n???n xanh c???a s??? tr??? trung k??m theo v???ch s??? t???o h??nh d??y d???n ?????y v??? nam t??nh.', '', 0),
(24, 6, 'CITIZEN BI5072-01A  ??? QUARTZ (PIN) ??? M???T S??? 40 MM, L???CH NG??Y, CH???NG N?????C 5 ATM', 3685000, 3685000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2018/09/212_BI5072-01A-699x699.jpg\r\n', '???n ch???a d?????i v??? ngo??i gi???n d??? c???a m???u Citizen BI5072-01A v???i m???u d??y da l???ch l??m t??ng m??u n??u, c??c chi ti???t v???ch s??? t???o h??nh m???ng ch???a ?????ng s??? tinh t??? sang tr???ng khi ???????c bao ph??? t??ng m??u v??ng n???i b???t', '', 0),
(25, 6, 'CITIZEN NH8350-59L ??? AUTOMATIC (T??? ?????NG) ??? D??Y KIM LO???I', 5785000, 5785000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2017/11/NH8350-59L.jpg\r\n', '?????ng h??? nam Citizen NH8350-59L v???i thi???t k??? d??nh cho nam phong c??ch th???i trang, kim ch??? v?? v???ch s??? to r?? n???i b???t tr??n n???n xanh tr??? trung, ?? l???ch ng??y l???ch th??? v??? tr?? 3 gi???, ph???i c??ng d??y ??eo kim lo???i ', '', 0),
(26, 6, 'CITIZEN BI5000-87L ???QUARTZ (PIN) ??? D??Y KIM LO???I', 4285000, 4285000, 10, 'Nh???t B???n', 'https://cdn3.dhht.vn/wp-content/uploads/2018/11/181_BI5000-87L-699x699.jpg\r\n', 'Gi???n d??? v?? sang tr???ng v???i m???u Citizen BI5000-87L phi??n b???n n???n m???t s??? xanh th???i trang v???i ki???u d??ng 3 kim c??ng v???i c??c chi ti???t ?????ng h??? t???o n??t m???ng c???a s??? tinh t??? tr??? trung d??nh cho ph??i m???nh.\r\n', '', 0),
(27, 7, 'FOSSIL FS5325  ??? QUARTZ (PIN) ??? D??Y DA', 3210000, 3000000, 10, 'M???', 'https://cdn3.dhht.vn/wp-content/uploads/2017/08/12_FS5325.jpg', 'M???u Fossil FS5325 v???i n???n m???t s??? ???????c ph???i t??ng m??u xanh mang l???i l??ng gi?? m???i t???o n??n v??? th???i trang cho ph??i nam, ph???i c??ng b??? d??y ??eo ch???t li???u b???ng da n??u tr??n t??ng th??m v??? tr??? trung.', 'Hot', 1),
(28, 8, 'CANDINO C4429/3  ??? QUARTZ (PIN) ??? D??Y DA ', 8910000, 8910000, 10, 'Th???y S??', 'https://cdn3.dhht.vn/wp-content/uploads/2021/03/15_C4429-3-699x699.jpg', 'M???u Candino C4429/3 phi??n b???n Chronograph thi???t k??? 3 n??m ??i???u ch???nh t??nh n??ng ??o th???i gian v???i ki???u d??ng ?????ng h??? 6 kim t???o n??n v??? th???i trang nam t??nh.\r\n', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `numberPhone` int(50) NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `address`, `numberPhone`, `email`) VALUES
(1, 'user1', '$2y$10$AYWR0xY9FBFEBoTFHpjwNuh9f9Qv96TrO/z3ufZyG4rDst11N0IYS', 'Le Lu Thien Nhan', '16 TVN, LT, TD, HCM', 902485213, 'leluthiennhan31@gmail.com'),
(2, 'tester2', '$2y$10$Jr/ZciYyk4E9LNDP9UG0N.xK.R49E5IJxIPhmzzYVvIQ6/aqLkWcu', 'L?? Quan Ngh??a', 'XX, YY , ZZ', 123456, 'nghia@gmail.com'),
(8, 'testerupdate', '$2y$10$hn94Hs4IoFvRA.Gju3t.Z.ye.8ZclzbfgiCC4DFsiOO0sIIEE8hLG', 'Updater', 'XXx, YY , ZZ', 1234567, 'updater@gmail.com'),
(13, 'AAA', '$2y$10$HJ3L.tPkr8SWVtdJ3O7z3uCJzmMGHB1qV6VxMsrM05B819gmlLdGG', '', 'DADDADADAADDADAADD', 0, 'AAAAAA'),
(14, 'tester22', '$2y$10$UUwfgAe8s.w4T3GlN3HmUuAC792G.vPBC6V8cN6uOL9zAD74eIwi6', 'The Tester', 'NO.22', 22, '123@gmail.com'),
(15, 'tester23', '$2y$10$qfRUbpkdBXGXsYL/tbQsk.bQHlwoCUNYidihCfJSdodf07b2mwX0y', 'The Tester', 'NO.223', 223, '1233@gmail.com'),
(16, 'tester24', '$2y$10$0vLXBD8ECCuMHNc3aY/lhOzZCI5EKILVzHacSXpNd/qA3kYiOHw2i', 'U9d9jNz', '', 123456789, 'aaa@gmail.com'),
(17, '', '$2y$10$3ySNKPyeDgt8bM3aGqwk6uTNDz6KDlBeHWmTt7AJWPlrK1ENroTkS', 'bYVRS1d', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dt_order`
--
ALTER TABLE `dt_order`
  ADD KEY `productID` (`productID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brandID` (`brandID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dt_order`
--
ALTER TABLE `dt_order`
  ADD CONSTRAINT `dt_order_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dt_order_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dt_order_ibfk_3` FOREIGN KEY (`orderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brandID`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
