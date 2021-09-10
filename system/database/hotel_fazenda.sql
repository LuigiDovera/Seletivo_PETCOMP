-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel_fazenda
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (1,'Daniel','daniel.pinto@acad.ifma.edu.br','827ccb0eea8a706c4c34a16891f84e7b'),(3,'adm','adm@adm.com','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardapio_itens`
--

DROP TABLE IF EXISTS `cardapio_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardapio_itens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardapio_itens`
--

LOCK TABLES `cardapio_itens` WRITE;
/*!40000 ALTER TABLE `cardapio_itens` DISABLE KEYS */;
INSERT INTO `cardapio_itens` VALUES (5,'Almoço',20.00),(6,'Café da Manhã',20.00),(7,'Jantar',20.00),(9,'Suco - Acerola, Maracujá, Limão, Manga, Caju, Bacuri, Abacaxi, Goiaba, Morango, Laranja (SQ)',2.50),(10,'Bolo de Chocolate - Fatia (SQ)',6.00),(11,'Hambúrguer (SQ)',12.40),(12,'Risoto de Camarão',18.00),(13,'Pizza Carteirinha (SQ)',12.00),(14,'Lasanha',18.00),(15,'Salada de Legumes',12.50);
/*!40000 ALTER TABLE `cardapio_itens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lazer`
--

DROP TABLE IF EXISTS `lazer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lazer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lazer`
--

LOCK TABLES `lazer` WRITE;
/*!40000 ALTER TABLE `lazer` DISABLE KEYS */;
INSERT INTO `lazer` VALUES (1,'Banho no lago','Um refrescante banho no límpido lago do hotel. Diversão com segurança.'),(2,'Passeio a cavalo','Atividade de montaria guiada por instrutores. Há a disponibilidade de pôneis para crianças.'),(3,'Passeio de charrete','Passeie em uma das charretes do hotel para um momento romântico com sua cara-metade ou um divertido momento em família.'),(4,'Mountain Bike','Adrenalina pura na nossa pista de mountain bike profissional.\r\nBikes podem ser alugadas no hotel.');
/*!40000 ALTER TABLE `lazer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-21 11:50:20
