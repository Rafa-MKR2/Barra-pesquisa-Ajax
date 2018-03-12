-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 12/03/2018 às 04:12
-- Versão do servidor: 10.1.28-MariaDB
-- Versão do PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clientes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `quantidade` int(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `codigo` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `modelo`, `quantidade`, `preco`, `codigo`) VALUES
(1, 'Tablet', 'Asus', 32, '200', 32456),
(2, 'notebook', 'vaio', 40, '1500', 56421),
(3, 'celular', 'moto', 20, '900', 4398975),
(4, 'tablet', 'sony', 10, '400', 7865),
(5, 'celular', 'nokia', 20, '300', 973),
(6, 'celular', 'galaxy', 11, '400', 83764),
(7, 'celular', 'galaxy', 22, '200', 2635),
(8, 'celula', 'galaxy', 40, '150', 9871),
(9, 'notebook', 'dell', 5, '1600', 671098);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
