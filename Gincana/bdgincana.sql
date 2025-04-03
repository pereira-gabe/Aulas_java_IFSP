-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/08/2024 às 16:45
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
-- Banco de dados: `bdgincana`
--
CREATE DATABASE IF NOT EXISTS `bdgincana` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdgincana`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbequipes`
--

CREATE TABLE `tbequipes` (
  `id` int(3) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbequipes`
--

INSERT INTO `tbequipes` (`id`, `nome`, `descricao`) VALUES
(1, 'Equipe Azul', 'Tematica anos 60 ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbmembros_equipe`
--

CREATE TABLE `tbmembros_equipe` (
  `id` int(3) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` int(3) NOT NULL,
  `funcao` varchar(50) NOT NULL,
  `codEquipe` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbmembros_equipe`
--

INSERT INTO `tbmembros_equipe` (`id`, `nome`, `idade`, `funcao`, `codEquipe`) VALUES
(1, 'Hadrian', 19, 'Guitarrista', 1),
(2, 'carlinhos', 62, 'cuidador de cavalos', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbequipes`
--
ALTER TABLE `tbequipes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tbmembros_equipe`
--
ALTER TABLE `tbmembros_equipe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_codEquipe_IDEquipe` (`codEquipe`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbequipes`
--
ALTER TABLE `tbequipes`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tbmembros_equipe`
--
ALTER TABLE `tbmembros_equipe`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbmembros_equipe`
--
ALTER TABLE `tbmembros_equipe`
  ADD CONSTRAINT `fk_codEquipe_IDEquipe` FOREIGN KEY (`codEquipe`) REFERENCES `tbequipes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
