-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table ats.agencies
CREATE TABLE IF NOT EXISTS `agencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` date NOT NULL,
  `contact_person` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` bigint(20) NOT NULL,
  `contract_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1.active,2.inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1.yes,2.no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.agencies: ~8 rows (approximately)
/*!40000 ALTER TABLE `agencies` DISABLE KEYS */;
INSERT INTO `agencies` (`id`, `user_id`, `name`, `address`, `join_date`, `contact_person`, `number`, `contract_details`, `status`, `is_delete`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 3, 'Human being', 'bandra', '2019-03-26', 'Salman Khan', 1234567890, '1 year', 1, 2, '2019-03-26 10:49:26', '2019-03-26 11:28:38', NULL),
	(2, 4, 'RHF', 'juhu', '2019-03-27', 'Raju hirani', 2314345223, '2 year', 1, 2, '2019-03-26 10:51:05', '2019-03-26 10:51:05', NULL),
	(3, 5, 'nokri', 'Ahmedabad', '2019-03-27', 'abc bca', 1234567899, 'dnsk', 1, 2, '2019-03-26 11:02:45', '2019-03-26 11:02:45', NULL),
	(4, 8, 'Monstar', 'Ahmedabad', '2019-03-27', 'prashank shah', 1223214514, '1 year', 1, 2, '2019-03-27 13:45:54', '2019-03-27 13:45:54', NULL),
	(5, 12, 'Rethink flow', 'Test Address', '2016-02-02', 'Hemal Patel', 9898583379, '9898588833', 1, 2, '2019-04-04 08:27:14', '2019-04-04 09:05:24', NULL),
	(6, 13, 'Rethink Organization', 'Addrss 1 and 2 are same', '2016-02-24', 'Vishal Rami', 98989, 'Contract Details', 1, 2, '2019-04-04 08:54:34', '2019-04-04 08:54:34', NULL),
	(7, 14, 'Highskill', 'Bopal, Ahmedabad', '2017-02-08', 'Jigs Arora', 98989988998, '5 Years Contracts', 1, 2, '2019-04-08 04:02:20', '2019-04-08 04:02:20', NULL),
	(8, 15, 'Soft Skill', 'Ahmedabad', '2016-02-24', 'Harshil Josh', 98989898999, '3 Years', 1, 2, '2019-04-08 04:58:49', '2019-04-08 04:58:49', NULL);
/*!40000 ALTER TABLE `agencies` ENABLE KEYS */;

