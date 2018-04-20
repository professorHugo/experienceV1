-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 13-Abr-2018 às 12:42
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `experience`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

DROP TABLE IF EXISTS `aulas`;
CREATE TABLE IF NOT EXISTS `aulas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_aula` int(1) NOT NULL,
  `titulo_aula` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `img_capa` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT 'img/default',
  `img_docs` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT 'img/img00',
  `link_apresentacao` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT '?',
  `link_documento` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT '?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`id`, `numero_aula`, `titulo_aula`, `img_capa`, `img_docs`, `link_apresentacao`, `link_documento`) VALUES
(1, 1, 'Cloud Computing', 'img/Aula1', 'img/img01', 'https://drive.google.com/open?id=0Bx4hVCOh5y-Xem92aXFaanJPcmM', 'https://drive.google.com/open?id=0B4tUvFXK86gKR2x2and1dTRxTkU'),
(2, 2, 'Vocabulary', 'img/Aula2', 'img/img02', 'https://drive.google.com/open?id=0Bx4hVCOh5y-XWVNHNzI1ZW9lRnM', ''),
(3, 3, 'Contrato de Trabalho', 'img/Aula3', 'img/img03', 'https://drive.google.com/open?id=0Bx4hVCOh5y-XMjhyT1JPdFNreVE', 'https://drive.google.com/open?id=0B4tUvFXK86gKTEkzd1E1YVVDM1k'),
(4, 4, 'Identidade Visual', 'img/Aula4', 'img/img04', 'https://drive.google.com/open?id=0Bx4hVCOh5y-XOGVMd0lOY3NHZjQ', ''),
(5, 5, 'Painel de Controle', 'img/Aula5', 'img/img05', 'https://drive.google.com/open?id=0Bx4hVCOh5y-XRU45YngtVWxpUU0', 'https://drive.google.com/open?id=0B4tUvFXK86gKZFZNYnR0OFN6TFU'),
(6, 6, 'Chunks', 'img/Aula6', 'img/img06', 'https://drive.google.com/open?id=0Bx4hVCOh5y-XbFRheXZnbFBsRGs', 'https://drive.google.com/open?id=0B4tUvFXK86gKWFBBTmtObE1TemM'),
(7, 7, 'Empreendedorismo', 'img/Aula7', 'img/img07', 'https://drive.google.com/open?id=0Bx4hVCOh5y-XbnNfQ1VIYWRpOTA', 'https://drive.google.com/open?id=0B4tUvFXK86gKZDlJUFR3dGVkdFk'),
(8, 8, 'FormataÃ§Ã£o de Computadores', 'img/Aula8', 'img/img08', 'https://drive.google.com/open?id=0Bx4hVCOh5y-XQkEyWlQwNU51M0U', 'https://drive.google.com/open?id=0Bx4hVCOh5y-XTEpmS0ZqdGtFSms');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes_provas`
--

DROP TABLE IF EXISTS `questoes_provas`;
CREATE TABLE IF NOT EXISTS `questoes_provas` (
  `id_prova` int(11) NOT NULL AUTO_INCREMENT,
  `modulo_prova` int(11) NOT NULL,
  `pergunta_prova` varchar(500) COLLATE utf8_general_mysql500_ci NOT NULL,
  `id_resposta_correta` int(11) NOT NULL,
  PRIMARY KEY (`id_prova`),
  KEY `modulo_prova` (`modulo_prova`),
  KEY `id_resposta_correta` (`id_resposta_correta`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `questoes_provas`
--

INSERT INTO `questoes_provas` (`id_prova`, `modulo_prova`, `pergunta_prova`, `id_resposta_correta`) VALUES
(1, 1, 'Qual a funÃ§Ã£o do sistema de Cloud Computing?', 1),
(2, 1, 'Levando em consideraÃ§Ã£o os Servidores Google, OneDrive, Mega e Dropbox. Quais sÃ£o suas quantidades de armazenamento no formato de cadastro Gratuito?', 2),
(3, 1, 'Selecione uma das vantagens de se usar os serviÃ§os de Cloud Computing: ', 3),
(4, 1, 'Falando do Servidor do Google (Drive), quais as funcionalidades alÃ©m de armazenamento de arquivos genÃ©ricos?', 4),
(5, 1, 'AlÃ©m de armazenamento de arquivos, podemos tambÃ©m compartilhar com outros usuÃ¡rios da mesma nuvem, ou atÃ© mesmo quem nÃ£o tem conta de usuÃ¡rio. Quais as duas formas bÃ¡sicas para compartilhamento?', 5),
(6, 3, 'Ã‰ um tipo de trabalhador que presta o serviÃ§o por conta prÃ³pria, para vÃ¡rios tomadores de serviÃ§o, mas sem estar presente a subordinaÃ§Ã£o. Assinale a alternativa que corresponde corretamente essa afirmaÃ§Ã£o. O que foi afirmado anterior, refere-se Ã :', 6),
(7, 3, 'Ã‰ aquele que desenvolve suas atividades profissionais esporadicamente (eventos, acontecimentos, obra, serviÃ§o especÃ­fico) para um empregador. Assinale a alternativa que corresponde corretamente essa afirmaÃ§Ã£o:', 7),
(8, 3, 'Ã‰ aquele prestado por pessoa fÃ­sica a uma empresa, para atender a necessidade transitÃ³ria de substituiÃ§Ã£o de seu pessoal regular e permanente ou a acrÃ©scimo extraordinÃ¡rio de serviÃ§os. Assinale a alternativa que corresponde corretamente essa afirmaÃ§Ã£o: ', 8),
(9, 3, 'Quando nÃ£o hÃ¡ documento que prove a vinculaÃ§Ã£o entre as partes, porÃ©m existindo provas apenas de testemunhas. De acordo com essa afirmaÃ§Ã£o, assinale a alternativa que corresponde corretamente ao tipo de contrato: ', 9),
(10, 3, 'Assinale a alternativa que preenche corretamente as lacunas da afirmaÃ§Ã£o a seguir. <p><b>Considera-se aprendizagem o contrato de trabalho celebrado com colaboradores entre ___ e ____ anos de idade, pelo qual o ________________ assume a responsabilidade de treinar esse funcionÃ¡rio para a atividade que foi designado.</b></p>', 10),
(11, 3, '<p><b>Sua finalidade consiste em mostrar ao empregador a verificaÃ§Ã£o da capacidade funcional do empregado na execuÃ§Ã£o dos serviÃ§os e tambÃ©m permitir ao empregado descobrir se vai se adaptar Ã s condiÃ§Ãµes de emprego. </b></p><p>Assinale a alternativa que corresponde ao contrato de trabalho correspondente a afirmaÃ§Ã£o:</p>', 11),
(12, 3, '<p>Ã‰ o contrato de trabalho que tem datas de inÃ­cio e tÃ©rmino antecipadamente combinadas entre o trabalhador e o empregador.</p> <p>Assinale a alternativa que corresponde ao contrato de trabalho com as caracterÃ­sticas acima citadas: </p>', 12),
(13, 3, '<p>_____________________________ Ã‰ aquele que, por vontade dos contratantes, nÃ£o Ã© estipulada a sua duraÃ§Ã£o, podendo findar a qualquer tempo, por iniciativa de uma das partes. </p> <p>Assinale a alternativa que corresponde corretamente com o tipo do contrato de acordo com a afirmaÃ§Ã£o acima: </p>', 13),
(14, 3, 'A lei permite que o trabalhador acumule mais de um emprego, pode isto ocorrer quando:', 14),
(15, 3, 'Os direitos apresentados no contrato de trabalho apenas deixarÃ£o de ter validade, quando: ', 15),
(16, 5, 'Qual a funÃ§Ã£o do painel de controle?', 16),
(17, 5, 'O que Ã© um firewall e sua importÃ¢ncia durante a navegaÃ§Ã£o na internet?', 17),
(18, 5, 'Qual Ã© a diferenÃ§a entre um usuÃ¡rio comum e um usuÃ¡rio administrador do sistema?', 18),
(19, 5, 'O que Ã© um grupo domÃ©stico e em qual local de rede ele pode ser configurado?', 19),
(20, 5, 'Selecione abaixo quais sÃ£o os 3 dispositivos que podem ser conectados no computador?', 20),
(21, 6, '__________, Sam, I\\\'m sure your performance will be great.', 21),
(22, 6, 'Hi, Tom, __________, I was just telling Sara about your new car', 22),
(23, 6, 'The English test was a _____________', 23),
(24, 6, 'They really ___________ when they built this bathroom', 24),
(25, 6, 'I have the biggest ______ on Triss. She\\\'s so cute!', 25),
(26, 6, 'told you I was going to settle the score! ___________.', 26),
(27, 6, 'What did you think of my new haircut? I loved it! It\\\'s _________!', 27),
(28, 6, 'Hey Tommy, what are you guys doing? We\\\'re _______________ Do you want to come round?', 28),
(29, 6, 'What\\\'s wrong with Amy?  Didn\\\'t you hear? Alex ___________ her last night! Just don\\\'t mention his name at all!', 29),
(30, 6, 'How was the Jack Johnson concert? It was awesome. Everyone _________', 30),
(31, 8, 'O que Ã© Sistema Operacional?', 31),
(32, 8, 'Qual programa que instala imagens de sistemas operacionais?', 32),
(33, 8, 'Selecione quais sÃ£o uma das vantagens para a instalaÃ§Ã£o da mÃ¡quina virtual?', 33),
(34, 8, 'O que Ã© particionamento?', 34),
(35, 8, 'Qual a vantagem da formataÃ§Ã£o de um computador?', 35),
(36, 8, 'O que Ã© gerenciador de boot?', 36),
(37, 8, 'O que Ã© BackUp?', 37),
(38, 8, 'O que sÃ£o Drivers?', 38),
(39, 8, 'O que Ã© BIOS?', 39),
(40, 8, 'Cite outro sistema operacional a nÃ£o ser o Windows.', 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas_corretas`
--

