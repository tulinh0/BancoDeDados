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
INSERT INTO `filmes` VALUES (1,'Desconhecido','Suspense',2011,'Depois de um acidente de carro em Berlim, o m??dico Martin Harris acorda do coma num mundo em caos: sua esposa n??o o reconhece, outro homem assumiu sua identidade e assassinos misteriosos o perseguem. As autoridades n??o acreditam em suas alega????es e ele precisa fugir. Com uma aliada inusitada, Martin ?? for??ado a decidir at?? onde que ir na busca da verdade.','suspense2.jpg',1,'https://www.youtube.com/embed/GQIUe5tMuMk','10.00'),(2,'A menina que matou os pais','Drama',2021,'A Menina que Matou os Pais se passa em 2002, quando um crime cometido em S??o Paulo chocou o Brasil. A jovem Suzane von Richthofen (Carla Diaz), junto ao seu namorado Daniel Cravinhos (Leonardo Bittencourt) e seu irm??o Cristian (Allan Souza Lima), assassinaram seu pai Manfred von Richthofen (Leonardo Medeiros) e sua m??e Mar??sia (Vera Zimmerman). Dezoito anos depois, o caso ?? revisitado em A Menina que Matou os Pais sob o ponto de vista de Daniel, que revela seus motivos para participar do assassinato.','suspense.jpg',0,'https://www.youtube.com/embed/KyhQNjR7zy4','10.00'),(3,'Jogos Vorazes-Em Chamas','Fic????o Cient??fica',2013,'Ap??s sa??rem vencedores da ??ltima edi????o dos Jogos Vorazes, as atitudes desafiadoras de Katniss e Peeta acabam inspirando uma rebeli??o contra a opressiva Capital. No entanto, os dois s??o obrigados a participarem de uma edi????o especial do torneio, o Massacre Quatern??rio, que acontece apenas a cada 25 anos, e re??ne vencedores das edi????es anteriores.','aventura2.jpg',0,'https://www.youtube.com/embed/cKyrXQSsSl4','10.00'),(4,'Eduardo e M??nica','Romance',2022,'Em um dia at??pico, uma s??rie de coincid??ncias levam Eduardo a conhecer M??nica em uma festa. Uma curiosidade ?? despertada entre os dois e, apesar de n??o serem parecidos, eles se apaixonam perdidamente. Em Bras??lia, na d??cada de 1980, esse amor precisa amadurecer e aprender a superar as diferen??as.','romance.jpg',0,'https://www.youtube.com/embed/IoSR5tl1AAU','10.00'),(5,'Dr Estranho 2','A????o',2022,'Em Doutor Estranho no Multiverso da Loucura, ap??s derrotar Dormammu e enfrentar Thanos nos eventos de Vingadores: Ultimato, o Mago Supremo, Stephen Strange (Benedict Cumberbatch), e seu parceiro Wong (Benedict Wong), continuam suas pesquisas sobre a Joia do Tempo.','acao.jpg',0,'https://www.youtube.com/embed/QNKqTtc3MZs','10.00'),(6,'Up - Altas Aventuras','Anima????o',2009,'Carl Fredricksen (Edward Asner) ?? um vendedor de bal??es que, aos 78 anos, est?? prestes a perder a casa em que sempre viveu com sua esposa, a falecida Ellie. O terreno onde a casa fica localizada interessa a um empres??rio, que deseja construir no local um edif??cio. Ap??s um incidente em que acerta um homem com sua bengala, Carl ?? considerado uma amea??a p??blica e for??ado a ser internado em um asilo.','animacao5.jpg',0,'https://www.youtube.com/embed/yADAYe9efE0','10.00'),(7,'A Era do Gelo: Hist??rias do Scrat','Com??dia',2022,'O infeliz Scrat que vivencia os altos e baixos da paternidade, como ele e o ador??vel e travesso Baby Scrat, alternadamente se unam e lutem pela posse da altamente preciosa Noz.','animacao2.jpg',1,'https://www.youtube.com/embed/GWNqwzTdGvU','10.00'),(8,'Nas Garras do Terror','Terror',2022,'Depois de estourar um pneu no meio do deserto, os melhores amigos Kyle e Julia s??o for??ados a passar a noite em uma remota cidade fantasma. Enquanto os relutantes se acomodam ?? noite, nas montanhas n??o t??o distantes, os problemas aparecem.','terror2.jpg',0,'https://www.youtube.com/embed/hqafUaTTRjI','10.00'),(9,'As Patricinhas de Beverly Hills','Com??dia',1995,'Superficial, rica e socialmente bem-sucedida, Cher ?? a garota mais popular de sua escola, em Beverly Hills. Ela decide fazer boas a????es e come??a bancando o cupido para dois professores do col??gio que, eventualmente, come??am a namorar. Empolgada com o resultado, Cher resolve fazer uma transforma????o em uma nova estudante um pouco cafona. Mas quando a amiga se torna mais popular do que ela, a menina rica fica decepcionada','comedia4.jpg',1,'https://www.youtube.com/embed/Mgjwq1ZzdPQ','10.00'),(10,'Com quem ser???','Romance',2018,'A hist??ria de dois miser??veis e desagrad??veis convidados de um casamento, Lindsay e Frank, que desenvolvem um carinho m??tuo, apesar das suas diferen??as. O problema ?? que avan??arem significa ter esperan??a e confian??a, ultrapassando um grande historial de rela????es amorosas falhadas, o que vai ser muito complicado. Na realiza????o est?? Victor Levin, principal argumentista da lend??ria s??rie \"Doido por Ti\" e que tamb??m esteve envolvido em \"Mad Men.\"J?? foram par rom??ntico em \"Dr??cula de Bram Stoker\" (1992) e acabaram juntos outra vez de forma inconvencional por Richard Linklater em \"A Scanner Darkly - O Homem Duplo\" (2006).','romance3.jpg',0,'https://www.youtube.com/embed/xM7bHc45UX4','10.00'),(11,'Miuda e o Guarda-Chuva','Anima????o',2019,'A garota Mi??da est?? acostumada a cuidar de sua pequena planta carn??vora de estima????o, a quem oferece v??rias formigas. A menina tem o sonho de que a amada planta a trate pelo nome, mas esta exige algo em troca: uma quantidade cada vez maior de formigas. Os insetos, no entanto, n??o gostam nada deste plano e decidem se unir para combater Mi??da e sua planta.','animacao6.jpg',1,'https://www.youtube.com/embed/sTbPzV21CdE','10.00'),(12,'Tarsilinha','Anima????o',2022,'Tarsilinha ?? uma menina de oito anos que descobriu que a mem??ria de sua m??e foi roubada. Para recuperar todas as lembran??as, ela embarca em uma jornada desafiadora, viajando por mundos fant??sticos e enfrentando inimigos poderosos, para reunir todas as mem??rias novamente. Tarsilinha enfrentar?? seus maiores medos para cumprir a miss??o.','animacao7.jpg',1,'https://www.youtube.com/embed/9AOI9rc_qYg','10.00'),(13,'Sonic: O FIlme','Anima????o',2022,'O Dr. Robotnik retorna ?? procura de uma esmeralda m??stica que tem o poder de destruir civiliza????es. Para det??-lo, Sonic se une a seu antigo parceiro, Tails, e parte em uma jornada para encontrar a joia antes que ela caia em m??os erradas.','animacao4.jpg',1,'https://www.youtube.com/embed/zQEjE_M2Esw','10.00'),(14,'Capit?? Marvel','A????o',2019,'Capit?? Marvel, parte do ex??rcito de elite dos Kree, uma ra??a alien??gena, encontra-se no meio de uma batalha entre seu povo e os Skrulls. Ao tentar impedir uma invas??o de larga escala na Terra, em 1995, ela tem mem??rias recorrentes de uma outra vida, como Carol Danvers, agente da For??a A??rea norte-americana. Com a ajuda de Nick Fury, Capit?? Marvel precisa descobrir os segredos de seu passado e p??r um fim ao conflito intergal??tico com os Skrulls.','acao2.jpg',1,'https://www.youtube.com/embed/JhY6Yy4wtb4','10.00'),(15,'Mulher Maravilha','A????o',2017,'Treinada desde cedo para ser uma guerreira imbat??vel, Diana Prince nunca saiu da paradis??aca ilha em que ?? reconhecida como princesa das Amazonas. Quando o piloto Steve Trevor sofre um acidente e cai em uma praia do local, ela descobre que uma guerra sem precedentes est?? se espalhando pelo mundo e decide deixar seu lar certa de que pode parar o conflito. Lutando para acabar com a guerra, Diana percebe o alcance de seus poderes e sua verdadeira miss??o na Terra.','acao3.jpg',1,'https://www.youtube.com/embed/tqfOtQ5auBA','10.00'),(16,'Jumanji','Aventura',2017,'Quatro adolescentes encontram um videogame cuja a????o se passa em uma floresta tropical. Empolgados com o jogo, eles escolhem seus avatares para o desafio, mas um evento inesperado faz com que eles sejam transportados para dentro do universo fict??cio, transformando-os nos personagens da aventura.\n','aventura.jpg',0,'https://www.youtube.com/embed/fwt6h6lt1Nc','10.00'),(17,'Quest??o de Tempo','Romance',2013,'Exatos dez anos ap??s Simplesmente Amor, o diretor Richard Curtis surge com mais uma deliciosa com??dia rom??ntica. Trata-se de Quest??o de Tempo, longa inteligente, divertido e bonito, al??m de muito original. Aos 21 anos, Tim Lake (Domhnall Gleeson) descobre que pode viajar no tempo... Na noite depois de outra festa de Ano Novo pouco entusiasmada, o pai de Tim (Bill Nighy) diz para seu filho que os homens de sua fam??lia possuem a habilidade de viajar atrav??s do tempo.','romance2.jpg',1,'https://www.youtube.com/embed/-0gX9g4Lxm8','10.00'),(18,'Amea??a Profunda','Fic????o',2020,'Um grupo de pesquisadores se encontra num laborat??rio subaqu??tico a onze mil metros de profundidade, quando um terremoto causa a destrui????o do ve??culo e exp??e a equipe ao risco de morte. Eles s??o obrigados a caminhar nas profundezas mar??timas, com quantidade insuficiente de oxig??nio, para tentarem sobreviver. No entanto, conforme se deslocam pelo fundo do mar, descobrem que n??o est??o sozinhos.','ficcao.jpg',0,'https://www.youtube.com/embed/RLcmCxDRzTA','10.00'),(19,'Bob Esponja: O Incr??vel Resgate','Anima????o',2020,'Em mais uma tentativa de roubar a receita do hamb??rguer de siri, cria uma maquina clonadora de rob??s, por??m ele come??a o processo deixando a alavanca no modo n??o obedecer, e assim, acaba criando uma horda de rob??s descontrolados que n??o obedecem a ele e que infestam a fenda do Biqu??ni.\nEnt??o ,cabe a Bob Esponja e seus amigos, livrar a Fenda do Biqu??ni destes rob??s e restabelecer a ordem no fundo do mar.\nO jogo ?? repleto de Hordas de Monstros e podemos intercalar entre 3 personagens ic??nicos, Bob Esponja, Patrick Estrela e Sandy Bochechas, cada um com habilidades ??nicas.','animacao3.jpg',0,'https://www.youtube.com/embed/NORzSapZfVc','10.00'),(20,'O Quarto dos Esquecidos','Terror',2016,'Dana (Kate Beckinsale) e David (Mel Raido) formam um casal marcado por um trauma recente. Eles decidem sair da cidade grande e compram um casar??o abandonado numa ??rea rural, onde v??o morar junto do filho Lucas (Duncan Joiner). Dana pretende usar seus conhecimentos como arquiteta para reconstruir o lugar e superar as dores passadas e assim descobre a exist??ncia de um quarto escondido, que n??o constava na planta.','terror3.jpg',0,'https://www.youtube.com/embed/ND_ojIKvVXA','10.00'),(21,'Jurassic World: Dom??nio','Aventura',2022,'A sequ??ncia do filme Jurassic World, a sexta parcela da s??rie Jurassic Park e o terceiro filme da s??rie Jurassic World acontece quatro anos ap??s a destrui????o da Isla Nublar. Os dinossauros agora vivem ??? e ca??am ??? ao lado de humanos em todo o mundo. Esse fr??gil equil??brio remodelar?? o futuro e determinar??, de uma vez por todas, se os seres humanos continuar??o sendo os principais predadores em um planeta que agora compartilham com as criaturas mais tem??veis da hist??ria.','aventura3.jpg',0,'https://www.youtube.com/embed/kATdt-lCnU8','10.00'),(22,'Animais Fant??sticos: Os Segredos de Dumbledore','Fantasia',2022,'O professor Alvo Dumbledore (Jude Law) sabe que o poderoso mago das trevas Gellert Grindelwald (Mads Mikkelsen) est?? se movimentando para assumir o controle do mundo m??gico. Incapaz de det??-lo sozinho, ele pede ao magizoologista Newt Scamander (Eddie Redmayne) para liderar uma intr??pida equipe de bruxos, bruxas e um corajoso padeiro trouxa em uma miss??o perigosa, em que eles encontram velhos e novos animais fant??sticos e entram em conflito com a crescente legi??o de seguidores de Grindelwald. Mas com tantas amea??as, quanto tempo poder?? Dumbledore permanecer ?? margem do embate?','fantasia.jpg',0,'https://www.youtube.com/embed/LcCrLZceCmg','10.00');
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
INSERT INTO `vendas` VALUES (1,'1',1,20.90,'2',1,'Aluguel'),(2,'2',2,49.90,'4',1,'Assinatura Premium'),(3,'1',2,20.90,'10',1,'Assinatura B??sico');
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
