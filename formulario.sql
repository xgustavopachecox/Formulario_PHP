-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/07/2024 às 17:39
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `formulario`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `idLead` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `datalog` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`idLead`, `nome`, `datanascimento`, `email`, `senha`, `whatsapp`, `datalog`) VALUES
(24, 'rodriguinho', '2002-12-12', 'slaqm@gmail.com', 'fgdsfs432', '', '2024-07-24 12:14:45'),
(25, 'rodriguinho', '2002-12-12', 'slaqdsm@gmail.com', 'fgdsfs432', '', '2024-07-24 12:19:38'),
(26, 'rodriguinho', '2002-12-12', 'slaqdsdsam@gmail.com', 'fgdsfs432', '', '2024-07-24 12:20:12'),
(27, 'rodriguinho', '2002-12-12', 'slaqdsdsamfsafsa@gmail.com', 'fgdsfs432', '', '2024-07-24 12:21:28'),
(28, 'rodriguinho', '2002-12-12', 'slasafsa@gmail.com', 'fgdsfs432', '', '2024-07-24 12:23:28'),
(29, 'rodriguinho', '2002-12-12', 'slasaffsafsasa@gmail.com', 'fgdsfs432', '', '2024-07-24 12:24:07'),
(30, 'rodriguinho', '2002-12-12', 'slasaffsafdsasasa@gmail.com', 'fgdsfs432', '', '2024-07-24 12:25:31'),
(31, 'rodriguinho', '2002-12-12', 'slasaffsafdsdsaasasa@gmail.com', 'fgdsfs432', '', '2024-07-24 12:27:00'),
(32, 'rodriguinho', '2002-12-12', 'slasaffsafdsdsadsaasasa@gmail.com', 'fgdsfs432', '', '2024-07-24 12:30:39'),
(33, 'rodriguinho', '2002-12-12', 'slasaffsafdsdsafdsaasasa@gmail.com', 'fgdsfs432', '', '2024-07-24 12:31:13'),
(34, 'rodriguinho', '2002-12-12', 'slasaffsafdsdsafdsaassasa@gmail.com', 'fgdsfs432', '', '2024-07-24 12:34:39');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`idLead`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `idLead` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
