-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: labs-mysql-damaged-purring-tent:3306
-- Generation Time: Apr 25, 2025 at 01:19 PM
-- Server version: 8.0.37
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical_info_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL_DEPARTMENTS`
--

CREATE TABLE `MEDICAL_DEPARTMENTS` (
  `DEPT_ID` char(4) NOT NULL,
  `DEPT_NAME` varchar(100) NOT NULL,
  `MANAGER_ID` varchar(60) DEFAULT NULL,
  `LOCATION_ID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL_HISTORY`
--

CREATE TABLE `MEDICAL_HISTORY` (
  `MEDICAL_HISTORY_ID` char(5) NOT NULL,
  `PATIENT_ID` char(4) NOT NULL,
  `DIAGNOSIS_DATE` date NOT NULL,
  `DIAGNOSIS_CODE` decimal(5,2) NOT NULL,
  `MEDICAL_CONDITION` varchar(100) NOT NULL,
  `DEPT_ID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL_LOCATIONS`
--

CREATE TABLE `MEDICAL_LOCATIONS` (
  `DEPT_ID` char(4) NOT NULL,
  `DEPT_NAME` char(4) NOT NULL,
  `MANAGER_ID` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MEDICAL_PROCEDURES`
--

CREATE TABLE `MEDICAL_PROCEDURES` (
  `PROCEDURE_ID` char(5) NOT NULL,
  `PROCEDURE_NAME` varchar(100) NOT NULL,
  `PROCEDURE_DATE` date NOT NULL,
  `PATIENT_ID` char(4) DEFAULT NULL,
  `DEPT_ID` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PATIENTS`
--

CREATE TABLE `PATIENTS` (
  `PATIENT_ID` char(4) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `SSN` char(9) NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `SEX` char(1) DEFAULT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `DEPT_ID` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
