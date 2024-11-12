-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 12-Nov-2024 às 21:59
-- Versão do servidor: 5.7.11
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base_provedor_internet`
--
CREATE DATABASE IF NOT EXISTS `base_provedor_internet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `base_provedor_internet`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_ordens_de_servicos`
--

CREATE TABLE `tb_ordens_de_servicos` (
  `id_os` int(11) NOT NULL,
  `data_abertura` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `descricao_servico` text,
  `func_responsavel` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `pagamento` enum('Pendente','Realizado') DEFAULT NULL,
  `status_os` enum('Aberta','Fechada') DEFAULT 'Aberta'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_ordens_de_servicos`
--

INSERT INTO `tb_ordens_de_servicos` (`id_os`, `data_abertura`, `descricao_servico`, `func_responsavel`, `categoria`, `preco`, `pagamento`, `status_os`) VALUES
(1001, '2024-11-01 18:55:00', 'Cliente relata perda de conexão intermitente durante o período da noite.', 'Alexandre', 'Suporte Técnico', '150.00', 'Pendente', 'Aberta'),
(1002, '2024-11-02 18:55:00', 'Instalação de novo roteador e configuração de rede Wi-Fi.', 'Evellen', 'Instalação', '200.00', 'Realizado', 'Fechada'),
(1003, '2024-11-02 18:55:00', 'Cliente solicita aumento de velocidade de conexão para o plano atual.', 'Roberto', 'Outros', '100.00', 'Pendente', 'Aberta'),
(1004, '2024-11-03 18:55:00', 'Verificação de perda de sinal devido a falha de cabo.', 'Alexandre', 'Suporte Técnico', '120.00', 'Realizado', 'Fechada'),
(1005, '2024-11-04 18:55:00', 'Cliente reporta instabilidade na conexão com quedas frequentes.', 'Evellen', 'Suporte Técnico', '130.00', 'Pendente', 'Aberta'),
(1006, '2024-11-05 18:55:00', 'Configuração e atualização de firmware em modem cliente.', 'Roberto', 'Instalação', '180.00', 'Realizado', 'Fechada'),
(1007, '2024-11-05 18:55:00', 'Instalação e teste de dispositivo de extensão Wi-Fi.', 'Alexandre', 'Instalação', '220.00', 'Pendente', 'Aberta'),
(1008, '2024-11-05 18:55:00', 'Solicitação de ajuste no IP fixo para cliente empresarial.', 'Evellen', 'Outros', '90.00', 'Realizado', 'Fechada'),
(1009, '2024-11-06 18:55:00', 'Reparo de fibra óptica rompida por obras próximas ao cliente.', 'Roberto', 'Suporte Técnico', '250.00', 'Pendente', 'Aberta'),
(1010, '2024-11-07 18:55:00', 'Instalação de cabo de rede adicional em ambiente comercial.', 'Alexandre', 'Instalação', '210.00', 'Realizado', 'Fechada'),
(1011, '2024-11-08 18:55:00', 'Cliente relata que o sinal do Wi-Fi não cobre toda a residência.', 'Alexandre', 'Suporte Técnico', '110.00', 'Pendente', 'Aberta'),
(1012, '2024-11-08 18:55:00', 'Configuração de VPN para acesso remoto seguro.', 'Evellen', 'Instalação', '175.00', 'Realizado', 'Fechada'),
(1013, '2024-11-08 18:55:00', 'Cliente deseja trocar o plano de internet para um mais rápido.', 'Roberto', 'Outros', '90.00', 'Pendente', 'Aberta'),
(1014, '2024-11-08 18:55:00', 'Problema de conexão lenta devido à interferência de sinal.', 'Alexandre', 'Suporte Técnico', '140.00', 'Realizado', 'Fechada'),
(1015, '2024-11-09 18:55:00', 'Cliente solicita configuração de controle parental no roteador.', 'Evellen', 'Suporte Técnico', '80.00', 'Pendente', 'Aberta'),
(1016, '2024-11-12 18:55:00', 'Instalação de cabos adicionais para melhorar a cobertura de internet.', 'Roberto', 'Instalação', '230.00', 'Realizado', 'Fechada'),
(1017, '2024-11-12 18:55:00', 'Verificação de queda de sinal em período específico do dia.', 'Alexandre', 'Suporte Técnico', '125.00', 'Pendente', 'Aberta'),
(1018, '2024-11-12 18:55:00', 'Atualização do roteador com as últimas configurações de segurança.', 'Evellen', 'Instalação', '160.00', 'Realizado', 'Fechada'),
(1019, '2024-11-12 18:55:00', 'Configuração de rede mesh para aumentar o alcance do Wi-Fi.', 'Roberto', 'Instalação', '200.00', 'Pendente', 'Aberta'),
(1020, '2024-11-12 18:55:00', 'Cliente solicita suporte para conexão entre dispositivos IoT.', 'Alexandre', 'Outros', '150.00', 'Realizado', 'Fechada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_ordens_de_servicos`
--
ALTER TABLE `tb_ordens_de_servicos`
  ADD PRIMARY KEY (`id_os`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_ordens_de_servicos`
--
ALTER TABLE `tb_ordens_de_servicos`
  MODIFY `id_os` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
