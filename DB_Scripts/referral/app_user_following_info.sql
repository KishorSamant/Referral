-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table referral.app_user_following_info
DROP TABLE IF EXISTS `app_user_following_info`;
CREATE TABLE IF NOT EXISTS `app_user_following_info` (
  `ID` varchar(36) NOT NULL,
  `FOLLOWER_ID` varchar(36) NOT NULL,
  `FOLLOWEE_ID` varchar(36) NOT NULL,
  `IS_DELETED` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `app_following_info_app_user_ID_fk` (`FOLLOWEE_ID`),
  KEY `app_following_info_app_user_ID_fk_2` (`FOLLOWER_ID`),
  CONSTRAINT `app_following_info_app_user_ID_fk` FOREIGN KEY (`FOLLOWEE_ID`) REFERENCES `app_users` (`ID`),
  CONSTRAINT `app_following_info_app_user_ID_fk_2` FOREIGN KEY (`FOLLOWER_ID`) REFERENCES `app_users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
