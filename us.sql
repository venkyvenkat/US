-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2022 at 03:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `us`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_agent`
--

CREATE TABLE `agent_agent` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent_agent`
--

INSERT INTO `agent_agent` (`id`, `phone`, `status`, `user_id`) VALUES
(1, '9640861076', 'active', 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add immigration status', 7, 'add_immigrationstatus'),
(26, 'Can change immigration status', 7, 'change_immigrationstatus'),
(27, 'Can delete immigration status', 7, 'delete_immigrationstatus'),
(28, 'Can view immigration status', 7, 'view_immigrationstatus'),
(29, 'Can add immigration section', 8, 'add_immigrationsection'),
(30, 'Can change immigration section', 8, 'change_immigrationsection'),
(31, 'Can delete immigration section', 8, 'delete_immigrationsection'),
(32, 'Can view immigration section', 8, 'view_immigrationsection'),
(33, 'Can add ethnicity', 9, 'add_ethnicity'),
(34, 'Can change ethnicity', 9, 'change_ethnicity'),
(35, 'Can delete ethnicity', 9, 'delete_ethnicity'),
(36, 'Can view ethnicity', 9, 'view_ethnicity'),
(37, 'Can add race', 10, 'add_race'),
(38, 'Can change race', 10, 'change_race'),
(39, 'Can delete race', 10, 'delete_race'),
(40, 'Can view race', 10, 'view_race'),
(41, 'Can add eye color', 11, 'add_eyecolor'),
(42, 'Can change eye color', 11, 'change_eyecolor'),
(43, 'Can delete eye color', 11, 'delete_eyecolor'),
(44, 'Can view eye color', 11, 'view_eyecolor'),
(45, 'Can add hair color', 12, 'add_haircolor'),
(46, 'Can change hair color', 12, 'change_haircolor'),
(47, 'Can delete hair color', 12, 'delete_haircolor'),
(48, 'Can view hair color', 12, 'view_haircolor'),
(49, 'Can add country', 13, 'add_country'),
(50, 'Can change country', 13, 'change_country'),
(51, 'Can delete country', 13, 'delete_country'),
(52, 'Can view country', 13, 'view_country'),
(53, 'Can add state', 14, 'add_state'),
(54, 'Can change state', 14, 'change_state'),
(55, 'Can delete state', 14, 'delete_state'),
(56, 'Can view state', 14, 'view_state'),
(57, 'Can add application category', 15, 'add_applicationcategory'),
(58, 'Can change application category', 15, 'change_applicationcategory'),
(59, 'Can delete application category', 15, 'delete_applicationcategory'),
(60, 'Can view application category', 15, 'view_applicationcategory'),
(61, 'Can add permanent resident', 16, 'add_permanentresident'),
(62, 'Can change permanent resident', 16, 'change_permanentresident'),
(63, 'Can delete permanent resident', 16, 'delete_permanentresident'),
(64, 'Can view permanent resident', 16, 'view_permanentresident'),
(65, 'Can add appartment type', 17, 'add_appartmenttype'),
(66, 'Can change appartment type', 17, 'change_appartmenttype'),
(67, 'Can delete appartment type', 17, 'delete_appartmenttype'),
(68, 'Can view appartment type', 17, 'view_appartmenttype'),
(69, 'Can add uscis adjustment status', 18, 'add_uscisadjustmentstatus'),
(70, 'Can change uscis adjustment status', 18, 'change_uscisadjustmentstatus'),
(71, 'Can delete uscis adjustment status', 18, 'delete_uscisadjustmentstatus'),
(72, 'Can view uscis adjustment status', 18, 'view_uscisadjustmentstatus'),
(73, 'Can add portof entry', 19, 'add_portofentry'),
(74, 'Can change portof entry', 19, 'change_portofentry'),
(75, 'Can delete portof entry', 19, 'delete_portofentry'),
(76, 'Can view portof entry', 19, 'view_portofentry'),
(77, 'Can add preparer information', 20, 'add_preparerinformation'),
(78, 'Can change preparer information', 20, 'change_preparerinformation'),
(79, 'Can delete preparer information', 20, 'delete_preparerinformation'),
(80, 'Can view preparer information', 20, 'view_preparerinformation'),
(81, 'Can add applicable boxes', 21, 'add_applicableboxes'),
(82, 'Can change applicable boxes', 21, 'change_applicableboxes'),
(83, 'Can delete applicable boxes', 21, 'delete_applicableboxes'),
(84, 'Can view applicable boxes', 21, 'view_applicableboxes'),
(85, 'Can add customer', 22, 'add_customer'),
(86, 'Can change customer', 22, 'change_customer'),
(87, 'Can delete customer', 22, 'delete_customer'),
(88, 'Can view customer', 22, 'view_customer'),
(89, 'Can add order', 23, 'add_order'),
(90, 'Can change order', 23, 'change_order'),
(91, 'Can delete order', 23, 'delete_order'),
(92, 'Can view order', 23, 'view_order'),
(93, 'Can add agent', 24, 'add_agent'),
(94, 'Can change agent', 24, 'change_agent'),
(95, 'Can delete agent', 24, 'delete_agent'),
(96, 'Can view agent', 24, 'view_agent'),
(97, 'Can add personel details', 25, 'add_personeldetails'),
(98, 'Can change personel details', 25, 'change_personeldetails'),
(99, 'Can delete personel details', 25, 'delete_personeldetails'),
(100, 'Can view personel details', 25, 'view_personeldetails'),
(101, 'Can add permanent resident', 26, 'add_permanentresident'),
(102, 'Can change permanent resident', 26, 'change_permanentresident'),
(103, 'Can delete permanent resident', 26, 'delete_permanentresident'),
(104, 'Can view permanent resident', 26, 'view_permanentresident'),
(105, 'Can add mailing address', 27, 'add_mailingaddress'),
(106, 'Can change mailing address', 27, 'change_mailingaddress'),
(107, 'Can delete mailing address', 27, 'delete_mailingaddress'),
(108, 'Can view mailing address', 27, 'view_mailingaddress'),
(109, 'Can add eligibility', 28, 'add_eligibility'),
(110, 'Can change eligibility', 28, 'change_eligibility'),
(111, 'Can delete eligibility', 28, 'delete_eligibility'),
(112, 'Can view eligibility', 28, 'view_eligibility'),
(113, 'Can add birth information', 29, 'add_birthinformation'),
(114, 'Can change birth information', 29, 'change_birthinformation'),
(115, 'Can delete birth information', 29, 'delete_birthinformation'),
(116, 'Can view birth information', 29, 'view_birthinformation'),
(117, 'Can add biographic information', 30, 'add_biographicinformation'),
(118, 'Can change biographic information', 30, 'change_biographicinformation'),
(119, 'Can delete biographic information', 30, 'delete_biographicinformation'),
(120, 'Can view biographic information', 30, 'view_biographicinformation'),
(121, 'Can add application form', 31, 'add_applicationform'),
(122, 'Can change application form', 31, 'change_applicationform'),
(123, 'Can delete application form', 31, 'delete_applicationform'),
(124, 'Can view application form', 31, 'view_applicationform'),
(125, 'Can add applicant information', 32, 'add_applicantinformation'),
(126, 'Can change applicant information', 32, 'change_applicantinformation'),
(127, 'Can delete applicant information', 32, 'delete_applicantinformation'),
(128, 'Can view applicant information', 32, 'view_applicantinformation'),
(129, 'Can add become permanent resident', 26, 'add_becomepermanentresident'),
(130, 'Can change become permanent resident', 26, 'change_becomepermanentresident'),
(131, 'Can delete become permanent resident', 26, 'delete_becomepermanentresident'),
(132, 'Can view become permanent resident', 26, 'view_becomepermanentresident');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$uXzEp99v383shwiyUG6AtY$uDWOsX8B6KCCdGBj8xR9RyA8uQVRE41RKp4saOI5C7A=', '2022-05-03 19:17:10.823450', 1, 'admin', '', '', '', 1, 1, '2022-05-02 12:11:58.786436'),
(2, 'pbkdf2_sha256$260000$kOSN8LQyNrtHLvr0mAEgu2$xWNpxfdLdlx80pj5gbMoz9QN7df6tRX/yxrs6IvjIXY=', '2022-05-05 09:27:00.393990', 0, 'agent@gmail.com', 'Venkat', 'Rao', 'venkat_rao@test.com', 0, 1, '2022-05-04 06:58:43.000000'),
(3, 'pbkdf2_sha256$260000$lrrnFcyQDkLCbasUNNyP1e$tY2NZuYnBmUdGTZw2QOrzz6iLgBhKQHo+4iHNXR8dHE=', NULL, 0, 'venkat@gmail.com', 'venkat', 'k', 'venkat@gmail.com', 0, 1, '2022-05-04 10:55:24.072366'),
(4, '', NULL, 0, '11@gmail.com', '1', '1', '11@gmail.com', 0, 1, '2022-05-04 12:36:03.967918'),
(5, '', NULL, 0, 'adfdf@test.com', 'sfasf', 'safasf', 'adfdf@test.com', 0, 1, '2022-05-04 12:37:40.656223'),
(6, '', NULL, 0, '1', '1', '1', '1', 0, 1, '2022-05-04 13:20:59.826241'),
(7, '', NULL, 0, 'ASA', '1', '1', 'ASA', 0, 1, '2022-05-04 13:34:49.743686'),
(9, '', NULL, 0, 'wer@gmail.com', 'erewr', 'wer', 'wer@gmail.com', 0, 1, '2022-05-05 07:16:36.314859'),
(10, 'pbkdf2_sha256$260000$KUb4yZKx59q9F6WubusC5b$tOmXT3GjLoIHdd/Kw8WrneeyDIJ+l/RG++SMWOjU4Hc=', NULL, 0, 'rajesh@gmail.cm', 'rajesh', 'rajesh', 'rajesh@gmail.cm', 0, 1, '2022-05-05 09:40:06.316535'),
(11, 'pbkdf2_sha256$260000$iMq2rsj3jLHILOIGKyGhJh$FRMNE/6rAwxZSMQiBPLhZARymF1ATIePO/9MKbcyfQc=', NULL, 0, 'tested@gmail.com', 'tested', 'tested', 'tested@gmail.com', 0, 1, '2022-05-05 11:56:53.754882'),
(12, '', NULL, 0, 'SFdaf@qetre', '1', '1', 'SFdaf@qetre', 0, 1, '2022-05-05 13:11:16.936695');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_applicantinformation`
--

CREATE TABLE `customer_applicantinformation` (
  `id` bigint(20) NOT NULL,
  `daytime_phone_number` varchar(50) NOT NULL,
  `mobile_phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `other_social_security_number` varchar(50) DEFAULT NULL,
  `uscis_online_account_number` varchar(50) DEFAULT NULL,
  `interpreter_prepare_information_status` varchar(20) NOT NULL,
  `interpreter_terms_and_conditions_status` tinyint(1) NOT NULL,
  `interpreter_language` varchar(50) DEFAULT NULL,
  `interpreter_first_name` varchar(50) DEFAULT NULL,
  `interpreter_last_name` varchar(50) DEFAULT NULL,
  `interpreter_business_or_organization_name` varchar(50) DEFAULT NULL,
  `intepreter_streat_number_and_name` varchar(50) DEFAULT NULL,
  `intepreter_appartment_value` varchar(10) DEFAULT NULL,
  `intepreter_city` varchar(50) DEFAULT NULL,
  `intepreter_zipcode` varchar(6) DEFAULT NULL,
  `intepreter_province` varchar(30) DEFAULT NULL,
  `intepreter_postal_code` varchar(30) DEFAULT NULL,
  `intepreter_daytime_phone_number` varchar(30) DEFAULT NULL,
  `intepreter_mobile_number` varchar(30) DEFAULT NULL,
  `intepreter_email` varchar(30) DEFAULT NULL,
  `preparer_first_name` varchar(50) DEFAULT NULL,
  `preparer_last_name` varchar(50) DEFAULT NULL,
  `preparer_business_or_organization_name` varchar(50) DEFAULT NULL,
  `preparer_streat_number_and_name` varchar(50) DEFAULT NULL,
  `preparer_appartment_value` varchar(10) DEFAULT NULL,
  `preparer_city` varchar(50) DEFAULT NULL,
  `preparer_zipcode` varchar(6) DEFAULT NULL,
  `preparer_province` varchar(30) DEFAULT NULL,
  `preparer_postal_code` varchar(30) DEFAULT NULL,
  `preparer_daytime_phone_number` varchar(30) DEFAULT NULL,
  `preparer_mobile_number` varchar(30) DEFAULT NULL,
  `preparer_email` varchar(30) DEFAULT NULL,
  `accomidation_status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `intepreter_appartment_id` bigint(20) DEFAULT NULL,
  `intepreter_country_id` bigint(20) DEFAULT NULL,
  `intepreter_state_id` bigint(20) DEFAULT NULL,
  `preparer_appartment_id` bigint(20) DEFAULT NULL,
  `preparer_country_id` bigint(20) DEFAULT NULL,
  `preparer_state_id` bigint(20) DEFAULT NULL,
  `preparer_status_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_applicantinformation`
--

INSERT INTO `customer_applicantinformation` (`id`, `daytime_phone_number`, `mobile_phone_number`, `email`, `other_social_security_number`, `uscis_online_account_number`, `interpreter_prepare_information_status`, `interpreter_terms_and_conditions_status`, `interpreter_language`, `interpreter_first_name`, `interpreter_last_name`, `interpreter_business_or_organization_name`, `intepreter_streat_number_and_name`, `intepreter_appartment_value`, `intepreter_city`, `intepreter_zipcode`, `intepreter_province`, `intepreter_postal_code`, `intepreter_daytime_phone_number`, `intepreter_mobile_number`, `intepreter_email`, `preparer_first_name`, `preparer_last_name`, `preparer_business_or_organization_name`, `preparer_streat_number_and_name`, `preparer_appartment_value`, `preparer_city`, `preparer_zipcode`, `preparer_province`, `preparer_postal_code`, `preparer_daytime_phone_number`, `preparer_mobile_number`, `preparer_email`, `accomidation_status`, `created_at`, `updated_at`, `customer_id`, `intepreter_appartment_id`, `intepreter_country_id`, `intepreter_state_id`, `preparer_appartment_id`, `preparer_country_id`, `preparer_state_id`, `preparer_status_id`) VALUES
(1, '1', '1', '11', '11', '11', 'no', 1, '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '11', '11', '11', '111', '111', '111', '111', '11', '111', '111', '1111', 'no', '2022-05-04 11:57:41.161228', '2022-05-04 11:57:41.161228', 1, 4, 1, 11, 2, 1, 16, 1),
(2, '232', 'rewr', 'qwrqwr', 'qwrqw', 'qwr', 'no', 1, 'wqr', 'qwr', 'rqwr', 'qwr', 'qwr', NULL, 'wqr', '12421', '1242', '124', '214124', '4124', '124124', '12421', '124124', '124', '124124', NULL, '12421', '44', '242', 'qwrqwr', 'qwr', 'qwrqwrqw', 'rqwr', 'no', '2022-05-05 07:56:25.034163', '2022-05-05 07:56:25.034163', 6, 1, 1, 9, 2, 1, 2, 1),
(3, 'rajesh', 'rajesh', 'rajesh@gmail.cm', 'rajesh', 'rajesh', 'no', 1, 'rajesh', 'rajesh', 'rajesh', 'rajesh', 'rajesh', NULL, 'rajesh', '112233', 'rajesh', 'rajesh', '1111111111', '1111111111', 'rajesh@test.in', 'rajesh', 'rajesh', 'rajesh', 'rajesh', NULL, 'rajesh', 'rajesh', 'rajesh', 'rajesh', 'rajesh', 'rajesh', 'rajesh', 'no', '2022-05-05 09:43:20.552750', '2022-05-05 09:43:20.552750', 7, 3, 1, 12, 2, 1, 1, 2),
(4, '222', NULL, NULL, NULL, NULL, 'no', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', '2022-05-05 13:17:45.627074', '2022-05-05 13:17:45.627074', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_applicantinformation_explanation`
--

CREATE TABLE `customer_applicantinformation_explanation` (
  `id` bigint(20) NOT NULL,
  `applicantinformation_id` bigint(20) NOT NULL,
  `applicableboxes_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_applicationform`
--

CREATE TABLE `customer_applicationform` (
  `id` bigint(20) NOT NULL,
  `alien_registration_number` varchar(30) DEFAULT NULL,
  `alien_registration_number_status` tinyint(1) NOT NULL,
  `category_status` tinyint(1) NOT NULL,
  `resident_since` date DEFAULT NULL,
  `resident_since_status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_applicationform`
--

INSERT INTO `customer_applicationform` (`id`, `alien_registration_number`, `alien_registration_number_status`, `category_status`, `resident_since`, `resident_since_status`, `created_at`, `updated_at`, `category_id`, `customer_id`) VALUES
(1, '1', 1, 1, '2022-09-09', 1, '2022-05-04 11:56:53.691034', '2022-05-04 11:56:53.691034', 2, 1),
(2, NULL, 0, 0, NULL, 0, '2022-05-04 12:54:11.730544', '2022-05-04 12:54:11.730544', NULL, 3),
(3, '1', 0, 0, '2022-05-19', 0, '2022-05-04 13:50:57.500990', '2022-05-04 13:50:57.500990', 3, 5),
(4, '1', 1, 1, '2022-05-01', 1, '2022-05-05 07:31:14.767419', '2022-05-05 07:31:14.767419', 7, 6),
(5, 'rajesh', 1, 0, '2022-05-17', 0, '2022-05-05 09:41:16.696799', '2022-05-05 09:41:16.696799', 1, 7),
(6, NULL, 1, 1, NULL, 1, '2022-05-05 12:23:00.120145', '2022-05-05 12:23:00.120145', NULL, 8),
(7, '1', 1, 0, NULL, 0, '2022-05-05 13:11:53.907599', '2022-05-05 13:11:53.907599', NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `customer_becomepermanentresident`
--

CREATE TABLE `customer_becomepermanentresident` (
  `id` bigint(20) NOT NULL,
  `consular_applied_visa` varchar(50) DEFAULT NULL,
  `consular_issued_visa` varchar(50) DEFAULT NULL,
  `other_uscis_office` varchar(50) DEFAULT NULL,
  `apply_enter_city_and_state_name` varchar(50) DEFAULT NULL,
  `adjustment_status_interview` varchar(20) DEFAULT NULL,
  `granted_enter_city_and_state_name` varchar(50) DEFAULT NULL,
  `processing_information_removed` varchar(10) DEFAULT NULL,
  `processing_information_abonded` varchar(10) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `adjustment_apply_status_id` bigint(20) DEFAULT NULL,
  `adjustment_granted_status_id` bigint(20) DEFAULT NULL,
  `consula_state_id` bigint(20) DEFAULT NULL,
  `consular_port_of_entry_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_becomepermanentresident`
--

INSERT INTO `customer_becomepermanentresident` (`id`, `consular_applied_visa`, `consular_issued_visa`, `other_uscis_office`, `apply_enter_city_and_state_name`, `adjustment_status_interview`, `granted_enter_city_and_state_name`, `processing_information_removed`, `processing_information_abonded`, `created_at`, `updated_at`, `adjustment_apply_status_id`, `adjustment_granted_status_id`, `consula_state_id`, `consular_port_of_entry_id`, `customer_id`, `status_id`) VALUES
(1, NULL, NULL, NULL, NULL, 'no', NULL, 'no', 'no', '2022-05-04 12:26:31.335557', '2022-05-04 12:26:31.335557', NULL, NULL, NULL, NULL, 1, 1),
(2, NULL, NULL, NULL, NULL, 'no', NULL, 'no', 'no', '2022-05-04 14:02:13.613035', '2022-05-04 14:02:13.613035', NULL, NULL, NULL, NULL, 5, 2),
(3, 'test', 'test', NULL, 'test', 'no', '7uh', 'no', 'no', '2022-05-05 07:55:42.025217', '2022-05-05 07:55:42.025217', 5, 11, 6, 1, 6, 1),
(4, 'rajesh', 'rajesh', NULL, NULL, 'no', NULL, 'no', 'no', '2022-05-05 09:41:24.429987', '2022-05-05 09:41:24.429987', NULL, NULL, NULL, NULL, 7, 1),
(5, NULL, NULL, NULL, NULL, 'no', NULL, 'yes', 'no', '2022-05-05 12:33:17.770334', '2022-05-05 12:33:17.770334', NULL, NULL, NULL, NULL, 8, 2),
(6, '1', '1', NULL, NULL, 'no', NULL, 'no', 'no', '2022-05-05 13:12:02.656801', '2022-05-05 13:12:02.656801', NULL, NULL, 16, 13, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_biographicinformation`
--

CREATE TABLE `customer_biographicinformation` (
  `id` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `height_in_feet` varchar(5) NOT NULL,
  `height_in_inches` varchar(5) NOT NULL,
  `weight_in_pounds` varchar(5) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `ethnicity_id` bigint(20) NOT NULL,
  `eye_color_id` bigint(20) NOT NULL,
  `hair_color_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_biographicinformation`
--

INSERT INTO `customer_biographicinformation` (`id`, `gender`, `height_in_feet`, `height_in_inches`, `weight_in_pounds`, `created_at`, `updated_at`, `customer_id`, `ethnicity_id`, `eye_color_id`, `hair_color_id`) VALUES
(1, 'male', '1', '1', '1', '2022-05-04 11:56:09.991836', '2022-05-04 11:56:09.991836', 1, 1, 2, 4),
(2, 'male', '11', '11', '11', '2022-05-04 12:52:31.126248', '2022-05-04 12:52:31.126735', 3, 1, 1, 7),
(3, 'female', '11', '11', '11', '2022-05-04 13:50:46.690246', '2022-05-04 13:50:46.690246', 5, 1, 5, 3),
(4, 'male', '1', '1', '1', '2022-05-05 07:29:06.721099', '2022-05-05 07:29:06.721099', 6, 1, 6, 8),
(5, 'male', 'rajes', 'rajes', 'rajes', '2022-05-05 09:40:39.017242', '2022-05-05 09:40:39.017242', 7, 1, 2, 7),
(6, 'female', '1', '1', '1', '2022-05-05 12:19:41.832486', '2022-05-05 12:19:41.832486', 8, 1, 7, 7),
(7, 'male', '11', '1', '1', '2022-05-05 13:11:50.547326', '2022-05-05 13:11:50.547326', 9, 1, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `customer_biographicinformation_race`
--

CREATE TABLE `customer_biographicinformation_race` (
  `id` bigint(20) NOT NULL,
  `biographicinformation_id` bigint(20) NOT NULL,
  `race_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_biographicinformation_race`
--

INSERT INTO `customer_biographicinformation_race` (`id`, `biographicinformation_id`, `race_id`) VALUES
(3, 4, 2),
(5, 5, 3),
(16, 6, 1),
(17, 6, 2),
(18, 6, 3),
(19, 6, 4),
(20, 6, 5),
(21, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `customer_birthinformation`
--

CREATE TABLE `customer_birthinformation` (
  `id` bigint(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `city_or_town_or_village_birth` varchar(50) NOT NULL,
  `country_of_birth` varchar(50) NOT NULL,
  `mother_first_name` varchar(50) NOT NULL,
  `father_first_name` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `customer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_birthinformation`
--

INSERT INTO `customer_birthinformation` (`id`, `date_of_birth`, `city_or_town_or_village_birth`, `country_of_birth`, `mother_first_name`, `father_first_name`, `created_at`, `updated_at`, `customer_id`) VALUES
(1, '2022-04-04', '1', '1', '1', '1', '2022-05-04 11:55:57.877751', '2022-05-04 11:55:57.877751', 1),
(2, '2022-05-06', 'tes', 'tes', 'tee', 'tes', '2022-05-04 12:51:45.546279', '2022-05-04 12:51:45.546279', 3),
(3, '2022-05-13', '11', '1', '11', '111', '2022-05-04 13:50:33.669107', '2022-05-04 13:50:33.669107', 5),
(4, '2022-05-11', '23532', '32532', '235235', '235325', '2022-05-05 07:21:07.466085', '2022-05-05 07:21:07.466085', 6),
(5, '2022-05-12', 'rajesh', 'rajesh', 'rajesh', 'rajesh', '2022-05-05 09:40:29.139760', '2022-05-05 09:40:29.146072', 7),
(6, '2022-05-19', 'wreer', 'adfsaf', 'asfas', 'asfs', '2022-05-05 12:19:19.375814', '2022-05-05 12:19:19.375814', 8),
(7, '2022-05-17', 'AD', 'ad', 'aD', 'Ad', '2022-05-05 13:11:40.055383', '2022-05-05 13:11:40.055383', 9);

-- --------------------------------------------------------

--
-- Table structure for table `customer_customer`
--

CREATE TABLE `customer_customer` (
  `id` bigint(20) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_self_registered` tinyint(1) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_customer`
--

INSERT INTO `customer_customer` (`id`, `middlename`, `phone`, `status`, `user_id`, `is_self_registered`, `photo`, `email`, `firstname`, `lastname`) VALUES
(1, 'k', '111111111', 'active', 3, 0, 'defaultprofile.jpeg', 'venkat@gmail.com', 'venkat', 'k'),
(2, '1', '213123', 'active', 4, 0, 'defaultprofile.jpeg', '11@gmail.com', '1', '1'),
(3, 'safasf', '1122334455', 'active', 5, 0, 'defaultprofile.jpeg', 'adfdf@test.com', 'sfasf', 'safasf'),
(4, '1', '1', 'active', 6, 0, 'defaultprofile.jpeg', '1', '1', '1'),
(5, '1', '33', 'active', 7, 0, 'defaultprofile.jpeg', 'ASA', '1', '1'),
(6, 'aws', '213124', 'active', 9, 0, 'defaultprofile.jpeg', 'wer@gmail.com', 'erewr', 'wer'),
(7, 'rajesh', '1122334455', 'active', 10, 0, 'defaultprofile.jpeg', 'rajesh@gmail.cm', 'rajesh', 'rajesh'),
(8, 'tested', '1111', 'active', 11, 0, 'defaultprofile.jpeg', 'tested@gmail.com', 'tested', 'tested'),
(9, '1', '43124243', 'active', 12, 0, 'defaultprofile.jpeg', 'SFdaf@qetre', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_eligibility`
--

CREATE TABLE `customer_eligibility` (
  `id` bigint(20) NOT NULL,
  `is_unites_state` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `immigration_section_id` bigint(20) NOT NULL,
  `immigration_status_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_eligibility`
--

INSERT INTO `customer_eligibility` (`id`, `is_unites_state`, `created_at`, `updated_at`, `customer_id`, `immigration_section_id`, `immigration_status_id`) VALUES
(12, 1, '2022-05-04 10:53:08.562851', '2022-05-04 10:53:08.562851', 1, 6, 1),
(13, 1, '2022-05-04 12:33:01.345988', '2022-05-04 12:33:01.345988', 3, 1, 1),
(14, 1, '2022-05-04 13:17:08.072837', '2022-05-04 13:17:08.072837', 4, 10, 1),
(15, 1, '2022-05-04 13:34:38.893505', '2022-05-04 13:34:38.893505', 5, 8, 1),
(16, 1, '2022-05-05 04:55:57.051608', '2022-05-05 04:55:57.051608', NULL, 6, 1),
(17, 1, '2022-05-05 07:16:10.088023', '2022-05-05 07:16:10.088023', 6, 7, 2),
(18, 1, '2022-05-05 09:39:53.016983', '2022-05-05 09:39:53.016983', 7, 1, 1),
(19, 1, '2022-05-05 11:56:19.954191', '2022-05-05 11:56:19.954191', 8, 6, 1),
(20, 1, '2022-05-05 13:11:08.409802', '2022-05-05 13:11:08.409802', 9, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer_mailingaddress`
--

CREATE TABLE `customer_mailingaddress` (
  `id` bigint(20) NOT NULL,
  `in_care_of_name` varchar(30) NOT NULL,
  `streat_number_and_name` varchar(30) NOT NULL,
  `appartment_value` varchar(10) DEFAULT NULL,
  `city_or_town` varchar(30) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(30) DEFAULT NULL,
  `postal_code` varchar(30) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `appartment_id` bigint(20) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_mailingaddress`
--

INSERT INTO `customer_mailingaddress` (`id`, `in_care_of_name`, `streat_number_and_name`, `appartment_value`, `city_or_town`, `zipcode`, `province`, `postal_code`, `created_at`, `updated_at`, `appartment_id`, `country_id`, `customer_id`, `state_id`) VALUES
(1, '11', '11', '1', '1', '111', '1', '1', '2022-05-04 11:51:43.431817', '2022-05-04 11:51:43.431817', 2, 1, 1, 13),
(2, '1', '1', NULL, '1', '11', NULL, NULL, '2022-05-04 12:45:43.450912', '2022-05-04 12:45:43.450912', 1, 1, 3, 10),
(3, '11', '111', NULL, '11', '1111', '11', '11', '2022-05-04 13:50:25.797332', '2022-05-04 13:50:25.797332', 1, 1, 5, 15),
(4, '231', 'wqeqw', NULL, 'qwr', 'qwrqwr', 'qwrqwr', 'qwrqwr', '2022-05-05 07:20:53.469246', '2022-05-05 07:20:53.469246', 1, 1, 6, 1),
(5, 'rajesh', 'rajesh', NULL, 'rajesh', 'rajesh', 'rajesh', 'rajesh', '2022-05-05 09:40:22.616220', '2022-05-05 09:40:22.616220', 2, 1, 7, 12),
(6, 'test', 'test', '55', 'test', '1111', NULL, NULL, '2022-05-05 12:18:34.420863', '2022-05-05 12:18:34.420863', 4, 1, 8, 1),
(7, 'ada', 'DAda', 'Ad', 'aD', 'AD', 'AdA', 'dADad', '2022-05-05 13:11:33.561359', '2022-05-05 13:11:33.561359', 2, 1, 9, 13);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `response` longtext DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `agent_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `order_id`, `amount`, `status`, `response`, `created_at`, `updated_at`, `agent_id`, `customer_id`) VALUES
(1, 'ORD007', '90.00', 'success', NULL, '2022-05-05 09:40:06.340315', '2022-05-05 09:40:06.340315', 1, 7),
(2, 'ORD008', '90.00', 'success', NULL, '2022-05-05 11:56:53.777026', '2022-05-05 11:56:53.777026', 1, 8),
(3, 'ORD009', '90.00', 'success', NULL, '2022-05-05 13:11:16.959649', '2022-05-05 13:11:16.959649', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `customer_personeldetails`
--

CREATE TABLE `customer_personeldetails` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `middle_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) NOT NULL,
  `permanent_resident_card` varchar(10) NOT NULL,
  `permanent_resident_card_first_name` varchar(15) DEFAULT NULL,
  `permanent_resident_card_middle_name` varchar(15) DEFAULT NULL,
  `permanent_resident_card_last_name` varchar(15) DEFAULT NULL,
  `pysical_address` varchar(10) NOT NULL,
  `in_care_of_name` varchar(30) DEFAULT NULL,
  `streat_number_and_name` varchar(30) DEFAULT NULL,
  `appartment_value` varchar(10) DEFAULT NULL,
  `city_or_town` varchar(30) DEFAULT NULL,
  `zipcode` varchar(6) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `postal_code` varchar(30) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `appartment_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `state_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_personeldetails`
--

INSERT INTO `customer_personeldetails` (`id`, `first_name`, `middle_name`, `last_name`, `permanent_resident_card`, `permanent_resident_card_first_name`, `permanent_resident_card_middle_name`, `permanent_resident_card_last_name`, `pysical_address`, `in_care_of_name`, `streat_number_and_name`, `appartment_value`, `city_or_town`, `zipcode`, `province`, `postal_code`, `created_at`, `updated_at`, `appartment_id`, `country_id`, `customer_id`, `state_id`) VALUES
(1, '1', '1', '1', 'no', NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 11:49:46.885142', '2022-05-04 11:49:46.885142', NULL, NULL, 1, NULL),
(2, 'test', NULL, 'test', 'yes', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 12:43:57.213546', '2022-05-04 12:43:57.213546', NULL, NULL, 3, NULL),
(3, '11', '11', '111', 'no', NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-04 13:35:42.382235', '2022-05-04 13:35:42.382235', NULL, NULL, 5, NULL),
(4, 'fasfd', 'asfsa', 'asfasf', 'no', 'asdfasf', 'asfsa', 'dfasdf', 'no', 'asfdas', 'asfasf', 'asf', 'asf', '2323', '124', '124124', '2022-05-05 07:20:10.995262', '2022-05-05 07:20:10.995262', 2, 1, 6, 11),
(5, 'rajesh', 'rajesh', 'rajesh', 'no', NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-05 09:40:12.549437', '2022-05-05 09:40:12.549437', NULL, NULL, 7, NULL),
(6, 'd', NULL, 'd', 'no', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-05 12:09:51.707122', '2022-05-05 12:09:51.707122', NULL, NULL, 8, NULL),
(7, 'AD', 'ad', 'ADA', 'no', NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-05 13:11:22.116935', '2022-05-05 13:11:22.116935', NULL, NULL, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-03 19:18:05.366789', '1', 'Lawful permanent Resident', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-05-03 19:18:16.763698', '2', 'Permanent Resident – In Commuter status', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-05-03 19:19:01.414602', '3', 'Conditional Permanent Resident', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-05-03 19:19:17.032435', '1', 'My previous card has been lost,stolen,or destroyed', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-05-03 19:19:29.263116', '2', 'My previous card was Issued but never received.', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-05-03 19:19:37.537757', '3', 'My existing card has been mutllated', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-05-03 19:19:46.212206', '4', 'My existing card has incorrect data because of Department of homeland Security(DHS)error', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-05-03 19:19:53.013271', '5', 'My name or other blographic information has been legally changed since issuance of my existing card', 1, '[{\"added\": {}}]', 8, 1),
(9, '2022-05-03 19:20:00.358058', '6', 'My existing card has already expired or will expire withIn six months.', 1, '[{\"added\": {}}]', 8, 1),
(10, '2022-05-03 19:20:10.573697', '7', 'I have reached my 14th birthday and am registering as required.My existing card will expire AFER my 16th birthday', 1, '[{\"added\": {}}]', 8, 1),
(11, '2022-05-03 19:20:20.647835', '8', 'I have reached my 14th birthday and am registering as required.My existing card will expire BEFORE my 16th birthday', 1, '[{\"added\": {}}]', 8, 1),
(12, '2022-05-03 19:20:26.954102', '9', 'I am a permanent resident who is taking up commuter status', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-05-03 19:20:33.321681', '10', 'I am a commuter who is taking up actual residence in the United States.', 1, '[{\"added\": {}}]', 8, 1),
(14, '2022-05-03 19:20:40.252846', '11', 'I have been automatically converted to lawful permanent resident status.', 1, '[{\"added\": {}}]', 8, 1),
(15, '2022-05-03 19:20:47.495715', '12', 'I have a prior edition of the Allen Registration Card,or I am applying to replace my current permanent card for a reason that is not specified above', 1, '[{\"added\": {}}]', 8, 1),
(16, '2022-05-03 19:25:11.755283', '25', 'My previous card has been lost,stolen,or destroyed', 1, '[{\"added\": {}}]', 8, 1),
(17, '2022-05-03 19:25:21.355233', '26', 'My previous card was Issued but never received.', 1, '[{\"added\": {}}]', 8, 1),
(18, '2022-05-03 19:25:28.862382', '27', 'My existing card has been mutllated', 1, '[{\"added\": {}}]', 8, 1),
(19, '2022-05-03 19:25:36.079199', '28', 'My existing card has incorrect data because of DHS error', 1, '[{\"added\": {}}]', 8, 1),
(20, '2022-05-03 19:25:43.965724', '29', 'My name or other blographic information has legally changed since the issuance of my existing card', 1, '[{\"added\": {}}]', 8, 1),
(21, '2022-05-03 19:26:13.238452', '1', 'USA', 1, '[{\"added\": {}}]', 13, 1),
(22, '2022-05-03 19:49:08.390061', '1', 'No', 1, '[{\"added\": {}}]', 17, 1),
(23, '2022-05-03 19:49:12.081732', '2', 'Apt', 1, '[{\"added\": {}}]', 17, 1),
(24, '2022-05-03 19:49:36.813935', '3', 'Suite', 1, '[{\"added\": {}}]', 17, 1),
(25, '2022-05-03 19:49:40.284010', '4', 'Floor', 1, '[{\"added\": {}}]', 17, 1),
(26, '2022-05-03 19:59:46.051488', '1', 'Hispanic or Latino', 1, '[{\"added\": {}}]', 9, 1),
(27, '2022-05-03 19:59:52.764165', '2', 'Not Hispanic or Latino', 1, '[{\"added\": {}}]', 9, 1),
(28, '2022-05-03 20:00:09.797678', '1', 'white', 1, '[{\"added\": {}}]', 10, 1),
(29, '2022-05-03 20:00:13.926815', '2', 'Asian', 1, '[{\"added\": {}}]', 10, 1),
(30, '2022-05-03 20:00:18.905094', '3', 'Black or African American', 1, '[{\"added\": {}}]', 10, 1),
(31, '2022-05-03 20:00:24.552355', '4', 'American Indian or Ajaska Nativ', 1, '[{\"added\": {}}]', 10, 1),
(32, '2022-05-03 20:00:30.636842', '5', 'Native Hawallan or Other Pacific Islander', 1, '[{\"added\": {}}]', 10, 1),
(33, '2022-05-03 20:01:24.537923', '1', 'Black', 1, '[{\"added\": {}}]', 11, 1),
(34, '2022-05-03 20:01:27.957847', '2', 'Gray', 1, '[{\"added\": {}}]', 11, 1),
(35, '2022-05-03 20:01:31.125340', '3', 'Maroon', 1, '[{\"added\": {}}]', 11, 1),
(36, '2022-05-03 20:01:34.617331', '4', 'Blue', 1, '[{\"added\": {}}]', 11, 1),
(37, '2022-05-03 20:01:38.734317', '5', 'Green', 1, '[{\"added\": {}}]', 11, 1),
(38, '2022-05-03 20:01:42.112087', '6', 'Pink', 1, '[{\"added\": {}}]', 11, 1),
(39, '2022-05-03 20:01:45.483541', '7', 'Brown', 1, '[{\"added\": {}}]', 11, 1),
(40, '2022-05-03 20:01:49.302279', '8', 'Hazel', 1, '[{\"added\": {}}]', 11, 1),
(41, '2022-05-03 20:01:53.260262', '9', 'Unknown/other', 1, '[{\"added\": {}}]', 11, 1),
(42, '2022-05-03 20:02:04.711839', '1', 'Bald(No hair)', 1, '[{\"added\": {}}]', 12, 1),
(43, '2022-05-03 20:02:08.677768', '2', 'Brown', 1, '[{\"added\": {}}]', 12, 1),
(44, '2022-05-03 20:02:12.865200', '3', 'Sandy+', 1, '[{\"added\": {}}]', 12, 1),
(45, '2022-05-03 20:02:16.232463', '4', 'Blue', 1, '[{\"added\": {}}]', 12, 1),
(46, '2022-05-03 20:02:19.643321', '5', 'Black', 1, '[{\"added\": {}}]', 12, 1),
(47, '2022-05-03 20:02:24.262815', '6', 'Gray', 1, '[{\"added\": {}}]', 12, 1),
(48, '2022-05-03 20:02:28.691474', '7', 'White', 1, '[{\"added\": {}}]', 12, 1),
(49, '2022-05-03 20:02:31.963328', '8', 'Blond', 1, '[{\"added\": {}}]', 12, 1),
(50, '2022-05-03 20:02:35.313305', '9', 'Red', 1, '[{\"added\": {}}]', 12, 1),
(51, '2022-05-03 20:02:39.317505', '10', 'Unknown/other', 1, '[{\"added\": {}}]', 12, 1),
(52, '2022-05-03 20:04:17.096019', '1', 'I applied for an immigrant visa outside the U.S (consular proce)', 1, '[{\"added\": {}}]', 16, 1),
(53, '2022-05-03 20:04:23.281155', '2', 'I applied for permanent residence in the U.S. (adjustment of status)', 1, '[{\"added\": {}}]', 16, 1),
(54, '2022-05-03 20:08:02.226338', '1', 'CSC - California Service Center', 1, '[{\"added\": {}}]', 18, 1),
(55, '2022-05-03 20:11:45.865003', '3', 'IOE - USCIS ELIS (e-file)', 1, '[{\"added\": {}}]', 18, 1),
(56, '2022-05-03 20:12:04.309611', '4', 'CSC - California Service Center', 1, '[{\"added\": {}}]', 18, 1),
(57, '2022-05-03 20:12:09.893720', '5', 'EAC - Vermont Service Center', 1, '[{\"added\": {}}]', 18, 1),
(58, '2022-05-03 20:12:14.802533', '6', 'IOE - USCIS ELIS (e-file)', 1, '[{\"added\": {}}]', 18, 1),
(59, '2022-05-03 20:12:19.942616', '7', 'LIN - Nebraska Service Center', 1, '[{\"added\": {}}]', 18, 1),
(60, '2022-05-03 20:12:25.230928', '8', 'MSC - Missouri Service Center', 1, '[{\"added\": {}}]', 18, 1),
(61, '2022-05-03 20:12:30.327677', '9', 'NBC - National Benefits Center', 1, '[{\"added\": {}}]', 18, 1),
(62, '2022-05-03 20:12:36.576850', '10', 'NSC - Nebraska Service Center', 1, '[{\"added\": {}}]', 18, 1),
(63, '2022-05-03 20:12:42.626387', '11', 'Other', 1, '[{\"added\": {}}]', 18, 1),
(64, '2022-05-03 20:12:48.508889', '12', 'SRC - Texas Service Center', 1, '[{\"added\": {}}]', 18, 1),
(65, '2022-05-03 20:12:53.875030', '13', 'TSC - Texas Service Center', 1, '[{\"added\": {}}]', 18, 1),
(66, '2022-05-03 20:12:58.536884', '14', 'Unknown', 1, '[{\"added\": {}}]', 18, 1),
(67, '2022-05-03 20:13:03.395229', '15', 'VSC - Vermont Service Center', 1, '[{\"added\": {}}]', 18, 1),
(68, '2022-05-03 20:13:08.461937', '16', 'WAC - California Service Center', 1, '[{\"added\": {}}]', 18, 1),
(69, '2022-05-03 20:14:07.005469', '1', 'I am deaf or hard of hearing and request the following accommodation', 1, '[{\"added\": {}}]', 21, 1),
(70, '2022-05-03 20:14:18.376548', '2', 'I am blind or have low vision and request the following accommodation', 1, '[{\"added\": {}}]', 21, 1),
(71, '2022-05-03 20:14:23.384032', '3', 'I have another type of disability and / or impairment', 1, '[{\"added\": {}}]', 21, 1),
(72, '2022-05-03 20:14:51.044370', '1', 'I am the applicant, and I prepared this application', 1, '[{\"added\": {}}]', 20, 1),
(73, '2022-05-03 20:14:56.347893', '2', 'I am not an attorney or accredited representative but have prepared this application on behalf of the appllcant and with the appllcant\'s consent', 1, '[{\"added\": {}}]', 20, 1),
(74, '2022-05-03 20:15:01.461186', '3', 'I am an attorney or accredited representative of the applicant that prepared this application.', 1, '[{\"added\": {}}]', 20, 1),
(75, '2022-05-04 06:58:44.352788', '2', 'agent', 1, '[{\"added\": {}}]', 4, 1),
(76, '2022-05-04 06:58:56.968430', '1', '', 1, '[{\"added\": {}}]', 24, 1),
(77, '2022-05-04 06:59:31.966745', '2', 'agent', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(78, '2022-05-04 07:14:20.331473', '2', 'agent@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(24, 'agent', 'agent'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(32, 'customer', 'applicantinformation'),
(31, 'customer', 'applicationform'),
(26, 'customer', 'becomepermanentresident'),
(30, 'customer', 'biographicinformation'),
(29, 'customer', 'birthinformation'),
(22, 'customer', 'customer'),
(28, 'customer', 'eligibility'),
(27, 'customer', 'mailingaddress'),
(23, 'customer', 'order'),
(25, 'customer', 'personeldetails'),
(17, 'master', 'appartmenttype'),
(21, 'master', 'applicableboxes'),
(15, 'master', 'applicationcategory'),
(13, 'master', 'country'),
(9, 'master', 'ethnicity'),
(11, 'master', 'eyecolor'),
(12, 'master', 'haircolor'),
(8, 'master', 'immigrationsection'),
(7, 'master', 'immigrationstatus'),
(16, 'master', 'permanentresident'),
(19, 'master', 'portofentry'),
(20, 'master', 'preparerinformation'),
(10, 'master', 'race'),
(14, 'master', 'state'),
(18, 'master', 'uscisadjustmentstatus'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-02 12:07:10.768204'),
(2, 'auth', '0001_initial', '2022-05-02 12:07:11.960037'),
(3, 'admin', '0001_initial', '2022-05-02 12:07:12.271118'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-02 12:07:12.292323'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-02 12:07:12.309247'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-02 12:07:12.442220'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-02 12:07:12.564050'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-02 12:07:12.605500'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-02 12:07:12.626784'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-02 12:07:12.734916'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-02 12:07:12.734916'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-02 12:07:12.757577'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-02 12:07:12.797383'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-02 12:07:12.839871'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-02 12:07:12.884405'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-02 12:07:12.910460'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-02 12:07:12.951547'),
(18, 'sessions', '0001_initial', '2022-05-02 12:07:13.086806'),
(19, 'master', '0001_initial', '2022-05-02 12:09:59.066094'),
(20, 'agent', '0001_initial', '2022-05-02 12:10:18.052106'),
(21, 'customer', '0001_initial', '2022-05-02 12:10:40.739343'),
(22, 'customer', '0002_auto_20220502_2355', '2022-05-02 18:25:41.153889'),
(23, 'master', '0002_alter_immigrationsection_title', '2022-05-03 19:24:14.100325'),
(24, 'master', '0003_alter_state_country', '2022-05-03 19:58:51.015489'),
(25, 'customer', '0003_auto_20220504_1547', '2022-05-04 10:17:18.770044'),
(26, 'customer', '0004_rename_permanentresident_becomepermanentresident', '2022-05-04 12:24:48.739087'),
(27, 'customer', '0005_auto_20220505_1258', '2022-05-05 07:28:11.040467'),
(28, 'customer', '0006_auto_20220505_1300', '2022-05-05 07:30:58.085635'),
(29, 'customer', '0007_auto_20220505_1302', '2022-05-05 07:32:47.170862'),
(30, 'agent', '0002_alter_agent_user', '2022-05-05 09:17:22.292250'),
(31, 'customer', '0008_alter_applicantinformation_preparer_appartment', '2022-05-05 13:13:53.918468'),
(32, 'customer', '0009_alter_applicantinformation_explanation', '2022-05-05 13:25:32.513454'),
(33, 'customer', '0010_alter_applicantinformation_explanation', '2022-05-05 13:26:18.906922');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('197l53ksr4d3w6arm8ydfmv9ifkhlft9', '.eJxVjMsOwiAUBf-FtSHlDS7d-w3k8ihFCZiWLozx36WJC93OnDMvZGHvi923uNoc0BlRdPplDvw91kOEG9TUsG-1r9nhY4K_dsPXFmK5fLd_gQW2ZbydllxxybgCE9gEjPo4k0iDdkHTSSrCmQMZJJmV8MLQ2YDxLjAhhXZcjGhpKVfbn484epBi7QPGklN2ZSAi3h85aUME:1nmF9K:H3LtMKmtB2DV7Fra6AnJdMdYfkjY8Gq8GfwkfbKj52g', '2022-05-18 13:34:38.912139'),
('dc42iiqbczy1dxenwz5uez6pau7b14xs', '.eJxVjMsOwiAUBf-FtSEtb1y69xuaC5dSlIBp6cIY_12auNDtzDnzIhPsbZn2LaxTQnImjJx-mQN_D-UQeIMSK_W1tDU5ekzo1270WjHky3f7F1hgW_rbGSW0UFxosMgH4MyHeQwMjUPDBqVHwR0oVOOspZeWzRasd8ilksYJ2aO5xlSm9nyE3oMYSusw5BSTyx2x4f0BOWJDAA:1nmbG8:f2uloY9DZsvpIfXMZ8wCcL_Tv8evSrSA0epPKJdxeho', '2022-05-19 13:11:08.418915'),
('faru7fx6qemh31owpbqpcjqtedmva52z', '.eJxVjDsOgzAQBe_iOrLw36ZMnzOgXe8CThBIGKoodw9IFEn7Zt68RQf7NnZ75bUrJFqhxe13Q8gvnk9AT5iHReZl3taC8lTkRat8LMTT_XL_AiPU8Xhj9DZYb2yARKYBozP3ijVFpKgbH5Q1CJ686oPLLuk-QcpIxnkX0bojylMZCk4sWqU_X_n9O8o:1nmE8O:pjbF-buc-ZCrjUIh61E7V78liejVNH8GRLPMPnmuhFM', '2022-05-18 12:29:36.048827');

-- --------------------------------------------------------

--
-- Table structure for table `master_appartmenttype`
--

CREATE TABLE `master_appartmenttype` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `information_available` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_appartmenttype`
--

INSERT INTO `master_appartmenttype` (`id`, `title`, `information_available`, `is_active`) VALUES
(1, 'No', 0, 1),
(2, 'Apt', 1, 1),
(3, 'Suite', 0, 1),
(4, 'Floor', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_applicableboxes`
--

CREATE TABLE `master_applicableboxes` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_applicableboxes`
--

INSERT INTO `master_applicableboxes` (`id`, `title`, `is_active`) VALUES
(1, 'I am deaf or hard of hearing and request the following accommodation', 1),
(2, 'I am blind or have low vision and request the following accommodation', 1),
(3, 'I have another type of disability and / or impairment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_applicationcategory`
--

CREATE TABLE `master_applicationcategory` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_applicationcategory`
--

INSERT INTO `master_applicationcategory` (`id`, `title`, `is_active`) VALUES
(1, '<\"CX2\">     CX2 - Child Of A Lawful Permanent Resident Alien (Exempt From Country Limitations)   Conditional.', 1),
(2, 'CX3 - Child Of An Alien Classified As A Cx1/Cx6 Or Cx2/Cx7 (Exempt From Country Limitations)   Conditional.', 1),
(3, '<\"CX6\">     CX6 - Spouse Of A Lawful Permanent Resident Alien (Exempt From Country Limitations)  Conditional.', 1),
(4, '<\"CX7\">     CX7 - Child Of A Lawful Permanent Resident Alien (Exempt From Country Limitations)   Conditional.', 1),
(5, '<\"CX8\">     CX8 - Child Of An Alien Classified As A  Cx1/Cx6 Or Cx2/Cx7 (Exempt From Country Limitations)   Conditional.', 1),
(6, '<\"DS1\">     DS1 - Creation Of A Record Of Lawful Permanent Resident Status For Individuals Born Under Diplomatic Status In The United States.', 1),
(7, '<\"DT1\">     DT1 - Natives Of Tibet Who Have Continuously Resided In Nepal Or India (Displaced Tibetans)', 1),
(8, '<\"DT2\">     DT2 - Spouse Of An Alien Classified As Dt1 Or Dt6                 ', 1),
(9, '<\"DT7\">     DT7 - Same As Dt2 Spouse Of An Alien Classified As Dt1 Or Dt6                 ', 1),
(10, '<\"DT8\">     DT8 - Same As Dt3 Child Of An Alien Classified As Dt1 Or Dt6                 ', 1),
(11, '<\"DV1\">     DV1 - Diversity Immigrant.', 1),
(12, '<\"DV2\">     DV2 - Spouse Of An Alien Classified As Dv1/Dv6.', 1),
(13, '<\"DV3\">     DV3 - Child Of An Alien Classified As Dv1/Dv6.', 1),
(14, '<\"DV6\">     DV6 - optionersity Immigrant.', 1),
(15, '<\"DV7\">     DV7 - Spouse Of An Alien Classified As Dv1/Dv6.', 1),
(16, '<\"DV8\">     DV8 - Child Of An Alien Classified As Dv1/Dv6.', 1),
(17, '<\"E10\">     E10 - Child Of A Priority Worker Classified As E11/E16, E12/E17, Or E13/E18.', 1),
(18, '<\"E11\">     E11 - Priority Worker   Alien With Extraordinary Ability.', 1),
(19, '<\"E12\">     E12 - Priority Worker   Outstanding Professor Or Researcher.', 1),
(20, '<\"E13\">     E13 - Priority Worker   Certain Multinational Executive Or Manager.', 1),
(21, '<\"E14\">     E14 - Spouse Of A Priority Worker Classified As E11/E16, E12/E17, Or E13/E18.', 1),
(22, '<\"E15\">     E15 - Child Of A Priority Worker Classified As E11/E16, E12/E17, Or E13/E18.', 1),
(23, '<\"E16\">     E16 - Priority Worker   Alien With Extraordinary Ability.', 1),
(24, '<\"E17\">     E17 - Priority Worker   Outstanding Professor Or Researcher.', 1),
(25, '<\"E18\">     E18 - Priority Worker   Certain Multinational Executive Or Manager.', 1),
(26, '<\"E19\">     E19 - Spouse Of A Priority Worker Classified As E11/E16, E12/E17, Or E13/E18.', 1),
(27, '<\"E22\">     E22 - Spouse Of An Alien Classified As E21/E26.', 1),
(28, '<\"E23\">     E23 - Child Of An Alien Classified As E21/E26.', 1),
(29, '<\"E26\">     E26 - Professional Holding An Advanced Degree Or Of Exceptional Ability.', 1),
(30, '<\"E27\">     E27 - Spouse Of An Alien Classified As E21/E26.', 1),
(31, '<\"E28\">     E28 - Child Of An Alien Classified As E21/E26.', 1),
(32, '<\"E30\">     E30 - Child Of A Skilled Worker Or Professional Classified As E31/E36 Or E32/E37.', 1),
(33, '<\"E32\">     E32 - Professional Who Holds A Baccalaureate Degree Or Who Is A Member Of A Profession.', 1),
(34, '<\"E34\">     E34 - Spouse Of A Skilled Worker Or Professional Classified As E31/E36 Or E32/E37.', 1),
(35, '<\"E35\">     E35 - Child Of A Skilled Worker Or Professional Classified As E31/E36 Or E32/E37.', 1),
(36, '<\"E36\">     E36 - Alien Who Is A Skilled Worker.', 1),
(37, '<\"E37\">     E37 - Professional Who Holds A Baccalaureate Degree Or Who Is A Member Of A Profession.', 1),
(38, '<\"E39\">     E39 - Spouse Of A Skilled Worker Or Professional Classified As E31/E36 Or E32/E37.', 1),
(39, '<\"E51\">     E51 - Employment Creation Immigrant (Non Conditional).', 1),
(40, '<\"E52\">     E52 - Spouse Of An Alien Classified As E51/E56 (Non Conditional).', 1),
(41, '<\"E56\">     E56 - Employment Creation Immigrant (Non Conditional).', 1),
(42, '<\"E57\">     E57 - Spouse Of An Alien Classified As E51/E56 (Non Conditional).', 1),
(43, '<\"EB1\">     EB1 - First Preference Priority Workers                 ', 1),
(44, '<\"EB2\">     EB2 - Second Preference Professionals With Advanced Degrees, And Persons With Exceptional Ability                 ', 1),
(45, '<\"EB3\">     EB3 - Third Preference Skilled Workers , Professional And Other Workers                 ', 1),
(46, '<\"EB4\">     EB4 - Fourth Preference Certain Special Immigrants                 ', 1),
(47, '<\"EB5\">     EB5 - Fifth Preference Employment Creation (Investors)', 1),
(48, '<\"EC7\">     EC7 - Spouse Of Alien Covered By Chinese Student Protection Act.', 1),
(49, '<\"EC8\">     EC8 - Child Of Alien Covered By Chinese Student Protection Act.', 1),
(50, '<\"EC9\">     EC9 - Child Of Alien Covered By Chinese Student Protection Act                 ', 1),
(51, '<\"ES6\">     ES6 - Soviet Scientists, Principal                 ', 1),
(52, '<\"EW0\">     EW0 - Child Of An Alien Classified As Ew3/Ew8.', 1),
(53, '<\"EW3\">     EW3 - Other Worker Performing Unskilled Labor, Not Of A Temporary Or Seasonal Nature, For Which Qualified Workers Are Not Available In The United States.', 1),
(54, '<\"EW4\">     EW4 - Spouse Of An Alien Classified As Ew3/Ew8.', 1),
(55, '<\"EW5\">     EW5 - Child Of An Alien Classified As Ew3/Ew8.', 1),
(56, '<\"EW8\">     EW8 - Other Worker Performing Unskilled Labor, Not Of A Temporary Or Seasonal Nature, For Which Qualified Workers Are Not Available In The United States.', 1),
(57, '<\"EW9\">     EW9 - Spouse Of An Alien Classified As Ew3/Ew8.<\"EX1\">     EX1 - Schedule A Worker (Rn/Pt, Professional &amp; Science/Arts, Exceptional Ability)', 1),
(58, '<\"EX2\">     EX2 - Spouse Of Ex1/Ex6<\"EX3\">     EX3 - Child Of Ex1/Ex6                 ', 1),
(59, '<\"EX6\">     EX6 - Schedule   A Worker<\"EX7\">     EX7 - Spouse Of Ex1/Ex6                 ', 1),
(60, '<\"EX8\">     EX8 - Child Of Ex1/Ex6                 ', 1),
(61, '<\"F11\">     F11 - Unmarried Son Or Daughter (21 Years Of Age Or Older) Of A U.S. Citizen.', 1),
(62, '<\"F12\">     F12 - Child Of An Alien Classified As F11/F16.', 1),
(63, '<\"F16\">     F16 - Unmarried Son Or Daughter (21 Years Of Age Or Older) Of A U.S. Citizen.', 1),
(64, '<\"F17\">     F17 - Child Of An Alien Classified As F11/F16.', 1),
(65, '<\"F20\">     F20 - Child Of An Alien Classified As F24/F29.', 1),
(66, '<\"F21\">     F21 - Spouse Of A Lawful Permanent Resident Alien (Subject To Country Limitations).', 1),
(67, '<\"F22\">     F22 - Child Of A Lawful Permanent Resident Alien (Subject To Country Limitations).', 1),
(68, '<\"F23\">     F23 - Child Of An Alien Classified As F21/F26 Or F22/F27 (Subject To Country Limitations).', 1),
(69, '<\"F25\">     F25 - Child Of An Alien Classified As F24/F29.', 1),
(70, '<\"F26\">     F26 - Spouse Of A Lawful Permanent Resident Alien (Subject To Country Limitations).', 1),
(71, '<\"F27\">     F27 - Child   Of A Lawful Permanent Resident Alien (Subject To Country Limitations).', 1),
(72, '<\"F28\">     F28 - Child Of An Alien Classified As F21/F26 Or F22/F27   (Subject To Country Limitations).', 1),
(73, '<\"F29\">     F29 - Unmarried Son Or Daughter (21 Years Of Age Or Older) Of A Lawful Permanent Resident Alien.', 1),
(74, '<\"F2A\">     F2A - Spouses And Unmarried Children Of Permanent Resident                 ', 1),
(75, '<\"F2B\">     F2B - Unmarried Sons And Daughters Of Perm Resident                 ', 1),
(76, '<\"F31\">     F31 - Married Son Or Daughter Of A U.S. Citizen.', 1),
(77, '<\"F32\">     F32 - Spouse Of An Alien Classified As F31/F36.', 1),
(78, '<\"F33\">     F33 - Child Of An Alien Classified As F31/F36.', 1),
(79, '<\"F36\">     F36 - Married Son Or Daughter Of A U.S. Citizen.', 1),
(80, '<\"F37\">     F37 - Spouse Of An Alien Classified As F31/F36.', 1),
(81, '<\"F38\">     F38 - Child Of An Alien Classified As F31/F36.', 1),
(82, '<\"F4\">     F4 - Brothers And Sisters Of Us Citizens                 ', 1),
(83, '<\"F41\">     F41 - Brother Or Sister Of A U.S. Citizen.', 1),
(84, '<\"F42\">     F42 - Spouse Of An Alien Classified As F41/F46.', 1),
(85, '<\"F43\">     F43 - Child Of An Alien Classified As F41/F46.', 1),
(86, '<\"F46\">     F46 - Brother Or Sister Of A U.S. Citizen.', 1),
(87, '<\"F48\">     F48 - Child Of An Alien Classified As F41/F46.', 1),
(88, '<\"FX\">     FX - Spouse And Children Of Perm Resident (Exempt)', 1),
(89, '<\"FX1\">     FX1 - Spouse Of A Lawful Permanent Resident Alien (Exempt From Country Limitations).', 1),
(90, '<\"FX2\">     FX2 - Child   Of A Lawful Permanent Resident Alien (Exempt From Country Limitations).', 1),
(91, '<\"FX3\">     FX3 - Child Of An Alien Classified As Fx1/Fx6 Or Fx2/Fx7 (Exempt From Country Limitations).', 1),
(92, '<\"FX6\">     FX6 - Spouse Of A Lawful Permanent Resident Alien (Exempt From Country Limitations).', 1),
(93, '<\"FX7\">     FX7 - Child   Of A Lawful Permanent Resident Alien (Exempt From Country Limitations).', 1),
(94, '<\"FX8\">     FX8 - Child Of An Alien Classified As Fx1/Fx6 Or Fx2/Fx7 (Exempt From Country Limitations).', 1),
(95, '<\"GA7\">     GA7 - Spouse Of Ga6                 ', 1),
(96, '<\"999\">     999 - Alien Awaiting Decision Of Asylum                 ', 1),
(97, '<\"A11\">     A11 - Unmarried Amerasian Son Or Daughter Of A U.S. Citizen Born In Cambodia, Korea, Laos, Thailand, Or Vietnam.', 1),
(98, '<\"A12\">     A12 - Child Of An Alien Classified As A11/A16                 ', 1),
(99, '<\"A17\">     A17 - Child Of An Alien Classified As A11/A16                 ', 1),
(100, '<\"A31\">     A31 - Married Amerasian Son Or Daughter Of A U.S. Citizen Born In Cambodia, Korea, Laos, Thailand, Or Vietnam.', 1),
(101, '<\"A32\">     A32 - Spouse Of An Alien Classified As A31/A36.', 1),
(102, '<\"A33\">     A33 - Child Of An Alien Classified As A31/A36.', 1),
(103, '<\"A36\">     A36 - Married Amerasian Son Or Daughter Of A U.S. Citizen Born In Cambodia, Korea, Laos, Thailand, Or Vietnam.', 1),
(104, '<\"A37\">     A37 - Spouse Of An Alien Classified As A31/A36.', 1),
(105, '<\"AA2\">     AA2 - Spouse Of An Alien Classified As Aa1 Or Aa6                 ', 1),
(106, '<\"AA3\">     AA3 - Children Of An Alien Classified As Aa1 Or Aa6                 ', 1),
(107, '<\"AA6\">     AA6 - Native Of Certain Adversely Affected Foreign States (optionersity Transition)', 1),
(108, '<\"AA7\">     AA7 - Spouse Of An Alien Classified As Aa1 Or Aa6                 ', 1),
(109, '<\"AM\">      AM - Amerasian                 ', 1),
(110, '<\"AM1\">     AM1 - Amerasian Born In Vietnam After Jan. 1, 1962 And Before Jan. 1, 1976, Who Was Fathered By A U.S. Citizen.', 1),
(111, '<\"AM2\">     AM2 - Spouse Or Child Of An Alien Classified As Am1/Am6.', 1),
(112, '<\"AM3\">     AM3 - Mother, Guardian, Or Next Of Kin Of An Alien Classified As Am1/Am6, And Spouse Or Child Of The Mother, Guardian, Or Next Of Kin.', 1),
(113, '<\"AM6\">     AM6 - Amerasian Born In Vietnam After Jan. 1, 1962 And Before Jan. 1, 1976, Who Was Fathered By A U.S. Citizen.', 1),
(114, '<\"AM7\">     AM7 - Spouse Or Child Of An Alien Classified As Am1/Am6.', 1),
(115, '<\"AR1\">     AR1 - Amerasian Child Of A U.S. Citizen Born In Cambodia, Korea, Laos, Thailand, Or Vietnam (Immediate Relative Child)', 1),
(116, '<\"AR6\">     AR6 - Amerasian Child Of A U.S. Citizen Born In Cambodia, Korea, Laos, Thailand, Or Vietnam (Immediate Relative Child)', 1),
(117, '<\"AS6\">     AS6 - Asylee Principal.', 1),
(118, '<\"AS7\">     AS7 - Spouse Of An Alien Classified As As6.', 1),
(119, '<\"AS8\">     AS8 - Child Of An Alien Classified As As6.', 1),
(120, '<\"B11\">     B11 - Self Petitioning Unmarried Son Or Daughter (21 Years Of Age Or Older) Of U.S. Citizen.', 1),
(121, '<\"B12\">     B12 - Child Of An Alien Classified As B11/B16.', 1),
(122, '<\"B16\">     B16 - Self Petitioning Unmarried Son Or Daughter (21 Years Of Age Or Older) Of U.S. Citizen.', 1),
(123, '<\"B17\">     B17 - Child Of An Alien Classified As B11/B16.', 1),
(124, '<\"B20\">     B20 - Child Of An Alien Classified As B24/B29.', 1),
(125, '<\"B21\">     B21 - Self Petitioning Spouse Of Legal Permanent Resident.', 1),
(126, '<\"B22\">     B22 - Self Petitioning Child Of Legal Permanent Resident.', 1),
(127, '<\"B23\">     B23 - Child Of An Alien Classified As B21/B26 Or B22/B27.', 1),
(128, '<\"B24\">     B24 - Self Petitioning Unmarried Son Or Daughter (21 Years Of Age Or Older) Of Legal Permanent Resident.', 1),
(129, '<\"B25\">     B25 - Child Of An Alien Classified As B24/B29.', 1),
(130, '<\"B26\">     B26 - Self Petitioning Spouse Of Legal Permanent Resident.', 1),
(131, '<\"B28\">     B28 - Child Of An Alien Classified As  B21/B26 Or B22/B27.', 1),
(132, '<\"B29\">     B29 - Self Petitioning Unmarried Son Or Daughter (21 Years Of Age Or Older) Of Legal Permanent Resident.', 1),
(133, '<\"B31\">     B31 - Self Petitioning Married Son Or Daughter Of U.S. Citizen.', 1),
(134, '<\"B32\">     B32 - Spouse Of An Alien Classified As B31/B36.', 1),
(135, '<\"B33\">     B33 - Child Of An Alien Classified As B31/B36.', 1),
(136, '<\"B36\">     B36 - Self Petitioning Married Son Or Daughter Of U.S. Citizen.', 1),
(137, '<\"B37\">     B37 - Spouse Of An Alien Classified As B31/B36.', 1),
(138, '<\"BC1\">     BC1 - Alien Entering The United States To Work As Broadcaster Or For A Grantee For The Ibcb Of Bbg                 ', 1),
(139, '<\"BC2\">     BC2 - Spouse Of Bc1                 ', 1),
(140, '<\"BC3\">     BC3 - Child Of Bc1                 ', 1),
(141, '<\"BC6\">     BC6 - Alien Entering The United States To Work As Broadcaster Or For A Grantee For The Ibcb Of Bbg                 ', 1),
(142, '<\"BC7\">     BC7 - (Ibcb Of Bbg) Spouse Of Bc6                 ', 1),
(143, '<\"BX1\">     BX1 - Self Petitioning Spouse Of Legal Permanent Resident   Exempt.', 1),
(144, '<\"BX2\">     BX2 - Self Petitioning Child Of Legal Permanent Resident   Exempt.', 1),
(145, '<\"BX6\">     BX6 - Self Petitioning Spouse Of Legal Permanent Resident   Exempt.', 1),
(146, '<\"BX7\">     BX7 - Self Petitioning Child Of Legal Permanent Resident   Exempt.', 1),
(147, '<\"BX8\">     BX8 - Child Of An Alien Classified As Bx1/Bx6 Or Bx2/Bx7   Exempt.', 1),
(148, '<\"C20\">     C20 - Child Of An Alien Classified As C24/C29    Conditional.', 1),
(149, '<\"C21\">     C21 - Spouse Of A Lawful Permanent Resident Alien (Subject To Country Limitations)   Conditional.', 1),
(150, '<\"C22\">     C22 - Child Of A Lawful Permanent Resident Alien (Subject To Country Limitations)   Conditional.', 1),
(151, '<\"C23\">     C23 - Child Of An Alien Classified As C21/C26 Or C22/C27 (Subject To Country Limitations)    Conditional.', 1),
(152, '<\"C24\">     C24 - Unmarried Son Or Daughter (21 Years Of Age Or Older) Of A Lawful Permanent Resident Alien (Subject To Country Limitations)   Conditional.', 1),
(153, '<\"C25\">     C25 - Child Of An Alien Classified As C24/C29    Conditional.', 1),
(154, '<\"C26\">     C26 - Spouse Of A Lawful Permanent Resident Alien (Subject To Country Limitations)   Conditional.', 1),
(155, '<\"C27\">     C27 - Child Of A Lawful Permanent Resident Alien (Subject To Country Limitations)   Conditional.', 1),
(156, '<\"C28\">     C28 - Child Of An Alien Classified As C21/C26 Or C22/C27 (Subject To Country Limitations)    Conditional.', 1),
(157, '<\"C31\">     C31 - Married Son Or Daughter Of A U.S. Citizen   Conditional.', 1),
(158, '<\"C32\">     C32 - Spouse Of An Alien Classified As C31/C36    Conditional.', 1),
(159, '<\"C33\">     C33 - Child Of An Alien Classified As C31/C36    Conditional.', 1),
(160, '<\"C36\">     C36 - Married Son Or Daughter Who Is A Child Of A U.S. Citizen   Conditional.', 1),
(161, '<\"C37\">     C37 - Spouse Of An Alien Classified As C31/C36    Conditional.', 1),
(162, '<\"C38\">     C38 - Child Of An Alien Classified As C31/C36    Conditional.', 1),
(163, '<\"C51\">     C51 - Employment Creation Immigrant (Non Regional, Not In Targeted Area)   Conditional.', 1),
(164, '<\"C52\">     C52 - Spouse Of An Alien Classified As C51/C56 (Not In Targeted Area)   Conditional.', 1),
(165, '<\"C53\">     C53 - Child Of An Alien Classified As C51/C56 (Not In Targeted Area)   Conditional.', 1),
(166, '<\"C56\">     C56 - Employment Creation Immigrant (Non Regional, Not In Targeted Area)   Conditional.', 1),
(167, '<\"C57\">     C57 - Spouse Of An Alien Classified As C51/C56 (Not In Targeted Area)   Conditional.', 1),
(168, '<\"C58\">     C58 - Child Of An Alien Classified As C51/C56 (Not In Targeted Area)   Conditional.', 1),
(169, '<\"CB1\">     CB1 - Spouse Of An Alien Granted Legalization Under Sections 210, 245 A Of The Ina, Or Sec. 202 Of Pl 99 603 (Cuban Haitian Entrant)   Conditional                 ', 1),
(170, '<\"CB2\">     CB2 - Child Of An Alien Granted Legalization Under Sections 210, 245 A Of The Ina, Or Sec. 202 Of Pl 99 603 (Cuban Haitian Entrant)   Conditional<\"CB6\">     CB6 - Spouse Of An Alien Grante', 1),
(171, '<\"CR2\">     CR2 - Child Of A U.S. Citizen   Conditional.', 1),
(172, '<\"CR6\">     CR6 - Spouse Of A U.S. Citizen   Conditional.', 1),
(173, '<\"CR7\">     CR7 - Child Of A U.S. Citizen   Conditional.', 1),
(174, '<\"CU6\">     CU6 - Cuban Refugee.', 1),
(175, '<\"CU7\">     CU7 - Non Cuban Spouse Or Child Of An Alien Classified As A Cu6 (Including Vawa Non Cuban Spouse Or Child).', 1),
(176, '<\"CX1\">     CX1 - Spouse Of A Lawful Permanent Resident Alien (Exempt From Country Limitations)  Conditional.', 1),
(177, '<\"SH1\">     SH1 - Certain Former Employees Of The Panama Canal Company Or Canal Zone Government Employed On Apr. 1, 1979.<\"SH2\">     SH2 - Spouse Or Child Of An Alien Classified As Sh1/Sh6.<\"SH6\">    ', 1),
(178, '<\"SH7\">     SH7 - Spouse Or Child Of An Alien Classified As Sh1/Sh6.', 1),
(179, '<\"SHE\">     SHE - She   Immigrant                 ', 1),
(180, '<\"SI1\">     SI1 - Nationals Of Iraq Or Afghanistan Serving As Interpreters With The U.S. Armed Forces                 ', 1),
(181, '<\"SI2\">     SI2 - Spouse Of An Si1                 ', 1),
(182, '<\"SI3\">     SI3 - Children Of An Si1                 ', 1),
(183, '<\"SI6\">     SI6 - Nationals Of Iraq Or Afghanistan Serving As Interpreters With The U.S. Armed Forces                 ', 1),
(184, '<\"SI7\">     SI7 - Spouse Of Si1 Or Si6                 ', 1),
(185, '<\"SI8\">     SI8 - Child Of Si1 Or Si6                 ', 1),
(186, '<\"SI9\">     SI9 - Special Immigrant Afghan Or Iraqi (Adjustment)', 1),
(187, '<\"SJ2\">     SJ2 - Spouse Or Child Of An Alien Classified As Sj6.', 1),
(188, '<\"SK\">      SK - Certain Retired International Organization Employees                 ', 1),
(189, '<\"SK1\">     SK1 - Certain Retired International Organization Employees.', 1),
(190, '<\"SK2\">     SK2 - Spouse Of An Alien Classified As Sk1 Or Sk6.', 1),
(191, '<\"SK3\">     SK3 - Certain Unmarried Sons Or Daughters Of International Organization Employees.', 1),
(192, '<\"SK4\">     SK4 - Certain Surviving Spouses Of Deceased International Organization Employees.', 1),
(193, '<\"SK6\">     SK6 - Certain Retired International Organization Employees.', 1),
(194, '<\"SK7\">     SK7 - Spouse Of An Alien Classified As Sk1 Or Sk6.', 1),
(195, '<\"SK8\">     SK8 - Certain Unmarried Sons Or Daughters Of International Organization Employees.', 1),
(196, '<\"SK9\">     SK9 - Certain Surviving Spouses Of Deceased International Organization Employees.', 1),
(197, '<\"SL\">      SL - Juvenile Court Dependents                 ', 1),
(198, '<\"SL1\">     SL1 - Juvenile Court Dependent.', 1),
(199, '<\"SL6\">     SL6 - Juvenile Court Dependent.', 1),
(200, '<\"SM0\">     SM0 - Spouse Or Child Of An Alien Classified As Sm4/Sm9.', 1),
(201, '<\"SM1\">     SM1 - Alien Recruited Outside The United States Who Has Served, Or Is Enlisted To Serve, In The U.S. Armed Forces For 12 Years (Became Eligible After Oct. 1, 1991).                  ', 1),
(202, '<\"SM2\">     SM2 - Spouse Of An Alien Classified As Sm1/Sm6.', 1),
(203, '<\"SM3\">     SM3 - Child Of An Alien Classified As Sm1/Sm6.', 1),
(204, '<\"SM5\">     SM5 - Spouse Or Child Of An Alien Classified As Sm4/Sm9.', 1),
(205, '<\"SM6\">     SM6 - Alien Recruited Outside The United States Who Has Served, Or Is Enlisted To Serve, In The U.S. Armed Forces For 12 Years (Became Eligible After Oct. 1, 1991).', 1),
(206, '<\"SM7\">     SM7 - Spouse Of An Alien Classified As Sm1/Sm6.', 1),
(207, '<\"SM8\">     SM8 - Child Of An Alien Classified As Sm1/Sm6.', 1),
(208, '<\"SM9\">     SM9 - Alien Recruited Outside The United States Who Has Served, Or Is Enlisted To Serve, In The U.S. Armed Forces For 12 Years (Eligible Before/As Of Oct. 1, 1991).', 1),
(209, '<\"SN2\">     SN2 - (Nato 6) Spouse Of An  Immigrant Classified As Sn1 Or Sn6                 ', 1),
(210, '<\"SN3\">     SN3 - Certain Unmarried Sons Or Daughters Of Nato 6 Civilian Employees                 ', 1),
(211, '<\"SN4\">     SN4 - Certain Surviving Spouses Of Deceased Nato 6 Civilian Employees                 ', 1),
(212, '<\"SN7\">     SN7 - (Nato 6) Spouse Of An Immigrant Classified As Sn1 Or Sn6                 ', 1),
(213, '<\"SN8\">     SN8 - Certain Unmarried Sons Or Daughters Of Nato 6 Civilian Employees                 ', 1),
(214, '<\"SN9\">     SN9 - Certain Surviving Spouses Of Deceased Nato 6 Civilian Employees                 ', 1),
(215, '<\"SQ2\">     SQ2 - Spouse Of Sq1 Or Sq6                 ', 1),
(216, '<\"SQ3\">     SQ3 - Child Of Sq1 Or Sq6                 ', 1),
(217, '<\"SQ6\">     SQ6 - Certain Iraqis Or Afghans Employed By Or On Behalf Of The U.S. Government                 ', 1),
(218, '<\"SQ7\">     SQ7 - Spouse Of Sq1 Or Sq6                 ', 1),
(219, '<\"SQ8\">     SQ8 - Child Of Sq1 Or Sq6                 ', 1),
(220, '<\"SQ9\">     SQ9 - Unmarried Child Under Age 21 Of Afghan/Iraqi Special Immigrant In P6 Category Adjusting Status In The U.S.', 1),
(221, '<\"SR\">      SR - Certain Religious Workers                 ', 1),
(222, '<\"SR1\">     SR1 - Religious Worker.', 1),
(223, '<\"SR2\">     SR2 - Spouse Of An Alien Classified As Sr1 Or Sr6.', 1),
(224, '<\"SR3\">     SR3 - Child Of An Alien Classified As Sr1 Or Sr6.', 1),
(225, '<\"SR6\">     SR6 - Religious Worker.', 1),
(226, '<\"SR8\">     SR8 - Child Of An Alien Classified As Sr1 Or Sr6.', 1),
(227, '<\"ST0\">     ST0 - Parent Of St6                 ', 1),
(228, '<\"ST6\">     ST6 - Victims Of Severe Form Of Trafficking (T1 Nonimmigrant)                  ', 1),
(229, '<\"ST7\">     ST7 - Spouse Of St6                 ', 1),
(230, '<\"ST9\">     ST9 - Sibling Of An St6                  ', 1),
(231, '<\"SU0\">     SU0 - Parent Of Su6                  ', 1),
(232, '<\"SU2\">     SU2 - Spouse Of U1                 ', 1),
(233, '<\"SU4\">     SU4 - Parent Of Su6                 ', 1),
(234, '<\"SU5\">     SU5 - Parent Of U1                 ', 1),
(235, '<\"SU6\">     SU6 - Victim Of Criminal Activity (U1 Nonimmigrants)                  ', 1),
(236, '<\"SU8\">     SU8 - Child Of Su6                  ', 1),
(237, '<\"SU9\">     SU9 - Sibling Of Su6                 ', 1),
(238, '<\"SY7\">     SY7 - Spouse Of Sy6                 ', 1),
(239, '<\"SY8\">     SY8 - Child Or Unmarried Son Or Daughter Of Sy6                 ', 1),
(240, '<\"T51\">     T51 - Employment Creation Immigrant (Non Regional, Targeted Area)   Conditional.', 1),
(241, '<\"T52\">     T52 - Spouse Of An Alien Classified As T51/T56 (Targeted Area)   Conditional.', 1),
(242, '<\"T53\">     T53 - Child Of An Alien Classified As T51/T56 (Targeted Area)   Conditional.', 1),
(243, '<\"T56\">     T56 - Employment Creation Immigrant (Non Regional, Targeted Area)   Conditional.', 1),
(244, '<\"T57\">     T57 - Spouse Of An Alien Classified As T51/T56 (Targeted Area)   Conditional.', 1),
(245, '<\"T58\">     T58 - Child Of An Alien Classified As T51/T56 (Targeted Area)   Conditional.', 1),
(246, '<\"VI0\">     VI0 - Parent Of U.S. Citizen Admitted As Vi6                 ', 1),
(247, '<\"W16\">     W16 - Alien Previously Granted Temporary Resident Status (Legalization) Who Illegally Entered The United States Without Inspection Prior To Jan. 1, 1982.', 1),
(248, '<\"W26\">     W26 - Alien Previously Granted Temporary Resident Status (Legalization) Who Entered The United States As A Nonimmigrant And Overstayed Visa Prior To Jan. 1, 1982.', 1),
(249, '<\"W36\">     W36 - Alien Previously Granted Temporary Resident Status (Legalization) From A Country Granted Blanket Extended Voluntary Departure (Evd).', 1),
(250, '<\"W46\">     W46 - Late Amnesty Applicants (Irca)', 1),
(251, '<\"X11\">     X11 - Non Preference Quota Immigrant 203(A)(4)', 1),
(252, '<\"XB3\">     XB3 - Alien Who Is Presumed To Have Been Lawfully Admitted For Permanent Residence.', 1),
(253, '<\"XE3\">     XE3 - Child Born Subsequent To The Issuance Of A Visa.  Parent Is  Employment Based Preference Immigrant.<\"XF3\">     XF3 - Child Born Subsequent To The Issuance Of A Visa.  Parent Is A Fam', 1),
(254, '<\"HC6\">     HC6 - A Haitian National Who Arrived In The U.S. As A Child Prior To 12/31/1995, Without Parents In The U.S., And Has Remained Parentless.<\"HC7\">     HC7 - Spouse Of Hc6<\"HC8\">     HC8 - C', 1),
(255, '<\"HD8\">     HD8 - Child Of Hd6                 ', 1),
(256, '<\"HD9\">     HD9 - Unmarried Son Or Daughter (21 Years Of Age Or Older)\"  Of Hd6                 ', 1),
(257, '<\"HE6\">     HE6 - A Haitian National Who Entered The U.S. As A Child Prior To 12/31/1995 Was Abandoned By Parents Or Guardians Prior To April 1, 1998 And Has Remained Abandoned.<\"HE7\">     HE7 - Spous', 1),
(258, '<\"HE8\">     HE8 - Child Of He6                 ', 1),
(259, '<\"HE9\">     HE9 - Unmarried Son Or Daughter (21 Years Of Age Or Older) Of He6                 ', 1),
(260, '<\"HH6\">     HH6 - Parolees Adjusting Under The Help Haiti Act Of 2010                 ', 1),
(261, '<\"HK\">      HK - Hong Kong Bank Employee                 ', 1),
(262, '<\"HK1\">     HK1 - Employees Of Certain U.S. Businesses Operating In Hong Kong                 ', 1),
(263, '<\"HK2\">     HK2 - Spouse Of An Alien Classified As Hk1 Or Hk6                 ', 1),
(264, '<\"HK3\">     HK3 - Child Of An Alien Classified As Hk1 Or Hk6                 ', 1),
(265, '<\"HK6\">     HK6 - Same As Hk1 Employees Of Certain U.S. Businesses Operating In Hong Kong<\"HK7\">     HK7 - Spouse Of An Alien Classified As Hk6<\"HK8\">     HK8 - Child Of An Alien Classified As Hk6    ', 1),
(266, '<\"I51\">     I51 - Investor Pilot Program, Principal (Regional Center, Targeted Area)   Conditional.<\"I52\">     I52 - Spouse Of An Alien Classified As I51/I56   Conditional.<\"I53\">     I53 - Child Of A', 1),
(267, '<\"BC8\">     BC8 - (Ibcb Of Bbg) Child Of Bc6                 ', 1),
(268, '<\"BX3\">     BX3 - Child Of An Alien Classified As Bx1/Bx6 Or Bx2/Bx7   Exempt.', 1),
(269, '<\"E53\">     E53 - Child Of An Alien Classified As E51/E56 (Non Conditional).', 1),
(270, '<\"E58\">     E58 - Child Of An Alien Classified As E51/E56 (Non Conditional).', 1),
(271, '<\"IB6\">     IB6 - Self Petitioning Spouse Of U.S. Citizen.', 1),
(272, '<\"IF2\">     IF2 - Minor Child Of An Alien Classified As If1.', 1),
(273, '<\"IH4\">     IH4 - Children To Be Adopted Under The Hague Convention                 ', 1),
(274, '<\"IR2\">     IR2 - Child Of A U.S. Citizen.', 1),
(275, '<\"IR5\">     IR5 - Parent Of A U.S. Citizen.<\"IR7\">     IR7 - Child Of A U.S. Citizen.<\"IR8\">     IR8 - Orphan Adopted Abroad By A U.S. Citizen. (Haitian Orphan Parole Program)<\"IW2\">     IW2 - Child O', 1),
(276, '<\"SM4\">     SM4 - Alien Recruited Outside The United States Who Has Served, Or Is Enlisted To Serve, In The U.S. Armed Forces For 12 Years (Became Eligible Before/As Of Oct. 1, 1991).                 ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_country`
--

CREATE TABLE `master_country` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_country`
--

INSERT INTO `master_country` (`id`, `title`, `is_active`) VALUES
(1, 'USA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_ethnicity`
--

CREATE TABLE `master_ethnicity` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_ethnicity`
--

INSERT INTO `master_ethnicity` (`id`, `title`, `is_active`) VALUES
(1, 'Hispanic or Latino', 1),
(2, 'Not Hispanic or Latino', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_eyecolor`
--

CREATE TABLE `master_eyecolor` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_eyecolor`
--

INSERT INTO `master_eyecolor` (`id`, `title`, `is_active`) VALUES
(1, 'Black', 1),
(2, 'Gray', 1),
(3, 'Maroon', 1),
(4, 'Blue', 1),
(5, 'Green', 1),
(6, 'Pink', 1),
(7, 'Brown', 1),
(8, 'Hazel', 1),
(9, 'Unknown/other', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_haircolor`
--

CREATE TABLE `master_haircolor` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_haircolor`
--

INSERT INTO `master_haircolor` (`id`, `title`, `is_active`) VALUES
(1, 'Bald(No hair)', 1),
(2, 'Brown', 1),
(3, 'Sandy+', 1),
(4, 'Blue', 1),
(5, 'Black', 1),
(6, 'Gray', 1),
(7, 'White', 1),
(8, 'Blond', 1),
(9, 'Red', 1),
(10, 'Unknown/other', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_immigrationsection`
--

CREATE TABLE `master_immigrationsection` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `immigrationstatus_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_immigrationsection`
--

INSERT INTO `master_immigrationsection` (`id`, `title`, `is_active`, `immigrationstatus_id`) VALUES
(1, 'My previous card has been lost,stolen,or destroyed', 1, 1),
(2, 'My previous card was Issued but never received.', 1, 1),
(3, 'My existing card has been mutllated', 1, 1),
(4, 'My existing card has incorrect data because of Department of homeland Security(DHS)error', 1, 1),
(5, 'My name or other blographic information has been legally changed since issuance of my existing card', 1, 1),
(6, 'My existing card has already expired or will expire withIn six months.', 1, 1),
(7, 'I have reached my 14th birthday and am registering as required.My existing card will expire AFER my 16th birthday', 1, 1),
(8, 'I have reached my 14th birthday and am registering as required.My existing card will expire BEFORE my 16th birthday', 1, 1),
(9, 'I am a permanent resident who is taking up commuter status', 1, 1),
(10, 'I am a commuter who is taking up actual residence in the United States.', 1, 1),
(11, 'I have been automatically converted to lawful permanent resident status.', 1, 1),
(12, 'I have a prior edition of the Allen Registration Card,or I am applying to replace my current permanent card for a reason that is not specified above', 1, 1),
(13, 'My previous card has been lost,stolen,or destroyed', 1, 2),
(14, 'My previous card was Issued but never received.', 1, 2),
(15, 'My existing card has been mutllated', 1, 2),
(16, 'My existing card has incorrect data because of Department of homeland Security(DHS)error', 1, 2),
(17, 'My name or other blographic information has been legally changed since issuance of my existing card', 1, 2),
(18, 'My existing card has already expired or will expire withIn six months.', 1, 2),
(19, 'I have reached my 14th birthday and am registering as required.My existing card will expire AFER my 16th birthday', 1, 2),
(20, 'I have reached my 14th birthday and am registering as required.My existing card will expire BEFORE my 16th birthday', 1, 2),
(21, 'I am a permanent resident who is taking up commuter status', 1, 2),
(22, 'I am a commuter who is taking up actual residence in the United States.', 1, 2),
(23, 'I have been automatically converted to lawful permanent resident status.', 1, 2),
(24, 'I have a prior edition of the Allen Registration Card,or I am applying to replace my current permanent card for a reason that is not specified above', 1, 2),
(25, 'My previous card has been lost,stolen,or destroyed', 1, 3),
(26, 'My previous card was Issued but never received.', 1, 3),
(27, 'My existing card has been mutllated', 1, 3),
(28, 'My existing card has incorrect data because of DHS error', 1, 3),
(29, 'My name or other blographic information has legally changed since the issuance of my existing card', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `master_immigrationstatus`
--

CREATE TABLE `master_immigrationstatus` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `displat_title` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_immigrationstatus`
--

INSERT INTO `master_immigrationstatus` (`id`, `title`, `displat_title`, `is_active`) VALUES
(1, 'Lawful permanent Resident', 'Section A(To be used only by a lawful permanent resident or permanent resident in Commuter status )', 1),
(2, 'Permanent Resident – In Commuter status', 'Section A(To be used only by a lawful permanent resident or permanent resident in Commuter status )', 1),
(3, 'Conditional Permanent Resident', 'Section B(To be used only by a conditional permanent resident )', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_permanentresident`
--

CREATE TABLE `master_permanentresident` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `is_adjustment` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_permanentresident`
--

INSERT INTO `master_permanentresident` (`id`, `title`, `is_adjustment`, `is_active`) VALUES
(1, 'I applied for an immigrant visa outside the U.S (consular proce)', 0, 1),
(2, 'I applied for permanent residence in the U.S. (adjustment of status)', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_portofentry`
--

CREATE TABLE `master_portofentry` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_portofentry`
--

INSERT INTO `master_portofentry` (`id`, `title`, `is_active`) VALUES
(1, 'Aberdeen, WA', 1),
(2, 'Abilene, TX  BP', 1),
(3, 'Abu Dhabi International Airport', 1),
(4, 'Abu Dhabi Intl', 1),
(5, 'Abu Dhabi Preclearance Airport', 1),
(6, 'Accra, GHANA', 1),
(7, 'Adams Field', 1),
(8, 'Adistad Dam, TX', 1),
(9, 'Admin Appeals Office', 1),
(10, 'Agana, GU', 1),
(11, 'Aguadilla', 1),
(12, 'Aguadilla, PR', 1),
(13, 'Ajo, AZ  BP', 1),
(14, 'Akron Canton Regional', 1),
(15, 'Akron, OH', 1),
(16, 'Alamagordo, NM  BP', 1),
(17, 'Albany, NY', 1),
(18, 'Albuquerque, NM', 1),
(19, 'Albuquerque, NM BP', 1),
(20, 'Alburg Springs, VT', 1),
(21, 'Alburg, VT', 1),
(22, 'Alcan, AK', 1),
(23, 'Alexandria Bay, NY', 1),
(24, 'Algoma, WI', 1),
(25, 'Algonac, MI', 1),
(26, 'Alpena County Regional', 1),
(27, 'Alpena, MI', 1),
(28, 'Alpine, TX  BP', 1),
(29, 'Amarillo, TX  BP', 1),
(30, 'Ambrose, ND', 1),
(31, 'Amman, JORDAN', 1),
(32, 'Anacortes, WA', 1),
(33, 'Anchorage, AK', 1),
(34, 'Andrade, CA', 1),
(35, 'Andrews Afb', 1),
(36, 'Antelope Wells', 1),
(37, 'Antler, ND', 1),
(38, 'Antonio Rivera Rodriguez Airprt', 1),
(39, 'Anzalduas, TX', 1),
(40, 'Appleton, WI', 1),
(41, 'Arcata Eureka', 1),
(42, 'Arlington Asylum Office', 1),
(43, 'Arlington, VA', 1),
(44, 'Aruba', 1),
(45, 'Aruba Neth Antilles  Os', 1),
(46, 'Ashtabula, OH', 1),
(47, 'Astoria, OR', 1),
(48, 'Athens, GREECE', 1),
(49, 'Atlanta Asylum Office', 1),
(50, 'Atlanta, GA', 1),
(51, 'Atlantic City Intl', 1),
(52, 'Austin, TEXAS', 1),
(53, 'Bakersfield, CA BP', 1),
(54, 'Baltimore, MD', 1),
(55, 'Baltimore/Wa Int\'l Airprt', 1),
(56, 'Bangkok, THAILAND', 1),
(57, 'Bangor Intl', 1),
(58, 'Bangor, ME', 1),
(59, 'Bar Harbor', 1),
(60, 'Bar Harbor, FERRY TERMINAL', 1),
(61, 'Barnstable Municipal Airprt', 1),
(62, 'Baton Rouge Metro', 1),
(63, 'Baton Rouge,  LA  BP', 1),
(64, 'Baton Rouge, LA', 1),
(65, 'Battle Creek, MI', 1),
(66, 'Baudette, MN', 1),
(67, 'Bay City, MI', 1),
(68, 'Bayfield, WI', 1),
(69, 'Bayonne', 1),
(70, 'Beaumont, TX', 1),
(71, 'Beebe Plain, VT', 1),
(72, 'Beecher Falls, VT', 1),
(73, 'Beecher Falls, VT BP', 1),
(74, 'Beijing, CHINA', 1),
(75, 'Bellingham Intl/Squalicum', 1),
(76, 'Bellingham, WA', 1),
(77, 'Bellingham, WA BP', 1),
(78, 'Big Bend, TX (BP HQ)</option>', 1),
(79, 'Big Bend, TX BP', 1),
(80, 'Big Springs, TX (BPS)</option>', 1),
(81, 'Billings, MT', 1),
(82, 'Bishop Intl', 1),
(83, 'Blaine, WA', 1),
(84, 'Blaine, WA (BP - HQ)</option>', 1),
(85, 'Blaine, WA BP', 1),
(86, 'Blue Grass Airprt', 1),
(87, 'Blythe, CA BP', 1),
(88, 'Boca Grande, FL', 1),
(89, 'Boeing King County', 1),
(90, 'Boise, ID', 1),
(91, 'Bonners Ferry, ID BP', 1),
(92, 'Boothbay Harbor, ME', 1),
(93, 'Boston, MA', 1),
(94, 'Bottineau, ND BP', 1),
(95, 'Boulder City, NV BP', 1),
(96, 'Boulevard, CA BP', 1),
(97, 'Boundary, WA', 1),
(98, 'Bozeman Yellowstone Mt', 1),
(99, 'Bp Academy, CHARLESTON, SC', 1),
(100, 'Bp Operation Alliance, TX (BP HQ)</option>', 1),
(101, 'Bp Spl Coord Ctr, TX (BP HQ)</option>', 1),
(102, 'Bp Tactical Unit, TX (BP HQ)</option>', 1),
(103, 'Bracketville, TX BP', 1),
(104, 'Bradley Intl', 1),
(105, 'Bridge Of The Americas Tx', 1),
(106, 'Bridgeport, CT', 1),
(107, 'Bridgewater, ME', 1),
(108, 'Brownfield, CA BP', 1),
(109, 'Browning, MT (BPS)</option>', 1),
(110, 'Brownsville, B&amp;amp;M BRIDGE', 1),
(111, 'Brownsville, GATEWAY BRIDGE', 1),
(112, 'Brownsville, TX BP', 1),
(113, 'Brownsville/Gateway, TX', 1),
(114, 'Brunswick   Golden Isles Airprt', 1),
(115, 'Brunswick, GA', 1),
(116, 'Buckport, ME', 1),
(117, 'Buffalo, NY', 1),
(118, 'Buffalo, NY (BP - HQ)</option>', 1),
(119, 'Buffalo, NY BP', 1),
(120, 'Burke, NY  BP', 1),
(121, 'Burke, NY BP', 1),
(122, 'Burlington Intl', 1),
(123, 'Burlington, VT', 1),
(124, 'Butte, MT', 1),
(125, 'Calais, ME', 1),
(126, 'Calais, ME BP', 1),
(127, 'Calexico, CA BP', 1),
(129, 'Calexico, TRUCK CROSSING', 1),
(130, 'Calgary, ALBERTA, CANADA OS', 1),
(131, 'California Service Center', 1),
(132, 'Campo, CA', 1),
(133, 'Canaan, VT', 1),
(134, 'Cannon Corners', 1),
(135, 'Cape Canaveral, FL', 1),
(136, 'Cape Vincent, NY', 1),
(137, 'Capital City Airport', 1),
(138, 'Carbury, ND', 1),
(139, 'Caribou, ME', 1),
(140, 'Carizo Springs, TX BP', 1),
(141, 'Carlsbad, NM BP', 1),
(142, 'Casa Grande, AZ BP', 1),
(143, 'Casper, WY', 1),
(144, 'Casper/Natrona County Intl Airprt', 1),
(145, 'Champlain, NY', 1),
(146, 'Champlain, NY BP', 1),
(147, 'Charleston Review Office', 1),
(148, 'Charleston, SC', 1),
(149, 'Charleston, SC (BPS)</option>', 1),
(150, 'Charleston, WV', 1),
(151, 'Charlotte Amalie, VI OS', 1),
(152, 'Charlotte, NC', 1),
(153, 'Chateaugay, NY', 1),
(154, 'Chattanooga, TN', 1),
(155, 'Cherry Hill, NJ', 1),
(156, 'Chicago Midway', 1),
(157, 'Chicago Midway Airprt', 1),
(158, 'Chicago, IL', 1),
(159, 'Chicago/Rockford Intl', 1),
(160, 'Chief Mt, MT', 1),
(161, 'Chippewa County Intl', 1),
(162, 'Christiansted, ST CROIX, VI OS', 1),
(163, 'Chula Vista, CA', 1),
(164, 'Chula Vista, CA BP', 1),
(165, 'Churubusco, POE', 1),
(166, 'Cincinnati, OH', 1),
(167, 'Cincinnati/Northern Kentucky Intl', 1),
(168, 'Ciudad Juarez, MEXICO OS', 1),
(169, 'Clayton, NY', 1),
(170, 'Cleveland, OH', 1),
(171, 'Coburn Gore, ME', 1),
(172, 'Colorado Springs Municipal', 1),
(173, 'Columbia Metropolitan', 1),
(174, 'Columbus Field Office', 1),
(175, 'Columbus Regional', 1),
(176, 'Columbus, NM', 1),
(177, 'Colville, WA BP', 1),
(178, 'Comstock, TX BP', 1),
(179, 'Coos Bay, OR', 1),
(180, 'Corpus Christi Intl', 1),
(181, 'Corpus Christi, TX', 1),
(182, 'Corpus Christi, TX BP', 1),
(183, 'Cotulla, TX    BP', 1),
(184, 'Crane Lake, MN', 1),
(185, 'Cross Border Xpress, CA', 1),
(186, 'Cruz Bay, ST JOHN, VI OS', 1),
(187, 'Curlew, WA BP', 1),
(188, 'Cut Bank, MT', 1),
(189, 'Cyril E. King', 1),
(190, 'Daaquam', 1),
(191, 'Dallas, TX', 1),
(192, 'Dallas, TX BP', 1),
(193, 'Dallas/Fort Worth Intl', 1),
(194, 'Dalton Cache, AK', 1),
(195, 'Dania Beach, FL BP', 1),
(196, 'Danville, WA', 1),
(197, 'Daytona Beach Regional', 1),
(198, 'Daytona Beach, FL (BPS)</option>', 1),
(199, 'Del Bonita, MT', 1),
(200, 'Del Rio, TX', 1),
(201, 'Del Rio, TX (BP - HQ)</option>', 1),
(202, 'Del Rio, TX (BPS)</option>', 1),
(203, 'Deming, NM BP', 1),
(204, 'Denver, CO', 1),
(205, 'Derby Line (Rt. 5)</option>', 1),
(206, 'Derby Line, VT', 1),
(207, 'Des Moines, IA', 1),
(208, 'Detroit Metro Wayne', 1),
(209, 'Detroit, MI', 1),
(213, 'Detroit, MI (BP - HQ)</option>', 1),
(214, 'Detroit, MI BP', 1),
(215, 'Detroit, MI(BRIDGE)</option>', 1),
(216, 'Detroit, MI(TUNNEL)</option>', 1),
(217, 'Donna, TX', 1),
(218, 'Douglas, AZ', 1),
(219, 'Douglas, AZ BP', 1),
(220, 'Dover Afb, DE', 1),
(221, 'Dover, DE', 1),
(222, 'Dublin, IRELAND', 1),
(223, 'Dublin, IRELAND OS', 1),
(224, 'Dulles Intl', 1),
(225, 'Duluth Intl', 1),
(226, 'Duluth, MN', 1),
(227, 'Duluth, MN BP', 1),
(228, 'Dunseith, ND', 1),
(229, 'Dutch Harbor', 1),
(230, 'Eagle Ak', 1),
(231, 'Eagle County Regional', 1),
(232, 'Eagle Pass Fort Duncan Bridge', 1),
(233, 'Eagle Pass, SOUTH (BPS)</option>', 1),
(234, 'Eagle Pass, TX', 1),
(235, 'Eagle Pass, TX BP', 1),
(236, 'East Richford, VT', 1),
(237, 'Eastern Region, VT', 1),
(238, 'Eastport, ID', 1),
(239, 'Eastport, ME', 1),
(241, 'Edinburg, TX (SOUTH TX IAP)</option>', 1),
(242, 'Edmonton, ALBERTA, CANADA OS', 1),
(243, 'El Cajon, CA BP', 1),
(244, 'El Centro, CA', 1),
(245, 'El Centro, CA BP', 1),
(246, 'El Paso, TX', 1),
(248, 'El Paso, TX (BP - HQ)</option>', 1),
(249, 'El Paso, TX (BPS)</option>', 1),
(250, 'El Paso, YSLETA (BPS)</option>', 1),
(251, 'Elmira Corning Regional Airprt', 1),
(252, 'Eloy Detention Center', 1),
(253, 'Ely, MN', 1),
(254, 'Ensenada, PR', 1),
(255, 'Erie, PA', 1),
(256, 'Erie, PA (BPS)</option>', 1),
(257, 'Eureka, CA', 1),
(258, 'Eureka, MT BP', 1),
(260, 'Everett, WA', 1),
(261, 'Executive Office Of Imgrtn Review', 1),
(262, 'Fabens, TX', 1),
(263, 'Fabens, TX BP', 1),
(264, 'Fairbanks Intl', 1),
(265, 'Fairbanks, AK', 1),
(266, 'Fajardo, PR', 1),
(267, 'Falcon Dam, TX', 1),
(268, 'Falfurrias, TX    BP', 1),
(269, 'Fargo, ND', 1),
(270, 'Fbi Cjisd', 1),
(271, 'Fernandina, FL', 1),
(272, 'Ferry, WA', 1),
(273, 'Florence Detention Center', 1),
(274, 'Fort Covington, NY', 1),
(275, 'Fort Fairfield, ME', 1),
(276, 'Fort Fairfield, ME BP', 1),
(277, 'Fort Hancock, TX', 1),
(278, 'Fort Hancock, TX BP', 1),
(279, 'Fort Kent, ME', 1),
(280, 'Fort Lauderdale Hollywood Intl', 1),
(281, 'Fort Lauderdale, FL', 1),
(282, 'Fort Lauderdale, FL (BPS)</option>', 1),
(283, 'Fort Meyers, FL', 1),
(284, 'Fort Myers, FL', 1),
(285, 'Fort Myers, FL (BPS)</option>', 1),
(286, 'Fort Pierce', 1),
(287, 'Fort Pierce, FL', 1),
(288, 'Fort Pierce, FL (BPS)</option>', 1),
(289, 'Fort Smith, AR', 1),
(290, 'Fort St. Cargo Facility', 1),
(291, 'Fort Stockton, TX BP', 1),
(292, 'Fortuna, ND', 1),
(293, 'Frankfurt, GERMANY', 1),
(294, 'Frederiksted, ST CROIX VI OS', 1),
(295, 'Freeport, BAHAMAS OS', 1),
(297, 'Freeport, TX', 1),
(298, 'Freer, TX BP', 1),
(299, 'Fresno Air Terminal', 1),
(300, 'Fresno, CA', 1),
(301, 'Fresno, CA BP', 1),
(302, 'Friday Harbor Airprt', 1),
(303, 'Friday Harbor, WA', 1),
(304, 'Frontier, WA', 1),
(305, 'Ft. Hancock, TX', 1),
(306, 'Fulton, NY BP', 1),
(307, 'Galveston, TX', 1),
(308, 'Garden City Field Office', 1),
(309, 'Garden City, KS', 1),
(310, 'Gary, IN', 1),
(311, 'General Mitchell Field', 1),
(312, 'George Bush Intl', 1),
(313, 'Georgetown, SC', 1),
(314, 'Gibraltar, MI BP', 1),
(315, 'Gila Bend, AZ (BPS)</option>', 1),
(316, 'Glacier Park International Airport Mt', 1),
(317, 'Glacier Park Intl', 1),
(318, 'Glasgow, MT', 1),
(319, 'Gloucester, MA', 1),
(320, 'Grand Forks, ND', 1),
(321, 'Grand Forks, ND (BP - HQ)</option>', 1),
(322, 'Grand Forks, ND BP', 1),
(323, 'Grand Junction, CO', 1),
(324, 'Grand Marais, MN BP', 1),
(325, 'Grand Portage, MN', 1),
(326, 'Grand Rapids, MI', 1),
(327, 'Grand Rapids, MI BP', 1),
(328, 'Great Falls Intl', 1),
(329, 'Great Falls, MT', 1),
(330, 'Greater Peoria Regional', 1),
(331, 'Green Bay, WI', 1),
(332, 'Greenville Spartanburg', 1),
(333, 'Greenville/Spartanburg,SC', 1),
(334, 'Greer, SC', 1),
(335, 'Grosse Isle, MI', 1),
(336, 'Groton, CT', 1),
(337, 'Guam Intl Ap', 1),
(338, 'Guangzhou Field Office', 1),
(339, 'Guatamala City Field Office', 1),
(340, 'Gulfport Biloxi Regional', 1),
(341, 'Gulfport, MS', 1),
(343, 'Gulfport, MS BP', 1),
(344, 'Haines Alaska', 1),
(345, 'Haines, AK', 1),
(346, 'Halifax, NOVA SCOTIA OS', 1),
(347, 'Hamilton, BERMUDA OS', 1),
(348, 'Hamlin, ME', 1),
(349, 'Hammond, IN', 1),
(350, 'Hannah, ND', 1),
(352, 'Hansboro, ND', 1),
(353, 'Harlingen, TX', 1),
(354, 'Harlingen, TX BP', 1),
(355, 'Harrisburg Intl', 1),
(356, 'Harrisburg, PA', 1),
(357, 'Hartford, CT', 1),
(358, 'Harve, MT', 1),
(359, 'Havana Field Office', 1),
(360, 'Havre, MT', 1),
(361, 'Havre, MT (BP - HQ)</option>', 1),
(362, 'Hebbronville, TX BP', 1),
(363, 'Helena Regional', 1),
(364, 'Helena, MT', 1),
(365, 'Henry E. Rohlsen', 1),
(366, 'Hialeah, FL', 1),
(367, 'Hidalgo, TX', 1),
(368, 'Highgate Springs, VT', 1),
(369, 'Hillsboro', 1),
(370, 'Hilo', 1),
(371, 'Hilo Intl', 1),
(372, 'Ho Chi Minh City, VIETNAM', 1),
(373, 'Hobby Airprt', 1),
(374, 'Hoboken, NJ', 1),
(375, 'Homer, AK', 1),
(376, 'Homestead, FL (BPS)</option>', 1),
(377, 'Hong Kong', 1),
(378, 'Honolulu Intl', 1),
(379, 'Honolulu, HI', 1),
(380, 'Hopewell, VA', 1),
(381, 'Houlton, ME', 1),
(382, 'Houlton, ME (BP - HQ)</option>', 1),
(383, 'Houlton, ME BP', 1),
(384, 'Houston Asylum Office', 1),
(386, 'Houston, TX', 1),
(387, 'Hq Washington Dc, 425 I ST NW', 1),
(388, 'Hq, MOBILE PROC CENTR II (BP HQ)</option>', 1),
(389, 'Hq, MOBILE PROC CENTR III (BP HQ)</option>', 1),
(390, 'Hq,MOBILE PROC CENTR (BP HQ)</option>', 1),
(391, 'Humacao, PR', 1),
(392, 'Huntsville Intl', 1),
(393, 'Huntsville, TX', 1),
(394, 'Hyder, AK', 1),
(395, 'Imperial', 1),
(396, 'Imperial Beach, CA BP', 1),
(397, 'Imperial County', 1),
(398, 'Indianapolis Ice Raic Office', 1),
(399, 'Indianapolis, IN', 1),
(400, 'Indio, CA BP', 1),
(401, 'International Falls, MN', 1),
(402, 'International Falls, MN BP', 1),
(403, 'Intl Falls Intl Airprt', 1),
(404, 'Isla Grande', 1),
(405, 'Islamabad, PAKISTAN', 1),
(406, 'Isle Royale, MI', 1),
(407, 'Jack Brooks Regional Airprt', 1),
(408, 'Jackman, ME', 1),
(409, 'Jackman, ME BP', 1),
(410, 'Jackson Field Support Office', 1),
(411, 'Jackson Intl', 1),
(412, 'Jacksonville Intl', 1),
(413, 'Jacksonville, FL', 1),
(414, 'Jacksonville, FL BP', 1),
(415, 'Jacumba, CA (BPS)</option>', 1),
(416, 'James M Cox Dayton Intl', 1),
(417, 'Jersey City, NJ', 1),
(419, 'Jfk Intl, NY', 1),
(420, 'Jobos, PR', 1),
(421, 'Johannesburg, SOUTH AFRICA', 1),
(422, 'Juarez Lincoln Intl Bridge, TX', 1),
(423, 'Juarez Lincoln, BRIDGE,TX', 1),
(424, 'Juneau Ak International Airport', 1),
(425, 'Juneau Intl', 1),
(426, 'Juneau, AK', 1),
(427, 'Kahului', 1),
(428, 'Kalama, WA', 1),
(429, 'Kalamazoo   Battle Creek', 1),
(430, 'Kalispel, MT', 1),
(431, 'Kansas City, MO', 1),
(432, 'Karachi, PAKISTAN', 1),
(433, 'Kendall, FL', 1),
(434, 'Kenner', 1),
(435, 'Ketchikan', 1),
(436, 'Ketchikan, AK', 1),
(437, 'Kettle Falls, WA (BPS)</option>', 1),
(438, 'Key West, FL', 1),
(439, 'Key West, FL (BPS)</option>', 1),
(440, 'Kingsville, TX BP', 1),
(441, 'Kingville, US (BPS)</option>', 1),
(442, 'Knoxville, TN ', 1),
(443, 'Kodiak', 1),
(444, 'Kona Intl At Keahole', 1),
(445, 'Kona, HI BP', 1),
(446, 'La Guardia, NY', 1),
(447, 'La/Ontario Ca International', 1),
(448, 'Lafayette Regional Airprt', 1),
(449, 'Laguardia', 1),
(450, 'Lake Charles Municipal', 1),
(451, 'Lake Charles, LA', 1),
(452, 'Lake Charles, LA BP', 1),
(453, 'Lancaster, MN', 1),
(454, 'Laredo Columbia Bridge', 1),
(455, 'Laredo Intl', 1),
(456, 'Laredo World Trade Bridge                 Laredo, TX', 1),
(457, 'Laredo, TX (BP - HQ)</option>', 1),
(458, 'Laredo, TX (NORTH BPS)</option>', 1),
(459, 'Laredo, TX (SOUTH BPS)</option>', 1),
(460, 'Laredo, TX (WEST BPS)</option>', 1),
(461, 'Las Cruces, NM BP', 1),
(462, 'Las Vegas, NV', 1),
(463, 'Laurier, WA', 1),
(464, 'Lawrence, MA', 1),
(465, 'Lebanon, MA BP', 1),
(466, 'Lewiston, NY', 1),
(467, 'Lihue', 1),
(468, 'Lima Field Office', 1),
(469, 'Limestone, ME', 1),
(470, 'Lincoln, NE DEFENSIVE OFFICE', 1),
(471, 'Little Rock, AR BP', 1),
(472, 'Live Oak,FL (BPS)</option>', 1),
(473, 'Livermore, CA (BP - HQ)</option>', 1),
(474, 'Livermore, CA BP', 1),
(475, 'London', 1),
(476, 'Long Beach, CA', 1),
(477, 'Long Island Field Office', 1),
(478, 'Longview, WA', 1),
(479, 'Lorain, OH', 1),
(480, 'Lordsburg, NM BP', 1),
(481, 'Los Angeles Asylum Office', 1),
(482, 'Los Angeles County Field Office', 1),
(483, 'Los Angeles Intl', 1),
(484, 'Los Angeles Legalization', 1),
(485, 'Los Angeles, CA', 1),
(486, 'Los Ebanos, TX', 1),
(487, 'Los Indios', 1),
(488, 'Los Indios, TX', 1),
(489, 'Louis Armstrong New Orleans Intl', 1),
(490, 'Louisville, KY', 1),
(491, 'Lubbock Preston Smith Intl Airprt', 1),
(492, 'Lubbock, TX BP', 1),
(493, 'Lubec, ME', 1),
(494, 'Luis Munoz Marin Intl', 1),
(495, 'Lukeville, AZ', 1),
(496, 'Lynden, WA', 1),
(497, 'Lynden, WA BP', 1),
(498, 'Macarthur Field', 1),
(499, 'Madawaska, ME', 1),
(500, 'Maida, ND', 1),
(501, 'Maitowoc, WI', 1),
(502, 'Malta, MT', 1),
(503, 'Manchester Boston Regional Airprt', 1),
(504, 'Manchester, NH', 1),
(505, 'Manila, RPI', 1),
(506, 'Marathon, FL BP', 1),
(507, 'Marfa, TX (BP - HQ)</option>', 1),
(508, 'Marfa, TX BP', 1),
(509, 'Marine City, MI', 1),
(510, 'Marine City, MI FERRY LANDING', 1),
(511, 'Mariposa, AZ', 1),
(512, 'Mark Andrews Intl', 1),
(513, 'Marysville, MI', 1),
(514, 'Marysville, MI BP', 1),
(515, 'Massena, NY', 1),
(516, 'Massena, NY BP', 1),
(517, 'Maui', 1),
(518, 'Mayaguez, PR', 1),
(519, 'Mbs Intl', 1),
(520, 'Mcallen Miller Intl', 1),
(521, 'Mcallen, TX', 1),
(522, 'Mcallen, TX (BP - HQ)</option>', 1),
(523, 'Mcclellan Palomar Airprt', 1),
(524, 'Mcghee Tyson', 1),
(525, 'Mcguire Afb, NJ', 1),
(526, 'Meadows Field Airprt', 1),
(527, 'Medford', 1),
(528, 'Memphis, TN', 1),
(529, 'Mercedes, TX BP', 1),
(530, 'Mercedita', 1),
(531, 'Metaline Falls, WA', 1),
(532, 'Metaline Falls, WA (BPS)</option>', 1),
(533, 'Mexico City, MEXICO', 1),
(534, 'Miami Asylum Office', 1),
(535, 'Miami, FL', 1),
(536, 'Miami, FL (BP - HQ)</option>', 1),
(537, 'Miami, FL SEAPLANE BASE', 1),
(538, 'Miami, OK (BPS)</option>', 1),
(539, 'Middlesex', 1),
(540, 'Midland, TX BP', 1),
(541, 'Milltown', 1),
(542, 'Milwaukee, WI', 1),
(543, 'Minneapolis/St. Paul, MN', 1),
(544, 'Minot Intl', 1),
(545, 'Minot, ND', 1),
(546, 'Missouri Service Center', 1),
(547, 'Mobile, AL', 1),
(548, 'Mobile, AL BP', 1),
(549, 'Monterrey, MEXICO', 1),
(550, 'Montreal, QUEBEC, CANADA OS', 1),
(551, 'Mooers, NY', 1),
(552, 'Morehead City, NC', 1),
(553, 'Morgan City', 1),
(554, 'Morgan City, LA', 1),
(555, 'Morgan, MT', 1),
(556, 'Morley Gate', 1),
(557, 'Morristown, NY', 1),
(558, 'Morses Line, VT', 1),
(559, 'Moscow, RUSSIA', 1),
(560, 'Mount Laurel, NJ', 1),
(561, 'Murrieta, CA BP', 1),
(562, 'Myrtle Beach, SC', 1),
(563, 'Naco, AZ', 1),
(564, 'Naco, AZ BP', 1),
(565, 'Nairobi, KENYA', 1),
(566, 'Naples, FL', 1),
(567, 'Nashville Intl', 1),
(568, 'Nashville, TN', 1),
(569, 'Nassau, BAHAMAS OS', 1),
(570, 'Neah Bay, WA', 1),
(571, 'Nebraska Service Center', 1),
(572, 'Neche, ND', 1),
(573, 'New Bedford Municipal', 1),
(574, 'New Delhi, INDIA', 1),
(575, 'New Haven, CT', 1),
(576, 'New London, CT', 1),
(577, 'New Orleans Asylum Office', 1),
(578, 'New Orleans, LA', 1),
(579, 'New Orleans, LA (BP - HQ)</option>', 1),
(580, 'New Orleans, LA BP', 1),
(581, 'New York Asylum Office', 1),
(582, 'New York Seaport, NY', 1),
(583, 'New York, NY', 1),
(584, 'Newark And Teterboro, NJ', 1),
(585, 'Newark Asylum Office', 1),
(586, 'Newark Liberty Intl', 1),
(587, 'Newington Data Center Test', 1),
(588, 'Newport', 1),
(589, 'Newport, VA', 1),
(590, 'Newport, VT', 1),
(591, 'Newport, VT BP', 1),
(592, 'Niagara Falls Intl', 1),
(593, 'Niagara Falls, NY', 1),
(594, 'Niagara Falls, NY BP', 1),
(595, 'Niagara Falls, RAINBOW BRIDGE', 1),
(596, 'Nighthawk, WA', 1),
(597, 'Nikiski, AK', 1),
(598, 'Nogales, AZ', 1),
(599, 'Nogales, AZ BP', 1),
(600, 'Nom, AK BP', 1),
(601, 'Nome', 1),
(602, 'Noonan, ND', 1),
(603, 'Norfolk Regional', 1),
(604, 'Norfolk, VA', 1),
(605, 'Norman Y Mineta San Jose Intl', 1),
(606, 'North Troy, VT', 1),
(607, 'Northern Maine Regional', 1),
(608, 'Northgate   Flaxton, ND', 1),
(609, 'Northgate, ND', 1),
(610, 'Northport, WA', 1),
(611, 'Norton, VT', 1),
(612, 'Not Reported', 1),
(613, 'Nova Scotia, CN', 1),
(614, 'Noyes, MN', 1),
(615, 'O\'hare Intl Airport', 1),
(616, 'Oak Groves, CA BP', 1),
(617, 'Oakland', 1),
(618, 'Oakland Park, FL', 1),
(619, 'Oakland Pontiac Airprt', 1),
(620, 'Oceanside, CA BP', 1),
(621, 'Ogdensburg, NY', 1),
(622, 'Ogdensburg, NY BP', 1),
(623, 'Oklahoma City, OK', 1),
(624, 'Olympia, WA', 1),
(625, 'Omaha, NE', 1),
(626, 'Ontario Airprt', 1),
(627, 'Opheim, MT', 1),
(628, 'Orient, ME', 1),
(629, 'Orlando Airport, FL', 1),
(630, 'Orlando Intl', 1),
(631, 'Orlando, FL BP', 1),
(632, 'Oroville, WA', 1),
(633, 'Oroville, WA BP', 1),
(634, 'Oswego, NY', 1),
(635, 'Oswego, NY (BPS)</option>', 1),
(636, 'Otay Mesa, CA', 1),
(637, 'Ottawa, CANADA OS', 1),
(638, 'Overton Corners', 1),
(639, 'Oxnard, CA BP', 1),
(640, 'Ozona, TX (BPS)</option>', 1),
(641, 'Pacific Highway, WA', 1),
(642, 'Palm Beach Intl', 1),
(643, 'Palm Springs Regional', 1),
(644, 'Panama City, FL', 1),
(645, 'Paradise Is, BAHAMAS', 1),
(646, 'Pascagoula, MS', 1),
(647, 'Pasco, WA BP', 1),
(648, 'Paso Del Norte Bridge Tx', 1),
(649, 'Patuxent River, MD', 1),
(650, 'Peace Bridge, NY', 1),
(651, 'Pecos, TX BP', 1),
(652, 'Pembina, MN BP', 1),
(653, 'Pembina, ND', 1),
(654, 'Pembroke Pines, FL BP', 1),
(655, 'Pensacola Regional', 1),
(656, 'Pensacola, FL', 1),
(657, 'Pensacola, FL (BPS)</option>', 1),
(658, 'Perth Amboy, NJ', 1),
(659, 'Pharr,TX', 1),
(660, 'Philadelphia Service Port', 1),
(661, 'Philadelphia, PA', 1),
(662, 'Phoenix Mesa Gateway', 1),
(663, 'Phoenix, AZ', 1),
(664, 'Phoenix, AZ BP', 1),
(665, 'Piedmont Triad Intl', 1),
(666, 'Piegan, MT', 1),
(667, 'Pinecreek', 1),
(668, 'Pinnacle Road, VT', 1),
(669, 'Pittsburg, NH', 1),
(670, 'Pittsburgh, PA', 1),
(671, 'Plattsburgh', 1),
(672, 'Plentywood, MT BP', 1),
(673, 'Point Roberts, WA', 1),
(675, 'Poker Creek, AK', 1),
(676, 'Ponce, PR', 1),
(677, 'Port Angeles, WA', 1),
(678, 'Port Angeles, WA BP', 1),
(679, 'Port Arthur, TX', 1),
(680, 'Port Au Prince, HAITI OS', 1),
(681, 'Port Canaveral, FL', 1),
(682, 'Port Everglades, FL', 1),
(683, 'Port Huron, MI', 1),
(684, 'Port Huron, MI BP', 1),
(685, 'Port Isabel, TX', 1),
(686, 'Port Isabel, TX BP', 1),
(687, 'Port Manatee', 1),
(688, 'Port Of El Paso, TX', 1),
(689, 'Port St Joe, FL', 1),
(690, 'Port Townsend, WA', 1),
(691, 'Portal, ND', 1),
(692, 'Portal, ND BP', 1),
(693, 'Porthill, ID', 1),
(694, 'Portland Intl', 1),
(695, 'Portland Intl Jetport', 1),
(696, 'Portland Me', 1),
(697, 'Portland, OR', 1),
(698, 'Portsmouth, NH', 1),
(699, 'Presidio, TX', 1),
(700, 'Presidio, TX BP', 1),
(701, 'Prince Rupert, AK', 1),
(702, 'Prince Rupert, B.C., CANADA', 1),
(703, 'Progreso, TX', 1),
(704, 'Providence, RI', 1),
(705, 'Put In Bay, OH', 1),
(706, 'Quad Cities Intl', 1),
(707, 'Queens Field Office', 1),
(708, 'Rafael Hernandez Airprt', 1),
(709, 'Rainbow Bridge', 1),
(710, 'Raleigh Durham Field Office', 1),
(711, 'Raleigh/Durham, NC', 1),
(712, 'Ramey, PR BP', 1),
(713, 'Rangely, ME BP', 1),
(714, 'Ranier, MN', 1),
(715, 'Raymond, MT', 1),
(716, 'Record Digitization Facility', 1),
(717, 'Reno Cannon Intl', 1),
(718, 'Reno, NV', 1),
(719, 'Ria Directorate', 1),
(720, 'Richford, VT', 1),
(722, 'Richford, VT BP', 1),
(723, 'Richmond Intl', 1),
(724, 'Richmond, VA', 1),
(725, 'Rick Husband Amarillo Intl', 1),
(726, 'Rickenbacker Airprt', 1),
(728, 'Rio Grande City, TX', 1),
(729, 'Rio Grande City, TX BP', 1),
(730, 'Rio Grande Valley, TX (BP HQ)</option>', 1),
(731, 'Riverside, CA BP', 1),
(732, 'Roberts Landing, MI', 1),
(733, 'Rochester', 1),
(734, 'Rochester, NY', 1),
(735, 'Rocksprings, TX BP', 1),
(736, 'Roma, TX', 1),
(737, 'Rome, ITALY OS', 1),
(738, 'Roosville, MT', 1),
(739, 'Roseau, MN', 1),
(740, 'Roseburg, OR BP', 1),
(741, 'Roswell Industrial Air Center', 1),
(742, 'Rota', 1),
(743, 'Rouses Point, NY', 1),
(744, 'Sacramento Intl', 1),
(745, 'Sacramento, CA', 1),
(746, 'Sacramento, CA BP', 1),
(747, 'Saginaw, MI', 1),
(748, 'Saipan', 1),
(749, 'Saipan Intl Airprt', 1),
(750, 'Saipan Os', 1),
(751, 'Salinas, CA BP', 1),
(752, 'Salt Lake City, UT', 1),
(753, 'San Angelo, TX BP', 1),
(754, 'San Antonio Asylum Office', 1),
(755, 'San Antonio, TX', 1),
(756, 'San Antonio, TX BP', 1),
(757, 'San Bernardino, CA', 1),
(758, 'San Clemente, CA BP', 1),
(759, 'San Diego Legalization', 1),
(760, 'San Diego, CA', 1),
(762, 'San Fernando Valley', 1),
(763, 'San Francisco Asylum Office', 1),
(764, 'San Francisco Intl', 1),
(765, 'San Francisco, CA', 1),
(766, 'San Jose, CA', 1),
(767, 'San Juan, PR', 1),
(768, 'San Luis Obispo, CA', 1),
(769, 'San Luis Obispo, CA BP', 1),
(770, 'San Luis, AZ', 1),
(771, 'San Pedro, CA', 1),
(773, 'San Salvador Field Office', 1),
(774, 'San Ysidro, CA', 1),
(775, 'San Ysidro, CA PORT OF ENTRY', 1),
(776, 'Sandusky Bay Bp', 1),
(777, 'Sandusky, OH', 1),
(778, 'Sanford Airport, FL', 1),
(779, 'Sanford, FL', 1),
(780, 'Santa Domingo Field Office', 1),
(781, 'Santa Teresa, NM', 1),
(782, 'Santa Teresa, NM (BPS)</option>', 1),
(783, 'Sarasota Bradenton Intl', 1),
(784, 'Sarles, ND', 1),
(785, 'Sasabe, AZ', 1),
(786, 'Sault Ste Marie, MI', 1),
(787, 'Sault Ste Marie, MI BP', 1),
(788, 'Savannah, GA', 1),
(789, 'Savannah, GA (BPS)</option>', 1),
(790, 'Scobey, MT', 1),
(791, 'Scobey, MT (BP SUBSTATION)</option>', 1),
(792, 'Seattle Tacoma, WA', 1),
(793, 'Seattle, WA', 1),
(794, 'Seoul, KOREA', 1),
(795, 'Shannon, IRELAND', 1),
(796, 'Shannon, IRELAND OS', 1),
(797, 'Shelby, MT BP', 1),
(798, 'Sherwood, ND', 1),
(799, 'Shreveport Regional', 1),
(800, 'Sierra Blanca, TX BP', 1),
(801, 'Silver City, NM (BPS)</option>', 1),
(802, 'Singapore', 1),
(803, 'Sioux Falls Regional', 1),
(804, 'Sioux Falls, SD', 1),
(805, 'Sitka', 1),
(806, 'Sitka, AK', 1),
(807, 'Skagway, AK', 1),
(808, 'Sloulin Field Intl', 1),
(809, 'Sonoita, AZ BP', 1),
(810, 'South Brewer, ME', 1),
(811, 'Southeast Regional Office', 1),
(812, 'Southwest Florida Regional', 1),
(813, 'Spokane Intl', 1),
(814, 'Spokane, WA', 1),
(815, 'Spokane, WA (BP - HQ)</option>', 1),
(816, 'Spokane, WA BP', 1),
(817, 'Springfield Branson Regional', 1),
(818, 'St Albans, VT', 1),
(819, 'St Augustine, FL', 1),
(820, 'St Aurelie, ME', 1),
(821, 'St Clair, MI', 1),
(822, 'St John, ND', 1),
(823, 'St John, USVI OS', 1),
(824, 'St Louis, MO', 1),
(825, 'St Pamphile, ME', 1),
(826, 'St Paul Iap, MN', 1),
(827, 'St Zacharie, ME', 1),
(828, 'St. Augustine Airprt', 1),
(829, 'St. Croix, VI OS', 1),
(830, 'St. Mary, MT BP', 1),
(831, 'St. Petersburg, FL', 1),
(832, 'Standiford Field', 1),
(833, 'Stanton St Bridge', 1),
(834, 'Stewart Intl', 1),
(835, 'Stockton, CA BP', 1),
(836, 'Sumas, WA', 1),
(837, 'Sumas, WA (BPS)</option>', 1),
(838, 'Swanton, VT (BP - HQ)</option>', 1),
(839, 'Swanton, VT BP', 1),
(840, 'Sweetgrass, MT', 1),
(841, 'Sweetgrass, MT (BP SUBSTATION)</option>', 1),
(842, 'Syracuse, NY', 1),
(843, 'Tacna, AZ (BPS)</option>', 1),
(844, 'Tacoma, WA', 1),
(845, 'Tampa International', 1),
(846, 'Tampa Intl', 1),
(847, 'Tampa, FL', 1),
(848, 'Tampa, FL BP', 1),
(849, 'Tecate, CA', 1),
(850, 'Tegucigalpa, HONDURAS', 1),
(851, 'Temecula, CA BP', 1),
(852, 'Texas Service Center', 1),
(853, 'Theo. Francis (T.F.) Green', 1),
(854, 'Thousand Island Bridge Ny', 1),
(855, 'Tijuana, MEXICO OS', 1),
(856, 'Tinian Airport, CNMI', 1),
(857, 'Toledo, OH', 1),
(858, 'Toledo, OH (EXPRESS AIRPORT)</option>', 1),
(859, 'Tornillo, TX', 1),
(860, 'Toronto, CANADA OS', 1),
(861, 'Travis Afb, CA', 1),
(862, 'Travis Air Force Base', 1),
(863, 'Trenton Mercer County', 1),
(864, 'Trenton, MI BP', 1),
(865, 'Tri Cities Regional', 1),
(866, 'Tri State', 1),
(867, 'Trial Creek, MT', 1),
(868, 'Trout River, NY', 1),
(869, 'Truth Or Consequences, NM BP', 1),
(870, 'Tucson, AZ', 1),
(871, 'Tucson, AZ (BP - HQ)</option>', 1),
(872, 'Tucson, AZ BP', 1),
(873, 'Tulsa Intl', 1),
(874, 'Turner, MT', 1),
(875, 'Tweed New Haven', 1),
(876, 'Twin Falls, ID BP', 1),
(877, 'Unalaska Emrgncy Fld (Tom Madsen)</option>', 1),
(878, 'Unknown', 1),
(879, 'Uvalde, TX BP', 1),
(880, 'Valdez', 1),
(881, 'Valley Intl Airport', 1),
(882, 'Van Buren, ME', 1),
(883, 'Van Horn, TX', 1),
(884, 'Vanburen, ME', 1),
(885, 'Vanceboro, ME', 1),
(886, 'Vanceboro, ME WATER STREET', 1),
(887, 'Vancouver, BC OS', 1),
(888, 'Vancouver, WA', 1),
(889, 'Vermont Service Center', 1),
(890, 'Veterans International Bridge', 1),
(891, 'Victoria, BC OS', 1),
(892, 'Vienna, AUSTRIA', 1),
(893, 'Walhalla, ND', 1),
(894, 'Warroad, MN', 1),
(895, 'Warroad, MN (BP SUBSTATION)</option>', 1),
(896, 'Washington, DC', 1),
(897, 'Watertown Intl', 1),
(898, 'Watertown, NY BP', 1),
(899, 'Wellsley Island, NY BP', 1),
(900, 'Welton, AZ BP', 1),
(901, 'Wenatchee, WA BP', 1),
(902, 'Weslaco, TX    BP', 1),
(903, 'West Berkshire, VT', 1),
(904, 'West Palm Beach, FL', 1),
(905, 'West Palm Beach, FL BP', 1),
(906, 'West Sussex', 1),
(907, 'Westchester County', 1),
(908, 'Westhope, ND', 1),
(909, 'Westminster, CA', 1),
(910, 'Whirlpool Brdg', 1),
(912, 'Whitefish, MT BP', 1),
(913, 'Whitelash, MT BP', 1),
(914, 'Whitetail, MT', 1),
(915, 'Wichita Mid Continent', 1),
(916, 'Wichita, KANSAS', 1),
(917, 'Wild Horse, MT', 1),
(918, 'Wilkes Barre Scranton', 1),
(919, 'Willcox, AZ BP', 1),
(920, 'Williamsburg Newport', 1),
(921, 'Williston, ND', 1),
(922, 'Willow Creek, MT', 1),
(923, 'Willow Run Airport', 1),
(924, 'Wilmington Intl', 1),
(925, 'Wilmington, DE BP', 1),
(926, 'Wilmington, NC', 1),
(927, 'Winnepeg, MANITOBA OS', 1),
(928, 'Wrangell', 1),
(929, 'Wrangell, AK', 1),
(930, 'Yakima, WA', 1),
(931, 'Yeager Airprt', 1),
(932, 'Youngstown, NY', 1),
(933, 'Ysleta, TEXAS', 1),
(934, 'Yuma Intl', 1),
(935, 'Yuma, AZ', 1),
(937, 'Yuma, AZ BP', 1),
(938, 'Zapata, TX BP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_preparerinformation`
--

CREATE TABLE `master_preparerinformation` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `information_available` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_preparerinformation`
--

INSERT INTO `master_preparerinformation` (`id`, `title`, `information_available`, `is_active`) VALUES
(1, 'I am the applicant, and I prepared this application', 0, 1),
(2, 'I am not an attorney or accredited representative but have prepared this application on behalf of the appllcant and with the appllcant\'s consent', 1, 1),
(3, 'I am an attorney or accredited representative of the applicant that prepared this application.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_race`
--

CREATE TABLE `master_race` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_race`
--

INSERT INTO `master_race` (`id`, `title`, `is_active`) VALUES
(1, 'white', 1),
(2, 'Asian', 1),
(3, 'Black or African American', 1),
(4, 'American Indian or Ajaska Nativ', 1),
(5, 'Native Hawallan or Other Pacific Islander', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_state`
--

CREATE TABLE `master_state` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_state`
--

INSERT INTO `master_state` (`id`, `title`, `is_active`, `country_id`) VALUES
(1, 'Alabama', 1, NULL),
(2, 'Alaska ', 1, NULL),
(3, 'American Samoa', 1, NULL),
(4, 'Arizona', 1, NULL),
(5, 'Arkansas', 1, NULL),
(6, 'Armed Forces Africa, Canada, Europe, Middle East', 1, NULL),
(7, 'Armed Forces Americas (except Canada)', 1, NULL),
(8, 'Armed Forces Pacific  ', 1, NULL),
(9, 'California    ', 1, NULL),
(10, 'Colorado         ', 1, NULL),
(11, 'Connecticut         ', 1, NULL),
(12, 'Delaware         ', 1, NULL),
(13, 'District of Columbia      ', 1, NULL),
(14, 'Federated States Of Micronesia    ', 1, NULL),
(15, 'Florida        ', 1, NULL),
(16, 'Georgia         ', 1, NULL),
(17, 'Guam         ', 1, NULL),
(18, 'Hawaii         ', 1, NULL),
(19, 'Idaho         ', 1, NULL),
(20, 'Illinois         ', 1, NULL),
(21, 'Indiana         ', 1, NULL),
(22, 'Iowa         ', 1, NULL),
(23, 'Kansas         ', 1, NULL),
(24, 'Kentucky         ', 1, NULL),
(25, 'Louisiana         ', 1, NULL),
(26, 'Maine         ', 1, NULL),
(27, 'Marshall Islands         ', 1, NULL),
(28, 'Maryland         ', 1, NULL),
(29, 'Massachusetts         ', 1, NULL),
(30, 'Michigan        ', 1, NULL),
(31, 'Minnesota         ', 1, NULL),
(32, 'Mississippi         ', 1, NULL),
(33, 'Missouri         ', 1, NULL),
(34, 'Montana         ', 1, NULL),
(35, 'Nebraska         ', 1, NULL),
(36, 'Nevada         ', 1, NULL),
(37, 'New Hampshire         ', 1, NULL),
(38, 'New Jersey         ', 1, NULL),
(39, 'New Mexico         ', 1, NULL),
(40, 'New York        ', 1, NULL),
(41, 'North Carolina        ', 1, NULL),
(42, 'North Dakota         ', 1, NULL),
(43, 'Ohio         ', 1, NULL),
(44, 'Oklahoma         ', 1, NULL),
(45, 'Oregon         ', 1, NULL),
(46, 'Palau         ', 1, NULL),
(47, 'Pennsylvania         ', 1, NULL),
(48, 'Puerto Rico         ', 1, NULL),
(49, 'Rhode Island         ', 1, NULL),
(50, 'South Carolina         ', 1, NULL),
(51, 'South Dakota         ', 1, NULL),
(52, 'Tennessee         ', 1, NULL),
(53, 'Texas         ', 1, NULL),
(54, 'Utah         ', 1, NULL),
(55, 'Vermont         ', 1, NULL),
(56, 'Virgin Islands         ', 1, NULL),
(57, 'Virginia         ', 1, NULL),
(58, 'Washington         ', 1, NULL),
(59, 'West Virginia         ', 1, NULL),
(60, 'Wisconsin         ', 1, NULL),
(61, 'Wyoming         ', 1, NULL),
(62, 'Unknown', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_uscisadjustmentstatus`
--

CREATE TABLE `master_uscisadjustmentstatus` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `is_other` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_uscisadjustmentstatus`
--

INSERT INTO `master_uscisadjustmentstatus` (`id`, `title`, `is_other`, `is_active`) VALUES
(4, 'CSC - California Service Center', 0, 1),
(5, 'EAC - Vermont Service Center', 0, 1),
(6, 'IOE - USCIS ELIS (e-file)', 0, 1),
(7, 'LIN - Nebraska Service Center', 0, 1),
(8, 'MSC - Missouri Service Center', 0, 1),
(9, 'NBC - National Benefits Center', 0, 1),
(10, 'NSC - Nebraska Service Center', 0, 1),
(11, 'Other', 1, 1),
(12, 'SRC - Texas Service Center', 0, 1),
(13, 'TSC - Texas Service Center', 0, 1),
(14, 'Unknown', 0, 1),
(15, 'VSC - Vermont Service Center', 0, 1),
(16, 'WAC - California Service Center', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_agent`
--
ALTER TABLE `agent_agent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agent_agent_user_id_bfcb5c50_uniq` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `customer_applicantinformation`
--
ALTER TABLE `customer_applicantinformation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD KEY `customer_applicantin_intepreter_appartmen_c40f9f88_fk_master_ap` (`intepreter_appartment_id`),
  ADD KEY `customer_applicantin_intepreter_country_i_d06009a2_fk_master_co` (`intepreter_country_id`),
  ADD KEY `customer_applicantin_intepreter_state_id_b57c35a5_fk_master_st` (`intepreter_state_id`),
  ADD KEY `customer_applicantin_preparer_country_id_46475383_fk_master_co` (`preparer_country_id`),
  ADD KEY `customer_applicantin_preparer_state_id_a9da7490_fk_master_st` (`preparer_state_id`),
  ADD KEY `customer_applicantin_preparer_status_id_67b4d985_fk_master_pr` (`preparer_status_id`),
  ADD KEY `customer_applicantin_preparer_appartment__61e89033_fk_master_ap` (`preparer_appartment_id`);

--
-- Indexes for table `customer_applicantinformation_explanation`
--
ALTER TABLE `customer_applicantinformation_explanation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_applicantinform_applicantinformation_id__19f41263_uniq` (`applicantinformation_id`,`applicableboxes_id`),
  ADD KEY `customer_applicantin_applicableboxes_id_f1466570_fk_master_ap` (`applicableboxes_id`);

--
-- Indexes for table `customer_applicationform`
--
ALTER TABLE `customer_applicationform`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD KEY `customer_application_category_id_0d6e636b_fk_master_ha` (`category_id`);

--
-- Indexes for table `customer_becomepermanentresident`
--
ALTER TABLE `customer_becomepermanentresident`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD KEY `customer_permanentre_adjustment_apply_sta_1c1fd126_fk_master_us` (`adjustment_apply_status_id`),
  ADD KEY `customer_permanentre_adjustment_granted_s_ef5e4764_fk_master_us` (`adjustment_granted_status_id`),
  ADD KEY `customer_permanentre_consula_state_id_7eac5a51_fk_master_st` (`consula_state_id`),
  ADD KEY `customer_permanentre_consular_port_of_ent_5fa84b10_fk_master_po` (`consular_port_of_entry_id`),
  ADD KEY `customer_permanentre_status_id_57e61dab_fk_master_pe` (`status_id`);

--
-- Indexes for table `customer_biographicinformation`
--
ALTER TABLE `customer_biographicinformation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD KEY `customer_biographici_ethnicity_id_da623265_fk_master_et` (`ethnicity_id`),
  ADD KEY `customer_biographici_eye_color_id_70e45574_fk_master_ey` (`eye_color_id`),
  ADD KEY `customer_biographici_hair_color_id_84eeab77_fk_master_ha` (`hair_color_id`);

--
-- Indexes for table `customer_biographicinformation_race`
--
ALTER TABLE `customer_biographicinformation_race`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_biographicinfor_biographicinformation_id_4a6b0e1a_uniq` (`biographicinformation_id`,`race_id`),
  ADD KEY `customer_biographici_race_id_33bd71da_fk_master_ra` (`race_id`);

--
-- Indexes for table `customer_birthinformation`
--
ALTER TABLE `customer_birthinformation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer_customer`
--
ALTER TABLE `customer_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_customer_user_id_549f4343_uniq` (`user_id`);

--
-- Indexes for table `customer_eligibility`
--
ALTER TABLE `customer_eligibility`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD KEY `customer_eligibility_immigration_section__7b5e0973_fk_master_im` (`immigration_section_id`),
  ADD KEY `customer_eligibility_immigration_status_i_2e451edd_fk_master_im` (`immigration_status_id`);

--
-- Indexes for table `customer_mailingaddress`
--
ALTER TABLE `customer_mailingaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD KEY `customer_mailingaddr_appartment_id_397ea056_fk_master_ap` (`appartment_id`),
  ADD KEY `customer_mailingaddress_country_id_bc95e411_fk_master_country_id` (`country_id`),
  ADD KEY `customer_mailingaddress_state_id_b37a652e_fk_master_state_id` (`state_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_order_customer_id_05fff94c_uniq` (`customer_id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `customer_order_agent_id_d988bfaf_fk_agent_agent_id` (`agent_id`);

--
-- Indexes for table `customer_personeldetails`
--
ALTER TABLE `customer_personeldetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD KEY `customer_personeldet_appartment_id_b229d540_fk_master_ap` (`appartment_id`),
  ADD KEY `customer_personeldet_country_id_1fe63ceb_fk_master_co` (`country_id`),
  ADD KEY `customer_personeldetails_state_id_fd165b25_fk_master_state_id` (`state_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `master_appartmenttype`
--
ALTER TABLE `master_appartmenttype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `master_applicableboxes`
--
ALTER TABLE `master_applicableboxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`) USING HASH;

--
-- Indexes for table `master_applicationcategory`
--
ALTER TABLE `master_applicationcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `master_country`
--
ALTER TABLE `master_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `master_ethnicity`
--
ALTER TABLE `master_ethnicity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `master_eyecolor`
--
ALTER TABLE `master_eyecolor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `master_haircolor`
--
ALTER TABLE `master_haircolor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_immigrationsection`
--
ALTER TABLE `master_immigrationsection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_immigrationse_immigrationstatus_id_9b58aa14_fk_master_im` (`immigrationstatus_id`);

--
-- Indexes for table `master_immigrationstatus`
--
ALTER TABLE `master_immigrationstatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `master_permanentresident`
--
ALTER TABLE `master_permanentresident`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`) USING HASH;

--
-- Indexes for table `master_portofentry`
--
ALTER TABLE `master_portofentry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `master_preparerinformation`
--
ALTER TABLE `master_preparerinformation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`) USING HASH;

--
-- Indexes for table `master_race`
--
ALTER TABLE `master_race`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `master_state`
--
ALTER TABLE `master_state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_state_country_id_ee90e649_fk_master_country_id` (`country_id`);

--
-- Indexes for table `master_uscisadjustmentstatus`
--
ALTER TABLE `master_uscisadjustmentstatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_agent`
--
ALTER TABLE `agent_agent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_applicantinformation`
--
ALTER TABLE `customer_applicantinformation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_applicantinformation_explanation`
--
ALTER TABLE `customer_applicantinformation_explanation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_applicationform`
--
ALTER TABLE `customer_applicationform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_becomepermanentresident`
--
ALTER TABLE `customer_becomepermanentresident`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_biographicinformation`
--
ALTER TABLE `customer_biographicinformation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_biographicinformation_race`
--
ALTER TABLE `customer_biographicinformation_race`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customer_birthinformation`
--
ALTER TABLE `customer_birthinformation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_customer`
--
ALTER TABLE `customer_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_eligibility`
--
ALTER TABLE `customer_eligibility`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer_mailingaddress`
--
ALTER TABLE `customer_mailingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_personeldetails`
--
ALTER TABLE `customer_personeldetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `master_appartmenttype`
--
ALTER TABLE `master_appartmenttype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_applicableboxes`
--
ALTER TABLE `master_applicableboxes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_applicationcategory`
--
ALTER TABLE `master_applicationcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `master_country`
--
ALTER TABLE `master_country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_ethnicity`
--
ALTER TABLE `master_ethnicity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_eyecolor`
--
ALTER TABLE `master_eyecolor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_haircolor`
--
ALTER TABLE `master_haircolor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `master_immigrationsection`
--
ALTER TABLE `master_immigrationsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `master_immigrationstatus`
--
ALTER TABLE `master_immigrationstatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_permanentresident`
--
ALTER TABLE `master_permanentresident`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_portofentry`
--
ALTER TABLE `master_portofentry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=939;

--
-- AUTO_INCREMENT for table `master_preparerinformation`
--
ALTER TABLE `master_preparerinformation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_race`
--
ALTER TABLE `master_race`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_state`
--
ALTER TABLE `master_state`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `master_uscisadjustmentstatus`
--
ALTER TABLE `master_uscisadjustmentstatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent_agent`
--
ALTER TABLE `agent_agent`
  ADD CONSTRAINT `agent_agent_user_id_bfcb5c50_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `customer_applicantinformation`
--
ALTER TABLE `customer_applicantinformation`
  ADD CONSTRAINT `customer_applicantin_customer_id_65ef058d_fk_customer_` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`),
  ADD CONSTRAINT `customer_applicantin_intepreter_appartmen_c40f9f88_fk_master_ap` FOREIGN KEY (`intepreter_appartment_id`) REFERENCES `master_appartmenttype` (`id`),
  ADD CONSTRAINT `customer_applicantin_intepreter_country_i_d06009a2_fk_master_co` FOREIGN KEY (`intepreter_country_id`) REFERENCES `master_country` (`id`),
  ADD CONSTRAINT `customer_applicantin_intepreter_state_id_b57c35a5_fk_master_st` FOREIGN KEY (`intepreter_state_id`) REFERENCES `master_state` (`id`),
  ADD CONSTRAINT `customer_applicantin_preparer_appartment__61e89033_fk_master_ap` FOREIGN KEY (`preparer_appartment_id`) REFERENCES `master_appartmenttype` (`id`),
  ADD CONSTRAINT `customer_applicantin_preparer_country_id_46475383_fk_master_co` FOREIGN KEY (`preparer_country_id`) REFERENCES `master_country` (`id`),
  ADD CONSTRAINT `customer_applicantin_preparer_state_id_a9da7490_fk_master_st` FOREIGN KEY (`preparer_state_id`) REFERENCES `master_state` (`id`),
  ADD CONSTRAINT `customer_applicantin_preparer_status_id_67b4d985_fk_master_pr` FOREIGN KEY (`preparer_status_id`) REFERENCES `master_preparerinformation` (`id`);

--
-- Constraints for table `customer_applicantinformation_explanation`
--
ALTER TABLE `customer_applicantinformation_explanation`
  ADD CONSTRAINT `customer_applicantin_applicableboxes_id_f1466570_fk_master_ap` FOREIGN KEY (`applicableboxes_id`) REFERENCES `master_applicableboxes` (`id`),
  ADD CONSTRAINT `customer_applicantin_applicantinformation_ba0101ca_fk_customer_` FOREIGN KEY (`applicantinformation_id`) REFERENCES `customer_applicantinformation` (`id`);

--
-- Constraints for table `customer_applicationform`
--
ALTER TABLE `customer_applicationform`
  ADD CONSTRAINT `customer_application_category_id_0d6e636b_fk_master_ha` FOREIGN KEY (`category_id`) REFERENCES `master_haircolor` (`id`),
  ADD CONSTRAINT `customer_application_customer_id_6f817320_fk_customer_` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`);

--
-- Constraints for table `customer_becomepermanentresident`
--
ALTER TABLE `customer_becomepermanentresident`
  ADD CONSTRAINT `customer_permanentre_adjustment_apply_sta_1c1fd126_fk_master_us` FOREIGN KEY (`adjustment_apply_status_id`) REFERENCES `master_uscisadjustmentstatus` (`id`),
  ADD CONSTRAINT `customer_permanentre_adjustment_granted_s_ef5e4764_fk_master_us` FOREIGN KEY (`adjustment_granted_status_id`) REFERENCES `master_uscisadjustmentstatus` (`id`),
  ADD CONSTRAINT `customer_permanentre_consula_state_id_7eac5a51_fk_master_st` FOREIGN KEY (`consula_state_id`) REFERENCES `master_state` (`id`),
  ADD CONSTRAINT `customer_permanentre_consular_port_of_ent_5fa84b10_fk_master_po` FOREIGN KEY (`consular_port_of_entry_id`) REFERENCES `master_portofentry` (`id`),
  ADD CONSTRAINT `customer_permanentre_customer_id_0dbeaf10_fk_customer_` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`),
  ADD CONSTRAINT `customer_permanentre_status_id_57e61dab_fk_master_pe` FOREIGN KEY (`status_id`) REFERENCES `master_permanentresident` (`id`);

--
-- Constraints for table `customer_biographicinformation`
--
ALTER TABLE `customer_biographicinformation`
  ADD CONSTRAINT `customer_biographici_customer_id_a3a88d86_fk_customer_` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`),
  ADD CONSTRAINT `customer_biographici_ethnicity_id_da623265_fk_master_et` FOREIGN KEY (`ethnicity_id`) REFERENCES `master_ethnicity` (`id`),
  ADD CONSTRAINT `customer_biographici_eye_color_id_70e45574_fk_master_ey` FOREIGN KEY (`eye_color_id`) REFERENCES `master_eyecolor` (`id`),
  ADD CONSTRAINT `customer_biographici_hair_color_id_84eeab77_fk_master_ha` FOREIGN KEY (`hair_color_id`) REFERENCES `master_haircolor` (`id`);

--
-- Constraints for table `customer_biographicinformation_race`
--
ALTER TABLE `customer_biographicinformation_race`
  ADD CONSTRAINT `customer_biographici_biographicinformatio_9666868a_fk_customer_` FOREIGN KEY (`biographicinformation_id`) REFERENCES `customer_biographicinformation` (`id`),
  ADD CONSTRAINT `customer_biographici_race_id_33bd71da_fk_master_ra` FOREIGN KEY (`race_id`) REFERENCES `master_race` (`id`);

--
-- Constraints for table `customer_birthinformation`
--
ALTER TABLE `customer_birthinformation`
  ADD CONSTRAINT `customer_birthinform_customer_id_538a0215_fk_customer_` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`);

--
-- Constraints for table `customer_customer`
--
ALTER TABLE `customer_customer`
  ADD CONSTRAINT `customer_customer_user_id_549f4343_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `customer_eligibility`
--
ALTER TABLE `customer_eligibility`
  ADD CONSTRAINT `customer_eligibility_customer_id_e88b5e76_fk_customer_` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`),
  ADD CONSTRAINT `customer_eligibility_immigration_section__7b5e0973_fk_master_im` FOREIGN KEY (`immigration_section_id`) REFERENCES `master_immigrationsection` (`id`),
  ADD CONSTRAINT `customer_eligibility_immigration_status_i_2e451edd_fk_master_im` FOREIGN KEY (`immigration_status_id`) REFERENCES `master_immigrationstatus` (`id`);

--
-- Constraints for table `customer_mailingaddress`
--
ALTER TABLE `customer_mailingaddress`
  ADD CONSTRAINT `customer_mailingaddr_appartment_id_397ea056_fk_master_ap` FOREIGN KEY (`appartment_id`) REFERENCES `master_appartmenttype` (`id`),
  ADD CONSTRAINT `customer_mailingaddr_customer_id_b293c5a5_fk_customer_` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`),
  ADD CONSTRAINT `customer_mailingaddress_country_id_bc95e411_fk_master_country_id` FOREIGN KEY (`country_id`) REFERENCES `master_country` (`id`),
  ADD CONSTRAINT `customer_mailingaddress_state_id_b37a652e_fk_master_state_id` FOREIGN KEY (`state_id`) REFERENCES `master_state` (`id`);

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_agent_id_d988bfaf_fk_agent_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `agent_agent` (`id`),
  ADD CONSTRAINT `customer_order_customer_id_05fff94c_fk_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`);

--
-- Constraints for table `customer_personeldetails`
--
ALTER TABLE `customer_personeldetails`
  ADD CONSTRAINT `customer_personeldet_appartment_id_b229d540_fk_master_ap` FOREIGN KEY (`appartment_id`) REFERENCES `master_appartmenttype` (`id`),
  ADD CONSTRAINT `customer_personeldet_country_id_1fe63ceb_fk_master_co` FOREIGN KEY (`country_id`) REFERENCES `master_country` (`id`),
  ADD CONSTRAINT `customer_personeldet_customer_id_53b62e99_fk_customer_` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`),
  ADD CONSTRAINT `customer_personeldetails_state_id_fd165b25_fk_master_state_id` FOREIGN KEY (`state_id`) REFERENCES `master_state` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `master_immigrationsection`
--
ALTER TABLE `master_immigrationsection`
  ADD CONSTRAINT `master_immigrationse_immigrationstatus_id_9b58aa14_fk_master_im` FOREIGN KEY (`immigrationstatus_id`) REFERENCES `master_immigrationstatus` (`id`);

--
-- Constraints for table `master_state`
--
ALTER TABLE `master_state`
  ADD CONSTRAINT `master_state_country_id_ee90e649_fk_master_country_id` FOREIGN KEY (`country_id`) REFERENCES `master_country` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
