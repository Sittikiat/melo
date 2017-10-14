-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 14, 2017 at 09:54 PM
-- Server version: 5.5.31
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_melo`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(10) NOT NULL COMMENT 'รหัสคอมเม้น',
  `detail_comment` text CHARACTER SET utf8 NOT NULL COMMENT 'เนื้่อหาคอมเม้น',
  `id_restaurant` int(10) NOT NULL COMMENT 'foreign key'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_comment`, `detail_comment`, `id_restaurant`) VALUES
(1, 'อร่อยมากๆ แซบหลายๆเด้อ', 1),
(2, 'ก๋วยเตี๋ยวเส้นใหญ่เด็ดมากกก', 2),
(3, 'มากินกันเยอะๆ แม่ค้าเด็ดมาก', 2),
(4, 'ตำข้าวโพดอร่อยมาก', 1),
(5, 'ลาบเด็ดมาก มากินกันเถอะ', 1),
(6, 'อาหารใช้ได้เลย', 1),
(7, 'มะหมี่เด็ดมากเลย', 2),
(8, 'ให้หมูเยอะมาก', 20),
(9, 'ฟินเวอร์ จริงๆ', 42),
(10, 'เกี๋ยวกุ้งอร่อยมาก ต้องสั่งๆๆๆ', 49),
(11, 'คนขายน่ารัก', 2),
(12, 'อยากกินส้มตำ', 1),
(13, 'มะหมี่เจ้าเก่าอร่อยไม่เปลี่ยน', 19),
(14, 'พิสูจน์ฝีมือร้านข้าวต้มปลาในตำนานแห่งย่านเยาวราช - คิดถึงข้าวต้มปลาสูตรโบราณ วัตถุดิบจัดเต็ม ต้องมาลอง', 98),
(15, 'Yummy dude', 1),
(16, 'Yummy dude', 1),
(17, 'Food is so yummy', 44);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(10) NOT NULL COMMENT 'รหัสเมนูอาหาร',
  `name_menu` varchar(255) NOT NULL COMMENT 'ชื่อเมนูอาหาร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `name_menu`) VALUES
(1, 'โจ็ก'),
(2, 'ขนมจีน'),
(3, 'ข้าวมันไก่'),
(4, 'ก๋วยเตี๋ยวเรือ'),
(5, 'ข้าวซอย'),
(6, 'ลาบ'),
(7, 'บะหมี่'),
(8, 'บิงชู'),
(9, 'ไก่ย่าง'),
(10, 'โรตี'),
(11, 'ก๋วยจั็บ'),
(12, 'ผัดไทย'),
(13, 'จิ้มจุ่ม'),
(14, 'กุ้งเผา'),
(15, 'ก๋วยเตี๋ยวต้มยำ'),
(16, 'เย็นตาโฟ'),
(17, 'ราดหน้า'),
(18, 'ก๋วยเตี๋ยวเนื้อ'),
(19, 'ไก่ทอด'),
(20, 'เครป'),
(21, 'แหนมเนือง'),
(22, 'แหนม'),
(23, 'คั่วไก่'),
(24, 'ข้าวหมูแดง'),
(25, 'ข้าวผัด'),
(26, 'ต้มยำ'),
(27, 'ก๋วยเตี๋ยวหมู'),
(28, 'ปลาเผา'),
(29, 'ข้าวต้มปลา'),
(30, 'ก๋วยเตี๋ยวเป็ด'),
(31, 'ข้าวขาหมู'),
(32, 'แซลมอน'),
(33, 'ก๋วยเตี๋ยวไก่'),
(34, 'ข้าวหมกไก่'),
(35, 'น้ำเต้าหู้'),
(36, 'ไข่กระทะ'),
(37, 'หมูสะเต็ะ'),
(38, 'ข้าวหมูกรอบ'),
(39, 'สปาเก็ตตี้'),
(40, 'เบอร์เกอร์'),
(41, 'ปาท่องโก๋'),
(42, 'กระเพาะปลา'),
(43, 'ลูกชิ้นปลา'),
(44, 'หอยแครง'),
(45, 'กุยช่าย'),
(46, 'ข้าวหน้าเป็ด'),
(47, 'เป็ดพะโล้'),
(48, 'ขนมเบื้อง'),
(49, 'ไส้อั่ว'),
(50, 'ปูม้า'),
(51, 'หมูหัน'),
(52, 'กุ้งอบวุ้นเส้น'),
(53, 'ปูดอง'),
(54, 'ข้าวแกงกะหรี่'),
(55, 'เครปเค้ก'),
(56, 'เกี็ยวซ่า'),
(57, 'เทปันยากิ'),
(58, 'ทาโกะยากิ'),
(59, 'ผัดกะเพรา'),
(60, 'ยำกุ้งสด'),
(61, 'ยำปูไข่ดอง'),
(62, 'ขนมหวาน'),
(63, 'ติ่มซำ');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id_restaurant` int(10) NOT NULL COMMENT 'รหัสร้านอาหาร',
  `name_restaurant` varchar(255) DEFAULT NULL COMMENT 'ชื่อร้านอาหาร',
  `comment_restaurant` text COMMENT 'ริวิวร้านอาหาร',
  `rate_restaurant` int(1) DEFAULT NULL COMMENT 'คะแนนร้านอาหาร(ดาว)',
  `address_restaurant` text COMMENT 'ที่อยู่ร้านอาหาร',
  `img_restaurant` text NOT NULL COMMENT 'รูปร้านอาหาร',
  `lat` double NOT NULL COMMENT 'latitude',
  `lng` double NOT NULL COMMENT 'longitude',
  `id_restaurant_category` int(10) DEFAULT NULL COMMENT 'foreign key',
  `id_menu` int(10) NOT NULL COMMENT 'foreign key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id_restaurant`, `name_restaurant`, `comment_restaurant`, `rate_restaurant`, `address_restaurant`, `img_restaurant`, `lat`, `lng`, `id_restaurant_category`, `id_menu`) VALUES
