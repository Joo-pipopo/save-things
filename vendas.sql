-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Nov-2021 às 15:36
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vendas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `cod_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(30) DEFAULT NULL,
  `cod_est_civ` int(11) DEFAULT NULL,
  `salario` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`cod_cliente`, `nome_cliente`, `cod_est_civ`, `salario`) VALUES
(1, 'Joao Paulo', 1, 1500),
(2, 'Daniel ', 2, 4000),
(3, 'Leandro', 3, 3500),
(4, 'Leonardo', 1, 10500),
(5, 'Rick', 1, 1000),
(6, 'Rener', 1, 700);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_conjuge`
--

CREATE TABLE `tbl_conjuge` (
  `cod_conjuge` int(11) NOT NULL,
  `nome_conjuge` varchar(20) DEFAULT NULL,
  `cod_cliente` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_conjuge`
--

INSERT INTO `tbl_conjuge` (`cod_conjuge`, `nome_conjuge`, `cod_cliente`) VALUES
(1, 'Maria', 6),
(2, 'Ana', 5),
(3, 'Ana Maria', 1),
(4, 'Maria Ana', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_dependente`
--

CREATE TABLE `tbl_dependente` (
  `cod_dep` int(11) NOT NULL,
  `nome_dep` varchar(20) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `cod_func` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_dependente`
--

INSERT INTO `tbl_dependente` (`cod_dep`, `nome_dep`, `data_nasc`, `cod_func`) VALUES
(1, 'Joaozinho', '2002-05-18', 5),
(2, 'Mariazinha', '1998-08-15', 5),
(3, 'Huguinho', '1999-01-17', 2),
(4, 'Zezinho', '1997-11-09', 3),
(5, 'Luizinho', '1995-12-25', 4),
(6, 'Luluzinha', '1994-10-22', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_estado_civil`
--

CREATE TABLE `tbl_estado_civil` (
  `cod_est_civ` int(11) NOT NULL,
  `desc_est_civ` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_estado_civil`
--

INSERT INTO `tbl_estado_civil` (`cod_est_civ`, `desc_est_civ`) VALUES
(1, 'Casado'),
(2, 'Solteiro'),
(3, 'Separado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_func`
--

CREATE TABLE `tbl_func` (
  `cod_func` int(11) NOT NULL,
  `nome_func` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_func`
--

INSERT INTO `tbl_func` (`cod_func`, `nome_func`) VALUES
(1, 'Alberto'),
(2, 'Marcos'),
(3, 'Roseane'),
(4, 'Felisberto'),
(5, 'Francisco'),
(6, 'Marileusa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_item_pedido`
--

CREATE TABLE `tbl_item_pedido` (
  `cod_pedido` int(11) DEFAULT NULL,
  `cod_produto` int(11) DEFAULT NULL,
  `qtde_produto` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_item_pedido`
--

INSERT INTO `tbl_item_pedido` (`cod_pedido`, `cod_produto`, `qtde_produto`) VALUES
(1, 1, 24),
(1, 3, 2),
(1, 4, 5),
(2, 3, 7),
(3, 5, 30),
(3, 7, 45),
(4, 7, 10),
(4, 6, 95),
(5, 3, 87),
(6, 3, 73),
(7, 4, 60),
(8, 5, 5),
(8, 1, 10),
(9, 3, 96),
(9, 4, 80),
(9, 6, 72),
(10, 7, 65),
(10, 5, 55);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_pedido`
--

CREATE TABLE `tbl_pedido` (
  `cod_pedido` int(11) NOT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `cod_func` int(11) DEFAULT NULL,
  `data_pedido` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_pedido`
--

INSERT INTO `tbl_pedido` (`cod_pedido`, `cod_cliente`, `cod_func`, `data_pedido`) VALUES
(1, 6, 3, '2012-05-14'),
(2, 2, 5, '2012-05-14'),
(3, 4, 3, '2012-05-14'),
(4, 1, 4, '2012-05-15'),
(5, 1, 5, '2012-05-15'),
(6, 3, 6, '2012-05-15'),
(7, 1, 2, '2012-05-16'),
(8, 6, 2, '2012-05-16'),
(9, 4, 5, '2012-05-17'),
(10, 6, 5, '2012-05-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_premio`
--

CREATE TABLE `tbl_premio` (
  `cod_func` int(11) DEFAULT NULL,
  `valor_premio` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_premio`
--

INSERT INTO `tbl_premio` (`cod_func`, `valor_premio`) VALUES
(1, 500),
(2, 400),
(3, 300),
(4, 200),
(4, 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_produto`
--

CREATE TABLE `tbl_produto` (
  `cod_produto` int(11) NOT NULL,
  `nome_produto` varchar(25) DEFAULT NULL,
  `tipo_produto` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_produto`
--

INSERT INTO `tbl_produto` (`cod_produto`, `nome_produto`, `tipo_produto`) VALUES
(1, 'Refrigerante', 'Perecivel'),
(2, 'Carne', 'Perecivel'),
(3, 'Fosforo', 'Nao Perecivel'),
(4, 'Carvao', 'Nao Perecivel'),
(5, 'Pao', 'Perecivel'),
(6, 'Pasta de Dente', 'Nao Perecivel'),
(7, 'Bolacha', 'Perecivel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_telefone`
--

CREATE TABLE `tbl_telefone` (
  `cod_cliente` int(11) DEFAULT NULL,
  `cod_fone` int(11) DEFAULT NULL,
  `numero_fone` varchar(14) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_telefone`
--

INSERT INTO `tbl_telefone` (`cod_cliente`, `cod_fone`, `numero_fone`) VALUES
(1, 1, '(11) 6555-5556'),
(2, 2, '(11) 6565-6558'),
(3, 3, '(11) 6567-7556'),
(3, 4, '(11) 6568-8555'),
(5, 1, '(11) 6569-9655'),
(6, 2, '(11) 6564-0645');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_tipo_fone`
--

CREATE TABLE `tbl_tipo_fone` (
  `cod_fone` int(11) NOT NULL,
  `desc_fone` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_tipo_fone`
--

INSERT INTO `tbl_tipo_fone` (`cod_fone`, `desc_fone`) VALUES
(1, 'Residencial'),
(2, 'Comercial'),
(3, 'Recado'),
(4, 'Celular');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`cod_cliente`),
  ADD KEY `cod_est_civ` (`cod_est_civ`);

--
-- Indexes for table `tbl_conjuge`
--
ALTER TABLE `tbl_conjuge`
  ADD PRIMARY KEY (`cod_conjuge`),
  ADD KEY `cod_cliente` (`cod_cliente`);

--
-- Indexes for table `tbl_dependente`
--
ALTER TABLE `tbl_dependente`
  ADD PRIMARY KEY (`cod_dep`),
  ADD KEY `cod_func` (`cod_func`);

--
-- Indexes for table `tbl_estado_civil`
--
ALTER TABLE `tbl_estado_civil`
  ADD PRIMARY KEY (`cod_est_civ`);

--
-- Indexes for table `tbl_func`
--
ALTER TABLE `tbl_func`
  ADD PRIMARY KEY (`cod_func`);

--
-- Indexes for table `tbl_item_pedido`
--
ALTER TABLE `tbl_item_pedido`
  ADD KEY `cod_pedido` (`cod_pedido`),
  ADD KEY `cod_produto` (`cod_produto`);

--
-- Indexes for table `tbl_pedido`
--
ALTER TABLE `tbl_pedido`
  ADD PRIMARY KEY (`cod_pedido`),
  ADD KEY `cod_cliente` (`cod_cliente`),
  ADD KEY `cod_func` (`cod_func`);

--
-- Indexes for table `tbl_premio`
--
ALTER TABLE `tbl_premio`
  ADD KEY `cod_func` (`cod_func`);

--
-- Indexes for table `tbl_produto`
--
ALTER TABLE `tbl_produto`
  ADD PRIMARY KEY (`cod_produto`);

--
-- Indexes for table `tbl_telefone`
--
ALTER TABLE `tbl_telefone`
  ADD KEY `cod_cliente` (`cod_cliente`),
  ADD KEY `cod_fone` (`cod_fone`);

--
-- Indexes for table `tbl_tipo_fone`
--
ALTER TABLE `tbl_tipo_fone`
  ADD PRIMARY KEY (`cod_fone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