DROP TABLE IF EXISTS `respostas_corretas`;
CREATE TABLE IF NOT EXISTS `respostas_corretas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modulo_resposta` int(11) NOT NULL,
  `resposta` varchar(500) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modulo_resposta` (`modulo_resposta`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `respostas_corretas`
--

INSERT INTO `respostas_corretas` (`id`, `modulo_resposta`, `resposta`) VALUES
(1, 1, 'Armazenar informaÃ§Ãµes de forma segura e eficiente usando a internet como meio de comunicaÃ§Ã£o'),
(2, 1, 'Google - 15GB, OneDrive - 5GB, Mega - AtÃ© 50GB, Dropbox - Inicialmente 2GB'),
(3, 1, 'UtlizaÃ§Ã£o independente do sistema, compartilhamento no ambiente corporativo simplificado'),
(4, 1, 'Compartilhar arquivos, criaÃ§Ã£o de arquivos diretamente na nuvem, armazenamento dos dados dos seu Smartphone'),
(5, 1, 'Link de compartilhamento, autorizaÃ§Ã£o de usuÃ¡rio da nuvem'),
(6, 3, 'AutÃ´nomo'),
(7, 3, 'Eventual'),
(8, 3, 'TemporÃ¡rio'),
(9, 3, 'TÃ¡cito'),
(10, 3, '14 e 24 / empregador'),
(11, 3, 'ExperiÃªncia'),
(12, 3, 'Determinado'),
(13, 3, 'Contrato Indeterminado'),
(14, 3, 'Os horÃ¡rios forem compatÃ­veis e as empresas nÃ£o forem concorrentes'),
(15, 3, 'Por sua vez a empresa declarar falÃªncia ou dissoluÃ§Ã£o da empresa inclusive concordata (Art. 449 - CLT).'),
(16, 5, 'Controlar as configuraÃ§Ãµes do computador, tais como data e hora, contas de usuÃ¡rios e demais recursos'),
(17, 5, 'Ã‰ uma barreira de proteÃ§Ã£o que controla o trÃ¡fego entre seu computador e a internet, evitando ataques de usuÃ¡rios maliciosos ao seu sistema operacional'),
(18, 5, 'Comum: autorizaÃ§Ã£o para usar o sistema e fazer modificaÃ§Ãµes que nÃ£o afetem o desempenho do sistema | Administrador: autorizaÃ§Ã£o para fazer quaisquer manipulaÃ§Ãµes no sistema operacional, inclusive instalar novos programas.'),
(19, 5, 'Ã‰ um grupo de computadores em uma rede domÃ©stica que podem compartilhar arquivos e impressoras. VocÃª pode configurar no painel de controle'),
(20, 5, 'Pendrive, Teclado, Mouse'),
(21, 6, 'Break a Leg'),
(22, 6, 'speak of the devil'),
(23, 6, 'piece of cake'),
(24, 6, 'cut corners'),
(25, 6, 'crush'),
(26, 6, 'Right in the bull\'s eyes'),
(27, 6, 'awesome'),
(28, 6, 'chilling (out)'),
(29, 6, 'dumped'),
(30, 6, 'had a blast'),
(31, 8, 'Ã‰ o software mais importante de um computador, com ele podemos dar comandos ao nosso computador e fazer ele responder conforme a nossa necessidade'),
(32, 8, 'Virtual Box'),
(33, 8, 'Permite o teste do sistema operacional antes de utilizar a versão completa no computador'),
(34, 8, 'É uma divisão do disco rígido, permitindo instalações de vários tipos de sistemas operacionais em um único disco'),
(35, 8, 'processo que permite o correto esvaziamento de um disco rígido para poder reutilizá-lo depois. Normalmente, o processo de formatação é realizado para reverter um sistema de arquivo que por alguma razão se tornou corrompido ou perigoso.'),
(36, 8, 'São softwares capazes de iniciar o processo de carregamento de sistemas operacionais em um computador.'),
(37, 8, 'Backup é um termo inglês que tem o significado de cópia de segurança. É frequentemente utilizado em informática para indicar a existência de cópia de um ou mais arquivos guardados em diferentes dispositivos de armazenamento.'),
(38, 8, 'são programas responsáveis pela comunicação entre o sistema operacional de computador e o hardware conectado a ele.'),
(39, 8, 'Trata-se de um mecanismo responsável por algumas atividades consideradas corriqueiras em um computador, mas que são de suma importância para o correto funcionamento de uma máquina. Se a BIOS para de funcionar, o PC também para.'),
(40, 8, 'Linux');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unidade` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT 'tatuape',
  `matricula` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `matricula_md5` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `senha_md5` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `turma` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `idade` int(2) DEFAULT NULL,
  `aula1` int(11) DEFAULT '0',
  `aula2` int(11) DEFAULT '0',
  `aula3` int(11) DEFAULT '0',
  `aula4` int(11) DEFAULT '0',
  `aula5` int(11) DEFAULT '0',
  `aula6` int(11) DEFAULT '0',
  `aula7` int(11) DEFAULT '0',
  `aula8` int(11) DEFAULT '0',
  `prova1` int(11) DEFAULT '0',
  `prova2` int(11) DEFAULT '0',
  `prova3` int(11) DEFAULT '0',
  `prova4` int(11) DEFAULT '0',
  `prova5` int(11) DEFAULT '0',
  `prova6` int(11) DEFAULT '0',
  `prova7` int(11) DEFAULT '0',
  `prova8` int(11) DEFAULT '0',
  `permissao` int(11) DEFAULT '0' COMMENT '0 para alunos e 1 para prof 2 para adm',
  `ativado` int(1) DEFAULT '1' COMMENT '0 Para inativo, 1 para ativo',
  `foto` varchar(250) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `unidade`, `matricula`, `matricula_md5`, `senha`, `senha_md5`, `nome`, `email`, `turma`, `idade`, `aula1`, `aula2`, `aula3`, `aula4`, `aula5`, `aula6`, `aula7`, `aula8`, `prova1`, `prova2`, `prova3`, `prova4`, `prova5`, `prova6`, `prova7`, `prova8`, `permissao`, `ativado`, `foto`) VALUES