(1, 'อีสานรสเด็ด', 'ร้านนี้อร่อยมาก ประมาณยาวนานมีคนต่อคิวเยอะ', 3, 'อนุสาวรีย์ชัยสมรภูมิ เดินเข้าไปในซอยรางน้ำ จะเห็นร้านอีสานรสเด็ดตั้งอยู่ตรงข้ามกับ King Power ซอยรางน้ำ', '1506679473233.png', 13.7619459, 100.537416, 102, 6),
(2, 'แซว', 'ชอบตรงที่ร้านแยกทองหล่อมากกว่า สะอาดและกว้างกว่าที่สุขุมวิท', 4, 'ถนน สุขุมวิท กรุงเทพมหานคร (ปากซอยทองหล่อ ติดถนนสุขุมวิท)', '1506836930251.jpg', 13.7238042, 100.5449672, 27, 7),
(4, 'บางกอกบาร์', 'แหล่งนัดพบสุดฮิปบนถนนข้าวสารที่เหมาะสำหรับการพบปะสังสรรค์ในกลุ่มเพื่อนฝูง พร้อมเพลิดเพลินไปกับจังหวะดนตรีสนุกสนาน อย่างเพลงป๊อป โฟล์กซอง ฮิปฮอป ทั้งดนตรีสดและเปิดแผ่น เรียกคะแนนจากคนที่ชอบทั้งชิลและแดนซ์ได้ จนเป็นที่นิยมไม่เฉพาะแต่ชาวบางกอกเท่านั้น ชาวต่างชาติที่แวะมาต่างบอกเป็นเสียงเดียวกันว่า Cool! มาร้านเดียวได้ถึง 3 อารมณ์กับ 3โซนที่แตกต่าง อย่าง open air ด้านนอกสำหรับนั่งสบายๆ ฟังเพลงอะคูสติกเบาๆ ในบรรยากาศริมสระน้ำพุกลางสวน ส่วนด้านในร้านตกแต่งเป็นห้องนั่งเล่น มีโซฟาตัวใหญ่ ไว้นั่งฟังดนตรีสดแนว Pop Rock ที่คึกคักขึ้นกว่าตอนหัวค่ำ การตกแต่งก็สุดล้ำ มีทั้งโปสเตอร์เพลินพรหมแดน ไปยันซูเปอร์แมนติดบนผนัง! และอีกฝั่งบนชั้นสองที่เป็นส่วนตัวกว่า เหมาะจะนัดเพื่อนฝูงมาสนุกสนานเฮฮา แล้วแดนซ์กระจายยามดึก ใครนึกสนุกอยากจะสลับย้ายโซนที่นั่งก็ได้ คงเพราะความหลากหลายของบรรยากาศร้านนี่เอง ที่ทำให้บางกอกบาร์ครื้นเครงตั้งแต่ค่ำยันดึก', 5, 'ถ.รามบุตรี ตรงข้ามโรงแรมเวียงใต้', '1506931938273.jpg', 13.7595349, 100.4955349, 1, 32),
(6, 'ครัวพรละมัย', 'คั่วไก่สะท้านโลกันต์ ความอร่อยคู่ซอยแปลงนาม หนึ่งในจุดหมายของคนตะลุยกินย่านเยาวราช', 4, 'ถนน แปลงนาม กรุงเทพมหานคร (ซอยแปลงนาม เข้ามานิดเดียว ซ้ายมือ)', '1506933195679.jpg', 13.7407217, 100.5074656, 1, 52),
(7, 'ข้าวแกงบางลำภู', 'อร่อยนะ คุ้มด้วย', 3, 'รามบุตรี กรุงเทพมหานคร (ตรงข้าม The Pizza Company)', '1506933468415.jpg', 13.759553, 100.499709, 1, 12),
(8, 'ขนมจีนไหหลำ', 'ร้านขนมจีนเก่าแก่ ตั้งอยู่ย่านเจริญนคร 19 ที่ไม่ว่าใครก็ต่างบอกเป็นเสียงเดียวกันว่าครบเครื่องครบรส ที่สำคัญไม่ใช้ผงชูรสอีกด้วยนะ และนี่คงจะเป็นอีกหนึ่งเหตุผลความอร่อย ที่ไม่ว่าใครได้ลองเป็นต้องติดใจ และแวะเข้ามาทานขนมจีนที่ร้านนี้อยู่เสมอ พิเศษด้วยเส้นขนมจีนที่ทำสดใหม่ทุกวัน ด้วยความที่ขนมจีนไหหลำเป็นของที่หาทานได้ยาก จึงไม่แปลกใจเลยว่าทำไมขนมจีนไหหลำเจ้านี้จะเป็นที่ฮอตฮิตอันดับต้น ๆ ในย่านคลองสาน ที่นี่มีทั้งแบบแห้งและแบบน้ำ จะสั่งเป็นหมูหรือเนื้อ ก็อร่อยไม่แพ้กันเลย ด้วยเพราะน้ำซุปที่รสชาติเข้มกลมกล่อม และหอมด้วยพริกไทย ลองซดดูสักอึก เห็นจะคล่องคออยู่ไม่น้อย รับรองว่าแต่ละชามครบเครื่องด้วยคุณภาพและความอร่อยจนคุณเองก็ลืมไม่ลง', 3, 'เจริญนคร 19 ถนนเจริญนคร คลองสาน แขวงบางลำภูล่าง เขตคลองสาน กรุงเทพฯ', '1506933629199.jpg', 13.7593325, 100.5122527, 2, 4),
(9, 'สมศักดิ์ปูอบสาขา2', 'ร้านปูอบวุ้นเส้นในตำนาน ที่วันนี้มีทั้งหมดด้วยกัน 2 สาขา สาขาแรกอยู่ตรงบริเวณถนนเจริญรัถ ว่ากันว่ามีลูกค้ารอต่อคิวตั้งแต่ยังไม่เปิดร้าน จนมาถึงสาขาสอง อยู่ตรงบริเวณเลยทางออกบีทีเอสสถานีกรุงธนบุรีไปไม่ไกล บรรยากาศโดยรวมของทั้งสองร้าน เน้นความเป็นกันเอง และไม่ต้องกลัวว่าสาขาที่สองจะไม่อร่อยเท่าสาขาแรก เพราะเขาบอกมาว่าทั้งสองสาขาใช้สูตรความอร่อยเดียวกันแน่นอน มาถึงที่นี่ทั้งทีใครที่ไม่สั่ง \"กุ้งอบวุ้นเส้น\" ดูเหมือนว่าจะมาไม่ถึง กุ้งของที่นี่ก็ตัวใหญ่ เนื้อกุ้งมีความหวานและเด้ง จนคนทานเองก็ยังสัมผัสได้ วุ้นเส้นก็เหนียวนุ่ม เข้ากันได้ดีกับซอสที่อบมาในหม้อ ที่มาพร้อมกับพริกไทย กากหมู รากผักชี กระเทียม ผสมคลุกเคล้าเข้ากับกลิ่นน้ำมันงา กลายเป็นกุ้งอบวุ้นเส้นหม้อใหญ่ ที่ใครได้ลองชิมสักคำเป็นต้องยากจะปฏิเสธไม่ทานอีกเป็นคำที่สอง', 4, 'สาขาซอยเจริญรัถ 1 ถนนเจริญรัถ แขวงคลองต้นไทร เขตคลองสาน กรุงเทพฯ และสาขา 2 BTS กรุงธนบุรี ถนน BTS กรุงธนบุรี แขวงบางลำภูล่าง เขตคลองสาน กรุงเทพฯ', '1506933692551.jpg', 13.7205021, 100.4982612, 2, 52),
(10, 'ครัวสารสจัด', 'อาหารไทยรสจัด ... จัดว่า \"อร่อย\"', 5, 'ซอย วิภาวดีรังสิต 44 กรุงเทพมหานคร (ไม่ไกลจากมูลนิธิกระจกเงา)', '1506933901552.jpg', 13.8422712, 100.5597502, 3, 37),
(11, 'โชคดีติ่มซำ', 'วัตถุดิบดี รสชาติอร่อย', 2, 'ซอย ลาดพร้าว 101 กรุงเทพมหานคร (ลาดพร้าว 24 ร้านอยู่ข้างๆเกาะนามิ ริมถนนติดทางม้าลายคนข้าม)', '1506934033010.jpg', 13.8422687, 100.5269194, 3, 56),
(12, 'ข้าวซอยกะโหล้ง', 'อาหารทุกอย่างอยู่ในกะลา เก๋ๆ', 1, 'ซอย ชอย 7 เชียงใหม่ (ข้างวัดพระธาตุจอมทอง)', '1506934213810.jpg', 18.4357103, 98.6842414, 4, 5),
(13, 'ส้มตำเฮือนไม้', 'ร้านสะอาด น่านั่ง อร่อย', 4, 'บ้านหลวง ซอย13 เชียงใหม่ (ซอยข้างวัดข่วงเปา เข้าซอยขับตรงมาตามทางเรื่อยๆประมาณ 100 เมตร ร้านอยู่ขวามือ รั้วเป็นไม้)', '1506934357286.jpg', 18.43173, 98.67638, 4, 6),
(14, 'ครัวเฟื่องฟ้า', 'ใครที่ยังไม่ได้มาถือว่าพลาดดด 5555 ร้านนี้มีส้มตำรสเด็ดด ราคาเริ่มต้นที่ 25 บาท ยังมีไก่ทอดรสเด็ด ราคาเริ่มต้นที่ 20 บาทแต่ในรีวิวนี้ไก่ใหญ่ 50 จ้าาา อร่อยมากกก คือทุกโต๊ะต้องสั่งนะ แล้วยังมีเมนูอีกหลากหลาย ข้าวเหนียว ขนมจีน เริ่มต้นที่ 5 บาทจ้าาา ราคานี้คุ้มค่าประหยัด อร่อยยยย', 5, 'บ้านหลวง ซอย13 เชียงใหม่ (ซอยข้างวัดข่วงเปา เข้าซอยขับตรงมาตามทางเรื่อยๆประมาณ 100 เมตร ร้านอยู่ขวามือ รั้วเป็นไม้)', '1506934508112.jpg', 18.4103436, 98.6724488, 4, 9),
(15, 'บีทะเลเผา', 'อาหารทะเลอร่อยในกรุงเทพ', 4, 'ถนนเชิดวุฒากาศ กรุงเทพมหานคร (ร้านอยู่ตรงตลาดใหม่ดอนเมือง ถามคนดอนเมืองรู้จักทุกคน ใกล้สะพานลอยตรงข้ามอาคารสนามบินในประเทศ)', '1506934737129.jpg', 13.9139381, 100.5948922, 5, 60),
(16, 'มิดไนท์ไก่ตอน', 'มีทั้งไก่บ้าน และ ไก่ตอน', 4, '24/15 ถนนวิภาวดีรังสิต กรุงเทพมหานคร (ใกล้หน้าหมู่บ้านอยู่เจริญ)', '1506934848727.jpg', 13.9139356, 100.5620614, 5, 3),
(17, 'ณ กรุงเทพ', 'พื้นที่จอดรถน้อยไปน้อย อาหารอร่อยดี', 4, 'กรุงเทพกรีทาหน้าปากซอย8 แยก16', '1507021672146.jpg', 13.74068, 100.65446, 10, 12),
(18, 'สวง วังหลัง', 'ร้านสวย บรรยากาศน่านั่งส่วนใหญ่จะมีของสะสมสมัยเด็กๆที่หาดูยากกกกกกกกกกกกก', 4, 'อยู่ข้างหลังโรงพยาบาลศิริราช', '1507024518027.jpg', 13.7551013, 100.4838126, 9, 62),
(19, 'บะหมี่ภูธร', 'เป็นร้านที่ทำบะหมี่เอง แต่ได้น้อย คนซื้อเยอะ', 4, 'ซอยเมืองทอง พัฒนาการ53', '1507025279614.jpg', 13.7537575, 100.4636828, 81, 7),
(20, 'โจ๊กบางกอก', 'อร่อย ได้ไม่เยอะท่าไหร่พออิ่ม', 3, 'ปากวอยสุขุมวิท 38', '1507025819369.jpg', 13.7537377, 100.4636827, 27, 1),
(21, 'ร้านคุณสิน เป็ดย่าง', 'ร้านกว้างอาหารเยอะ มี่ทั้งบะหมี่เป็ดและข้าวหน้าเป็ด', 4, 'ซอย7 อ่อนนุชลาดกระบัง เขตลาดกระบัง', '1507026363103.jpg', 13.7225901, 100.7505574, 72, 46),
(22, 'ข้าวขาหมู', 'กลมกล่อมและได้เยอะพอสมควร', 3, 'เขตสวนหลวง หน้าโรงพยาบาลวิภาราม พัฒนาการ', '1507027102208.jpg', 13.7353327, 100.6340279, 81, 31),
(23, 'แม่วารี', 'เป็นร้านขายข้าวเหนียวมูลและมะม่วงที่มีมาหลายปีและคัดสรรแต่ของดีดี', 2, 'สี่แยกทองหล่อ', '1507027428272.jpg', 13.7239554, 100.5771628, 27, 62),
(24, 'เจ้โส่ย', 'มีหลายอย่างมากทั้งก๋วยเตี๊ยวข้าวขาหมูอร่อยจริงๆเด็ดทุกอย่าง', 5, 'หลังราม ช่วงหลังมหาลัยราม1', '1507027862228.jpg', 13.7239529, 100.544332, 68, 15),
(25, 'ข้าวมันไก่888', 'ร้านข้าวมันไก่ ก๋วยเตี๋ยว เปิดถึง ราคาเริ่มตั้งแต่ 40บาทขึ้นไป บรรยากาศน่านั่งแต่ยิ่งดึกทั้งคนทั้งยุงเยอะมาก', 4, '1820-1822 ถนนพัฒนาการ กรุงเทพมหานคร (ร้านอยู่ระหว่างซอยพัฒนาการ 48 กับ 50)', '1507028836601.jpg', 13.7364256, 100.6306444, 114, 3),
(26, 'บางหวาน sweet station', 'บรรยากาศน่านั่งจัดร้านน่ารัก แต่บางอย่างราคาค่อนข้างแพงไปหน่อย', 4, 'ซอยกรุงเทพกรีทา 7', '1507031073705.jpg', 13.742761, 100.6300903, 115, 62),
(28, 'วิชัยบริการ', 'บะหมี่แห้งต้มยำทุกอย่าง 50 บาท เป็นร้านแบบธรรมดาไม่มีแอร์ แต่รสชาติไม่บ้านๆเลย มีครบทุกอย่างทั้งเกี๊ยวลูกชิ้นสารพัด', 4, 'ซอย เอกมัย 22 กรุงเทพมหานคร (ในเอกมัย 22 เข้าซอยไป 10 เมตร ร้านอยู่ทางขวามือ)', '1507033954239.jpg', 13.7357559, 100.5862477, 110, 15),
(31, 'ก๋วยเตี๊ยวไก่สุขุมวิท69', 'เดินทางง่ายเป็นร้านแบบเพิงธรรมดาติดถนน แต่น้ำซุปอาหารเข้มข้นเว่อร์ๆๆ', 4, 'สุขุมวิท 69', '1507034461080.jpg', 13.7374566, 100.5700287, 110, 33),
(32, 'ก๋วยเตี๊ยวไก่มะระ หน้า สน.ทองหล่อ', 'น้ำซุปอร่อยมากไก่ซอยก็ให้เยอะที่สำคัญ มะระ ฝานบางมาก กรอบ ไม่ขมเท่าไร และเติมได้ไม่อั้น! มาสายๆคนเยอะมาก', 5, 'ซอย สุขุมวิท 55 กรุงเทพมหานคร (ย้ายมาหน้าตึก3 หลัง สน)', '1507035581659.jpg', 13.740695, 100.6868166, 27, 33),
(33, 'ชาริมรั้ว', 'รอไม่นาน บริการดีอร่อย แต่ยุงเยอะไปหน่อย', 3, 'ทับช้าง ร้านติดถนนกรุงเทพกรีทาซอย45', '1507036299012.jpg', 13.7401166, 100.6861266, 115, 62),
(34, 'The SnowCap Bingsoo 14', 'ร้านแบบพอดีๆแต่งร้านได้สวยได้เร็ว ราคาประหยัด', 4, 'กรุงเทพกรีทาซอย 7', '1507036688834.jpg', 13.7542012, 100.6505957, 115, 8),
(36, 'ต.รุ่งโรจน์ ลูกชิ้นปลาสุนทรโกษา', 'ลูกชิ้นปลาไม่มีกลิ่นค้าวเลยทุกอย่างสดสะอาด และราคาไม่แพง', 4, 'ถนน สุนทรโกษา กรุงเทพมหานคร (ห้าแยก ณ​ ระนอง ตรงข้ามสโมสรการท่าเรือ)', '1507037558820.jpg', 13.7155936, 100.5666237, 54, 16),
(37, 'ก๋วยเตี๊ยวเรืออยุธยา', 'กินมาตั้งแต่ชามละ 12บาทตอนนี้ชามละ 20แล้วแต่ว่าเมื่อก่อนอร่อยกว่านี้เยอะ', 3, 'ก๋วยเตี๋ยวเรืออยุธยา ตรงข้ามเตรียมพัฒน์หน้าปากซอย พัฒนาการ53', '1507038413284.jpg', 13.715591, 100.5403589, 114, 4),
(38, 'ก๋วยเตี๊ยวลูกชิ้นหมู ฮีโร่', 'ใส่ทุกอย่างชามใหญ่มากจะราคา90 บาทอร่อยมากๆเข้มข้นสุดๆๆๆๆ', 4, 'ลาดพร้าว 101 ซอย 16', '1507039887684.jpg', 13.7155491, 100.4352927, 74, 15),
(39, 'ลักษณ์ข้าวมันไก่ตอน', 'ข้าวดูมันไปหน่อย แต่ชอบน้ำจิ้มน่าจะถูกปากใครหลายๆคน', 3, 'ซอยพัฒนาการ 5(เข้าซอยพัฒนาการ 53 (ฝั่งตรงข้ามซ.โรงเรียนเตรียมอุดมศึกษาพัฒนาการ) มาประมาณ 50 เมตร', '1507040291251.jpg', 13.7154702, 100.4352922, 114, 3),
(40, 'ขนมครกใบเตย', 'เป็นขนมครกกลิ่นใบเตย หอมมากๆ และสะอาดด้วยไม่แพงด้วย', 4, 'สยามสแควร์ ซอย9', '1507040659680.jpg', 13.7153913, 100.4352917, 80, 62),
(41, 'พีพส์ ไทย อีทเตอรี่', 'เข้าถึงง่าย อาหารอร่อย', 5, '60 ถนนพระอาทิตย์ | แขวงชนะสงคราม เขตพระนคร, กรุงเทพมหานคร (กทม.) 10200, ไทย0200, ไทย', '1507040811128.JPG', 13.7153124, 100.4352913, 9, 56),
(42, 'ขนมจีนฟินเว่อร์', 'ชอบแกงเขียวหวานเข้มข้น และผักเติมได้ไม่อั้นเลยมันดี', 3, 'ซอย สุขุมวิท 103 กรุงเทพมหานคร (ร้านอยู่ตลาดอุดมสุขหน้าแบงค์ธนชาตเยื้องๆวัตสัน)', '1507041272552.jpg', 13.75337, 100.50483, 104, 2),
(43, 'สมาคมภริยาทหารเรือ', 'สถานที่ที่ดีสำหรับการไปกิน และผ่อนคลายหลังจากวันที่ร้อนยาวแกรนด์พาเลซ', 4, 'พระนคร,กรุงเทพมหานคร,ไทย', '1507041498065.jpg', 13.7517473, 100.4870195, 9, 62),
(44, 'ก๋วยเตี๋ยวไก่ร้านนก', 'อร่อยเด็ดไม่ต้องปรุง!!!', 4, 'พระรามที่ 9 กรุงเทพมหานคร', '1507041690935.JPG', 13.7439589, 100.6309954, 10, 4),
(45, 'คั่วไก่แฮปปี้แลนด์ 1999', 'ผัดจานต่อจาน ได้กลิ่นเกรียมๆอร่อย', 2, 'ถนน แฮปปี้แลนด์ กรุงเทพมหานคร (ตลาดแฮปปี้แลนด์)', '1507041713345.jpg', 13.7709874, 100.6395734, 10, 23),
(46, 'ยอดลาบเป็ดอุดร', 'ลาบเป็ดเค้าเด็ดขาดจริงๆ', 4, 'ซอย 11 กรุงเทพมหานคร (ซอย 49)', '1507041793801.JPG', 13.74307, 100.6298403, 10, 6),
(47, 'อรทัย ซูชิ', 'คุ้มประหยัดอร่อยดีได้ปริมาณเหมาะสม', 3, 'วังหลัง', '1507042085787.jpg', 13.7555009, 100.482904, 9, 56),
(48, 'จับแพะชลแกะ', 'ร้านอาหารแนวนั่งชิลล์ บรรยากาศดี อาหารโอเค', 4, 'ถนน ราชพฤกษ์ กรุงเทพมหานคร (มาจากปิ่นเกล้า เลี้ยวซ้ายเข้าราชพฤกษ์แล้วกลับรถ)', '1507042579795.JPG', 13.7626595, 100.4423235, 11, 61),
(49, 'สายไหมบะหมี่เกี๊ยวกุ้ง', 'แวะมาทานย่านวังหลังค่ะ อยู่ซอยติดท่าน้ำ เดินตรงมาจากเบเกอรี่วังหลังและซูชิอรทัยเรื่อยๆเลยค่ะ ร้านอยู่ทางขวามือ เป็นโต๊ะเล็ก4คน ไม่มีแอร์ สะอาดสะอ้านดีค่ะ สั่งเป็นบะหมี่เกี๊ยวหมูแดงแห้ง/น้ำ ชามละ40บาท อิ่มพอตัวเลยค่ะ เส้นหมี่เล็ก ละเอียด เหนียวนุ่ม อร่อย ตัวเกี๊ยวแป้งบาง กุ้งเต็มคำ ชอบค่ะ', 4, '25 ตรอกวังหลัง ซอยวังหลัง 1 กรุงเทพมหานคร (อยู่ในตรอกวังหลัง (สุดท่าน้ำศิริราช ปากซอยมีแฟมมิลี่มาร์ช))', '1507042738201.JPG', 13.7554921, 100.4840452, 11, 7),
(50, 'มนต์นมสด', 'คนแน่นทั้งวันเลยร้านนี้', 4, 'ถนน อิสรภาพ กรุงเทพมหานคร (มาจากแยกพรานนก เลยซอยโรงพยาบาลธนบุรี 1 จอดรถที่นันทอุทยาน ในเขตกองทัพเรือ)', '1507042868134.JPG', 13.7554919, 100.4774791, 11, 8),
(51, 'ร้านลูกชิ้นไต้หวันน้ำไส', 'ร้านเล็กที่จอดไม่มี แต่รสชาติดีเวอร์ๆๆ', 4, 'สุขุมที่19', '1507042880724.jpg', 13.737492, 100.5573583, 105, 16),
(52, 'ตำม่วนสุขุมวิท', 'ช่วงพักเที่ยงคนเยอะมาก แต่ พนง บริการดี', 3, 'ตั้งอยู่ในอาคารมิดทาวน์อโศก ชั้น 2', '1507043518369.jpg', 13.9217676, 100.6903854, 105, 61),
(53, 'แซ่บสะเด็ดอโศก', 'อร่อยทุกเมนู', 3, 'ถนน อโศกมนตรี อยู่ริมถนนอโศก ข้างร้าน Mister Donut ใกล้ตึก Q House', '1507043974987.jpg', 13.745877, 100.5606503, 105, 6),
(54, 'ก๋วยจั๊บ', 'เมนูหลากหลายมาก50เอง', 4, 'ปากซอยสุขุมวิม38', '1507044531898.jpg', 13.7179873, 100.5802582, 27, 11),
(55, 'ข้าวหน้าเป็ด', 'ร้านมีมานานหาง่าย', 3, 'หน้าปากซอยสุขุมวิท38', '1507044825196.jpg', 13.7179873, 100.5802582, 27, 46),
(56, 'ร้านก๋วยเตี๋ยวไก่ตุ๋นคุณอุ๋ม', 'อร่อยได้เยอะ', 4, 'ตรอกวังหลัง ซอยวังหลัง ถนนอรุณอมรินทร์ แขวงศิริราช เขตบางกอกน้อย กรุงเทพฯ', '1507045075934.jpg', 13.755367, 100.4842264, 9, 33),
(57, 'Daniel Thaiger', 'ร้านนี้จะเป็นรถคอยจอดหลายที่ส่วนใหญ่จะมาอยู่ที่สุขุมวิท38', 3, 'สุขุมวิท38', '1507087131526.jpg', 13.7273133, 100.5712815, 27, 40),
(58, 'ปูนึ่งบ้านทนายสัมมากร', 'ไม่ต้องไปไกลถึงทะเล ราคาถูก ของสดอีก', 3, 'ซอย สัมมากร 1 จี 5 กรุงเทพมหานคร (แผง 620 ตลาดนัดสัมมากร)', '1507087527682.jpg', 13.8452493, 100.6707307, 83, 53),
(59, 'ร้านข้าวหมูแดงหมูกรอบรุ่งสุรีย์โภชนา', 'อร่อยได้เยอะ หมูกรอบก็กรอบจริงๆ', 4, 'รามคำแหง60', '1507087848915.jpg', 13.7616663, 100.6471722, 68, 24),
(60, 'Ting thai Fu', 'ร้านจีนระดับตำนาน อร่อยแทบทุกอย่างแถมราคาเบาๆ', 3, '166 ปากซอยรามคำแหง 14 ถนนรามคำแหง', '1507088239804.jpg', 13.753247, 100.609423, 68, 42),
(61, 'ก๋วยเตี๊ยวไก่ตุ๋นมะระ', 'เป็นร้านรถเข็น แต่มีให้เลืกเยอะพอสมควร กับน้ำซุปที่หอมกลอมกล่อมชอบบบบบบ', 5, 'รามคำแหง 19/1', '1507088472762.jpg', 13.7532464, 100.5941021, 68, 33),
(62, 'ครัวอะหมัดรสดี', 'ตกแต่งร้านน่ารักมากบรรยากาศดี อาหารใช้ได้', 3, '27 ถนนพระราม 9 ตัดใหม่-ศรีนคริทร์ แขวงหัวหมาก เขตบางกะปิ กรุงเทพมหานคร', '1507088671249.jpg', 13.7443246, 100.6088604, 57, 34),
(63, 'ก๋วยเตี๋ยวหมูตำลึงต้มยำกระดูกหมู@หลังราม', 'ได้เยอะมากกกกก หอมอร่อย', 3, 'ผ่านซอยรามคำแหง 24 แยก 10', '1507088965695.jpg', 13.7515756, 100.6171123, 68, 27),
(64, 'Hey! 53 Coffee & Kitchen', 'มีทั้งของหวานกาแฟแล้วแต่จะชอบเลย บรรยาการศคือดี', 3, 'พระราม 9 ซอย 53 กรุงเทพ', '1507089192438.jpg', 13.7432561, 100.6140128, 57, 62),
(65, '1 Of A Kind', 'บรรยากาศดีมากกกกกก ขนมอร่อย แต่หยยุดทุกวันพุธน้าาา', 5, 'พระรามเก้า ซอย 46 ตรงข้ามโครงการเดอะไนน์ พระราม9', '1507089354875.jpg', 13.740322, 100.6247103, 57, 62),
(66, 'รุ่งเรืองก๋วยเตี๊ยวหมู', 'ปรุงมาอร่อยดีให้น้อย แต่ราคาสูงไป', 3, 'ซอย สุขุมวิท 26 กรุงเทพมหานคร', '1507089700607.jpg', 13.7283308, 100.5682612, 59, 15),
(67, 'DANIEL THAIGE', 'ให้พอดีๆกับราคาไม่สูงมากเกินไป', 3, 'สุขุมวิท 30/1 กรุงเทพมหานคร', '1507089946205.jpg', 13.7273133, 100.5712815, 59, 40),
(68, 'Hokkaido Cheese Toast Centerpoint', 'ชีทเน้นๆๆ', 4, 'สยามสแควร์', '1507090473093.jpg', 13.744512, 100.531182, 80, 62),
(69, 'ทาโกะยากิ Tako Gen', 'รสชาติก็เรื่อยๆแก้หิวได้', 3, 'ชั้น 3 อาคารดิจิตอล เกทเวย์ (Digital gateway) สยามสแควร์', '1507090695777.jpg', 13.7449088, 100.5313538, 80, 58),
(70, 'ฉ่อย', 'อร่อยมากๆร้านตกแต่งสวยเก๋ๆ', 4, '152/5-6 ถ.อรุณอัมรินทร์', '1507091044155.jpg', 13.7177507, 100.3933018, 9, 15),
(73, 'จีน่า น้ำปั่น', 'เป็นผลไม้เน้นๆที่เอามาปั่นและรสชาติที่ไม่เหมือนที่อื่นแน่นอน', 4, '306 อรุณอมรินทร์ 18 (วัดระฆัง) แขวงศิริราช เขตบางกอกน้อย', '1507091845095.jpg', 13.7551224, 100.4839722, 9, 61),
(74, 'กาแฟร่ำรวย', 'ร้านนี้กาแฟเข้มข้นมากๆบรรยากาศร้านสบายแต่หยุดทุกวันพุธ', 3, '306 อรุณอมรินทร์ 18 (วัดระฆัง) แขวงศิริราช เขตบางกอกน้อย', '1507091978171.jpg', 13.754053, 100.4840453, 9, 62),
(75, 'หมูทอดชาววัง', 'ร้านนี้คนเยอะมากเพราะร้านเล็กแต่อร่อยมากขึ้นชื่อสุดๆ', 4, 'บริเวณตึกวังหลังพลาซ่า ตรอกวังหลัง ซอยวังหลัง ถนนอรุณอมรินทร์ แขวงศิริราช เขตบางกอกน้อย กรุงเทพฯ', '1507092184029.jpg', 13.7551199, 100.4511414, 9, 19),
(76, 'ก๋วยเตี๊ยวเรือวังหลัง', 'คนเยอะเข้าตลอดอร่อยมากกกก', 3, 'ซอย อรุณอมรินทร์ 22 กรุงเทพมหานคร', '1507094272144.jpg', 13.755115, 100.4511413, 9, 4),
(77, 'ก๋วยเตี๊ยวต้มยำไข่หวาน', 'มันเผ็ชอร่อยมาก แบบไม่ต้องปรุง', 5, '215/14-15 ซ.วังหลัง เยื้อง ก๋วยจั๊บญวณคุณแดง กรุงเทพมหานคร', '1507094494784.jpg', 13.75511, 100.4511413, 9, 15),
(78, 'มะม่วงหนุงหนิ่ง', 'แบบกล่องละ60บาทเองและได้เยอะมากๆๆเลย คุ้มมมมมมม', 4, 'หน้าปากซอยสุขุมวิท38', '1507094727879.jpg', 13.864017, 100.4967291, 27, 62),
(80, 'สุกี้เมาเวอร์ริค สุกี้ยากี้แห้ง-น้ำ', 'พอขยายร้านแล้วรู้สึกว่าคนเยอะกว่าเดิมและชอบเพราะน้ำซุปมันอร่อย', 3, 'ถนน อุดมสุข กรุงเทพมหานคร (ใกล้ซอย อุดมสุข 30 เป็นตึกแถว)', '1507095200158.jpg', 13.7489665, 100.5120385, 104, 16),
(81, 'เกาเหลาเลือดหมู อุดมสุข', 'เป็นร้านรถเข็น ให้ของเยอะดีพวกเครื่องในและมีพวกข้าวต้มปลาด้วย', 3, 'ซอย สุขุมวิท 103 กรุงเทพมหานคร', '1507095512608.jpg', 13.6776758, 100.6309576, 104, 29),
(82, 'โจ๊กอุดม', 'ที่จอดรถไม่มี แต่เครื่องแน่นๆ', 2, 'ถนน อุดมสุข กรุงเทพมหานคร (อยู่ปากซอยอุดมสุข ซอย 8)', '1507095744322.jpg', 13.6785348, 100.6141406, 104, 1),
(83, 'ลูกชิ้นดิสโก้', 'ลูกชิ้นไม่มีกลิ่นเหม็นค้าว', 3, '493/18 มถนนอยู่ปากซอยราชวิถี อนุสาวรีย์ชัย กรุงเทพ', '1507096197257.jpg', 13.7636758, 100.5391291, 102, 16),
(84, 'IS AM ARE', 'มีเมนูให้เลือกเยอะมากเลยร้านกว้างสะดวก', 3, 'อนุสาวรีย์ชัยสมรภูมิ 23/1 ซอยรางน้ำ ถนนพญาไท ราชเทวี กรุงเทพ', '1507096379494.jpg', 13.7636758, 100.5391291, 102, 40),
(85, 'บะหมี่เกี๊ยวแชมป์โลก', 'รสชาติดีในระดับหนึ่งกินพออิ่ม แต่เปิดเย็นๆ', 3, 'ซอย สุขุมวิท 65 กรุงเทพมหานคร (เข้าจากปากซอยมาประมาณ 50 เมตร)', '1507096630430.jpg', 13.7187346, 100.5864001, 110, 7),
(86, 'ผัดไทไฟลุก', 'ไฟลุกสมชื่อเลย อร่อยเกิ้น', 3, 'สุขุมวิท 38', '1507096815627.jpg', 13.7236668, 100.576733, 27, 12),
(89, 'ไพบูลย์ เป็ดย่าง', 'น้ำราดอร่อยเข้ากันดี', 3, 'สาขา2 สวนหลวง ร9 ตรงข้ามวัดตะกล่ำ สาขา3 134/48ซอยมังกร ถนนเทพารักษ์ กรุงเทพมหานคร', '1507097826633.jpg', 13.6778944, 100.6630294, 81, 46),
(91, 'ลุงก๋วยเตี๋ยวเรืออยุธยา', 'เลิฟที่สุด กินไม่มีเบื่อ', 4, 'อรุณอมรินทร์ กรุงเทพมหานคร (ตรงข้ามวัดเครือวัลย์ ทางเข้าโรงเรียนทวีธาภิเษก)', '1507100866950.JPG', 13.7456316, 100.4832423, 12, 4),
(92, 'ข้าวมันไก่บางบอน', 'เจ้าดังแห่งย่านบางบอน เป็นอีกหนึ่งร้านที่ไม่ได้ทานนานมาก แต่ขับรถผ่านบ่อยมาก ส่วนมากจะซื้อกลับไม่ก็สั่งเป็นตัวมากกว่าทานที่ร้าน สั่งออเดอร์ที่หน้าร้านจากนั้นรอเรียก ทางร้านมีเก้าอี้ให้สำหรับนั่งรอในวันอาทิตย์ที่ร้านยางข้างๆ หยุดจะได้นั่งแถวหน้าร้านยางนะ', 4, 'ถนน เอกชัย กรุงเทพมหานคร (ตรงข้ามบิ๊กซี บางบอน ร้านสีชมพู อยู่ข้างๆ ร้านยาง)', '1507101006607.JPG', 13.679373, 100.4327912, 12, 3),
(93, 'สามเสนวิลล่า', 'เก่าแก่ อร่อย คึกคัก', 4, 'เศรษฐศิริ 1 กรุงเทพมหานคร (ใกล้กับโรงพยาบาลวิชัยยุทธ 2)', '1507101211995.JPG', 0, 0, 13, 37),
(94, 'บะหมี่ราชวิถี (ยุ้ยกี่)', 'มาชิมบะหมี่-ขนมจีบสูตรเก่าแก่ 60 ปีที่ยุ้ยกี่ อร่อยสมคำร่ำลือ', 4, 'ถนน สามเสน กรุงเทพมหานคร (หัวมุมแยกซังฮี้ ฝั่งวชิรพยาบาล)', '1507101314809.JPG', 0, 0, 13, 7),
(95, 'ไก่ย่างบางตาล', 'ถูกแบบนี้ก็ได้หรอ', 3, 'ถนน ราชพฤกษ์ กรุงเทพมหานคร (อยู่ใกล้สถานีรถไฟฟ้าบางหว้า 1.2 ก.ม.)', '1507101550359.JPG', 0, 0, 14, 9),
(98, 'เซี่ยงกี่ข้าวต้มปลา', 'พิสูจน์ฝีมือร้านข้าวต้มปลาในตำนานแห่งย่านเยาวราช - คิดถึงข้าวต้มปลาสูตรโบราณ วัตถุดิบจัดเต็ม ต้องมาลอง', 5, 'ซอย เจริญกรุง 12 กรุงเทพมหานคร (ซอยบำรุงรัตน์ เยาวราช ร้านอยู่กลางซอย)', '1507101695537.JPG', 0, 0, 14, 29),
(99, 'หนึ่งปูม้า-ทะเลเผา', 'ซีฟู้ดสด ราคาดี ไม่แปลกใจที่คนเต็มร้านตลอด', 4, 'ซอยรามคำแหง 24 แยก 2 (ซอยถาวรธวัช) กรุงเทพมหานคร (ร้านอยู่ซ้ายมือก่อนลงอุโมงแยกพัฒนาการ)', '1507101881805.JPG', 0, 0, 15, 14),
(100, 'ลาบเป็ด ป.4 (พระราม9)', 'ความเผ็ดไม่ป.4 แน่ๆ', 4, 'ถนน เพชรพระราม กรุงเทพมหานคร (ตรงข้ามปั๊มแก๊ส Ngv ปตท. ข้างปั๊มบางจาก)', '1507102066480.JPG', 0, 0, 15, 6),
(101, 'สุกี้ยากี้เมาเวอริค', 'สุกี้เจ้าดัง ไม่ลองเดียวคุยกับเค้าไม่รู้เรื่อง', 4, 'ถนน บำรุงเมือง ซอย ยศเส กรุงเทพมหานคร (ใกล้วัดเทพศิรินทร์ แถวๆโรงพยาบาลหัวเฉียว)', '1507102426821.JPG', 0, 0, 16, 51),
(102, 'จิ้มจุ่มรสแซ่บ วงเวียนใหญ่', 'อร่อยทุกอย่างเลย', 4, 'BTS วงเวียนใหญ่ 82,84 ถนนกรุงธนบุรี กรุงเทพมหานคร (ร้านอยู่ริมถนนกรุงธนบุรี ติดทางขึ้นบันไดเลื่อนBTSวงเวียนใหญ่)', '1507102899431.JPG', 0, 0, 17, 13),
(103, 'เจริญไทย สุกี้เจ้าเก่า', 'สุกี้โบราณ ชุดเดียวเอาอยู่', 4, 'ซอย ลาดหญ้า 16 กรุงเทพมหานคร (อยู่ปากซอยลาดหญ้าซอย 16 ริมถนนลาดหญ้า)', '1507103061894.JPG', 0, 0, 17, 13),
(104, 'สมศักดิ์ ไก่ทอด ปลาเผา', 'ข้าวเหนียว ส้มตำ ปลาเผา มาแล้วจ้าาาา', 4, 'ถนนหทัยราษฎร์ กรุงเทพมหานคร (ตรงข้ามกับซอยหทัยราษฎร์ 26)', '1507103266451.JPG', 0, 0, 18, 9),
(105, 'ยิ่งกี่ เป็ดย่างฮ่องกง', 'สด ใหม่ อร่อย ราคากันเอง', 4, 'ซอย พระยาสุเรนทร์ 11 กรุงเทพมหานคร (พระยาสุเรนทร์13)', '1507103380069.JPG', 0, 0, 18, 7),
(106, 'โมโม พาราไดซ์', 'คิดถึงสุกี้ยากี้สไตล์ญี่ปุ่น มาที่นี่', 4, 'ซอย 39 ถนน รามอินทรา กรุงเทพมหานคร (เดอะพรอมานาด ชั้น 2)', '1507103708643.JPG', 0, 0, 19, 13),
(107, 'ช็อคโกแลต วิลล์', 'หลงเสน่ห์อาหารผสมผสานในหมู่บ้านยุโรปแสนสวยที่คู่ควรเข้ามาสัมผัส', 4, 'ซอย นวมินทร์ 74 แยก 3-8-32 กรุงเทพมหานคร (เสาตอหม้อที่ 281)', '1507103912534.JPG', 0, 0, 19, 55),
(108, 'ร้าน ละมุน ลาดกระบัง', 'ชอบพายอร่อย', 2, 'ถนน ฉลองกรุง กรุงเทพมหานคร (เลี้ยวเข้าเทคโนฯ พระจอมเกล้า ร้านอยู่ขวามืดก่อนถึง Family Mart มีกระถางต้นไม้สีส้มหน้าร้าน)', '1507111585364.jpg', 0, 0, 72, 62),
(109, 'ณ ลาดกระบัง', 'เป็นร้านเล็กๆริมคลอง ส่วนใหญ่นักเรียนจะชอบมากินกัน', 2, 'ถนน หลวงแพ่ง กรุงเทพมหานคร (อยู่หลังตลาดหัวตะเข้ เดินเข้าซอยข้างเซเว่น เดินตรงมาเรื่อยๆข้ามสะพาน แล้วเลี้ยวขวา', '1507111829427.jpg', 0, 0, 72, 62),
(110, 'ร้านลูกชิ้นหมูอนามัยสุวรรณภูมิ', 'เส้นที่นี้ไม่ใส่กระเทียวเจียวเลยติดกันไปนิดดด แต่อร่อย', 2, 'ถนน ลาดกระบัง ลาดกระบัง 9/3 กรุงเทพมหานคร', '1507112020543.jpg', 0, 0, 72, 7);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_category`
--

CREATE TABLE `restaurant_category` (
  `id_restaurant_category` int(10) NOT NULL COMMENT 'รหัสหมวดหมู่ร้านอาหาร',
  `name_restaurant_category` varchar(255) NOT NULL COMMENT 'ชื่อหมวดหมู่ร้านอาหาร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant_category`
