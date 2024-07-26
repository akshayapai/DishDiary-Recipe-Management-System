-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 05:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898989, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `recipeId` int(11) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `userEmail` varchar(200) DEFAULT NULL,
  `commentMessage` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `recipeId`, `userName`, `userEmail`, `commentMessage`, `postingDate`, `status`, `updationDate`) VALUES
(6, 7, 'abbas', '4nm21cs008@nmamit.in', 'Great recipe, thanks!', '2023-12-06 23:05:46', 1, '2023-12-06 23:13:35'),
(7, 6, 'akshaya', '4nm21cs014@nmamit.in', 'Fantastic recipe, thanks a lot!', '2023-12-06 23:06:42', NULL, NULL),
(8, 2, 'tester1', 'tester1@gmail.com', 'Fantastic!', '2023-12-06 23:11:31', 1, '2023-12-06 23:13:53'),
(9, 1, 'tester2', 'tester2@gmail.com', 'Great!', '2023-12-06 23:11:52', NULL, NULL),
(10, 3, 'abbas', '4nm21cs008@nmamit.in', 'Instructions not clear.', '2023-12-06 23:12:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `userEmail` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `commentMessage` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `adminRemark` mediumtext DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `userName`, `userEmail`, `subject`, `commentMessage`, `postingDate`, `adminRemark`, `updationDate`) VALUES
(3, 'tester1', 'tester1@gmail.com', 'About recipe page', 'This is for testing.', '2023-12-06 23:10:24', NULL, NULL),
(4, 'tester2', 'tester2@gmail.com', 'About DishDiary home page', 'Testing.', '2023-12-06 23:11:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '                                <div style=\"text-align: center;\"><b><font size=\"6\">Welcome to Food Recipe System</font></b></div><div style=\"text-align: left;\"><div>Looking for vegetarian and vegan Indian Dinner recipes? Here are the best 40+ easy, full of flavor Dinner Recipes from curries, stir-fries, lentils, and rice dishes that your family will love.</div><div><br></div><div>This post includes popular restaurant/take-out favorites from Paneer makhani, Palak paneer, Dal makhani, and Vegetable biryani, to homestyle recipes like Kala chana curry, Moong khichdi, and many more!</div></div><div style=\"text-align: left;\"><p class=\"bodytext\" style=\"margin-bottom: 10px; color: rgb(33, 37, 41); line-height: 1.5; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><br></p></div>', '2023-08-14 18:04:57'),
(2, 'contactus', 'Contact Us', '<b>Food Recipe System Portal</b><div><b>Contact Number:</b>+91-96784532145</div><div><b>email: </b>info@gmail.com</div><div><b>Address : </b>XYZ street ABC</div>', '2023-08-14 19:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblrecipes`
--

CREATE TABLE `tblrecipes` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `recipeTitle` varchar(255) DEFAULT NULL,
  `recipePrepTime` int(11) DEFAULT NULL,
  `recipeCookTime` int(11) DEFAULT NULL,
  `recipeYields` int(11) DEFAULT NULL,
  `recipeIngredients` mediumtext DEFAULT NULL,
  `recipeDescription` mediumtext DEFAULT NULL,
  `recipePicture` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblrecipes`
--

INSERT INTO `tblrecipes` (`id`, `userId`, `recipeTitle`, `recipePrepTime`, `recipeCookTime`, `recipeYields`, `recipeIngredients`, `recipeDescription`, `recipePicture`, `postingDate`) VALUES
(1, 1, 'Alfredo Pasta', 30, 60, 5, '2 cups general purpose white flour,2 eggs,1 tablespoon olive oil,4 tablespoons water', 'Add all ingredients to a food processor.\r\nProcess until mixture starts to form a ball. You should knead the dough for at about ten minutes until it bouncers back when pressed down with your finger.\r\nYou may want to start with a little less water depending on the size of your eggs and moistness of your flour.\r\nWrap ball in plastic wrap and let rest for about an hour.\r\nThen make your pasta using your pasta machine or rolling out. Enjoy -- .', '5ff0d64acbde003ecd13543f2b8f3a29.jpg', '2023-12-02 04:04:12'),
(2, 1, 'Banana Bread', 30, 70, 10, '1⁄2 cup butter, softened,1 cup granulated sugar,2 eggs, beaten,3 bananas, finely crushed (for serious and extreme moist and delicious, try 4 bananas),1 1⁄2 cups all-purpose flour,1 teaspoon baking soda,1⁄2 teaspoon salt,1⁄2 teaspoon vanilla (optional)', 'Remove odd pots and pans from oven.\r\nPreheat oven to 350º / 180º.\r\nCream together butter and sugar.\r\nAdd eggs and crushed bananas.\r\nCombine well.\r\nSift together flour, soda and salt. Add to creamed mixture. Add vanilla.\r\nMix just until combined. Do not overmix.\r\nPour into greased and floured loaf pan.\r\nBake at 350º / 180º for 55 minutes.\r\nKeeps well, refrigerated.', 'd3874240152e0e68e44ee02005fac3f9.jpg', '2023-12-02 17:49:07'),
(3, 2, 'Egg Curry (Indian)', 10, 15, 3, '1 Onions Chopped,1/2 inch Ginger,5 – 6 Garlic Pods.,1 medium Fresh Green Chilli,1/4 tsp Sugar,1 tsp Coriander Powder,1 tsp Cumin Powder,1/2 tsp Red Chilli Powder,1/4 tsp Garam Masala Powder,3 -4 Fresh Tomatoes Grinded,1/4 cup Curd,4 Eggs Boiled,2 tbsp oil', 'In a blender make a fine paste of onions, ginger, garlic and green chilli.\r\nNow heat a kadai and add 2 tblsp oil for cooking.\r\nTip in the bay leaf and 1/4 tsp sugar\r\nNow immediately add the onion-garlic paste.\r\nStir continously and cook it till the paste turns deep brown.\r\nNow lower the flame and add the cumin powder, coriander powder, red chilly powder and garam masala powder. Add 1/2 tsblp water and cook till the water dries out.\r\nNow add the tomato puree.\r\nLet it cook till the oil springs up\r\nNow add well whisked curd.\r\nKeep stirring and cooking till the curd is completely gone and the masala has released all the oil.\r\nAt this stage 1 cup water and let it boil.\r\nYou can add salt at this stage.\r\nMeanwhile slice the eggs into half.\r\nOnce the gravy acquires desired consistency, place the sliced eggs in the curry. You can even crush the yolk of one of the eggs and put in the curry. This gives a nice body to the egg curry.\r\nGarnish the curry with chopped green coriander.', 'd971e878a2b40360ea87a4caafea6463.jpg', '2023-12-03 05:53:05'),
(4, 2, 'Yellow Moong Dal', 5, 10, 3, '1 cup Yellow Moong Dal,1/2 tsp Turmeric Powder,1 tsp Salt,2 cups water,1 tsp Ghee / Butter,2 -3 Cloves Garlic,1 tsp Jeera (Cumin Seeds),1 tblsp chopped Green Coriander', 'Wash the dal 3 – 4 times and keep aside.\r\nNow in a pressure cooker add the washed dal, salt, turmeric pwoder and 2 cups of water.\r\nNow cook the dal for 2 whistles.\r\nWait till the pressure releases naturally.\r\nNow dish out the dal to a serving bowl.\r\nTake a tadka pan, heat the ghee in it.\r\nNow add jeera seeds and chopped garlic.\r\nCook till the garlic gets dark brown in color. This is important or the garlic will taste raw.\r\nNow add red chilly powder and immediately pour this tadka over the cooked dal.\r\nGarnish with chopped green coriander.\r\nYour peeli dal is ready to be served.', '3af88f4447eff348bb2bb6df559ba9c3.jpg', '2023-12-04 16:54:15'),
(6, 4, 'Chicken Biryani', 45, 45, 6, 'Chicken (Typically 500g to 1 kg), Basmati Rice (2 cups), Onions (3 large; thinly sliced), Tomatoes (2 medium; chopped), Yogurt (1/2 cup), Ginger-Garlic Paste (2 tablespoons), Biryani Masala (2 tablespoons), Green Chilies (2 to 4; chopped), Mint Leaves (1/2 cup; chopped), Coriander (Cilantro) Leaves (1/2 cup; chopped), Ghee or Cooking Oil (1/4 cup), Whole Spices (Bay leaves; Cardamom pods; Cinnamon sticks; Cloves - 2 each), Saffron (A pinch soaked in 2 tablespoons of warm milk), Cashews (1/4 cup), Raisins (1/4 cup), Water or Chicken Broth (4 cups), Salt (To taste)', 'To prepare chicken biryani, marinate chicken pieces in a mixture of yogurt, biryani masala, and ginger-garlic paste. Meanwhile, fry sliced onions until golden. Parboil basmati rice and layer it with the marinated chicken, fried onions, mint, and coriander. Drizzle saffron-infused milk and garnish with fried cashews and raisins. Cook in dum style for 30-45 minutes or pressure cook for a quicker version. The result is a fragrant and flavorful chicken biryani, with tender chicken and perfectly cooked rice, ready to delight your taste buds.', '813433466cbbed6f61646981ed494f61.jpg', '2023-12-06 22:08:06'),
(7, 5, 'Paneer Malai Tikka', 20, 20, 4, 'Paneer (250g), Hung Curd (1/2 cup), Fresh Cream (2 tablespoons), Cashew Nut Paste (2 tablespoons), Ginger Garlic Paste (1 tablespoon), Green Chillies (finely chopped; 1 tablespoon), Coriander Powder (1 teaspoon), Cumin Powder (1/2 teaspoon), Garam Masala (1/2 teaspoon), Dried Fenugreek Leaves (1 teaspoon), Lemon Juice (1 tablespoon), Salt (to taste),  Black Pepper Powder (1/2 teaspoon), Chaat Masala (for garnish), Skewers (for grilling)', 'Paneer Malai Tikka is a delectable Indian appetizer featuring marinated cubes of paneer (cottage cheese) grilled or baked to perfection. The marinade, rich in hung curd, fresh cream, and aromatic spices, imparts a velvety texture and a burst of flavors to the paneer. The grilling process adds a smoky char, creating a delightful contrast. Garnished with chaat masala, this dish offers a delightful blend of creamy indulgence and tantalizing spices, making it a favorite among vegetarians and paneer enthusiasts. It is a fantastic starter for gatherings or a flavorful addition to any meal.', '58941559f2e8c2f78981fb93cbdb567e.jpg', '2023-12-06 23:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(4, 'abbas', '4nm21cs008@nmamit.in', 8660331839, '2e770058c6f21ac6403a4defdf0cf882', '2023-12-05 08:53:03'),
(5, 'akshaya', '4nm21cs014@nmamit.in', 7483934017, '2e770058c6f21ac6403a4defdf0cf882', '2023-12-06 22:36:43'),
(6, 'tester1', 'tester1@gmail.com', 6568523435, '2e770058c6f21ac6403a4defdf0cf882', '2023-12-06 22:42:18'),
(7, 'tester2', 'tester2@gmail.com', 4685321965, '2e770058c6f21ac6403a4defdf0cf882', '2023-12-06 22:43:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblrecipes`
--
ALTER TABLE `tblrecipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblrecipes`
--
ALTER TABLE `tblrecipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