(1, 'Tatuape', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'AdministraÃ§Ã£o do Experience', 'hugo@n2y.com.br', 'PEDAGÃ“GICO', 29, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, NULL),
(2, 'tatuape', '7060', 'ab4c389364232588a6680ad92ec170c7', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'ANA CRISTINA BATISTA VINUTO', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(3, 'tatuape', '7022', '1f33d7cf6693dc6dcc7029b97cc29487', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'CLAUDIA DA SILVA CARDOSO', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(4, 'tatuape', '7095', '7e185cc0ad0a719c730af5354d7142c1', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'HENRIQUE BONAFEDE', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(5, 'tatuape', '7099', '77ab78641fb740c101b96c74ca7c15f6', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'ISABELLA MARIA RIBEIRO DA SILVA', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(6, 'tatuape', '7030', 'b25b911ffc2b76a647454e5a53edf8b5', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'JHONATAN DA SILVA SANTOS', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(7, 'tatuape', '7120', 'ac3870fcad1cfc367825cda0101eee62', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'MILLENA GUTEMBERG DOS SANTOS', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(8, 'tatuape', '7122', 'df334b223e699294764c2bb7ae40d8db', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'RAFAEL VINICIUS AUGUSTO PINTO', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(9, 'tatuape', '7059', '84cdde86a4560c17d00c9c437fc2f0da', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'VALDELICE SANTOS FIGUEREDO', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(10, 'tatuape', '6902', 'e2459ae2cf7921589685a6835ec08a7c', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'CARLOS GABRIEL COSTA MORAES', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(11, 'tatuape', '1', 'c4ca4238a0b923820dcc509a6f75849b', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Wendel Vellado', NULL, NULL, 41, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL),
(12, 'tatuape', '2', 'c81e728d9d4c2f636f067f89cc14862c', 'csdl13231010', '3b66dd602072bd61d3766cef35ee1e9e', 'Hugo Christian', NULL, NULL, 28, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL),
(13, 'tatuape', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'gabriel2008', '842204891d179ec181fe428ff83a1e56', 'Gabriel Victor', NULL, NULL, 20, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL),
(14, 'tatuape', '7057', 'c4bfbf68f5d8d0f8b9a0752ca08ea01d', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(15, 'tatuape', '7172', '1d0832c4969f6a4cc8e8a8fffe083efb', '211101', 'fcc2561c2e48efb36381a0b4273d658a', 'Ayhane', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(16, 'tatuape', '7003', '204904e461002b28511d5880e1c36a0f', 'julinha', '4a04179913034ac34acfbd11b1ffb565', 'Brythanny', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(17, 'tatuape', '7070', '08f0efebb1c51aada9430a089a2050cc', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Camile', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(18, 'tatuape', '7115', '5301c4d888f5204274439e6dcf5fdb54', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Cibele', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(19, 'tatuape', '7091', '328347805873e9a9c700591812fb0ec2', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Daniel', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(20, 'tatuape', '7089', 'ff096d0e005a8c794b6c1da7c0fd662e', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Elisabete', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(21, 'tatuape', '7084', '1e9f65024cd764a33b94a14b0e79f42d', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Eric', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(22, 'tatuape', '7020', '35a12c43227f217207d4e06ffefe39d3', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Gabriela', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(23, 'tatuape', '7196', 'fe5e7cb609bdbe6d62449d61849c38b0', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Gabriella', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(24, 'tatuape', '7112', 'ba7609ee5789cc4dff171045a693a65f', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Giovanna', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(25, 'tatuape', '7051', 'ba3c736667394d5082f86f28aef38107', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Giuliano', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(26, 'tatuape', '7081', 'df438e5206f31600e6ae4af72f2725f1', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Grayce', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(27, 'tatuape', '7007', '78efce208a5242729d222e7e6e3e565e', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Izabelle', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(28, 'tatuape', '7053', 'dfc69ee4c48a622e2bcda2c3d2a219d0', '20352909', 'e0b599a8dc0eebcdf4975d2f6c3061f9', 'Katheen', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(29, 'tatuape', '7041', '7c93ebe873ef213123c8af4b188e7558', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Kaue', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(30, 'tatuape', '7061', '6495cf7ca745a9443508b86951b8e33a', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Kimberllyn', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(31, 'tatuape', '7190', '7a47f991e304fd013ba300505eb42fd7', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Larissa ', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(32, 'tatuape', '6871', '7ea25c95b0792ca4ce01ea18bbda2d44', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Larissa', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(33, 'tatuape', '7045', 'a57ecd54d4df7d999bd9c5e3b973ec75', 'bia0611', '946f2f4ce3789e574d19f80e3cbf4d2b', 'Leticia', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(34, 'tatuape', '7199', 'b0b07fecb2354efcdfc9671484b6eaa9', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Leticia', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(35, 'tatuape', '7101', 'b33128cb0089003ddfb5199e1b679652', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Nayla', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(36, 'tatuape', '7111', '1ab60b5e8bd4eac8a7537abb5936aadc', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Ravely', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(37, 'tatuape', '7002', '14b85b0752eddc5f25217386e3c6bf22', 'rebecafeia', '9c561138d082cfc5e8a365b5b4e05b60', 'Rebeca', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(38, 'tatuape', '7175', '37aa5dfc44dddd0d19d4311e2c7a0240', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Regislane', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(39, 'tatuape', '7085', '0dbd53751c00e0784799008b44471a77', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Wandra', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(40, 'tatuape', '7085', '0dbd53751c00e0784799008b44471a77', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Wandra', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(41, 'tatuape', '6934', '10ffbba2ec9025b945acc154f3403aec', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Wesley', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(42, 'tatuape', '7198', 'daad98225feffee70936b5e3b88658c9', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Wesley', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(43, 'tatuape', '7167', '456048afb7253926e1fbb7486e699180', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Ariadne', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(44, 'tatuape', '7126', 'cb93980bc94a17e36d6de5da28b99785', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Aguida', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(45, 'tatuape', '7078', 'dac32839a9f0baae954b41abee610cc0', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Luiza', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(46, 'tatuape', '4495', 'd84210a75448034bcc4947005695c306', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Lucas', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(47, 'tatuape', '7060', 'ab4c389364232588a6680ad92ec170c7', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'ana cristina', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(48, 'tatuape', '7022', '1f33d7cf6693dc6dcc7029b97cc29487', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'claudia da silva', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(49, 'tatuape', '7095', '7e185cc0ad0a719c730af5354d7142c1', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'henrique bonafede', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(50, 'tatuape', '7156', '4bb236de7787ceedafdff83bb8ea4710', 'Minecraft18', '8481798a2b6bee77b2a468329d587526', 'henrique marto', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(51, 'tatuape', '7099', '77ab78641fb740c101b96c74ca7c15f6', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'isabella', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(52, 'tatuape', '7160', '525b8410cc8612283c9ecaf9a319f8ed', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'kauÃ£ robson', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(53, 'tatuape', '7120', 'ac3870fcad1cfc367825cda0101eee62', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'millena', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(54, 'tatuape', '6969', '7813d1590d28a7dd372ad54b5d29d033', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'nicoly', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(55, 'tatuape', '7238', '937ea3f7714dc0d01475da7bff33b596', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'patricia', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(56, 'tatuape', '7122', 'df334b223e699294764c2bb7ae40d8db', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'rafael vinicius', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(57, 'tatuape', '7173', '162d18156abe38a3b32851b72b1d44f5', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'renata gonÃ§alves', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(58, 'tatuape', '7059', '84cdde86a4560c17d00c9c437fc2f0da', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'valdelice', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(59, 'tatuape', '7057', 'c4bfbf68f5d8d0f8b9a0752ca08ea01d', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'alex freire', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(61, 'tatuape', '7102', 'c9d9edbf9b9e23eb5d4819bbcce9b078', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'gabriel de almeida', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(62, 'tatuape', '7063', '68a15b5278e4f7c4c056df9d5f1d3b1f', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'gabriela de oliveira', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(63, 'tatuape', '7049', '169806bb68ccbf5e6f96ddc60c40a044', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'gabrielli ingrid', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(64, 'tatuape', '7086', 'f8e6ba1db0f3c4054afec1684ba8fb26', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'kailane rocha', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(65, 'tatuape', '7019', '448d5eda79895153938a8431919f4c9f', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'lucas aparecido', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(66, 'tatuape', '7192', '73efcfe5fedd98e5b1008f456d2a8197', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'lucas filipe', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(67, 'tatuape', '7064', '76d7c0780ceb8fbf964c102ebc16d75f', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'natasha ferreira', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(68, 'tatuape', '7177', '2723ad49bd0d27b97b735e4822085e12', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'nikoly musi', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(69, 'tatuape', '7027', '313f422ac583444ba6045cd122653b0e', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'vitoria alice', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(70, 'tatuape', '7281', '701d804549a4a23d3cae801dac6c2c75', 'alex123', 'b75bd008d5fecb1f50cf026532e8ae67', 'alex nascimento', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(71, 'tatuape', '7216', '994d1cad9132e48c993d58b492f71fc1', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'andressa perobeli', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(72, 'tatuape', '7229', '2d290e496d16c9dcaa9b4ded5cac10cc', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'bruno ramos', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(73, 'tatuape', '7228', 'acd9bdac8824615154e7f1868f29acf6', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'daniel teliz', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(74, 'tatuape', '7250', '8ce6fc704072e351679ac97d4a985574', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'dayane jessica', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(75, 'tatuape', '7130', '9afbe998374ca7326d35d84180786096', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'elias tavares', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(76, 'tatuape', '7251', '3472ab80b6dff70c54758fd6dfc800c2', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'fabio junior', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(77, 'tatuape', '7258', '358c850b3836ae02b1d8b319d86d435f', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'fabio zezuiner', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(78, 'tatuape', '7256', '9f8785c7f9b578bec2c09e616568d270', 'faten123', '51fcd1644100ef732e016354cc716ab3', 'faten ludmila', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(79, 'tatuape', '7203', '118921efba23fc329e6560b27861f0c2', '26guisardi', 'a5d6795e4af68a558e700f1a67483be1', 'felipe guisard', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(80, 'tatuape', '7282', '21c2c25487b9f30af6c4a9f6f10b09b2', '968944849', 'a573e33b8be8bebc0f679161f87d372d', 'felipe nascimento', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(81, 'tatuape', '7274', '1301962d8b7bd03fffaa27119aa7fc2b', 'Barbosa4321', '0544ffe7fa997d842b4789d2d93141cd', 'gabrielle souza', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(82, 'tatuape', '7259', 'd04cb95ba2bea9fd2f0daa8945d70f11', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'kamila zezuiner', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(83, 'tatuape', '7254', '5248e5118c84beea359b6ea385393661', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'larissa ketheleen', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(84, 'tatuape', '7215', 'b17446af05919be6e83500be7f5df5c4', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'lucilaine gomes', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(85, 'tatuape', '7252', '201d546992726352471cfea6b0df0a48', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'marcelo dos santos', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(87, 'tatuape', '7213', '6213a8959a9a96589ca484dfd1e25053', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'mauricio castro', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(88, 'tatuape', '7220', 'bd4828247647544af24a15ac79a1ef9f', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'nilo izidio', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(89, 'tatuape', '7285', '78ccad7da4c2fc2646d1848e965794c5', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'sara pereira', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(90, 'tatuape', '7209', 'e904831f48e729f9ad8355a894334700', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'suellen alves', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(91, 'tatuape', '7040', '1def1713ebf17722cbe300cfc1c88558', 'amodeus123', '302f8042b22af27ea4b0a047400e6721', 'suyan silva', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92, 'tatuape', '7272', 'd2a1e34d86293cb12f959f89dddf263e', '08051999', 'ffe289e1cbf19e54ed02e2284db85262', 'victor murcillo', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(93, 'tatuape', '7210', 'df308fd90635b28d82558cf580c73ed9', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'victoria caroline', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(94, 'tatuape', '7294', 'bc047286b224b7bfa73d4cb02de1238d', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'aguinaldo de moraes', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(95, 'tatuape', '7231', 'b522259710151f8cc7870b970b4e0930', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'alizon amanda', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(96, 'tatuape', '7212', 'e14e58299bc41e7fb10c701130c5cb27', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'evelin aparecida', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(97, 'tatuape', '7293', '7d91786c01b3931e8d94baf248608979', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'maria carolina', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(98, 'tatuape', '7234', '44d47238d7d3e17aa176019eafac82af', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'pedro henrique', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(99, 'tatuape', '7255', 'fbefa505c8e8bf6d46f38f5277fed8d6', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'ruan emanoel', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(100, 'tatuape', '7261', '8346db44a721fa863ca38180638bad3d', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'ruan silva ferreira', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(101, 'tatuape', '7301', '9c779f56f336b3c812343434f57b6a0e', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'samuel ramos', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(102, 'tatuape', '7290', 'c54d2118d6a3a2b06f07e9eeb240d741', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'taiana domingos', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(103, 'tatuape', '7299', '29e11dc359bad383e1243f730bdbe032', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'valeria maria', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(104, 'tatuape', '7219', '9c415bdd4dd66723ef7b38853ef35ddb', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'vinicius felipe', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(105, 'tatuape', '7221', '5ecf33fd9caf42c3bd39a3d9ee5f9ca3', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'wllen candido', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(107, 'tatuape', '7275', 'bb921944c8c4531826da3fa99b494c1a', 'homer0211', '28f1bf6cbbc5bca89435f6004d49bbe2', 'Ketlyn', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(108, 'tatuape', '7271', '52fc2aee802efbad698503d28ebd3a1f', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Alex', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(109, 'tatuape', '7292', 'f0e6be4ce76ccfa73c5a540d992d0756', 'curtindo', '25b3dbe26dda82a580a453072379a375', 'MARCLICE ALICE BARBOSA', NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(110, 'Tatuape', '12345', '827ccb0eea8a706c4c34a16891f84e7b', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Hugo Christian ', 'hugo@n2y.com.br', 'PedagÃ³gico', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(111, 'tatuape', '7437', 'a4a83056b58ff983d12c72bb17996243', '123chiquinha', '7e38908212a8adc08fb9db7e13f009f2', 'ANA CAROLINE', NULL, 'A15-0004', 19, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(112, 'tatuape', '7055', 'e143c01e314f7b950daca31188cb5d0f', 'gabriel05', '5eaa5a03ad3a05d4ea21ba1238c5f9ce', 'ELIVELTON SANTOS', NULL, 'A15-0004', 19, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(113, 'tatuape', '7457', '9f820adf84bf8a1c259f464ba89ea11f', 'lovemirian', 'd1757e6cf12159a617ce171f00bcaf5a', 'JONATAS DAMASCENO', NULL, 'A15-0004', 19, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(114, 'tatuape', '7417', 'ce89f6b11bdc5b365085a84036e9365b', 'hikari1234', 'fb375ce121386a77e3c229658cae21b4', 'LUARA MARIA MARINO', NULL, NULL, 18, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(115, 'tatuape', '7451', 'd11509055cea2caaa57bc2abe499b3e5', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'STEFANI SILVA NWAFOR', NULL, NULL, 18, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(116, 'tatuape', '7458', '57db7d68d5335b52d5153a4e01adaa6b', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'ZAIRA APARECIDA PINHEIRO DA SILVA', NULL, NULL, 13, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(117, 'Tatuape', '7295', 'f953ad57910572bd6803da3faaa6e92b', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Adriana Silva Batista', 'adriana.silvabat@gmail.com', 'e09/0002', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(118, 'Tatuape', '7295', 'f953ad57910572bd6803da3faaa6e92b', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Adriana Silva Batista', 'adriana.silvabat@gmail.com', 'E09/0002', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(119, 'tatuape', '7510', 'b7c13b0a474277d7f6c6d6ba8a0ed678', 'arieth001', '383797063043bde102c5e5e0004bcfa3', 'ARIETH VICTÃ“RIA ALVES', NULL, NULL, 15, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(120, 'tatuape', '7530', 'a1d2b0ef5b72772ee48ce14b993e225c', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'NICOLLI SILVA TORRES', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(121, 'Tatuape', '7663', '19d47109e3c9e2c1423eac228aff27d1', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Maria Vanusa  da Silva Barros', 'nusasilvabarros@hotmail.com', 'A15/0004', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(122, 'Tatuape', '7663', '19d47109e3c9e2c1423eac228aff27d1', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'Maria Vanusa  da Silva Barros', 'nusasilvabarros@hotmail.com', 'A15/0004', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(123, 'Tatuape', '663', '8757150decbd89b0f5442ca3db4d0e0e', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'HUGO CHRISTIAN PEREIRA GOMES', 'hugo@n2y.com.br', 'B10/0004', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(124, 'tatuape', '7955', '62d081df1f0040acd58bcfd3c3040fc1', 'albuquerque', '5e4ab0a08cb27f61e949f1b812a3634f', 'TAYNARA ALBUQUERQUE DA SILVA', NULL, NULL, 17, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(125, 'tatuape', '7961', 'ac8a9143597891fc2fc2ded41a9a9ec7', 'carol1103', '0e0c13a53bca665e833593cfbb98d786', 'CAROLINE DE HOLANDA', NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(126, 'tatuape', '7932', '7fc346397dc202259f27edc7d2adec88', '21708912Lu', 'fc0ceef07172ec92468e6ab6bd21aa45', 'LUIZA DIAS ALMEIDA', NULL, NULL, 16, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(127, 'tatuape', '7935', '439d8c975f26e5005dcdbf41b0d84161', 'mcgcjs28', '358d7b3480ae022e5d4b1e01214be8e2', 'CARLA JOCIANE', NULL, NULL, 39, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(128, 'tatuape', '7943', '0163cceb20f5ca7b313419c068abd9dc', 'anabeatriz1201', '10e68f0d22f2cb2cbb4db3e4397e51f9', 'ANA BEATRIZ SALDANHA', NULL, NULL, 14, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(129, 'tatuape', '7930', '2b52541089a553056a5558611365cc6a', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'KAROL GERVÃSIO SODRÃ‰', NULL, NULL, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(130, 'tatuape', '7927', '3dcaf04c357c577a857f3ffadc555f9b', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'LUIZ FELIPE MORETTI DE PAULA', NULL, NULL, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(131, 'tatuape', '7951', '416e5cf0acb7e553a880b7647903da6e', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'NAYARA THAYNA FERREIRA FERRO', NULL, NULL, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(132, 'tatuape', '7929', '07d2c6fd5472b9796184e152bd92a535', 'experience', 'd6e047923b2b0f63a7a03c66074a0151', 'SONIA MARIA DA SILVA', NULL, NULL, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `questoes_provas`
--
ALTER TABLE `questoes_provas`
  ADD CONSTRAINT `questoes_provas_ibfk_1` FOREIGN KEY (`modulo_prova`) REFERENCES `aulas` (`id`),
  ADD CONSTRAINT `questoes_provas_ibfk_2` FOREIGN KEY (`id_resposta_correta`) REFERENCES `respostas_corretas` (`id`);

--
-- Limitadores para a tabela `respostas_corretas`
--
ALTER TABLE `respostas_corretas`
  ADD CONSTRAINT `respostas_corretas_ibfk_1` FOREIGN KEY (`modulo_resposta`) REFERENCES `aulas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
