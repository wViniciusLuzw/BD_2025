-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Maio-2025 às 17:44
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--
CREATE DATABASE IF NOT EXISTS `etecmcm2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'Limpeza'),
(2, 'Higiene'),
(3, 'Laticínios'),
(4, 'Frios'),
(5, 'Enlatados'),
(7, 'Hortifruti');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`) VALUES
(1, 'Sabão em pó', '30.50', 50, 'OMO', 1),
(2, 'Detergente', '3.55', 10, 'Ypê', 1),
(3, 'Esponja multiuso', '14.09', 10, 'Scotch Brite', 1),
(4, 'Água sanitária', '11.39', 1, 'Ypê', 1),
(5, 'Limpador Sanitário Gel', '17.99', 1, 'Pato', 1),
(6, 'Sabonete Líquido', '39.90', 3, 'Protex', 2),
(7, 'Shampoo', '44.00', 1, 'Kérastase', 2),
(8, 'Condicionador', '28.99', 1, 'TRESemmé', 2),
(9, 'Lâmina de barbear', '42.59', 8, 'Gillette', 2),
(10, 'Creme Depilatório', '37.69', 3, 'Veet', 2),
(11, 'Manteiga', '21.49', 1, 'Tirol', 3),
(12, 'Leite', '79.90', 12, 'Tirol', 3),
(13, 'Queijo Mussarela', '29.99', 1, 'Ipanema', 3),
(14, 'Iogurte Natural', '3.79', 1, 'Nestlé', 3),
(15, 'Iogurte Morango', '3.49', 1, 'Danone', 3),
(16, 'Picanha Nobre', '109.98', 1, 'Swift', 4),
(17, 'Linguiça Toscana', '14.95', 1, 'Sadia', 4),
(18, 'Peito de Frango', '13.99', 1, 'Lar', 4),
(19, 'Cupim Bovino', '39.90', 1, 'Swift', 4),
(20, 'Barriga Suína', '11.25', 1, 'Coop', 4),
(21, 'Ameixa em Calda', '7.69', 1, 'Oderich', 5),
(22, 'Feijoada Lata', '10.69', 1, 'Oderich', 5),
(23, 'Carne Bovina em Conserva', '12.95', 1, 'Anglo', 5),
(24, 'Milho ao Vapor', '14.50', 1, 'Bonduelle', 5),
(25, 'Atum em Pedaços', '10.79', 1, 'Gomes da Costa', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
