--
-- DROP USER and DATABASE
--

DROP USER `googleplaystore`@`%`;
DROP DATABASE IF EXISTS `googleplaystore`;

-- --------------------------------------------------------

--
-- User: `googleplaystore`
--

CREATE USER `googleplaystore`@`%` IDENTIFIED BY 'prajitkumardas';

-- --------------------------------------------------------

--
-- Database: `googleplaystore`
--

CREATE DATABASE IF NOT EXISTS `googleplaystore` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
GRANT ALL PRIVILEGES ON `googleplaystore`.* TO `googleplaystore`@`%`;
GRANT ALL PRIVILEGES ON `googleplaystore\_%`.* TO `googleplaystore`@`%`;
FLUSH PRIVILEGES;
USE `googleplaystore`;

-- --------------------------------------------------------

--
-- Table structure for table `appurls`
--

CREATE TABLE IF NOT EXISTS `appurls`(
  `id` int(10) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `app_pkg_name` text(750) NOT NULL,
  `app_url` text(1000) NOT NULL,
  `urls_extracted` int(1) DEFAULT 0,
  `parsed` int(1) DEFAULT 0,
  `downloaded` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

-- --------------------------------------------------------

--
-- Indexes for table `appurls`
--
ALTER TABLE `appurls` 
	ADD UNIQUE KEY `app_pkg_name` (`app_pkg_name`(255)),
	ADD KEY `urls_extracted_idx` (`urls_extracted`),
	ADD KEY `parsed_idx` (`parsed`),
	ADD KEY `downloaded_idx` (`downloaded`);

-- --------------------------------------------------------

--
-- Table structure for table `appcategories`
--

CREATE TABLE IF NOT EXISTS `appcategories`(
  `id` int(10) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

-- --------------------------------------------------------

--
-- Indexes for table `appcategories`
--
ALTER TABLE `appcategories` 
  ADD UNIQUE KEY `name_idx` (`name`(100)),
  ADD KEY `url_idx` (`url`);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions`(
  `id` int(10) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` text(500) NOT NULL,
  `protection_level` varchar(200)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

-- --------------------------------------------------------

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions` 
  ADD UNIQUE KEY `name_idx` (`name`(255)),
  ADD KEY `protection_level_idx` (`protection_level`);

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE IF NOT EXISTS `developer`(
  `id` int(10) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` text(500) NOT NULL,
  `website` text(500),
  `email` text(500),
  `address` text(1000)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

-- --------------------------------------------------------

--
-- Indexes for table `developer`
--
ALTER TABLE `developer` 
  ADD UNIQUE KEY `name_idx` (`name`(255));

-- --------------------------------------------------------

--
-- Table structure for table `appdata`
--

CREATE TABLE IF NOT EXISTS `appdata`(
  `id` int(10) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `app_pkg_name` text(750) NOT NULL,
  `app_name` text(750) NOT NULL,
  `developer_id` int(10) unsigned NOT NULL,
  `app_category_id` int(10) unsigned NOT NULL,
  `review_rating` float(1,1) NOT NULL,
  `review_count` int(10) NOT NULL,
  `desc` text(65535) NOT NULL,
  `whats_new` text(65535) NOT NULL,
  `updated` date NOT NULL,
  `installs` int(10) NOT NULL,
  `version` varchar(50) NOT NULL,
  `android_reqd` varchar(50) NOT NULL,
  `content_rating` varchar(100) NOT NULL,
  CONSTRAINT `fk_developer_id` FOREIGN KEY (`developer_id`) REFERENCES `developer`(`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_app_category_id` FOREIGN KEY (`app_category_id`) REFERENCES `appcategories`(`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

-- --------------------------------------------------------

--
-- Indexes for table `appdata`
--
ALTER TABLE `appdata` 
  ADD UNIQUE KEY `app_data_pkg_name_idx` (`app_pkg_name`(255)),
  ADD KEY `dev_id_idx` (`developer_id`),
  ADD KEY `app_cat_id_idx` (`app_category_id`),
  ADD KEY `content_rating_idx` (`content_rating`);

-- --------------------------------------------------------

--
-- Table structure for table `appperm`
--

CREATE TABLE IF NOT EXISTS `appperm`(
  `id` int(10) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `app_id` int(10) unsigned NOT NULL,
  `perm_id` int(10) unsigned NOT NULL,
  CONSTRAINT `fk_app_id` FOREIGN KEY (`app_id`) REFERENCES `appdata`(`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_perm_id` FOREIGN KEY (`perm_id`) REFERENCES `permissions`(`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

-- --------------------------------------------------------

--
-- Indexes for table `appperm`
--
ALTER TABLE `appperm` 
  ADD KEY `app_id_name` (`app_id`),
  ADD KEY `perm_id_idx` (`perm_id`);