-- Dumping structure for table ats.candidates
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skypeId` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `dob` date DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Indian',
  `gender` tinyint(4) DEFAULT NULL COMMENT '1:Male, 2:Female',
  `marrital_status` enum('Married','Unmarried') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1: Married, 2: Unmarried',
  `ctc` double DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_candidate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candiate_cv_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:open, 2:rejected, 3:hold, 4:inprogress, 5:selected ',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Active, 2:Inactive ',
  `isdelete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1: yes, 2:no',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `candidates_email_unique` (`email`),
  UNIQUE KEY `candidates_skypeid_unique` (`skypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.candidates: ~6 rows (approximately)
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` (`id`, `first_name`, `last_name`, `email`, `skypeId`, `phone`, `dob`, `nationality`, `gender`, `marrital_status`, `ctc`, `experience`, `about_candidate`, `candiate_cv_status`, `status`, `isdelete`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'chirag', 'rami', 'chirag@gmail.com', 'chirag', 1234554563, '2019-03-06', 'Indian', 1, NULL, NULL, '1 year', NULL, 4, 1, 2, NULL, '2019-03-26 00:00:00', '2019-04-04 09:58:15'),
	(2, 'kajal', 'rami', 'kajal@gmail.com', 'kajal11', 2321433543, '2019-03-04', 'Indian', 2, NULL, NULL, '1 year', NULL, 5, 1, 2, NULL, '2019-03-26 00:00:00', '2019-03-26 00:00:00'),
	(3, 'Kashish', 'Rami', 'kashish@gmail.com', 'kashish', 1234567888, '2019-03-11', 'Indian', 2, 'Unmarried', NULL, '1 year', NULL, 5, 1, 2, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(4, 'Komal', 'Rami', 'ramivishal154@gmail.com', 'komal11', 1234567777, '2019-03-04', 'Indian', 2, NULL, NULL, '2 year', NULL, 4, 1, 2, NULL, '2019-03-27 00:00:00', '2019-03-29 00:25:59'),
	(5, 'Urvin', 'Shangvi', 'nikunj.kansara@gmail', '23', 1231212123, '1995-06-20', 'Indian', 1, NULL, 500000, '2-5', NULL, 1, 1, 2, NULL, '2019-04-04 10:19:53', '2019-04-04 10:19:53'),
	(7, 'Urvin', 'Shangvi', 'nikunj.kansara@gmail.com', NULL, 1231212123, '1995-06-20', 'Indian', 1, NULL, 500000, '2-5', NULL, 1, 1, 2, NULL, '2019-04-04 10:24:40', '2019-04-04 10:24:40'),
	(8, 'prshank', 'shah', 'prashankshah28@gmail.com', 'prashank', 8866104278, '2018-01-08', 'Indian', 1, 'Unmarried', 500000, '1-2', 'Good candidate', 4, 1, 2, NULL, '2019-04-04 10:32:01', '2019-04-04 10:50:23');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;

-- Dumping structure for table ats.candidate_addresses
CREATE TABLE IF NOT EXISTS `candidate_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'India',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Active, 2:Inactive',
  `isdelete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1: yes, 2:no',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_id` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.candidate_addresses: ~6 rows (approximately)
/*!40000 ALTER TABLE `candidate_addresses` DISABLE KEYS */;
INSERT INTO `candidate_addresses` (`id`, `candidate_id`, `street`, `city`, `state`, `zipcode`, `country`, `status`, `isdelete`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Krishana Nagar', 'Ahmedabad', 'Gujrat', '382345', 'India', 1, 2, '2019-03-28 00:00:00', NULL, NULL),
	(3, 2, 'Nayan nagar', 'Baroda', 'Gujrat', '382345', 'India', 1, 2, NULL, NULL, NULL),
	(4, 3, 'vasna', 'AHmedabad', 'Gujrat', '382345', 'India', 1, 2, NULL, NULL, NULL),
	(5, 4, 'pal', 'surat', 'Gujrat', '382365', 'India', 1, 2, NULL, NULL, NULL),
	(6, 5, 'Jivraj Park', 'Ahmedabad', 'Gujarat', '8888888882834283989ysfjladjfadghcagdf', '09230420398', 1, 2, NULL, '2019-04-04 10:19:53', '2019-04-04 10:19:53'),
	(7, 7, 'Jivraj Park', 'Ahmedabad', 'Gujarat', '8888888882834283989ysfjladjfadghcagdf', '09230420398', 1, 2, NULL, '2019-04-04 10:24:40', '2019-04-04 10:24:40'),
	(8, 8, 'krishana nagar', 'ahmedabad', 'gujrat', '382345', 'india', 1, 2, NULL, '2019-04-04 10:32:01', '2019-04-04 10:32:01');
/*!40000 ALTER TABLE `candidate_addresses` ENABLE KEYS */;

-- Dumping structure for table ats.candidate_background_verificatons
CREATE TABLE IF NOT EXISTS `candidate_background_verificatons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `candidate_document_id` int(11) NOT NULL,
  `verification_status` tinyint(4) NOT NULL COMMENT '1: Verified, 2:NotVerified',
  `verificaton_date` datetime NOT NULL,
  `verified_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `candidate_document_id` (`candidate_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.candidate_background_verificatons: ~0 rows (approximately)
/*!40000 ALTER TABLE `candidate_background_verificatons` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_background_verificatons` ENABLE KEYS */;

-- Dumping structure for table ats.candidate_documents
CREATE TABLE IF NOT EXISTS `candidate_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `document_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'document name',
  `category` enum('Education','Personal','Others') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Education' COMMENT 'education, personal, others',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Active, 2:Inactive',
  `isdelete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1: yes, 2:no',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_id` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.candidate_documents: ~4 rows (approximately)
/*!40000 ALTER TABLE `candidate_documents` DISABLE KEYS */;
INSERT INTO `candidate_documents` (`id`, `candidate_id`, `document_name`, `category`, `status`, `isdelete`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'cv.pdf', 'Education', 1, 2, NULL, '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(2, 2, 'resume.pdf', 'Personal', 1, 2, NULL, '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(4, 3, 'resume.pdf', 'Others', 1, 2, NULL, '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(5, 4, 'resume.pdf', 'Education', 1, 2, NULL, '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(6, 7, 'Application_tracking_system.xlsx', 'Education', 1, 2, NULL, '2019-04-04 10:24:40', '2019-04-04 10:24:40'),
	(7, 8, 'Application_tracking_system.xlsx', 'Education', 1, 2, NULL, '2019-04-04 10:32:02', '2019-04-04 10:32:02');
/*!40000 ALTER TABLE `candidate_documents` ENABLE KEYS */;

-- Dumping structure for table ats.candidate_referances
CREATE TABLE IF NOT EXISTS `candidate_referances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requirement_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `user_id` (`user_id`),
  KEY `requirement_id` (`requirement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.candidate_referances: ~8 rows (approximately)
/*!40000 ALTER TABLE `candidate_referances` DISABLE KEYS */;
INSERT INTO `candidate_referances` (`id`, `candidate_id`, `user_id`, `requirement_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, 1, NULL, '2019-03-26 00:00:00', '2019-03-26 00:00:00'),
	(2, 2, 3, 1, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(3, 3, 3, 1, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(4, 2, 4, 2, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(5, 2, 4, 1, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(6, 3, 4, 3, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(7, 2, 3, 2, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(8, 4, 3, 3, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00');
/*!40000 ALTER TABLE `candidate_referances` ENABLE KEYS */;

-- Dumping structure for table ats.candidate_skills
CREATE TABLE IF NOT EXISTS `candidate_skills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `is_key_skill` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1:Y, 2:N',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Active, 2:Inactive',
  `isdelete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1: yes, 2:no',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `skill_id` (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.candidate_skills: ~8 rows (approximately)
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` (`id`, `candidate_id`, `skill_id`, `is_key_skill`, `status`, `isdelete`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'yes', 1, 2, NULL, '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(2, 1, 2, 'no', 1, 2, NULL, '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(3, 2, 3, 'no', 1, 2, NULL, '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(4, 2, 2, 'yes', 1, 2, NULL, '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(6, 3, 3, 'yes', 1, 2, NULL, '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(7, 4, 4, 'no', 1, 2, NULL, '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(8, 7, 1, 'yes', 1, 2, NULL, '2019-04-04 10:24:40', '2019-04-04 10:24:40'),
	(9, 8, 5, 'yes', 1, 2, NULL, '2019-04-04 10:32:01', '2019-04-04 10:32:01'),
	(10, 8, 3, 'no', 1, 2, NULL, '2019-04-04 10:32:01', '2019-04-04 10:32:01');
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;

-- Dumping structure for table ats.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_interviwer` tinyint(4) NOT NULL COMMENT '1.YES ,2.NO',
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1.active,2.inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.employees: ~6 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `user_id`, `firstname`, `lastname`, `designation`, `department`, `emp_code`, `address`, `address2`, `is_interviwer`, `review`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 2, 'shashankas', 'rami', 'developer', 'UI', '1', 'Ahmedabad', 'Gujarat', 1, 'good', 2, '2019-03-26 10:46:16', '2019-03-28 05:31:32', NULL),
	(2, 6, 'jinal', 'shah', 'developer', 'UI', '2', 'Ahmedabad', 'Gujarat', 1, 'good', 2, '2019-03-26 11:12:48', '2019-03-28 05:31:32', NULL),
	(3, 7, 'pinal', 'patel', 'hr', 'hr', '3', 'asd', 'asd', 1, 'good', 1, '2019-03-27 05:17:29', '2019-03-28 05:31:33', NULL),
	(4, 9, 'prashank', 'shah', 'developer', 'php', '4', 'Ahmedabad', 'Gujarat', 1, 'good', 1, '2019-03-27 13:56:17', '2019-03-28 05:31:33', NULL),
	(5, 10, 'bhumi', 'rami', 'developer', 'UI', '5', 'Ahmedabad', 'Gujarat', 1, 'good', 1, '2019-03-27 13:59:29', '2019-03-28 05:31:33', NULL),
	(6, 11, 'Test', 'testname', 'intern', 'PHP Devloper', 'test..test', 'zsldkjasklj', 'kjadkljasl', 1, 'GOOF', 1, '2019-03-29 03:48:49', '2019-03-29 03:48:49', NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table ats.experience_ranges
CREATE TABLE IF NOT EXISTS `experience_ranges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1: Active, 2:Inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.experience_ranges: ~0 rows (approximately)
/*!40000 ALTER TABLE `experience_ranges` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_ranges` ENABLE KEYS */;

-- Dumping structure for table ats.industries
CREATE TABLE IF NOT EXISTS `industries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Active, 2:Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.industries: ~4 rows (approximately)
/*!40000 ALTER TABLE `industries` DISABLE KEYS */;
INSERT INTO `industries` (`id`, `title`, `alias`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'HR', 'hr', 1, NULL, NULL),
	(2, 'IT', 'it', 1, NULL, NULL),
	(3, 'Development', 'development', 1, NULL, NULL),
	(4, 'Sales', 'sales', 1, NULL, NULL);
/*!40000 ALTER TABLE `industries` ENABLE KEYS */;

-- Dumping structure for table ats.interviewer_candidate_skill_ratings
CREATE TABLE IF NOT EXISTS `interviewer_candidate_skill_ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `interview_feedback_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `skill_rating` decimal(8,2) NOT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1.yes,2.no',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `interview_feedback_id` (`interview_feedback_id`),
  KEY `skill_id` (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.interviewer_candidate_skill_ratings: ~15 rows (approximately)
/*!40000 ALTER TABLE `interviewer_candidate_skill_ratings` DISABLE KEYS */;
INSERT INTO `interviewer_candidate_skill_ratings` (`id`, `interview_feedback_id`, `skill_id`, `skill_rating`, `is_delete`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 4, 4.00, 2, NULL, '2019-03-28 07:47:49', '2019-03-28 07:47:49'),
	(2, 2, 1, 3.50, 2, NULL, '2019-03-28 07:50:28', '2019-03-28 07:50:28'),
	(3, 2, 2, 4.00, 2, NULL, '2019-03-28 07:50:28', '2019-03-28 07:50:28'),
	(4, 3, 1, 4.00, 2, NULL, '2019-04-02 09:50:27', '2019-04-02 09:50:27'),
	(5, 3, 2, 2.50, 2, NULL, '2019-04-02 09:50:27', '2019-04-02 09:50:27'),
	(6, 4, 1, 4.00, 2, NULL, '2019-04-02 09:51:17', '2019-04-02 09:51:17'),
	(7, 4, 2, 2.50, 2, NULL, '2019-04-02 09:51:17', '2019-04-02 09:51:17'),
	(8, 5, 1, 4.00, 2, NULL, '2019-04-02 09:54:27', '2019-04-02 09:54:27'),
	(9, 5, 2, 2.50, 2, NULL, '2019-04-02 09:54:27', '2019-04-02 09:54:27'),
	(10, 6, 5, 3.50, 2, NULL, '2019-04-04 10:47:09', '2019-04-04 10:47:09'),
	(11, 6, 3, 4.00, 2, NULL, '2019-04-04 10:47:09', '2019-04-04 10:47:09'),
	(12, 7, 5, 3.00, 2, NULL, '2019-04-04 10:49:19', '2019-04-04 10:49:19'),
	(13, 7, 3, 3.00, 2, NULL, '2019-04-04 10:49:19', '2019-04-04 10:49:19'),
	(14, 8, 5, 2.00, 2, NULL, '2019-04-04 10:50:23', '2019-04-04 10:50:23'),
	(15, 8, 3, 2.00, 2, NULL, '2019-04-04 10:50:23', '2019-04-04 10:50:23');
/*!40000 ALTER TABLE `interviewer_candidate_skill_ratings` ENABLE KEYS */;

-- Dumping structure for table ats.interviewer_panels
CREATE TABLE IF NOT EXISTS `interviewer_panels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `interview_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1.active,2.inactive,3.Available,4.notavailable',
  `comment` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1.yes,2.no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `interview_id` (`interview_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.interviewer_panels: ~11 rows (approximately)
/*!40000 ALTER TABLE `interviewer_panels` DISABLE KEYS */;
INSERT INTO `interviewer_panels` (`id`, `interview_id`, `employee_id`, `status`, `comment`, `is_delete`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 5, 1, 'interviewer', 2, '2019-03-28 04:46:50', '2019-03-28 04:46:50', NULL),
	(2, 1, 2, 1, 'interviewer', 2, '2019-03-28 04:46:50', '2019-03-28 04:46:50', NULL),
	(3, 2, 3, 1, 'two interviewer are conduct this interview', 2, '2019-03-28 04:48:32', '2019-03-28 04:48:32', NULL),
	(4, 2, 4, 1, 'two interviewer are conduct this interview', 2, '2019-03-28 04:48:33', '2019-03-28 04:48:33', NULL),
	(5, 3, 1, 1, 'interviewer', 2, '2019-03-28 04:50:12', '2019-03-28 04:50:12', NULL),
	(6, 4, 2, 1, 'interviewer', 2, '2019-03-28 05:01:06', '2019-03-28 05:01:06', NULL),
	(7, 5, 2, 1, 'interviewer', 2, '2019-03-28 05:04:39', '2019-03-28 05:04:39', NULL),
	(8, 6, 3, 1, 'asdasd', 2, '2019-03-29 00:25:59', '2019-03-29 00:25:59', NULL),
	(9, 8, 5, 1, NULL, 2, '2019-04-04 09:30:44', '2019-04-04 09:30:44', NULL),
	(10, 8, 3, 1, NULL, 2, '2019-04-04 09:30:44', '2019-04-04 09:30:44', NULL),
	(11, 9, 2, 1, NULL, 2, '2019-04-04 10:39:48', '2019-04-04 10:39:48', NULL),
	(12, 9, 3, 1, NULL, 2, '2019-04-04 10:39:48', '2019-04-04 10:39:48', NULL),
	(13, 9, 1, 1, NULL, 2, '2019-04-04 10:39:48', '2019-04-04 10:39:48', NULL);
/*!40000 ALTER TABLE `interviewer_panels` ENABLE KEYS */;

-- Dumping structure for table ats.interviews
CREATE TABLE IF NOT EXISTS `interviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `requirement_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `interview_date` date NOT NULL,
  `interview_time` time NOT NULL,
  `rounds` enum('Technical','HR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `overall_rating` float(2,1) DEFAULT NULL,
  `mode_of_interview` enum('Call','Skype','Personal','Others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `interview_schedule_status` tinyint(4) NOT NULL COMMENT '1.attempts,2.notattempts',
  `comments` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1.yes,2.no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `requirement_id` (`requirement_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.interviews: ~8 rows (approximately)
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;
INSERT INTO `interviews` (`id`, `candidate_id`, `requirement_id`, `title`, `location_id`, `interview_date`, `interview_time`, `rounds`, `overall_rating`, `mode_of_interview`, `interview_schedule_status`, `comments`, `is_delete`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 1, 'General Interview', 2, '2019-03-30', '10:15:00', 'Technical', 3.5, 'Call', 2, 'This interview based on php', 2, '2019-03-28 04:46:50', '2019-04-04 10:50:28', NULL),
	(2, 2, 2, 'Technical Interview', 1, '2019-04-04', '10:30:00', 'Technical', NULL, 'Call', 2, 'this is technical interview', 2, '2019-03-28 04:48:32', '2019-04-04 10:50:28', NULL),
	(3, 3, 3, 'Hr interview', 1, '2019-04-06', '11:00:00', 'Technical', NULL, 'Personal', 1, 'hr interview sdfds dfvds', 2, '2019-03-28 04:50:12', '2019-03-28 04:50:12', NULL),
	(4, 4, 4, 'general interview', 1, '2019-04-06', '10:30:00', 'Technical', NULL, 'Personal', 2, 'interview comment', 2, '2019-03-28 05:01:06', '2019-03-28 05:07:04', NULL),
	(5, 4, 1, 'general interview', 1, '2019-04-06', '10:30:00', 'Technical', NULL, 'Personal', 1, 'interview comment', 2, '2019-03-28 05:04:39', '2019-03-28 05:04:39', NULL),
	(6, 4, 2, 'test', 1, '2019-04-19', '06:00:00', 'Technical', NULL, 'Personal', 2, 'asldjkaksldjaklsj', 2, '2019-03-29 00:25:59', '2019-03-29 00:30:05', NULL),
	(7, 1, 5, 'Interview Round - 1', 2, '2019-04-05', '17:00:00', 'Technical', NULL, 'Personal', 1, NULL, 2, '2019-04-04 09:27:27', '2019-04-04 09:27:27', NULL),
	(8, 1, 5, 'Interview Round - 1', 2, '2019-04-05', '17:00:00', 'Technical', NULL, 'Personal', 1, NULL, 2, '2019-04-04 09:30:44', '2019-04-04 09:30:44', NULL),
	(9, 8, 7, 'Interview -1', 2, '2019-04-05', '17:00:00', 'Technical', 2.8, 'Personal', 2, NULL, 2, '2019-04-04 10:39:48', '2019-04-04 10:50:23', NULL);
/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;

-- Dumping structure for table ats.interview_feedbacks
CREATE TABLE IF NOT EXISTS `interview_feedbacks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `interviewer_panel_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `technical_feedback` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_rating` decimal(8,2) NOT NULL,
  `interview_status` tinyint(4) NOT NULL COMMENT '1. accepted,2. rejected,3. move next round,4. practical',
  `is_delete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1.yes,2.no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `interviewer_panel_id` (`interviewer_panel_id`),
  KEY `candidate_id` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.interview_feedbacks: ~7 rows (approximately)
/*!40000 ALTER TABLE `interview_feedbacks` DISABLE KEYS */;
INSERT INTO `interview_feedbacks` (`id`, `interviewer_panel_id`, `candidate_id`, `technical_feedback`, `employee_rating`, `interview_status`, `is_delete`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 6, 4, 'not good for this requirement', 4.00, 1, 2, '2019-03-28 07:47:49', '2019-03-28 07:47:49', NULL),
	(2, 1, 1, 'The Laravel framework has a few system requirements. All of these requirements are satisfied by the Laravel Homestead virtual machine, so it\'s highly recommended that you use Homestead as your local Laravel development environment.', 3.50, 1, 2, '2019-03-28 07:50:28', '2019-03-28 07:50:28', NULL),
	(3, 2, 1, 'Overall is good, Good Confident level', 3.50, 3, 2, '2019-04-02 09:50:27', '2019-04-02 09:50:27', NULL),
	(4, 2, 1, 'Overall is good, Good Confident level', 3.50, 3, 2, '2019-04-02 09:51:17', '2019-04-02 09:51:17', NULL),
	(5, 2, 1, 'Overall is good, Good Confident level', 3.50, 3, 2, '2019-04-02 09:54:27', '2019-04-02 09:54:27', NULL),
	(6, 11, 8, 'Prashnk, has good level of Knowledge in Magento', 4.00, 3, 2, '2019-04-04 10:47:09', '2019-04-04 10:47:09', NULL),
	(7, 12, 8, 'Good Attitude', 3.50, 3, 2, '2019-04-04 10:49:19', '2019-04-04 10:49:19', NULL),
	(8, 13, 8, 'Not so good at all', 1.00, 2, 2, '2019-04-04 10:50:23', '2019-04-04 10:50:23', NULL);
/*!40000 ALTER TABLE `interview_feedbacks` ENABLE KEYS */;

-- Dumping structure for table ats.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table ats.locations
CREATE TABLE IF NOT EXISTS `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'India',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Active, 2:Inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.locations: ~3 rows (approximately)
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` (`id`, `title`, `address`, `city`, `state`, `country`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'SEZ Office', 'near Nirma University', 'Ahmedabad', 'Gujarat', 'India', 1, NULL, NULL, NULL),
	(2, 'Shialj Office', 'Railway crossing', 'Ahmedabad', 'Gujarat', 'India', 1, NULL, NULL, NULL),
	(3, 'Mumbai Office', 'Bandra', 'Mumbai', 'Maharashtra', 'India', 1, NULL, NULL, NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;

-- Dumping structure for table ats.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.migrations: ~25 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_02_19_062332_create_role_permission_table', 1),
	(4, '2019_02_28_063230_create_skills_table', 1),
	(5, '2019_03_01_053438_create_interviews_table', 1),
	(6, '2019_03_01_055633_create_agencies_table', 1),
	(7, '2019_03_01_055849_create_interviewer_panels_table', 1),
	(8, '2019_03_01_060329_create_interview_feedbacks_table', 1),
	(9, '2019_03_01_070402_create_employees_table', 1),
	(10, '2019_03_01_071534_create_candidate_documents_table', 1),
	(11, '2019_03_01_071942_create_requirements_table', 1),
	(12, '2019_03_01_072008_create_requirement_recruiters_table', 1),
	(13, '2019_03_01_072025_create_requirement_locations_table', 1),
	(14, '2019_03_01_072040_create_requirement_skills_table', 1),
	(15, '2019_03_01_072056_create_requirement_documents_table', 1),
	(16, '2019_03_01_193239_create_candidates_table', 1),
	(17, '2019_03_01_203615_create_experience_ranges_table', 1),
	(18, '2019_03_01_204022_create_candidate_skills_table', 1),
	(19, '2019_03_01_204516_create_candidate_referances_table', 1),
	(20, '2019_03_01_204910_create_candidate_background_verificatons_table', 1),
	(21, '2019_03_06_101158_create_locations_table', 1),
	(22, '2019_03_07_130117_create_industries_table', 1),
	(23, '2019_03_11_131431_create_requirement_histories_table', 1),
	(24, '2019_03_12_202029_create_candidate_addresses_table', 1),
	(25, '2019_03_18_081241_create_interviewer_candidate_skill_rating', 1),
	(26, '2019_04_01_084746_create_jobs_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table ats.modules
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Active,2:InActive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.modules: ~7 rows (approximately)
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Job', 1, '2019-04-08 15:38:00', '2019-04-08 15:38:02'),
	(2, 'Interview', 1, '2019-04-08 15:38:04', '2019-04-08 15:38:06'),
	(3, 'Candidate', 1, '2019-04-08 15:38:09', '2019-04-08 15:38:11'),
	(4, 'Employee', 1, '2019-04-08 15:38:12', '2019-04-08 15:38:14'),
	(5, 'Offer', 1, '2019-04-08 15:38:15', '2019-04-08 15:38:17'),
	(6, 'Consultant', 1, '2019-04-08 15:38:18', '2019-04-08 15:38:19'),
	(7, 'Master', 1, '2019-04-08 15:38:35', '2019-04-08 15:38:42');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;

-- Dumping structure for table ats.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.password_resets: ~4 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('nikunj.knowarth@knowarth.com', '$2y$10$E6UNp0jg4WJpNJg8UXOOiefb19yQRJ75qX8D/eR50DDBGzTu0PG56', '2019-04-04 08:27:14'),
	('vishal.rami@knowarth.com', '$2y$10$.ubJodHfxsgNLFnk8XFcF.ysWLdMYlsJfmsJCmT7UsogszlmbRovm', '2019-04-04 08:54:34'),
	('jigs.arora@gmail.com', '$2y$10$2/xg7Fd7.yRhK.bh2icplO0/EsOACHP2kYg.tcJM7IQzmHtVe0bIu', '2019-04-08 04:02:20'),
	('nikunj.kansara@knowarth.com', '$2y$10$SNmcBfPLOQQ.K3LR1LYqkerWR2NJsW7k4T4vv.uvUtxSK17gzf2va', '2019-04-08 04:58:49');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table ats.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` tinyint(4) NOT NULL COMMENT '1:web, 2: Api',
  `status` tinyint(4) NOT NULL COMMENT '1: active, 2: inactive',
  `module_id` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1: yes, 2: no',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.permissions: ~85 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `sub_module`, `alias`, `guard_name`, `status`, `module_id`, `isdelete`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Employee List', 'Employee', 'employee.index', 1, 1, 4, 2, NULL, '2019-03-28 04:41:24', '2019-03-28 04:41:24'),
	(2, 'Employee  Add View', 'Employee', 'employee.create', 1, 1, 4, 2, NULL, '2019-03-28 04:41:51', '2019-03-28 06:06:59'),
	(3, 'Employee Update', 'Employee', 'employee.update', 1, 1, 4, 2, NULL, '2019-03-28 06:02:17', '2019-03-29 01:41:10'),
	(4, 'Employee Detail View', 'Employee', 'employee.show', 1, 1, 4, 2, NULL, '2019-03-28 06:03:21', '2019-03-28 06:03:58'),
	(5, 'Employee Edit', 'Employee', 'employee.edit', 1, 1, 4, 2, NULL, '2019-03-28 06:05:01', '2019-03-28 06:05:01'),
	(6, 'Employee Delete', 'Employee', 'employee.destroy', 1, 1, 4, 2, NULL, '2019-03-28 06:05:39', '2019-03-28 06:05:39'),
	(7, 'Employee Add', 'Employee', 'employee.store', 1, 1, 4, 2, NULL, '2019-03-28 06:07:24', '2019-03-28 06:07:24'),
	(8, 'Role List', 'Role', 'roles.index', 1, 1, 4, 2, NULL, '2019-03-28 06:10:53', '2019-03-28 06:10:53'),
	(9, 'Role Add View', 'Role', 'roles.create', 1, 1, 4, 2, NULL, '2019-03-28 06:11:26', '2019-03-28 06:11:26'),
	(10, 'Role Add', 'Role', 'roles.store', 1, 1, 4, 2, NULL, '2019-03-28 06:12:35', '2019-03-28 06:12:35'),
	(11, 'Role Update', 'Role', 'roles.update', 1, 1, 4, 2, NULL, '2019-03-28 06:13:43', '2019-03-28 06:13:43'),
	(12, 'Role Edit', 'Role', 'roles.edit', 1, 1, 4, 2, NULL, '2019-03-28 06:14:28', '2019-03-28 06:14:28'),
	(13, 'Change Status of Role', 'Role', 'roles.status', 1, 1, 4, 2, NULL, '2019-03-28 06:15:42', '2019-03-28 06:15:42'),
	(14, 'Permission List', 'Permission', 'permission.index', 1, 1, 4, 2, NULL, '2019-03-28 06:17:02', '2019-03-28 06:17:02'),
	(15, 'Permission Add View', 'Permission', 'permission.create', 1, 1, 4, 2, NULL, '2019-03-28 06:19:21', '2019-03-28 06:19:21'),
	(16, 'Permission Add', 'Permission', 'permission.store', 1, 1, 4, 2, NULL, '2019-03-28 06:21:22', '2019-03-28 06:21:22'),
	(17, 'Permission Detail View', 'Permission', 'permission.show', 1, 1, 4, 2, NULL, '2019-03-28 06:21:53', '2019-03-28 06:21:53'),
	(18, 'Role Detail View', 'Role', 'roles.show', 1, 1, 4, 2, NULL, '2019-03-28 06:22:29', '2019-03-28 06:22:29'),
	(19, 'Permission Edit', 'Permission', 'permission.edit', 1, 1, 4, 2, NULL, '2019-03-28 06:23:06', '2019-03-28 06:23:06'),
	(20, 'Permission Update', 'Permission', 'permission.update', 1, 1, 4, 2, NULL, '2019-03-28 06:24:02', '2019-03-28 06:24:02'),
	(21, 'Change Status of Permission', 'Permission', 'permissions.status', 1, 1, 4, 2, NULL, '2019-03-28 06:25:31', '2019-03-28 06:25:31'),
	(22, 'Role Permission List', 'RolePermission', 'rolePermission.index', 1, 1, 4, 2, NULL, '2019-03-28 06:26:12', '2019-03-28 06:26:12'),
	(23, 'Role Permission Access', 'RolePermission', 'rolePermission.edit', 1, 1, 4, 2, NULL, '2019-03-28 06:27:42', '2019-03-28 06:27:42'),
	(24, 'Role Permission Add', 'RolePermission', 'rolePermission.store', 1, 1, 4, 2, NULL, '2019-03-28 06:28:16', '2019-03-28 06:28:16'),
	(25, 'Role Permission Update', 'RolePermission', 'rolePermission.update', 1, 1, 4, 2, NULL, '2019-03-28 06:28:48', '2019-03-28 06:28:48'),
	(26, 'Job List', 'Job', 'requirement.index', 1, 1, 1, 2, NULL, '2019-03-28 06:39:38', '2019-03-28 06:39:38'),
	(27, 'Job Detail View', 'Job', 'requirement.show', 1, 1, 1, 2, NULL, '2019-03-28 06:40:04', '2019-03-28 06:40:04'),
	(28, 'Job Add View', 'Job', 'requirement.create', 1, 1, 1, 2, NULL, '2019-03-28 06:41:17', '2019-03-28 06:41:17'),
	(29, 'Job Add', 'Job', 'requirement.store', 1, 1, 1, 2, NULL, '2019-03-28 06:41:35', '2019-03-28 06:41:35'),
	(30, 'Job Edit View', 'Permission', 'permission.edit', 1, 1, 1, 2, NULL, '2019-03-28 06:42:02', '2019-03-28 06:42:02'),
	(31, 'Job Update', 'Job', 'requirement.update', 1, 1, 1, 2, NULL, '2019-03-28 06:42:19', '2019-03-28 06:42:19'),
	(32, 'Job Delete', 'Job', 'requirement.destroy', 1, 1, 1, 2, NULL, '2019-03-28 06:42:35', '2019-03-28 06:42:35'),
	(33, 'Change Status of Job', 'Job', 'requirement.status', 1, 1, 1, 2, NULL, '2019-03-28 06:43:10', '2019-03-28 06:43:10'),
	(34, 'Allocated Agency List for Job', 'Job', 'requirement.getAgency', 1, 1, 1, 2, NULL, '2019-03-28 06:47:25', '2019-03-28 06:47:25'),
	(35, 'Job Filteration', 'Job', 'requirement.filterData', 1, 1, 1, 2, NULL, '2019-03-28 06:49:14', '2019-03-28 06:49:14'),
	(36, 'Candidate List', 'Candidate', 'candidate.index', 1, 1, 3, 2, NULL, '2019-03-28 06:50:47', '2019-03-28 06:50:47'),
	(37, 'Candidate Detail View', 'Candidate', 'candidate.show', 1, 1, 3, 2, NULL, '2019-03-28 06:51:28', '2019-03-28 06:51:28'),
	(38, 'Candidate Add View', 'Candidate', 'candidate.create', 1, 1, 3, 2, NULL, '2019-03-28 06:52:08', '2019-03-28 06:52:08'),
	(39, 'Candidate Add', 'Candidate', 'candidate.store', 1, 1, 3, 2, NULL, '2019-03-28 06:52:30', '2019-03-28 06:52:30'),
	(40, 'Candidate Edit View', 'Candidate', 'candidate.edit', 1, 1, 3, 2, NULL, '2019-03-28 06:53:00', '2019-03-28 06:53:00'),
	(41, 'Candidate Delete', 'Candidate', 'candidate.destroy', 1, 1, 3, 2, NULL, '2019-03-28 06:53:42', '2019-03-28 06:53:42'),
	(42, 'Interview List', 'Interview', 'interview.index', 1, 1, 2, 2, NULL, '2019-03-28 06:59:13', '2019-03-28 06:59:13'),
	(43, 'Interview Add View', 'Interview', 'interview.create', 1, 1, 2, 2, NULL, '2019-03-28 06:59:38', '2019-03-28 06:59:38'),
	(44, 'Interview Add', 'Interview', 'interview.store', 1, 1, 2, 2, NULL, '2019-03-28 06:59:58', '2019-03-28 06:59:58'),
	(45, 'Interview Detail View', 'Interview', 'interview.show', 1, 1, 2, 2, NULL, '2019-03-28 07:00:38', '2019-03-28 07:00:38'),
	(46, 'Interview Edit View', 'Interview', 'interview.edit', 1, 1, 2, 2, NULL, '2019-03-28 07:01:00', '2019-03-28 07:01:00'),
	(47, 'Interview Update', 'Interview', 'interview.update', 1, 1, 2, 2, NULL, '2019-03-28 07:01:22', '2019-03-28 07:01:22'),
	(48, 'Interview Filteration', 'Interview', 'interview.filterData', 1, 1, 2, 2, NULL, '2019-03-28 07:05:03', '2019-03-28 07:05:03'),
	(49, 'Feedback List', 'Interview', 'interview_feedback.index', 1, 1, 2, 2, NULL, '2019-03-28 07:06:08', '2019-03-28 07:06:08'),
	(50, 'Feedback Add View', 'Interview', 'interview_feedback.create', 1, 1, 2, 2, NULL, '2019-03-28 07:06:36', '2019-03-28 07:06:36'),
	(51, 'Feedback Add', 'Interview', 'interview_feedback.store', 1, 1, 2, 2, NULL, '2019-03-28 07:07:04', '2019-03-28 07:07:04'),
	(52, 'Feedback Detail View', 'Interview', 'interview_feedback.show', 1, 1, 2, 2, NULL, '2019-03-28 07:07:42', '2019-03-28 07:07:42'),
	(53, 'Change Activation Status of Employee', 'Employee', 'employee.activeStatus', 1, 1, 4, 2, NULL, '2019-03-28 07:13:50', '2019-03-28 07:13:50'),
	(54, 'Change Interviewer Status of Employee', 'Employee', 'employee.interviewStatus', 1, 1, 4, 2, NULL, '2019-03-28 07:14:24', '2019-03-28 07:14:24'),
	(55, 'Change Multiple Interviewer Status of Employee', 'Employee', 'employee.massInterviewStatus', 1, 1, 4, 2, NULL, '2019-03-28 07:15:19', '2019-03-28 07:15:19'),
	(56, 'Change Multiple Activation Status of Employee', 'Employee', 'employee.massActiveStatus', 1, 1, 4, 2, NULL, '2019-03-28 07:16:00', '2019-03-28 07:16:00'),
	(57, 'Assign Role of Employee', 'Employee', 'employee.role', 1, 1, 4, 2, NULL, '2019-03-28 07:16:35', '2019-03-28 07:16:35'),
	(58, 'Change Activation Status of Candidate', 'Candidate', 'candidate.allstatus', 1, 1, 3, 2, NULL, '2019-03-28 07:18:15', '2019-03-28 07:18:15'),
	(59, 'Change CV Status', 'Candidate', 'candidate.changecvstatus', 1, 1, 3, 2, NULL, '2019-03-28 07:19:36', '2019-03-28 07:19:36'),
	(60, 'Change Status of Candidate', 'Candidate', 'candidate.status', 1, 1, 3, 2, NULL, '2019-03-28 07:20:57', '2019-03-28 07:20:57'),
	(61, 'Change Attempt Status of Interview', 'Interview', 'interview.status', 1, 1, 2, 2, NULL, '2019-03-28 07:23:38', '2019-03-28 07:23:38'),
	(62, 'Interview Add Review for Candidate', 'Interview', 'interview_feedback.feedback', 1, 1, 2, 2, NULL, '2019-03-28 07:42:13', '2019-03-28 07:42:13'),
	(63, 'View feedback of Candidate', 'Interview', 'feedback.interviewerData', 1, 1, 2, 2, NULL, '2019-03-28 07:44:38', '2019-03-28 07:44:38'),
	(64, 'Send Mail', 'Interview', 'interview.sendMail', 1, 1, 2, 2, NULL, '2019-03-29 00:22:48', '2019-03-29 00:22:48'),
	(65, 'Agency List', 'Consultant', 'agency.index', 1, 1, 6, 2, NULL, '2019-03-29 03:00:15', '2019-03-29 03:00:15'),
	(66, 'Agency Add View', 'Consultant', 'agency.create', 1, 1, 6, 2, NULL, '2019-03-29 03:00:52', '2019-03-29 03:00:52'),
	(67, 'Agency Add', 'Consultant', 'agency.store', 1, 1, 6, 2, NULL, '2019-03-29 03:02:19', '2019-03-29 03:02:19'),
	(68, 'View Allocated Job', 'Consultant', 'agency.allocation', 1, 1, 6, 2, NULL, '2019-03-29 03:04:33', '2019-03-29 03:04:33'),
	(69, 'Candidate Refrence By Agency', 'Candidate', 'agency.candidateRefrence', 1, 1, 6, 2, NULL, '2019-03-29 03:05:30', '2019-03-29 03:05:30'),
	(70, 'Change Status of Agency', 'Consultant', 'agency.activeStatus', 1, 1, 6, 2, NULL, '2019-03-29 03:06:04', '2019-03-29 03:06:04'),
	(71, 'Agency Detail View', 'Consultant', 'agency.show', 1, 1, 6, 2, NULL, '2019-03-29 03:08:02', '2019-03-29 03:08:02'),
	(73, 'Agency Update', 'Consultant', 'agency.update', 1, 1, 6, 2, NULL, '2019-03-29 03:08:49', '2019-03-29 03:08:49'),
	(74, 'Agency Delete', 'Consultant', 'agency.destroy', 1, 1, 6, 2, NULL, '2019-03-29 03:09:13', '2019-03-29 03:09:13'),
	(75, 'Agecny View Edit', 'Consultant', 'agency.edit', 1, 1, 6, 2, NULL, '2019-03-29 03:27:32', '2019-03-29 03:27:32'),
	(76, 'Skill List', 'Skill', 'skill.index', 1, 1, 7, 2, NULL, '2019-03-29 03:37:23', '2019-03-29 03:37:23'),
	(77, 'Skill Add View', 'Skill', 'skill.create', 1, 1, 7, 2, NULL, '2019-03-29 03:38:23', '2019-03-29 03:38:23'),
	(78, 'Skill Add', 'Skill', 'skill.store', 1, 1, 7, 2, NULL, '2019-03-29 03:38:46', '2019-03-29 03:38:46'),
	(79, 'Skill Detail View', 'Skill', 'skill.show', 1, 1, 7, 2, NULL, '2019-03-29 03:39:31', '2019-03-29 03:39:31'),
	(80, 'Skill Edit View', 'Skill', 'skill.edit', 1, 1, 7, 2, NULL, '2019-03-29 03:40:53', '2019-03-29 03:40:53'),
	(81, 'Skill Update', 'Skill', 'skill.update', 1, 1, 7, 2, NULL, '2019-03-29 03:41:25', '2019-03-29 03:41:25'),
	(82, 'Change Status of Skill', 'Skill', 'skill.activeStatus', 1, 1, 7, 2, NULL, '2019-03-29 03:41:59', '2019-03-29 03:41:59'),
	(83, 'Skill Delete', 'Skill', 'skill.destroy', 1, 1, 7, 2, NULL, '2019-03-29 03:42:22', '2019-03-29 03:42:22'),
	(84, 'Interview Schedule Add View', 'Interview', 'interview.scheduleInterview', 1, 1, 2, 2, NULL, '2019-03-29 18:53:09', '2019-03-29 18:53:09'),
	(85, 'Candidate Filteration', 'Candidate', 'candidate.filterData', 1, 1, 3, 2, NULL, '2019-03-29 19:28:46', '2019-03-29 19:28:46'),
	(86, 'Change Mass Status Interview Schedule', 'Interview', 'interview.massInterviewScheduleStatus', 1, 1, 2, 2, NULL, '2019-03-29 19:50:51', '2019-03-29 19:50:51');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table ats.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1:InActive,2:Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `role_id` (`role_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.permission_role: ~95 rows (approximately)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`role_id`, `permission_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 26, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:07'),
	(1, 27, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:07'),
	(1, 28, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:07'),
	(1, 29, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:08'),
	(1, 30, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:08'),
	(1, 31, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:08'),
	(1, 32, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:08'),
	(1, 33, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:08'),
	(1, 34, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:08'),
	(1, 35, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:08'),
	(1, 42, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:08'),
	(1, 43, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:08'),
	(1, 44, 1, '2019-03-29 02:52:21', '2019-03-29 19:51:08'),
	(1, 45, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 46, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 47, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 48, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 49, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 50, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 51, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 52, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 61, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 62, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 63, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 64, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 36, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 37, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 38, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 39, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 40, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 41, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 58, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 59, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 60, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 1, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:08'),
	(1, 2, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:09'),
	(1, 3, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:09'),
	(1, 4, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:09'),
	(1, 5, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:09'),
	(1, 6, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:09'),
	(1, 7, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:09'),
	(1, 8, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:09'),
	(1, 9, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:09'),
	(1, 10, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:09'),
	(1, 11, 1, '2019-03-29 02:52:22', '2019-03-29 19:51:09'),
	(1, 12, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 13, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 14, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 15, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 16, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 17, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 18, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 19, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 21, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 22, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 23, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 24, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 25, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 53, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 54, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 55, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 56, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 57, 1, '2019-03-29 02:52:23', '2019-03-29 19:51:09'),
	(1, 65, 1, '2019-03-29 03:10:21', '2019-03-29 19:51:09'),
	(1, 66, 1, '2019-03-29 03:10:21', '2019-03-29 19:51:09'),
	(1, 67, 1, '2019-03-29 03:10:22', '2019-03-29 19:51:09'),
	(1, 68, 1, '2019-03-29 03:10:22', '2019-03-29 19:51:09'),
	(1, 69, 1, '2019-03-29 03:10:22', '2019-03-29 19:51:09'),
	(1, 70, 1, '2019-03-29 03:10:22', '2019-03-29 19:51:09'),
	(1, 71, 1, '2019-03-29 03:10:22', '2019-03-29 19:51:09'),
	(1, 73, 1, '2019-03-29 03:10:22', '2019-03-29 19:51:09'),
	(1, 74, 1, '2019-03-29 03:10:22', '2019-03-29 19:51:09'),
	(1, 75, 1, '2019-03-29 03:28:11', '2019-03-29 19:51:09'),
	(1, 76, 1, '2019-03-29 03:44:58', '2019-03-29 19:51:09'),
	(1, 77, 1, '2019-03-29 03:44:58', '2019-03-29 19:51:09'),
	(1, 78, 1, '2019-03-29 03:44:58', '2019-03-29 19:51:09'),
	(1, 79, 1, '2019-03-29 03:44:58', '2019-03-29 19:51:09'),
	(1, 80, 1, '2019-03-29 03:44:58', '2019-03-29 19:51:09'),
	(1, 81, 1, '2019-03-29 03:44:58', '2019-03-29 19:51:09'),
	(1, 82, 1, '2019-03-29 03:44:58', '2019-03-29 19:51:10'),
	(1, 83, 1, '2019-03-29 03:44:58', '2019-03-29 19:51:10'),
	(2, 26, 1, '2019-03-29 03:47:52', '2019-03-29 03:47:52'),
	(2, 27, 1, '2019-03-29 03:47:52', '2019-03-29 03:47:52'),
	(2, 28, 1, '2019-03-29 03:47:52', '2019-03-29 03:47:52'),
	(2, 29, 1, '2019-03-29 03:47:52', '2019-03-29 03:47:52'),
	(2, 30, 1, '2019-03-29 03:47:52', '2019-03-29 03:47:52'),
	(2, 31, 1, '2019-03-29 03:47:52', '2019-03-29 03:47:52'),
	(2, 32, 1, '2019-03-29 03:47:52', '2019-03-29 03:47:52'),
	(2, 33, 1, '2019-03-29 03:47:52', '2019-03-29 03:47:52'),
	(2, 34, 1, '2019-03-29 03:47:52', '2019-03-29 03:47:52'),
	(2, 35, 1, '2019-03-29 03:47:52', '2019-03-29 03:47:52'),
	(1, 84, 1, '2019-03-29 18:56:28', '2019-03-29 19:51:10'),
	(1, 20, 1, '2019-03-29 18:56:28', '2019-03-29 19:51:10'),
	(1, 85, 1, '2019-03-29 19:29:02', '2019-03-29 19:51:10'),
	(1, 86, 1, '2019-03-29 19:51:07', '2019-03-29 19:51:07');
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table ats.requirements
CREATE TABLE IF NOT EXISTS `requirements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_position` int(11) NOT NULL,
  `requirement_end_date` date DEFAULT NULL,
  `job_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` tinyint(4) NOT NULL COMMENT '1:fulltime, 2:parttime, 3:remote',
  `job_cat` tinyint(4) NOT NULL COMMENT '1: Employee, 2:Contractor',
  `experience_id` int(11) NOT NULL,
  `industry_id` int(11) NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_budget` double(15,2) NOT NULL,
  `requirement_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Inprocess, 2:Wait for approval, 3: On-hold, 4:filed, 5: Cancelled, 6: Declined, 7: Inactive',
  `requirement` longtext COLLATE utf8mb4_unicode_ci,
  `benifits` longtext COLLATE utf8mb4_unicode_ci,
  `isdelete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1: yes, 2:no',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `experience_id` (`experience_id`),
  KEY `industry_id` (`industry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.requirements: ~8 rows (approximately)
/*!40000 ALTER TABLE `requirements` DISABLE KEYS */;
INSERT INTO `requirements` (`id`, `user_id`, `job_title`, `no_of_position`, `requirement_end_date`, `job_description`, `job_type`, `job_cat`, `experience_id`, `industry_id`, `department`, `job_budget`, `requirement_status`, `requirement`, `benifits`, `isdelete`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'By clicking "Post Your Answer", you agree to our terms of service, privacy policy and cookie policy', 2, '2019-05-30', '<p><gwmw class="ginger-module-highlighter-mistake-type-1" id="gwmw-15543715677335041532432">sdfajskbfkvbdajkbvkjasdbvjkb</gwmw> <gwmw class="ginger-module-highlighter-mistake-type-1" id="gwmw-15543715677344474709285">sdnvladlvnla</gwmw></p>', 1, 1, 1, 1, 'PHP', 12000.00, 3, NULL, NULL, 2, NULL, '2019-03-26 00:00:00', '2019-04-04 09:53:38'),
	(2, 1, 'JAVA', 3, '2019-03-30', '', 3, 1, 1, 1, 'JAVA', 11000.00, 3, NULL, NULL, 2, NULL, '2019-03-26 00:00:00', '2019-04-08 06:02:12'),
	(3, 1, 'Why would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?', 2, '2019-03-31', 'Why would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?\r\nWhy would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?\r\nWhy would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?\r\nWhy would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?\r\nWhy would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?', 1, 2, 1, 1, 'UI', 12232.00, 3, 'Why would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?Why would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?Why would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?Why would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?', 'Why would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?Why would the UK have to take part? What would happen if the UK just flatly refused to participate in the elections?', 2, NULL, '2019-03-27 00:00:00', '2019-04-08 06:02:12'),
	(4, 1, 'Form Wizard - Multi Step Form:', 3, '2019-04-30', '<p>Form Wizard - Multi Step Form<gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543616301506308799789">:</gwmw>Form Wizard - Multi Step Form<gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543616301504285837328">:</gwmw>Form Wizard - Multi Step Form<gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543616301519905822508">:</gwmw>Form Wizard - Multi Step Form<gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543616301513538503398">:</gwmw>Form Wizard - Multi Step Form: Form Wizard - Multi Step Form:</p>', 1, 1, 1, 1, 'Liferay', 12000.00, 3, '<p>Form Wizard - Multi Step Form<gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543616300603677526105">:</gwmw>Form Wizard - Multi Step Form<gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543616300605026382501">:</gwmw>Form Wizard - Multi Step Form<gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543616300602382409435">:</gwmw>Form Wizard - Multi Step Form<gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543616300607899272993">:</gwmw>Form Wizard - Multi Step Form:</p>', '<p>Form Wizard - Multi Step Form<gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543616298533078536979">:</gwmw>Form Wizard - Multi Step Form:</p>', 2, NULL, '2019-03-27 00:00:00', '2019-04-04 07:08:52'),
	(5, 6, 'Senior Backend Engineer - 4x Sunday Times Top 10!', 10, '2019-04-30', '&lt;p&gt;Providing maximum value to our clients by innovating the way we deliver high quality customers to them&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Collaboration &amp;amp; Communication\r\n	&lt;ul&gt;\r\n		&lt;li&gt;Providing input with other specialists into technical design decisions&lt;/li&gt;\r\n		&lt;li&gt;Communicating complex ideas and outcomes &lt;gwmw class=&quot;ginger-module-highlighter-mistake-type-3&quot; id=&quot;gwmw-15543609277730216155077&quot;&gt;to&lt;/gwmw&gt; peers, managers and partners&lt;/li&gt;\r\n		&lt;li&gt;Documenting technical systems and processes around work that your team owns&lt;/li&gt;\r\n		&lt;li&gt;Building consensus within the team for your and others&amp;rsquo; ideas&lt;/li&gt;\r\n		&lt;li&gt;Actively asking for and providing regular feedback&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;Impact &amp;amp; Influence\r\n	&lt;ul&gt;\r\n		&lt;li&gt;Reviewing other engineers&amp;rsquo; pull requests and helping them to improve the quality of our &lt;gwmw class=&quot;ginger-module-highlighter-mistake-type-1&quot; id=&quot;gwmw-15543609309892801045003&quot;&gt;codebase&lt;/gwmw&gt;&lt;/li&gt;\r\n		&lt;li&gt;Working with other engineers to improve skills&lt;/li&gt;\r\n		&lt;li&gt;&lt;gwmw class=&quot;ginger-module-highlighter-mistake-type-1&quot; id=&quot;gwmw-15543609322141588176682&quot;&gt;Onboarding&lt;/gwmw&gt; new engineers and keeping &lt;gwmw class=&quot;ginger-module-highlighter-mistake-type-3&quot; id=&quot;gwmw-15543609322147349564086&quot;&gt;onboarding process&lt;/gwmw&gt; up to date&lt;/li&gt;\r\n		&lt;li&gt;Potentially assisting with the hiring process&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;Execution\r\n	&lt;ul&gt;\r\n		&lt;li&gt;Working within a cross functional engineering team, delivering technical solutions to identified business needs at a high standard&lt;/li&gt;\r\n		&lt;li&gt;Owning pieces of work and delivering them to a high standard in alignment with our team&amp;rsquo;s product goals&lt;/li&gt;\r\n		&lt;li&gt;Working through roadblocks through collaboration&lt;/li&gt;\r\n		&lt;li&gt;Asking questions to ensure you understand the work well&lt;/li&gt;\r\n		&lt;li&gt;Providing accurate estimates of work we plan&lt;/li&gt;\r\n		&lt;li&gt;Working within and helping to improve our Lean &amp;amp; Agile processes, to deliver business value through your engineering effort&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;', 1, 1, 3, 2, 'PHP', 300000.00, 1, '<ul>\r\n	<li>You have experienced software development in a variety of contexts, languages and frameworks.</li>\r\n	<li>You write clean, readable code following the project&rsquo;s coding style and accepted practices, paradigms &amp; patterns (e.g. SOLID)</li>\r\n	<li>You write unit tests for new code</li>\r\n	<li>You have experience of Refactoring &amp; Debugging techniques.</li>\r\n	<li>You are confident working with relational SQL databases as well as NoSQL databases</li>\r\n	<li>You have built well-defined API services and are confident in consuming them</li>\r\n</ul>', '<ul>\r\n	<li>Familiarity with well-structured Object Oriented PHP</li>\r\n	<li>Experience of modern frameworks and libraries such as <gwmw class="ginger-module-highlighter-mistake-type-1" id="gwmw-15543609264977383793109">Laravel</gwmw> &amp; Symfony</li>\r\n	<li>Good understanding of OOP and functional programming</li>\r\n	<li>CI/CD experience using automated build tools and Docker</li>\r\n	<li>Exposure to the AWS ecosystem, particularly S3, SQS, RDS &amp; Elasticache</li>\r\n	<li>Comfortable making well considered use of appropriate packages and libraries</li>\r\n	<li><gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543609298372020417296">Experience</gwmw> of running applications &amp; services at scale, and of implementing scalable solutions</li>\r\n	<li>Knowledge of TDD and BDD approaches, and experience of how they help teams build brilliant solutions</li>\r\n	<li>DDD software design knowledge and experience of building <gwmw class="ginger-module-highlighter-mistake-type-1" id="gwmw-15543609315293721106704">serverless</gwmw> <gwmw class="ginger-module-highlighter-mistake-type-1" id="gwmw-15543609315299453912098">microservices</gwmw> would be a bonus</li>\r\n</ul>', 2, NULL, '2019-04-04 06:58:47', '2019-04-04 06:58:47'),
	(6, 6, 'Backend Software Engineer - We\'re changing the game!', 5, '2019-05-31', '&lt;p&gt;At Football Radar, we &lt;gwmw class=&quot;ginger-module-highlighter-mistake-type-1&quot; id=&quot;gwmw-15543626129042233142298&quot;&gt;analyse&lt;/gwmw&gt; and predict football matches. As a &lt;gwmw class=&quot;ginger-module-highlighter-mistake-type-1&quot; id=&quot;gwmw-15543626149152396318612&quot;&gt;backend&lt;/gwmw&gt; &lt;gwmw class=&quot;ginger-module-highlighter-mistake-type-3&quot; id=&quot;gwmw-15543626149153691964780&quot;&gt;engineer you&lt;/gwmw&gt;&amp;rsquo;ll have the chance to help build and maintain all the software that makes that possible &amp;ndash; everything from modern web applications to statistical models, real time data platforms to cloud infrastructure. Our &lt;gwmw class=&quot;ginger-module-highlighter-mistake-type-1&quot; id=&quot;gwmw-15543626168992219360248&quot;&gt;backend&lt;/gwmw&gt; engineers are involved in everything the company does and deal with all kinds of different challenges. A lot of our code is in Scala, which we are using increasingly, but we still have lots of PHP code, and a few odds and ends in other languages. You don&amp;rsquo;t need to know Scala for this role, however: we&amp;rsquo;ll help you learn it if you don&amp;rsquo;t know it, and many of our engineers had no real Scala experience before they started. We are just looking for great programmers who are passionate about their work. If you like a challenge, and want to work with really smart people, we would like to hear from you.&lt;/p&gt;', 1, 1, 4, 2, 'Backend', 300000.00, 1, '<ul>\r\n	<li>Above average programming ability</li>\r\n	<li>Excellent written and spoken English</li>\r\n	<li>Experience of working with web applications</li>\r\n	<li>Available to work in the UK</li>\r\n	<li>Senior and junior applicants welcome</li>\r\n</ul>\r\n\r\n<p><strong>Bonus skills:</strong></p>\r\n\r\n<ul>\r\n	<li>Computer science degree, or equivalent knowledge</li>\r\n	<li>Distributed systems experience</li>\r\n	<li>Full stack development experience</li>\r\n	<li>Functional programming knowledge</li>\r\n	<li>Passion for football or statistical models</li>\r\n</ul>', '<ul>\r\n	<li>Competitive salary that is reviewed regularly, with an annual bonus option</li>\r\n	<li>33 days holiday (includes bank holidays)</li>\r\n	<li>Competitive contribution match pension</li>\r\n	<li>Flexible hours and working conditions</li>\r\n	<li>Choice of your own development kit</li>\r\n	<li>Paid learning and development opportunities</li>\r\n	<li>Catered breakfast, lunch and dinners every day</li>\r\n	<li>Fully <gwmw class="ginger-module-highlighter-mistake-type-1" id="gwmw-15543626789392546017568">subsidised</gwmw> private medical insurance + on-site health checks</li>\r\n	<li><gwmw class="ginger-module-highlighter-mistake-type-1" id="gwmw-15543626795974249170763">Subsidised</gwmw> luxury gym membership (10 minutes from the office)</li>\r\n	<li>Garden for the sunny days</li>\r\n	<li>Ping <gwmw class="ginger-module-highlighter-mistake-anim ginger-module-highlighter-mistake-type-1" id="gwmw-15543626806273620834021">pong</gwmw>/ <gwmw class="ginger-module-highlighter-mistake-anim ginger-module-highlighter-mistake-type-1" id="gwmw-15543626806271947155836">fussball</gwmw></li>\r\n	<li>Ongoing intellectual challenges</li>\r\n</ul>', 2, NULL, '2019-04-04 07:24:41', '2019-04-04 07:24:41'),
	(7, 6, 'Systems Engineer - We\'re changing the game!', 4, '2019-05-31', '&lt;p&gt;We&amp;#39;re looking for an experienced Systems Engineer / Site Reliability Engineer to help us deliver high quality software and shape our technical roadmap over the coming years.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Development department consists of 20 developers across 4 sub-teams: Analysis, Modelling, Systems and Trading. As part of the Systems team, you&amp;#39;ll get the opportunity to enhance our DevOps culture, taking our collaboration and automation to the next level. We&amp;rsquo;re on a mission to improve stability and &lt;gwmw class=&quot;ginger-module-highlighter-mistake-type-1&quot; id=&quot;gwmw-15543628249074837506420&quot;&gt;standardisation&lt;/gwmw&gt;, and shorten feedback loops in order to make our department more efficient in delivering business value. We&amp;rsquo;re also looking for someone to help us incorporate security considerations into our development process.&lt;/p&gt;\r\n\r\n&lt;p&gt;Our production systems are deployed to cloud based infrastructure in AWS using Docker, Marathon and Mesos. Our &lt;gwmw class=&quot;ginger-module-highlighter-mistake-type-1&quot; id=&quot;gwmw-15543628277536363672612&quot;&gt;backend&lt;/gwmw&gt; systems are predominantly written in Scala and PHP, connecting to MariaDB, Postgres and Redis databases. We use Jenkins for continuous integration and Ansible for configuration management.&lt;/p&gt;', 1, 1, 3, 2, 'Backend Development', 300000.00, 1, '<ul>\r\n	<li>Implementing best practices for automation, monitoring, logging, data management and deployment</li>\r\n	<li>Support and monitor our production systems to achieve our uptime and reliability goals</li>\r\n	<li>Enabling the Development team to experiment quickly and deliver high quality software</li>\r\n	<li>Willingness to learn Windows and Network administration</li>\r\n	<li>At least 5 years experience as a Software Engineer, Systems Engineer or Systems Administrator</li>\r\n	<li>Knowledge of Linux/Unix administration</li>\r\n	<li>Software container knowledge, ideally Docker</li>\r\n	<li>Experience working with Cloud, ideally AWS, and dedicated server environments</li>\r\n	<li>Knowledge of at least one programming language</li>\r\n	<li>Container orchestration platform experience, <gwmw class="ginger-module-highlighter-mistake-type-1" id="gwmw-15543628486658248557227">eg</gwmw>. Marathon, Mesos, DC/OS</li>\r\n	<li>History of integrating Security into <gwmw class="ginger-module-highlighter-mistake-type-3" id="gwmw-15543628499182193511049">development cycle</gwmw></li>\r\n</ul>', '<ul>\r\n	<li>Competitive salary that is reviewed regularly, with an annual bonus option</li>\r\n	<li>33 days holiday (includes bank holidays)</li>\r\n	<li>Competitive contribution match pension</li>\r\n	<li>Flexible hours and working conditions</li>\r\n	<li>Choice of your own development kit</li>\r\n	<li>Paid learning and development opportunities</li>\r\n	<li>Catered breakfast, lunch and dinners every day</li>\r\n	<li>Fully subsidised private medical insurance + on-site health checks</li>\r\n	<li>Subsidised luxury gym membership (10 minutes from the office)</li>\r\n	<li>Garden for the sunny days</li>\r\n	<li>Ping pong/ fussball</li>\r\n	<li>Ongoing intellectual challenges</li>\r\n</ul>', 2, NULL, '2019-04-04 07:27:41', '2019-04-04 07:27:41'),
	(8, 6, 'New test job added by us', 2, '2019-04-30', '&lt;p&gt;Job Description&lt;/p&gt;', 1, 1, 3, 3, 'PHP', 300000.00, 1, '<p>Requirement</p>', '<p><gwmw class="ginger-module-highlighter-mistake-type-1" id="gwmw-15546997116389476973506">Benifits</gwmw></p>', 2, NULL, '2019-04-08 05:02:07', '2019-04-08 05:02:07');
/*!40000 ALTER TABLE `requirements` ENABLE KEYS */;

-- Dumping structure for table ats.requirement_documents
CREATE TABLE IF NOT EXISTS `requirement_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `requirement_id` int(11) NOT NULL,
  `document_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Active, 2: Inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requirement_id` (`requirement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.requirement_documents: ~0 rows (approximately)
/*!40000 ALTER TABLE `requirement_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `requirement_documents` ENABLE KEYS */;

-- Dumping structure for table ats.requirement_histories
CREATE TABLE IF NOT EXISTS `requirement_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `requirement_id` int(11) NOT NULL,
  `date_extends` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requirement_id` (`requirement_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.requirement_histories: ~2 rows (approximately)
/*!40000 ALTER TABLE `requirement_histories` DISABLE KEYS */;
INSERT INTO `requirement_histories` (`id`, `requirement_id`, `date_extends`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 4, '2019-04-30', 1, NULL, '2019-04-04 07:08:52', '2019-04-04 07:08:52'),
	(2, 1, '2019-05-31', 1, NULL, '2019-04-04 08:31:42', '2019-04-04 08:31:42'),
	(3, 1, '2019-05-30', 1, NULL, '2019-04-04 09:53:38', '2019-04-04 09:53:38');
/*!40000 ALTER TABLE `requirement_histories` ENABLE KEYS */;

-- Dumping structure for table ats.requirement_locations
CREATE TABLE IF NOT EXISTS `requirement_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `requirement_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Active, 2: Inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requirement_id` (`requirement_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.requirement_locations: ~7 rows (approximately)
/*!40000 ALTER TABLE `requirement_locations` DISABLE KEYS */;
INSERT INTO `requirement_locations` (`id`, `requirement_id`, `location_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 2, NULL, NULL, '2019-04-04 09:53:38'),
	(2, 2, 3, 2, NULL, NULL, '2019-04-08 06:02:12'),
	(3, 3, 2, 2, NULL, NULL, '2019-04-08 06:02:12'),
	(4, 4, 1, 2, NULL, NULL, '2019-04-04 07:08:52'),
	(5, 5, 1, 1, NULL, '2019-04-04 06:58:47', '2019-04-04 06:58:47'),
	(6, 6, 2, 1, NULL, '2019-04-04 07:24:41', '2019-04-04 07:24:41'),
	(7, 7, 2, 1, NULL, '2019-04-04 07:27:41', '2019-04-04 07:27:41'),
	(8, 8, 2, 1, NULL, '2019-04-08 05:02:07', '2019-04-08 05:02:07');
/*!40000 ALTER TABLE `requirement_locations` ENABLE KEYS */;

-- Dumping structure for table ats.requirement_recruiters
CREATE TABLE IF NOT EXISTS `requirement_recruiters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `requirement_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Active, 2: Inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requirement_id` (`requirement_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.requirement_recruiters: ~15 rows (approximately)
/*!40000 ALTER TABLE `requirement_recruiters` DISABLE KEYS */;
INSERT INTO `requirement_recruiters` (`id`, `requirement_id`, `agency_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, NULL, '2019-03-26 00:00:00', '2019-04-04 09:53:38'),
	(2, 2, 1, 1, NULL, '2019-03-26 00:00:00', '2019-03-26 00:00:00'),
	(3, 3, 1, 1, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(4, 4, 1, 1, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(5, 2, 2, 1, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(6, 3, 2, 1, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(7, 1, 3, 1, NULL, '2019-03-27 00:00:00', '2019-04-04 09:53:38'),
	(8, 3, 3, 1, NULL, '2019-03-27 00:00:00', '2019-03-27 00:00:00'),
	(9, 5, 2, 1, NULL, '2019-04-04 06:58:47', '2019-04-04 06:58:47'),
	(10, 5, 4, 1, NULL, '2019-04-04 06:58:48', '2019-04-04 06:58:48'),
	(11, 6, 4, 1, NULL, '2019-04-04 07:24:41', '2019-04-04 07:24:41'),
	(12, 7, 1, 1, NULL, '2019-04-04 07:27:42', '2019-04-04 07:27:42'),
	(13, 7, 2, 1, NULL, '2019-04-04 07:27:42', '2019-04-04 07:27:42'),
	(14, 7, 4, 1, NULL, '2019-04-04 07:27:42', '2019-04-04 07:27:42'),
	(15, 8, 8, 1, NULL, '2019-04-08 05:02:07', '2019-04-08 05:02:07');
/*!40000 ALTER TABLE `requirement_recruiters` ENABLE KEYS */;

-- Dumping structure for table ats.requirement_skills
CREATE TABLE IF NOT EXISTS `requirement_skills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `requirement_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: Active, 2: Inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requirement_id` (`requirement_id`),
  KEY `skill_id` (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.requirement_skills: ~20 rows (approximately)
/*!40000 ALTER TABLE `requirement_skills` DISABLE KEYS */;
INSERT INTO `requirement_skills` (`id`, `requirement_id`, `skill_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 1, NULL, NULL, '2019-04-04 09:53:38'),
	(2, 1, 3, 1, NULL, NULL, '2019-04-04 09:53:38'),
	(3, 2, 3, 1, NULL, NULL, NULL),
	(4, 3, 1, 1, NULL, NULL, NULL),
	(5, 3, 4, 1, NULL, NULL, NULL),
	(6, 4, 2, 1, NULL, NULL, '2019-04-04 07:08:52'),
	(7, 5, 1, 1, NULL, '2019-04-04 06:58:47', '2019-04-04 06:58:47'),
	(8, 5, 5, 1, NULL, '2019-04-04 06:58:47', '2019-04-04 06:58:47'),
	(9, 5, 6, 1, NULL, '2019-04-04 06:58:47', '2019-04-04 06:58:47'),
	(10, 6, 1, 1, NULL, '2019-04-04 07:24:41', '2019-04-04 07:24:41'),
	(11, 6, 3, 1, NULL, '2019-04-04 07:24:41', '2019-04-04 07:24:41'),
	(12, 6, 4, 1, NULL, '2019-04-04 07:24:41', '2019-04-04 07:24:41'),
	(13, 6, 6, 1, NULL, '2019-04-04 07:24:41', '2019-04-04 07:24:41'),
	(14, 7, 1, 1, NULL, '2019-04-04 07:27:41', '2019-04-04 07:27:41'),
	(15, 7, 3, 1, NULL, '2019-04-04 07:27:41', '2019-04-04 07:27:41'),
	(16, 7, 4, 1, NULL, '2019-04-04 07:27:41', '2019-04-04 07:27:41'),
	(17, 7, 6, 1, NULL, '2019-04-04 07:27:41', '2019-04-04 07:27:41'),
	(18, 8, 1, 1, NULL, '2019-04-08 05:02:07', '2019-04-08 05:02:07'),
	(19, 8, 3, 1, NULL, '2019-04-08 05:02:07', '2019-04-08 05:02:07'),
	(20, 8, 6, 1, NULL, '2019-04-08 05:02:07', '2019-04-08 05:02:07');
/*!40000 ALTER TABLE `requirement_skills` ENABLE KEYS */;

-- Dumping structure for table ats.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` tinyint(4) NOT NULL COMMENT '1:web, 2: Api',
  `status` tinyint(4) NOT NULL COMMENT '1: active, 2: inactive',
  `isdelete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1: yes, 2: no',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.roles: ~5 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `alias`, `guard_name`, `status`, `isdelete`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'admin', 1, 1, 2, NULL, '2019-03-27 13:50:09', '2019-03-27 13:50:09'),
	(2, 'HR', 'hr', 1, 1, 2, NULL, '2019-03-27 13:50:31', '2019-03-27 13:50:31'),
	(3, 'CEO', 'ceo', 1, 1, 2, NULL, '2019-03-27 13:50:46', '2019-03-27 13:50:46'),
	(4, 'Consultant', 'consultant', 1, 1, 2, NULL, '2019-03-27 13:51:16', '2019-03-27 13:51:16'),
	(5, 'Lead Consultant', 'lead consultant', 1, 1, 2, NULL, '2019-03-27 13:51:54', '2019-03-27 13:51:54');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table ats.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1:InActive,2:Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.role_user: ~5 rows (approximately)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`role_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
	(4, 9, 2, '2019-03-27 13:56:18', '2019-03-27 13:56:18'),
	(4, 10, 2, '2019-03-27 13:59:29', '2019-03-27 13:59:29'),
	(1, 7, 2, NULL, NULL),
	(1, 6, 2, NULL, NULL),
	(2, 11, 2, '2019-03-29 03:48:49', '2019-03-29 03:48:49');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table ats.skills
CREATE TABLE IF NOT EXISTS `skills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1.active,2.inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.skills: ~5 rows (approximately)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` (`id`, `name`, `alias`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'PHP', 'PHP', 1, '2019-03-26 00:00:00', '2019-03-26 00:00:00', NULL),
	(2, 'JAVA', 'JAVA', 1, '2019-03-26 11:16:53', '2019-03-26 11:21:33', NULL),
	(3, 'Angular', 'Angular', 1, '2019-03-27 13:38:03', '2019-03-27 13:38:03', NULL),
	(4, 'NodeJs', 'NodeJs', 1, '2019-03-27 13:39:19', '2019-03-27 13:39:19', NULL),
	(5, 'UI', 'UI', 1, '2019-03-27 13:40:13', '2019-03-27 13:40:13', NULL),
	(6, 'MongoDB', 'mongodb', 1, '2019-04-01 06:36:38', '2019-04-01 06:36:38', NULL);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;

-- Dumping structure for table ats.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1.agency,2.employee',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1.active,2.inactive,3.hold,4.inprocess',
  `is_delete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1.yes,2.no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ats.users: ~13 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `password`, `profile`, `status`, `is_delete`, `created_at`, `updated_at`, `remember_token`, `deleted_at`) VALUES
	(1, 'vishal', 2, 'vishal@gmail.com', '$2y$10$qOyUp3wJILcvlgG4xp60Wex.rPBAgN2OGfXsQmqqhdHaHIpeh18xS', NULL, 1, 2, '2019-03-26 10:43:41', '2019-03-26 10:43:41', 'gZX3khRmzQR4O9gICF3ekWn3H0wiBODFHKjznCTHsNLLUjT9C5GiNvho1xUX', NULL),
	(2, 'shashank rami', 2, 'shashank@gmail.com', '$2y$10$uOXqj480iIE8y6NksK5Ype5NV35TWFUCHXsNH..EZfm.fjXwtW3uC', 'phpE1F4.tmp.jpg', 1, 2, '2019-03-26 10:46:16', '2019-03-27 10:23:50', NULL, NULL),
	(3, 'Salman Khan', 2, 'salaman@gmail.com', 'g65qN41f', 'C:\\xampp\\tmp\\phpF5C6.tmp', 1, 2, '2019-03-26 10:49:26', '2019-03-26 10:49:26', NULL, NULL),
	(4, 'Raju hirani', 2, 'rajuhirani@gmail.com', 'D8vg0Oib', 'C:\\xampp\\tmp\\php7A83.tmp', 1, 2, '2019-03-26 10:51:05', '2019-03-26 10:51:05', NULL, NULL),
	(5, 'abc bca', 2, 'abc@gmail.com', 'dsd7TWgu', 'C:\\xampp\\tmp\\php2867.tmp', 1, 2, '2019-03-26 11:02:45', '2019-03-26 11:02:45', NULL, NULL),
	(6, 'jinal shah', 2, 'jinal@gmail.com', '$2y$10$21TCE9Tl5AdxWC/wSWdEUevWAu8Mrhyjam6UBw85QLXx/DyeRnm8u', 'php5AC6.tmp.jpg', 1, 2, '2019-03-26 11:12:48', '2019-03-26 11:12:48', 'd4t5w5RB5XJrutyji1L2XJatFOuV0on10S9f9Xp0HUwVQoXhOvSOcGONURxQ', NULL),
	(7, 'pinal patel', 2, 'sanghaviurvin111@gmail.com', '$2y$10$xGtRwt2EY40ZkqfI0MC2CuU8H6rpCt2bhqJwkT/k0aI5U/k0yOZlu', 'php6A2F.tmp.jpg', 1, 2, '2019-03-27 05:17:29', '2019-03-27 05:17:29', NULL, NULL),
	(8, 'prashank shah', 2, 'monstar@gmail.com', 'pigGWjcW', 'C:\\xampp\\tmp\\phpE433.tmp', 1, 2, '2019-03-27 13:45:54', '2019-03-27 13:45:54', NULL, NULL),
	(9, 'prashank shah', 2, 'prashankshah@gmail.com', '$2y$10$R1ZD1B7wcnRtbrCQ5iUBV.0mikFLkK62vF3fjrof6YiuhBFWl83AO', 'php653F.tmp.jpg', 1, 2, '2019-03-27 13:56:17', '2019-03-27 13:56:17', NULL, NULL),
	(10, 'bhumi rami', 2, 'bhumi@gamil.com', '$2y$10$T.7yFLQxkV26rO36hhC5m.puJxrocvmOpKcGtYzCL1vd6uelKEBuq', 'php53BD.tmp.jpg', 1, 2, '2019-03-27 13:59:29', '2019-03-27 13:59:29', NULL, NULL),
	(11, 'Test testname', 2, 'test@gmail.com', '$2y$10$hn535PIiIcN9044orpcMZODuLYlsFhH2zY0TXV8KEVPAakSWAyQiG', 'phpFA51.tmp.png', 1, 2, '2019-03-29 03:48:49', '2019-03-29 03:48:49', '4UXyMR3L9ZSdLK1PxyNeMclAyfHHAnDSFucxerCMnFUMBzwDboYKNRkzKIG8', NULL),
	(12, 'Hemal Patel', 2, 'nikunj.knowarth@knowarth.com', 'uIgRwuqN', NULL, 1, 2, '2019-04-04 08:27:14', '2019-04-04 08:27:14', NULL, NULL),
	(13, 'Vishal Rami', 2, 'vishal.rami@knowarth.com', 'AYsPZMnt', NULL, 1, 2, '2019-04-04 08:54:34', '2019-04-04 08:54:34', NULL, NULL),
	(14, 'Jigs Arora', 2, 'jigs.arora@gmail.com', 'bYJJk3w7', 'C:\\Users\\nikunj.kansara\\AppData\\Local\\Temp\\php7618.tmp', 1, 2, '2019-04-08 04:02:20', '2019-04-08 04:02:20', NULL, NULL),
	(15, 'Harshil Josh', 2, 'nikunj.kansara@knowarth.com', 'GxPiFq9I', NULL, 1, 2, '2019-04-08 04:58:49', '2019-04-08 04:58:49', NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