--

INSERT INTO `restaurant_category` (`id_restaurant_category`, `name_restaurant_category`) VALUES
(1, 'ข้าวสาร'),
(2, 'คลองสาน'),
(3, 'จตุจักร'),
(4, 'จอมทอง'),
(5, 'ดอนเมือง'),
(6, 'คลองถม'),
(7, 'คลองเตย'),
(8, 'ตลาดพลู'),
(9, 'ท่าพระจันทร์ - วังหลัง'),
(10, 'บางกะปิ'),
(11, 'บางกอกน้อย'),
(12, 'บางบอน'),
(13, 'ดุสิต'),
(14, 'เยาวราช'),
(15, 'คลองตัน'),
(16, 'คลองถม - วรจักร - ยศเส'),
(17, 'เจริญนคร - ตากสิน'),
(18, 'คลองสามวา'),
(19, 'คันนายาว'),
(20, 'งามวงศ์วาน - พงษ์เพรช'),
(21, 'จุฬา'),
(22, 'ดินแดง'),
(23, 'ตลิ่งชัน'),
(24, 'ติวานนท์'),
(25, 'ถนนจันทน์'),
(26, 'ทวีวัฒนา'),
(27, 'ทองหล่อ'),
(28, 'ทุ่งครุ'),
(29, 'ท่าพระ'),
(30, 'ท่าพระอาทิตย์ - บางลำภู'),
(31, 'ธนบุรี'),
(32, 'นราธิวาสราชนครินทร์'),
(33, 'นิด้า - เสรีไทย'),
(34, 'บางกอกใหญ่'),
(35, 'บางขุนเทียน'),
(36, 'บางคอแหลม'),
(37, 'บางซื่อ'),
(38, 'บางนา'),
(39, 'บางพลัด'),
(40, 'บางรัก'),
(41, 'บางเขน - หลังสี่ - แจ้งวัฒนะ'),
(42, 'บางแค'),
(43, 'บึงกุ่ม'),
(44, 'ปทุมวัน'),
(45, 'ประชาชื่น - วงศ์สว่าง'),
(46, 'ประตูน้ำ'),
(47, 'ประเวศ'),
(48, 'ปิ่นเกล้า'),
(49, 'ป้อมปราบศัตรูฟาย'),
(50, 'พญาไท'),
(51, 'พระนคร'),
(52, 'พระราม 2'),
(53, 'พระราม 3'),
(54, 'พระราม 4'),
(55, 'พระราม 5'),
(56, 'พระราม 8'),
(57, 'พระราม 9'),
(58, 'พระโขนง - อ่อนนุช'),
(59, 'พร้อมพงษ์'),
(60, 'ภาษีเจริญ'),
(61, 'มีนบุรี'),
(62, 'ยานนาวา'),
(63, 'รัชดา - ห้วยขวาง'),
(64, 'รัตนโกสินทร์'),
(65, 'ราชประสงค์'),
(66, 'ราชพฤกษ์'),
(67, 'ราชเทวี'),
(68, 'รามคำแหง - ลำสาลี'),
(69, 'รามอินทรา'),
(70, 'ราษฎร์บูรณะ - สุขสวัสดิ์'),
(71, 'ร่มเกล้า'),
(72, 'ลาดกระบัง'),
(73, 'ลาดปลาเค้า'),
(74, 'ลาดพร้าว'),
(75, 'วังทองหลาง'),
(76, 'วังหิน - โชคชัย 4'),
(77, 'วัชรพล'),
(78, 'วัฒนา'),
(79, 'ศรีนครินทร์'),
(80, 'สยาม'),
(81, 'สวนหลวง'),
(82, 'สะพานควาย'),
(83, 'สะพานสูง'),
(84, 'สะพานใหม่'),
(85, 'สัมพันธวงศ์'),
(86, 'สาทร'),
(87, 'สาธุประดิษฐ์'),
(88, 'สามย่าน'),
(89, 'สามเสน'),
(90, 'สายไหม'),
(91, 'สำโรง'),
(92, 'สีลม'),
(93, 'สีพระยา'),
(94, 'สุขาภิบาล 1, 2, 3'),
(95, 'สุทธิสาร'),
(96, 'หนองจอก'),
(97, 'หนองแขม'),
(98, 'หลักสี่'),
(99, 'หลังสวน - ชิดลม - เพลินจิต'),
(100, 'หลานหลวง'),
(101, 'ห้วยขวาง'),
(102, 'อนุสาวรีย์ชัยสมรภูมิ - รางน้ำ'),
(103, 'อารีย์'),
(104, 'อุดมสุข'),
(105, 'อโศก - นานา'),
(106, 'เกษตร - นวมินทร์'),
(107, 'เจริญกรุง - ถนนตก - หัวลำโพง'),
(108, 'เพชรบุรีตัดใหม่'),
(109, 'เพชรเกษม'),
(110, 'เอกมัย'),
(111, 'เหม่งจ๋าย'),
(112, 'เสนา - รัชโยธิน'),
(113, 'เลียบทางด่วนรามอินทรา'),
(114, 'พัฒนาการ'),
(115, 'กรุงเทพกรีฑา');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_image`
--

CREATE TABLE `restaurant_image` (
  `id_restaurant_image` int(10) NOT NULL COMMENT 'รหัสรูปภาพร้านอาหาร',
  `name_restaurant_image` varchar(255) DEFAULT NULL COMMENT 'ชื่อรูปภาพร้านอาหาร',
  `id_restaurant` int(10) DEFAULT NULL COMMENT 'foreign key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `restaurant_image`
--

INSERT INTO `restaurant_image` (`id_restaurant_image`, `name_restaurant_image`, `id_restaurant`) VALUES
(1, '1506680714196.jpg', 1),
(2, '1506680802889.jpg', 1),
(3, '1506680821145.jpg', 1),
(4, '1506680948039.jpg', 1),
(5, '1506680966143.jpg', 1),
(6, '1506681031570.jpg', 1),
(7, '1506681050990.jpg', 1),
(8, '1506681143617.jpg', 1),
(13, '1506929215198.jpg', 1),
(14, '1506929593676.jpg', 2),
(15, '1506933634222.jpg', 1),
(16, '1506934137303.jpg', 2),
(17, '1506934372602.jpg', 2),
(18, '1506936399263.jpg', 8),
(19, '1506939900413.jpg', 11),
(20, '1507091318218.jpg', 39),
(21, '1507179153148.jpg', 1),
(22, '1507179175141.jpg', 1),
(23, '1507356893435.jpg', 49),
(24, '1507357685470.jpg', 49),
(25, '1507357716405.jpg', 49),
(26, '1507357766725.jpg', 49),
(27, '1507357774909.jpg', 49),
(28, '1507357782592.jpg', 49),
(29, '1507359141554.jpg', 47),
(30, '1507359197719.jpg', 47),
(31, '1507366961918.jpg', 8),
(32, '1507444105746.jpg', 51),
(33, '1507874008982.jpg', 22),
(34, '1507874081308.jpg', 22),
(35, '1507874113697.jpg', 22);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL COMMENT 'รหัสผู้ใช้',
  `username_user` varchar(255) NOT NULL COMMENT 'ชื่อผู้ใช้',
  `password_user` varchar(255) NOT NULL COMMENT 'รหัสผ่านผู้ใช้',
  `email_user` varchar(255) NOT NULL COMMENT 'อีเมล์ผู้ใช้',
  `image_user` text NOT NULL COMMENT 'รูปภาพผู้ใช้'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username_user`, `password_user`, `email_user`, `image_user`) VALUES
(1, 'sittikiat', '123456', 'miikeoho@gmail.com', '1506677425124.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id_restaurant`);

--
-- Indexes for table `restaurant_category`
--
ALTER TABLE `restaurant_category`
  ADD PRIMARY KEY (`id_restaurant_category`);

--
-- Indexes for table `restaurant_image`
--
ALTER TABLE `restaurant_image`
  ADD PRIMARY KEY (`id_restaurant_image`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสคอมเม้น', AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสเมนูอาหาร', AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id_restaurant` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสร้านอาหาร', AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `restaurant_category`
--
ALTER TABLE `restaurant_category`
  MODIFY `id_restaurant_category` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสหมวดหมู่ร้านอาหาร', AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `restaurant_image`
--
ALTER TABLE `restaurant_image`
  MODIFY `id_restaurant_image` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสรูปภาพร้านอาหาร', AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้ใช้', AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;