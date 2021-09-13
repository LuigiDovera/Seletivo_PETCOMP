-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Set-2021 às 04:24
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_seletivo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `codigo` int(11) NOT NULL,
  `cadeiras_codigo` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `video` varchar(150) NOT NULL,
  `resumo` varchar(150) DEFAULT NULL,
  `questionario` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`codigo`, `cadeiras_codigo`, `nome`, `video`, `resumo`, `questionario`) VALUES
(1, 1, 'Variáveis e Strings', 'https://drive.google.com/file/d/1Rmsr8dpNTkIcHmrLy2sp2yHrxl0Qbn8Y/view', NULL, NULL),
(2, 1, 'Comandos Condicionais', 'https://drive.google.com/file/d/1OSxjGRpSID9tvJVGg3CJK_BquRyTu5th/view', 'https://drive.google.com/file/d/18dBZoGKuX-bHuVeoafT2vZqBDXEH3PCu/view', 'https://drive.google.com/file/d/1TWl5Yt03vUDD39VEN-5qtUg-9MuFSP08/view'),
(3, 2, 'Pré-Cálculo', 'https://drive.google.com/file/d/1qfAJlk_Eevalainp65ORIQoKszSapLRR/view', NULL, NULL),
(4, 2, 'Pré-Cálculo e Início de Limite', 'https://drive.google.com/file/d/1qfAJlk_Eevalainp65ORIQoKszSapLRR/view', 'https://drive.google.com/file/d/1qnQ-ushbpv6hh7bF5M9g-rlNsnjvoWWS/view', NULL),
(5, 2, 'Revisão para primeira prova', 'https://drive.google.com/file/d/1T66Xc0EH6E5nN6fIs8baVb-RakXjfETf/view', NULL, NULL),
(6, 2, 'Limites Laterais', 'https://drive.google.com/file/d/1nWYBgpGu27vHYwk-aFjaM7L9HGggLswG/view', NULL, NULL),
(7, 3, 'Sintaxe e Condição', 'https://drive.google.com/file/d/1suYwNR3O2M60S-qgjCyrFLLrVY0iUCo5/view', 'https://docs.google.com/document/d/1bNHIwijk0IHKE7m6Lhm3CKx9CPfoItK3kyPgTfvc8RM/edit', NULL),
(8, 3, 'Comandos de Repetição', 'https://drive.google.com/file/d/1eyHD1SA2lvzmU5UI9zhLnlto2_LfIGBh/view', 'https://docs.google.com/document/d/1DoR7boqpSuQzUI3ZL26QlmKx6wwniHj3nylbEl1pUJM/edit', NULL),
(9, 3, 'Macros, Funções e Recursividade', 'https://drive.google.com/file/d/12FggmBSzXT1JirYFJ9JQJ2oOzDcdB8HN/view', 'https://docs.google.com/document/d/19cf4bnJPwyyaCLrV41LwmH8xBMOD7NjjD_q7Gx8Ybyg/edit', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadeiras`
--

CREATE TABLE `cadeiras` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `background-color` varchar(7) DEFAULT NULL,
  `svg` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadeiras`
--

INSERT INTO `cadeiras` (`codigo`, `nome`, `background-color`, `svg`) VALUES
(1, 'Algorítmos I', '#8AEABE', 'http://localhost/Seletivo_PETCOMP/assets/svg/python.svg'),
(2, 'Cálculo I', '#FFA800', 'http://localhost/Seletivo_PETCOMP/assets/svg/pi-mathematical.svg'),
(3, 'Linguagem de Programação I', '#fafafa', 'http://localhost/Seletivo_PETCOMP/assets/svg/c.svg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `codigo` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `resumo` varchar(300) NOT NULL,
  `data_publicacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`codigo`, `titulo`, `resumo`, `data_publicacao`) VALUES
(1, 'Seleção de Novos Integrantes', 'Encontra-se aberta a inscrição para a seleção de novos não bolsistas para o Programa de Educação Tutorial de Computação. Os requisitos dos discentes que desejarem se inscrever na seleção são as seguintes: Ser aluno e estar cursando Ciência da Computação', '0000-00-00'),
(2, 'Novos Integrantes', 'O Programa de Ensino Tutorial do Curso de Ciência da Computação (PET Ciência da Computação – PETComp) da Universidade Federal do Maranhão (UFMA) vem comunicar o resultado do seletivo para novos integrantes. Obrigado por sua participação e interesse no PET', '0000-00-00'),
(3, 'Seleção de Integrantes!', 'Encontra-se aberta a inscrição para a seleção de novos não bolsistas para o Programa de Educação Tutorial de Computação. Os requisitos dos discentes que desejarem se inscrever na seleção são as seguintes: Ser aluno e estar cursando Ciência da Computação', '0000-00-00'),
(4, 'Seminários PETCOMP', 'O PETCOMP realizará a apresentação de tópicos especiais de Computação de acordo com as pesquisas desenvolvidas pelo grupo. Os assuntos serão:   Título: Mineração e visualização de dados aplicados à base de monografias da UFMA Autor: Vinícius Augusto Cardoso Reis', '0000-00-00'),
(5, 'Seminários de Pesquisa PETCOMP', 'O PETCOMP realizará a apresentação de tópicos especiais de Computação de acordo com as pesquisas desenvolvidas pelo grupo. Os assuntos serão:   Título: Support Vector Machine (SVM) Autor: Eduardo Roger Silva Nascimento Resumo: O presente trabalho começa com uma breve', '0000-00-00'),
(6, 'III LABTOUR', 'A recepção de calouros mais famosa do CCET já tem data marcada, acontecerá no dia 27 de março às 15h40. O ponto de encontro será exclusivamente em frente ao LAB 3 !!!!!!!!! O LABTOUR tem o intuito de mostrar ao discente...', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacoes`
--

CREATE TABLE `publicacoes` (
  `codigo` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `autores` varchar(200) NOT NULL,
  `link_publicacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `publicacoes`
--

INSERT INTO `publicacoes` (`codigo`, `titulo`, `autores`, `link_publicacao`) VALUES
(1, 'De Veteranos para os Novatos: Avaliação das Atividades de Recepção aos Calouros Organizado pelo Grupo PETComp', 'Daniel Pinto, Eduarda Chagas, Gabriel Costa, Kennedy Nunes, Ricardo Anchieta, Simara Rocha, Anselmo Paiva, Luis Rivero', 'https://sol.sbc.org.br/index.php/wei/article/view/11130/11001'),
(2, 'Identificando as Atividades dos Grupos do Programa de Educação Tutorial na Área de Computação no Apoio à Inclusão e Alfabetização Digital', 'Emily Costa, Antônio Pinto, José Ribamar Durand Rodrigues Junior, Alana Araújo, Ednara Pereira, Geraldo Braz Junior, Rodrigo Santos, Luis Rivero', 'https://br-ie.org/pub/index.php/wie/article/view/8594'),
(3, 'Identificação das Expectativas e Dificuldades de Alunos de Graduação no Ensino de Engenharia de Software', 'Jéssica Mendes, Yandson Costa, Kastney Frazão, Rodrigo Santos, Davi Santos, Luis Rivero', 'https://sol.sbc.org.br/index.php/wei/article/view/6640/6536'),
(4, 'Educação Tutorial em Computação: Uma Análise Retrospectiva das Atividades Realizadas para a Formação Pessoal e Profissional de Cientistas da Computação', 'Fernando Leite, Gabriel Cardoso, Yandson Costa, Igor Estrela, Antônio Pinto, Ednara Pereira, Geraldo Braz Júnior, Luis Rivero', 'https://sol.sbc.org.br/index.php/wei/article/view/6621/6517'),
(5, 'SIEPET: Uma proposta de remodelagem de um sistema para novas necessidades acadêmicas', 'Gabriel Silva Monteles, Eduardo Roger Silva Nascimento, Diego da Silva Oliveira, Vinícius Augusto Cardoso Reis, Geraldo Braz Júnior', 'http://pet.ufma.br/comp/wp-content/uploads/sites/1/2017/11/Resumo-MARAPET.pdf'),
(6, 'Impacto da Análise de Sentimentos em redes sociais na sociedade moderna', 'Lucas Reis Abreu, Simara Vieira da Rocha, Geraldo Braz Júnior', 'http://pet.ufma.br/comp/wp-content/uploads/sites/1/2017/11/Impacto-da-An%C3%A1lise-de-Sentimentos-em');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_aulas_cadeiras_idx` (`cadeiras_codigo`);

--
-- Indexes for table `cadeiras`
--
ALTER TABLE `cadeiras`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `publicacoes`
--
ALTER TABLE `publicacoes`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aulas`
--
ALTER TABLE `aulas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cadeiras`
--
ALTER TABLE `cadeiras`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `publicacoes`
--
ALTER TABLE `publicacoes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `fk_aulas_cadeiras` FOREIGN KEY (`cadeiras_codigo`) REFERENCES `cadeiras` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
