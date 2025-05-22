-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Maio-2025 às 16:06
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
-- Estrutura da tabela `itens`
--

CREATE TABLE `itens` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itens`
--

INSERT INTO `itens` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`, `unidade_medida`) VALUES
(1, 'Sabão em pó', '20.99', 2, 'OMO', 1, 'Kg'),
(2, 'Detergente', '2.83', 500, 'Ypê', 1, 'ml'),
(3, 'Esponja multiuso', '14.09', 10, 'Scotch Brite', 1, 'un'),
(4, 'Água sanitária', '9.96', 5, 'Ypê', 1, 'l'),
(5, 'Limpador Sanitário Gel', '16.56', 750, 'Pato', 1, 'ml'),
(6, 'Sabonete Líquido', '20.79', 650, 'Protex', 2, 'ml'),
(7, 'Shampoo', '203.00', 250, 'Kérastase', 2, 'ml'),
(8, 'Condicionador', '27.49', 650, 'TRESemmé', 2, 'ml'),
(9, 'Lâmina de barbear', '32.00', 8, 'Gillette', 2, 'un'),
(10, 'Creme Depilatório', '55.39', 150, 'Veet', 2, 'g'),
(11, 'Manteiga', '25.49', 500, 'Tirol', 3, 'g'),
(12, 'Leite Integral', '4.99', 1, 'Parmalat', 3, 'l'),
(13, 'Queijo Mussarela Fatiado', '33.99', 400, 'Ipanema', 3, 'g'),
(14, 'Iorgute Integral Natural', '3.79', 170, 'Nestlé', 3, 'g'),
(15, 'Iogurte Morango', '3.49', 170, 'Danone', 3, 'g'),
(16, 'Picanha Nobre', '109.98', 1, 'Swift', 4, 'Kg'),
(17, 'Linguiça Toscana', '14.95', 1, 'Sadia', 4, 'Kg'),
(18, 'Peito de Frango', '13.99', 1, 'Lar', 4, 'Kg'),
(19, 'Cupim Bovino', '39.90', 1, 'Swift', 4, 'Kg'),
(20, 'Barriga Suína', '11.25', 1, 'Coop', 4, 'Kg'),
(21, 'Ameixa em Calda', '17.49', 150, 'Oderich', 5, 'g'),
(22, 'Feijoada Pronta', '23.99', 830, 'Oderich', 5, 'g'),
(23, 'Carne Bovina em Conserva', '8.99', 320, 'Anglo', 5, 'g'),
(24, 'Milho Crocante Cozido ao Vapor', '2.49', 170, 'Fugini', 5, 'g'),
(25, 'Atum em Pedaços ao Óleo', '11.87', 170, 'Gomes da Costa', 5, 'g'),
(26, 'Tomate', '10.98', 1, 'FRESH', 7, 'Kg'),
(27, 'Abacaxi', '9.95', 1, 'FRESH', 7, 'Kg'),
(28, 'Maçã', '11.98', 1, 'FRESH', 7, 'Kg'),
(29, 'Pera', '21.98', 1, 'FRESH', 7, 'Kg'),
(30, 'Abacate', '3.64', 1, 'FRESH', 7, 'Kg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `itens`
--
ALTER TABLE `itens`
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
-- AUTO_INCREMENT de tabela `itens`
--
ALTER TABLE `itens`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `itens`
--
ALTER TABLE `itens`
  ADD CONSTRAINT `itens_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
