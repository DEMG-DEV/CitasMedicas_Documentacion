CREATE DATABASE  IF NOT EXISTS `citas_medicas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `citas_medicas`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: citas_medicas
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `idCita` int(11) NOT NULL AUTO_INCREMENT,
  `idPaciente` int(11) DEFAULT NULL,
  `fechaCita` varchar(45) DEFAULT NULL,
  `horaCita` varchar(45) DEFAULT NULL,
  `consultorioCita` varchar(45) DEFAULT NULL,
  `hospitalCita` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePaciente` varchar(100) DEFAULT NULL,
  `apePaternoPaciente` varchar(100) DEFAULT NULL,
  `apeMaternoPaciente` varchar(100) DEFAULT NULL,
  `fechaNacPaciente` varchar(45) DEFAULT NULL,
  `domicilioPaciente` varchar(250) DEFAULT NULL,
  `telefonoPaciente` varchar(45) DEFAULT NULL,
  `emailPaciente` varchar(45) DEFAULT NULL,
  `estaturaPaciente` double DEFAULT NULL,
  `pesoPaciente` double DEFAULT NULL,
  `padCronPaciente` varchar(500) DEFAULT NULL,
  `alergiasPaciente` varchar(500) DEFAULT NULL,
  `otraInfoPaciente` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte_medico`
--

DROP TABLE IF EXISTS `reporte_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporte_medico` (
  `idReporte` int(11) NOT NULL AUTO_INCREMENT,
  `idCita` int(11) DEFAULT NULL,
  `idPaciente` int(11) DEFAULT NULL,
  `padecimiento` varchar(500) DEFAULT NULL,
  `diagnostico` varchar(500) DEFAULT NULL,
  `tratamiento` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idReporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte_medico`
--

LOCK TABLES `reporte_medico` WRITE;
/*!40000 ALTER TABLE `reporte_medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporte_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `tipoUsuario` varchar(100) DEFAULT NULL,
  `nombreUsuario` varchar(200) DEFAULT NULL,
  `nickUsuario` varchar(45) DEFAULT NULL,
  `passUsuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'citas_medicas'
--

--
-- Dumping routines for database 'citas_medicas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-21 13:44:57
