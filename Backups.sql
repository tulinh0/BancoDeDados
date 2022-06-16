-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: projeto_video
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.21.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrinho` (
  `carrinho_id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(150) DEFAULT NULL,
  `filme` varchar(100) NOT NULL,
  `servico` varchar(20) DEFAULT NULL,
  `valor` varchar(15) NOT NULL,
  `qtdTelas` int DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`carrinho_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho`
--

LOCK TABLES `carrinho` WRITE;
/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupom`
--

DROP TABLE IF EXISTS `cupom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cupom` (
  `cupom_id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) DEFAULT NULL,
  `desconto` decimal(3,2) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  PRIMARY KEY (`cupom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupom`
--

LOCK TABLES `cupom` WRITE;
/*!40000 ALTER TABLE `cupom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cupom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmes` (
  `filmes_id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `ano` int DEFAULT NULL,
  `sinopse` mediumtext,
  `imagem` mediumtext,
  `promo` int DEFAULT '0',
  `trailer` varchar(200) DEFAULT NULL,
  `valor` varchar(15) DEFAULT '10.00',
  PRIMARY KEY (`filmes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,'Desconhecido','Suspense',2011,'Depois de um acidente de carro em Berlim, o médico Martin Harris acorda do coma num mundo em caos: sua esposa não o reconhece, outro homem assumiu sua identidade e assassinos misteriosos o perseguem. As autoridades não acreditam em suas alegações e ele precisa fugir. Com uma aliada inusitada, Martin é forçado a decidir até onde que ir na busca da verdade.','suspense2.jpg',1,'https://www.youtube.com/embed/GQIUe5tMuMk','10.00'),(2,'A menina que matou os pais','Drama',2021,'A Menina que Matou os Pais se passa em 2002, quando um crime cometido em São Paulo chocou o Brasil. A jovem Suzane von Richthofen (Carla Diaz), junto ao seu namorado Daniel Cravinhos (Leonardo Bittencourt) e seu irmão Cristian (Allan Souza Lima), assassinaram seu pai Manfred von Richthofen (Leonardo Medeiros) e sua mãe Marísia (Vera Zimmerman). Dezoito anos depois, o caso é revisitado em A Menina que Matou os Pais sob o ponto de vista de Daniel, que revela seus motivos para participar do assassinato.','suspense.jpg',0,'https://www.youtube.com/embed/KyhQNjR7zy4','10.00'),(3,'Jogos Vorazes-Em Chamas','Ficção Científica',2013,'Após saírem vencedores da última edição dos Jogos Vorazes, as atitudes desafiadoras de Katniss e Peeta acabam inspirando uma rebelião contra a opressiva Capital. No entanto, os dois são obrigados a participarem de uma edição especial do torneio, o Massacre Quaternário, que acontece apenas a cada 25 anos, e reúne vencedores das edições anteriores.','aventura2.jpg',0,'https://www.youtube.com/embed/cKyrXQSsSl4','10.00'),(4,'Eduardo e Mônica','Romance',2022,'Em um dia atípico, uma série de coincidências levam Eduardo a conhecer Mônica em uma festa. Uma curiosidade é despertada entre os dois e, apesar de não serem parecidos, eles se apaixonam perdidamente. Em Brasília, na década de 1980, esse amor precisa amadurecer e aprender a superar as diferenças.','romance.jpg',0,'https://www.youtube.com/embed/IoSR5tl1AAU','10.00'),(5,'Dr Estranho 2','Ação',2022,'Em Doutor Estranho no Multiverso da Loucura, após derrotar Dormammu e enfrentar Thanos nos eventos de Vingadores: Ultimato, o Mago Supremo, Stephen Strange (Benedict Cumberbatch), e seu parceiro Wong (Benedict Wong), continuam suas pesquisas sobre a Joia do Tempo.','acao.jpg',0,'https://www.youtube.com/embed/QNKqTtc3MZs','10.00'),(6,'Up - Altas Aventuras','Animação',2009,'Carl Fredricksen (Edward Asner) é um vendedor de balões que, aos 78 anos, está prestes a perder a casa em que sempre viveu com sua esposa, a falecida Ellie. O terreno onde a casa fica localizada interessa a um empresário, que deseja construir no local um edifício. Após um incidente em que acerta um homem com sua bengala, Carl é considerado uma ameaça pública e forçado a ser internado em um asilo.','animacao5.jpg',0,'https://www.youtube.com/embed/yADAYe9efE0','10.00'),(7,'A Era do Gelo: Histórias do Scrat','Comédia',2022,'O infeliz Scrat que vivencia os altos e baixos da paternidade, como ele e o adorável e travesso Baby Scrat, alternadamente se unam e lutem pela posse da altamente preciosa Noz.','animacao2.jpg',1,'https://www.youtube.com/embed/GWNqwzTdGvU','10.00'),(8,'Nas Garras do Terror','Terror',2022,'Depois de estourar um pneu no meio do deserto, os melhores amigos Kyle e Julia são forçados a passar a noite em uma remota cidade fantasma. Enquanto os relutantes se acomodam à noite, nas montanhas não tão distantes, os problemas aparecem.','terror2.jpg',0,'https://www.youtube.com/embed/hqafUaTTRjI','10.00'),(9,'As Patricinhas de Beverly Hills','Comédia',1995,'Superficial, rica e socialmente bem-sucedida, Cher é a garota mais popular de sua escola, em Beverly Hills. Ela decide fazer boas ações e começa bancando o cupido para dois professores do colégio que, eventualmente, começam a namorar. Empolgada com o resultado, Cher resolve fazer uma transformação em uma nova estudante um pouco cafona. Mas quando a amiga se torna mais popular do que ela, a menina rica fica decepcionada','comedia4.jpg',1,'https://www.youtube.com/embed/Mgjwq1ZzdPQ','10.00'),(10,'Com quem será?','Romance',2018,'A história de dois miseráveis e desagradáveis convidados de um casamento, Lindsay e Frank, que desenvolvem um carinho mútuo, apesar das suas diferenças. O problema é que avançarem significa ter esperança e confiança, ultrapassando um grande historial de relações amorosas falhadas, o que vai ser muito complicado. Na realização está Victor Levin, principal argumentista da lendária série \"Doido por Ti\" e que também esteve envolvido em \"Mad Men.\"Já foram par romântico em \"Drácula de Bram Stoker\" (1992) e acabaram juntos outra vez de forma inconvencional por Richard Linklater em \"A Scanner Darkly - O Homem Duplo\" (2006).','romance3.jpg',0,'https://www.youtube.com/embed/xM7bHc45UX4','10.00'),(11,'Miuda e o Guarda-Chuva','Animação',2019,'A garota Miúda está acostumada a cuidar de sua pequena planta carnívora de estimação, a quem oferece várias formigas. A menina tem o sonho de que a amada planta a trate pelo nome, mas esta exige algo em troca: uma quantidade cada vez maior de formigas. Os insetos, no entanto, não gostam nada deste plano e decidem se unir para combater Miúda e sua planta.','animacao6.jpg',1,'https://www.youtube.com/embed/sTbPzV21CdE','10.00'),(12,'Tarsilinha','Animação',2022,'Tarsilinha é uma menina de oito anos que descobriu que a memória de sua mãe foi roubada. Para recuperar todas as lembranças, ela embarca em uma jornada desafiadora, viajando por mundos fantásticos e enfrentando inimigos poderosos, para reunir todas as memórias novamente. Tarsilinha enfrentará seus maiores medos para cumprir a missão.','animacao7.jpg',1,'https://www.youtube.com/embed/9AOI9rc_qYg','10.00'),(13,'Sonic: O FIlme','Animação',2022,'O Dr. Robotnik retorna à procura de uma esmeralda mística que tem o poder de destruir civilizações. Para detê-lo, Sonic se une a seu antigo parceiro, Tails, e parte em uma jornada para encontrar a joia antes que ela caia em mãos erradas.','animacao4.jpg',1,'https://www.youtube.com/embed/zQEjE_M2Esw','10.00'),(14,'Capitã Marvel','Ação',2019,'Capitã Marvel, parte do exército de elite dos Kree, uma raça alienígena, encontra-se no meio de uma batalha entre seu povo e os Skrulls. Ao tentar impedir uma invasão de larga escala na Terra, em 1995, ela tem memórias recorrentes de uma outra vida, como Carol Danvers, agente da Força Aérea norte-americana. Com a ajuda de Nick Fury, Capitã Marvel precisa descobrir os segredos de seu passado e pôr um fim ao conflito intergalático com os Skrulls.','acao2.jpg',1,'https://www.youtube.com/embed/JhY6Yy4wtb4','10.00'),(15,'Mulher Maravilha','Ação',2017,'Treinada desde cedo para ser uma guerreira imbatível, Diana Prince nunca saiu da paradisíaca ilha em que é reconhecida como princesa das Amazonas. Quando o piloto Steve Trevor sofre um acidente e cai em uma praia do local, ela descobre que uma guerra sem precedentes está se espalhando pelo mundo e decide deixar seu lar certa de que pode parar o conflito. Lutando para acabar com a guerra, Diana percebe o alcance de seus poderes e sua verdadeira missão na Terra.','acao3.jpg',1,'https://www.youtube.com/embed/tqfOtQ5auBA','10.00'),(16,'Jumanji','Aventura',2017,'Quatro adolescentes encontram um videogame cuja ação se passa em uma floresta tropical. Empolgados com o jogo, eles escolhem seus avatares para o desafio, mas um evento inesperado faz com que eles sejam transportados para dentro do universo fictício, transformando-os nos personagens da aventura.\n','aventura.jpg',0,'https://www.youtube.com/embed/fwt6h6lt1Nc','10.00'),(17,'Questão de Tempo','Romance',2013,'Exatos dez anos após Simplesmente Amor, o diretor Richard Curtis surge com mais uma deliciosa comédia romântica. Trata-se de Questão de Tempo, longa inteligente, divertido e bonito, além de muito original. Aos 21 anos, Tim Lake (Domhnall Gleeson) descobre que pode viajar no tempo... Na noite depois de outra festa de Ano Novo pouco entusiasmada, o pai de Tim (Bill Nighy) diz para seu filho que os homens de sua família possuem a habilidade de viajar através do tempo.','romance2.jpg',1,'https://www.youtube.com/embed/-0gX9g4Lxm8','10.00'),(18,'Ameaça Profunda','Ficção',2020,'Um grupo de pesquisadores se encontra num laboratório subaquático a onze mil metros de profundidade, quando um terremoto causa a destruição do veículo e expõe a equipe ao risco de morte. Eles são obrigados a caminhar nas profundezas marítimas, com quantidade insuficiente de oxigênio, para tentarem sobreviver. No entanto, conforme se deslocam pelo fundo do mar, descobrem que não estão sozinhos.','ficcao.jpg',0,'https://www.youtube.com/embed/RLcmCxDRzTA','10.00'),(19,'Bob Esponja: O Incrível Resgate','Animação',2020,'Em mais uma tentativa de roubar a receita do hambúrguer de siri, cria uma maquina clonadora de robôs, porém ele começa o processo deixando a alavanca no modo não obedecer, e assim, acaba criando uma horda de robôs descontrolados que não obedecem a ele e que infestam a fenda do Biquíni.\nEntão ,cabe a Bob Esponja e seus amigos, livrar a Fenda do Biquíni destes robôs e restabelecer a ordem no fundo do mar.\nO jogo é repleto de Hordas de Monstros e podemos intercalar entre 3 personagens icônicos, Bob Esponja, Patrick Estrela e Sandy Bochechas, cada um com habilidades únicas.','animacao3.jpg',0,'https://www.youtube.com/embed/NORzSapZfVc','10.00'),(20,'O Quarto dos Esquecidos','Terror',2016,'Dana (Kate Beckinsale) e David (Mel Raido) formam um casal marcado por um trauma recente. Eles decidem sair da cidade grande e compram um casarão abandonado numa área rural, onde vão morar junto do filho Lucas (Duncan Joiner). Dana pretende usar seus conhecimentos como arquiteta para reconstruir o lugar e superar as dores passadas e assim descobre a existência de um quarto escondido, que não constava na planta.','terror3.jpg',0,'https://www.youtube.com/embed/ND_ojIKvVXA','10.00'),(21,'Jurassic World: Domínio','Aventura',2022,'A sequência do filme Jurassic World, a sexta parcela da série Jurassic Park e o terceiro filme da série Jurassic World acontece quatro anos após a destruição da Isla Nublar. Os dinossauros agora vivem – e caçam – ao lado de humanos em todo o mundo. Esse frágil equilíbrio remodelará o futuro e determinará, de uma vez por todas, se os seres humanos continuarão sendo os principais predadores em um planeta que agora compartilham com as criaturas mais temíveis da história.','aventura3.jpg',0,'https://www.youtube.com/embed/kATdt-lCnU8','10.00'),(22,'Animais Fantásticos: Os Segredos de Dumbledore','Fantasia',2022,'O professor Alvo Dumbledore (Jude Law) sabe que o poderoso mago das trevas Gellert Grindelwald (Mads Mikkelsen) está se movimentando para assumir o controle do mundo mágico. Incapaz de detê-lo sozinho, ele pede ao magizoologista Newt Scamander (Eddie Redmayne) para liderar uma intrépida equipe de bruxos, bruxas e um corajoso padeiro trouxa em uma missão perigosa, em que eles encontram velhos e novos animais fantásticos e entram em conflito com a crescente legião de seguidores de Grindelwald. Mas com tantas ameaças, quanto tempo poderá Dumbledore permanecer à margem do embate?','fantasia.jpg',0,'https://www.youtube.com/embed/LcCrLZceCmg','10.00');
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos` (
  `servico_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` decimal(6,2) NOT NULL,
  PRIMARY KEY (`servico_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (1,'Premium','assinatura','assinante mensal',49.90),(2,'Basico','aluguel','aluguel de filmes',20.90);
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usuario_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  `senha` varchar(8) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Adalberto','adalbert@hotmail.com',1199999999,'23456','premium'),(2,'Rita','rita@hotmail.com',1188888888,'123456','premium'),(3,'Luana','luana@gmail.com',999999,'12345678',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `vendas_id` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(50) NOT NULL,
  `servico` int NOT NULL,
  `valor` decimal(6,2) NOT NULL,
  `filme` varchar(50) NOT NULL,
  `qtdTelas` int NOT NULL,
  `descricao` longtext NOT NULL,
  PRIMARY KEY (`vendas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,'1',1,20.90,'2',1,'Aluguel'),(2,'2',2,49.90,'4',1,'Assinatura Premium'),(3,'1',2,20.90,'10',1,'Assinatura Básico');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-16 13:33:42
