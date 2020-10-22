-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Out-2020 às 03:07
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1940),
(1941),
(1942),
(1943),
(1944),
(1945),
(1946),
(1947),
(1948),
(1949),
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entretenimento'),
(3, 'Política'),
(4, 'Saúde'),
(5, 'Educação'),
(6, 'Infra-Estrutura'),
(7, 'Fofoca'),
(8, 'Artigo científico'),
(9, 'Sneakers');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `materia`
--

CREATE TABLE `materia` (
  `codMateria` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `noticia` text,
  `codRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `materia`
--

INSERT INTO `materia` (`codMateria`, `titulo`, `noticia`, `codRedator`, `codCategoria`, `ano`, `mes`, `dia`) VALUES
(1, 'Kassio Marques é aprovado pelo Senado e assumirá vaga no STF', 'O plenário do Senado aprovou nesta quarta-feira (21), por 57 votos a 10, a indicação do desembargador federal Kassio Marques para assumir uma cadeira de ministro do Supremo Tribunal Federal (STF). O jurista foi a primeira indicação do presidente Jair Bolsonaro para a Corte.\r\n\r\nCom a aprovação, Marques substituirá o ministro Celso de Mello, que se aposentou após 31 anos no STF. O tribunal é composto por 11 ministros.\r\n\r\nAlém dos 57 votos favoráveis e 10 votos contrários, o placar registrou uma abstenção. No Senado, todas as votações relacionadas à indicação de autoridades são secretas, ou seja, a posição individual de cada parlamentar não é divulgada.\r\n\r\nAntes da aprovação no plenário, Marques foi sabatinado pela Comissão de Constituição e Justiça (CCJ) do Senado. Ele tem 48 anos de idade e poderá permanecer no STF até 2047, quando completará 75 anos – idade pela qual os ministros se aposentam de forma compulsória, pela regra atual.\r\n\r\nNatural de Teresina (PI), Kassio Marques foi advogado por 15 anos, fez parte da Comissão Nacional de Direito Eleitoral e Reforma Política da Ordem dos Advogados do Brasil (OAB) do Piauí e também foi juiz do Tribunal Regional Eleitoral do estado.\r\n\r\nDesde 2011, Marques é um dos desembargadores do Tribunal Regional Federal da 1ª Região (TRF-1), cuja sede fica em Brasília. Ele foi escolhido para o tribunal pela então presidente Dilma Rousseff e ingressou na Corte na cota de vagas para profissionais oriundos da advocacia.\r\n\r\nAo ser indicado por Bolsonaro, Kassio Marques foi elogiado por magistrados e pela OAB. Porém, recebeu críticas de apoiadores do presidente, incomodados com o apoio recebido pelo desembargador dos ministros do STF Dias Toffoli e Gilmar Mendes e de políticos de partidos do bloco partidário conhecido na Câmara por \"Centrão\".\r\n\r\nSabatina\r\nKassio Marques foi sabatinado nesta quarta-feira (21) pela CCJ do Senado, etapa obrigatória do rito exigido para assumir a cadeira no STF. Entre outros temas, o jurista afirmou que:\r\n\r\na prisão após condenação em segunda instância deve ser discutida pelo Congresso Nacional;\r\n\r\na defesa da democracia é o \"pilar fundamental\" da Constituição;\r\né um \"defensor do direito à vida\";\r\no \"garantismo não é sinônimo de leniência no combate à corrupção\";\r\nnão tem \"nada contra nenhuma operação\", mas que o Judiciário pode \"promover os ajustes que se façam necessários\".\r\n\r\nCVM\r\nO plenário do Senado também aprovou a indicação de Alexandre Costa Rangel, feita por Bolsonaro, para o cargo de diretor da Comissão de Valores Mobiliários (CVM), com mandato até 31 de dezembro de 2024. Rangel teve 50 a favor da indicação e 11 contrários.\r\n\r\nRangel é advogado, formado pela Universidade do Estado do Rio de Janeiro (UERJ), e sócio fundador de um escritório de advocacia especializado em mercados de capitais, fundos de investimentos e disputas administrativas e societárias.', 5, 3, 2020, 10, 21),
(2, 'Carlinhos Maia ganha estátua, mas população impede instalação', 'Natural de Penedo, em Alagoas, Carlinhos Maia foi homenageado pela Prefeitura da cidade e ganhou uma estátua. A imagem do influenciador digital seria colocada na orla de Penedo, no bairro Barra Vermelho, porém, os moradores do local impediram a instalação.\r\n\r\nUm vídeo publicado no Twitter mostra os funcionários da Prefeitura colocando a estátua de volta no caminhão e sendo levada embora depois da pressão popular.\r\n\r\nNuma página dedicada ao bairro, criada no Facebook, foi feita uma publicação que critica a homenagem e alega que há outros representantes da cidade que mereciam ser exaltados.\r\n\r\n\"Hoje, nós deparamos com uma situação engraçada, para não falar outra coisa. Nada contra o Carlinhos Maia, uma pessoa que divulga nossa cidade, leva diversão aos internautas, ajuda muita gente... Porém, acharam de colocar uma estátua dele na nossa orla, nada demais, desde que primeiramente homenageassem aos nossos. Temos tantas pessoas que merecem todo nosso reconhecimento,  como por exemplo Sr Toninho Pescador que a pouco tempo recebeu a comenda de Guardião das Águas do Velho Chico\", diz parte do texto.\r\n\r\nCarlinhos usou as redes sociais para lamentar as críticas: \"Eu não estou com raiva, apenas entristecido e decepcionado. Eu levo o nome da minha cidade todos os dias para onde eu vou. Para onde eu estou levo o nome de Penedo\".\r\n\r\nO influenciador ainda disse que pensou em colocar a estátua na orla para atrair mais turistas e reforçou: \"Que fique onde a Prefeitura achar melhor\".', 1, 7, 2020, 10, 21),
(3, 'A Segunda Parte Da Nova Colab Vans X MoMa Foi Revelada', 'Depois de vermos obras de Salvador Dalí, Wassily Kandinsky e Claude Monet estampando tênis e roupas da VANS na primeira parte da nova coleção da marca em parceria com o Museu de Arte Moderna de Nova York, chegou a hora de também conhecermos a segunda parte dela.\r\n\r\nNessa nova leva, os clássicos da marca californiana foram cobertos por trabalhos de Jackson Pollock, Edvard Munch, Liubov Popova e Faith Ringgold.\r\n\r\nO expressionismo abstrato de Pollock, que tem como principais características as técnicas de gotejamento e de respingos, foi tema de um AUTHENTIC com cabedal e solado tomados pela estética do quadro One: No. 31.\r\n\r\nQuem também aparece é o icônico grito de Munch, que estrela uma das duas colorways do ERA dessa coleção.\r\n\r\nA segunda versão da silhueta foi tela de duas das artes mais famosas de Faith Ringgold, chamadas Woman Free Yourself e Freedom Woman Now. Ambas foram feitas pela artistas após a prisão de Angela Davis, sua parceira em diferentes lutas contra a desigualdade social. Além do ERA, Ringgold também assina o único SLIP-ON da colab, baseado na obra Seven Passages to a Flight.\r\n\r\nPor fim, temos o SK8-HI de Liubov Popova, com pés diferentes e estampados com uma das maiores obras da artista russa, pintada em 1917.\r\n\r\nFora do Brasil, essa segunda entrega está programada para 11 de novembro. Aqui no nosso país, a chegada da primeira e da segunda parte da coleção deve acontecer junta, mas ainda sem uma data oficial para seu lançamento.\r\n\r\nConheça abaixo todos os itens adicionais dessa coleção, como bonés, chapéus bucket, camisas, blusas, etc.', 4, 9, 2020, 10, 21),
(4, 'Os Pés Também Poderão Ser Protegidos Do Frio Pela Li-Ning', 'A AURORA GAITER BOOT da LI-NING deve ser uma das grandes apostas da marca chinesa no combate às estações mais frias do ano, que se aproximam do hemisfério norte nesse final de ano.\r\n\r\nSobre um solado robusto, o cabedal é construído como se fosse uma capa, que é ajustada com a ajuda de cadarços e uma tira com fivela Fidlock.\r\n\r\nPreto e branco são as opções de colorways, e as vendas da AURORA já estão rolando em países como o Japão.', 4, 9, 2020, 10, 21),
(5, 'Ester coloca ponto final na relação com Cassiano: \'O Alberto conseguiu\'', 'Alberto (Igor Rickli) colocou Ester (Grazi Massafera) em uma situação complicadíssima. Em Flor do Caribe, o empresário diz a esposa que está disposto a deixar Cassiano (Henri Castelli) em paz caso ela nunca mais procure pelo piloto. E mais: a chantagem também inclui tirar os filhos da dona da ONG se ela sair de casa.\r\n\r\nCom medo de perder a guarda dos filhos, Ester procura Cassiano para ter a conversa mais difícil da sua vida:\r\n\"O Alberto conseguiu separar a gente.\"\r\n\r\nEla explica que Cassiano não vai conseguir se esconder a vida toda da polícia, afinal, Alberto armou muito bem a armadilha. Por isso, Ester diz que a única maneira de deter o empresário é aceitar o acordo. Cassiano quer saber mais e ela conta:\r\n\"Ele disse que se eu me afastar de você definitivamente, que ele paga o delegado para rasgar as acusações que ele tem contra você.\"\r\n\r\nCassiano não concorda e diz que ela não tem que se submeter a uma chantagem de Alberto. Mas Ester afirma que não pode correr o risco de ficar sem as crianças. O piloto entende, mas fica inconformado com a separação:\r\n\"Então quer dizer que, para salvar a minha pele, para preservar o Samuca e a Laurinha, você vai fazer o jogo do Alberto? Para eu ter a minha liberdade você vai ser prisioneira dele, Ester?\"\r\n\r\nEster diz que sim e avisa que está nas mãos de Alberto. Ela corre para os braços do amado e enquanto se beijam, emocionados, Cassiano confessa: \"Eu não me conformo que esse será o nosso último abraço. Nem esse beijo. Ele também não vai ser o último. A nossa história não vai acabar assim. Te juro que esse não vai ser o nosso fim.\"\r\n\r\nContinue acompanhando as emoções de Flor do Caribe e saiba tudo sobre os próximos capítulos no resumo da semana.', 3, 2, 2020, 10, 21),
(6, 'Ansu Fati é alvo de racismo de jornal espanhol e Griezmann sai em defesa: \"Merece respeito\"', 'Após marcar um dos gols do Barcelona na vitória por 5 a 1 contra o Ferencváros, pela Liga dos Campeões, Ansu Fati foi alvo de comparações racistas do jornal \"ABC\", da Espanha. Em sua crônica do jogo, o jornalista Salvador Sostres compara a velocidade do jovem jogador a de vendedores ambulantes negros fugindo da polícia.\r\n\r\nO texto está no ar no portal do veículo e também foi publicado na versão impressa do jornal. O caso veio à tona após o atacante Griezmann, companheiro de clube de Fati, sair em defesa do jogador nas redes sociais. O francês destacou a parte do jornal que faz as menções de cunho racista e diz:\r\n\"Ansu é um garoto excepcional que merece respeito como qualquer ser humano. Não ao racismo e não à falta de educação\"\r\n\r\nO autor do texto do jornal espanhol descreve uma cena na Paseo de Gracia, uma das avenidas mais movimentadas de Barcelona. Em um parágrafo, o jornalista compara as arrancadas do jogador de futebol com a situação em que vendedores ambulantes, enfatizando que estes são negros, têm que correr para fugir da guarda local da cidade por conta do trabalho informal. Confira o trecho:\r\n\r\n\"Ansu correndo tem algo de gazela, de mantero (vendedor ambulante) jovem e negro que, de repente, seria visto correndo no Paseo de Gracia quando alguém grita: \"Água, água!\", anunciando que a Guarda Urbana teria chegado\", descreve o artigo.\r\n\r\n\" Estampas selvagens no coração da cidade. Agora isso não acontece, porque para Ada Colau (prefeita de Barcelona), os delinquentes são os policiais e não os ambulantes, que já não têm que sair correndo mais. Também é certo que sem turistas, o negócio enfraquece bastante\", publicou Sostres.\r\n\r\nO Barcelona e Ansu Fati não se pronunciaram. A publicação segue no ar, e nem o jornal \"ABC\", nem o jornalista Salvador Sostres se manifestaram, apesar da pressão dos internautas espanhóis.', 2, 1, 2020, 10, 21),
(7, 'Abaixo-assinado pede que MEC suspenda clássicos infantis com histórias modificadas', 'Um abaixo-assinado organizado por cerca de 3 mil educadores, escritores e ilustradores pede que o Ministério da Educação (MEC) suspenda a adoção de livros infantis adaptados. No programa “Conta para Mim”, voltado a famílias vulneráveis, foram disponibilizadas versões modificadas de clássicos infantis, como “João e Maria”.\r\n\r\nAs histórias alteradas estão no site do programa e serão impressas e distribuídas, segundo o MEC, no ano que vem. O objetivo é oferecer apoio para a alfabetização das crianças.\r\n\r\nSegundo Pedro Bandeira, um dos maiores autores da literatura infantil do país, alguns elementos de clássicos não podem ser modificados. “Em ‘João e Maria’, por exemplo, é importante que os personagens sejam abandonados pelos pais na floresta. A criança, ouvindo a história no colo, treme de medo. Mas, se está no colinho, está vendo que não é de verdade”, diz.\r\n\r\nNa nova versão, João e Maria apenas saem para passear na floresta, e a mãe dá a eles pedrinhas coloridas, para que possam retornar à casa. “Já não é mais João e Maria, ponham outro nome”, protesta Bandeira.\r\n\r\nEm nota, o MEC defende a “livre adaptação das obras” e diz que pretende imprimir os livros também para o programa \"Criança Feliz\", do Ministério da Cidadania.\r\n\r\nCristiane Tavares, mestre em crítica literária e uma das signatárias do documento contra as adaptações, diz que “pesquisadores, bibliotecários, pesquisadores de universidades públicas, escritores e ilustradores de livros infantis, pessoas do Brasil e de fora, estão muito insatisfeitas com essa coleção e com todo o retrocesso que ela representa”.\r\n\r\n', 5, 5, 2020, 10, 20),
(8, 'Veja quais são as vacinas contra a Covid-19 que estão em teste em humanos ao redor do mundo', 'Pesquisadores de todo o mundo buscam por uma candidata segura e eficaz para vacina contra o novo coronavírus. Até a última atualização desta reportagem, em 21 de outubro, a Organização Mundial da Saúde (OMS) já havia registrado cerca de 179 pesquisas em desenvolvimento, com ao menos 44 delas sendo testadas em humanos – destas, 10 estão na terceira e última fase.\r\n\r\nA China é o país com mais candidatas em Fase 3 na corrida por uma imunização, com quatro vacinas experimentais (leia mais sobre as etapas adiante); Estados Unidos, Alemanha, Reino Unido e Rússia também têm pesquisas avançadas. Veja quais são as 10 vacinas nesta etapa:\r\n\r\nSputnik V (Rússia)\r\nA vacina russa Sputnik V, desenvolvida pelo Instituto Gamaleya está, segundo a OMS, na terceira fase de testes em humanos. O estudo mais recente publicado na revista científica \"The Lancet\" em 4 de setembro indicou que a candidata russa não teve efeitos adversos e induziu resposta imune.\r\n\r\nOs cientistas reconheceram, no entanto, a necessidade de mais testes para comprovar a eficácia da vacina. Ainda assim, o governo da Rússia já autorizou a produção deste imunizante em grande escala, medida que foi criticada pela comunidade internacional.\r\n\r\nAZD1222 (Reino Unido)\r\nMais conhecida no Brasil como a vacina da Universidade de Oxford, a AZD1222 é a que está há mais tempo na Fase 3 dos testes em humanos. Ela usa um adenovírus que afeta chimpanzés para transportar o RNA do Sars-Cov-2 para dentro do corpo humano.\r\n\r\nEla começou seus testes em milhares de voluntários ainda em abril e foi a primeira a ser testada no Brasil, com 5 mil voluntários em 3 estados. Segundo o Ministério da Saúde, caso seja aprovada na terceira fase, 30 milhões de doses dessa vacina serão distribuídas no Brasil em janeiro de 2021.\r\n\r\nmRNA1273 (EUA)\r\nA candidata da farmacêutica norte-americana Moderna, desenvolvida com apoio do governo dos Estados Unidos, é feita a partir do RNA mensageiro – por isso o nome mRNA – que introduz no corpo humano um pedaço do código genético da proteína S do vírus, ensinando-o como responder a uma futura infecção.\r\n\r\nA vacina recebeu uma autorização especial da agência de vigilância sanitária dos EUA (FDA da sigla em inglês) que autorizou a equipe de pesquisadores a avançar, de maneira mais rápida, para as fases finais do estudo.\r\n\r\nCoronaVac (China)\r\nA candidata da chinesa Sinovac é testada no Brasil com o apoio do Instituto Butantan (SP). Ela teve seus primeiros resultados anunciados em junho, sem efeitos adversos graves e produção de resposta imunológica em 743 voluntários iniciais.\r\n\r\nEla é uma vacina de vírus inativado, o que quer dizer que é feita a partir do vírus morto ou por partes dele – incapazes de se replicar. No final de agosto, o governo chinês autorizou o uso emergencial desta vacina no país para pacientes expostos ao risco, como trabalhadores da saúde e agentes de fronteira (veja o vídeo abaixo).\r\n\r\nBNT162 (EUA e Alemanha)\r\nA candidata da farmacêutica norte-americana Pfizer, desenvolvida em parceria com a empresa de biotecnologia alemã BioNTech, também usa o mRNA para codificar proteínas virais. Ela começou a ser testada na Fase 3 no final de julho.\r\n\r\nA candidata é testada em voluntários brasileiros desde o começo de agosto e ela se mostrou promissora em sua fase inicial. Um artigo publicado no dia 20 de julho como prévia (pré-print), apontou que a substância é segura e capaz de induzir resposta imunológica.\r\n\r\nSinopharm (China)\r\nTestada nos Emirados Árabes, a vacina da Sinopharm em parceria com o Instituto de Produtos Biológicos de Wuhan poderá estar pronta no final de 2020, segundo executivos da farmacêutica. A candidata a vacina chinesa será testada no Brasil em um acordo com o governo do estado do Paraná.\r\n\r\nA Sinopharm também testa uma segunda candidata de vírus inativado, feita com o Instituto de Produtos Biológicos de Pequim: 5 mil voluntários nos Emirados Árabes já foram vacinados e outros 5 mil receberam a imunização na capital chinesa.\r\n\r\nAD5-nCov (China)\r\nA candidata chinesa da CanSino Biological, uma das quatro testadas no Brasil, está na sua terceira fase clínica. A AD5-nCov começou sua prova de segurança logo em março com um ensaio controlado com 500 participantes em que provou que induz a criação de anticorpos.\r\n\r\nOs resultados das pesquisas devem ser divulgados entre dezembro de 2020 e janeiro de 2021, segundo os cientistas, mas antes disso, o governo chinês já concedeu sua primeira patente, isso significa que a CanSino tem a propriedade sobre a vacina e o direito de vender as doses.\r\n\r\nAd26 SARS-Cov-2 (EUA)\r\nA candidata norte-americana da Janssen Pharmaceutical, que recebeu autorização da Anvisa para ser testada no Brasil, também está em sua terceira e última fase de testes em humanos. Ainda não há informações sobre voluntários ou institutos responsáveis pela aplicação dos testes.\r\n\r\nNVX-CoV2373 (EUA)\r\nA segunda candidata norte-americana a entrar na última fase de testes é da empresa de biotecnologia Novavax. De acordo com a companhia, o imunizante tem duas doses que, na primeira fase, apresentaram \"resposta robusta\" de anticorpos e \"foram bem toleradas\" pelos 131 voluntários que participaram da pesquisa.\r\n\r\nO método testado pela Novavax se chama \"vacina recombinante\". A empresa usou engenharia genética para cultivar réplicas inofensivas da proteína que o novo coronavírus usa para entrar nas células do corpo em meio a células de insetos, em laboratório. Os cientistas extraíram, purificaram a proteína e a embalaram em nanopartículas do tamanho do vírus.\r\n\r\nEtapas para a produção de uma vacina\r\nPara se produzir uma vacina, leva tempo. A mais rápida desenvolvida até o momento foi a vacina contra a caxumba, que precisou de cerca de quatro anos até ser licenciada e distribuída para a população.\r\n\r\nAntes de começar os testes em voluntários, a imunização passa por diversas fases de experimentação pré-clinica (em laboratório e com cobaias). Só após ser avaliada sua segurança e eficácia é que começam os testes em humanos, a chamada fase clínica – que são três:\r\n\r\nFase 1: é uma avaliação preliminar da segurança do imunizante, ela é feita com um número reduzido de voluntários adultos saudáveis que são monitorados de perto. É neste momento que se entende qual é o tipo de resposta que o imunizante produz no corpo. Ela é aplicada em dezenas de participantes do experimento.\r\nFase 2: na segunda fase, o estudo clínico é ampliado e conta com centenas de voluntários. A vacina é administrada a pessoas com características (como idade e saúde física) semelhantes àquelas para as quais a nova vacina é destinada. Nessa fase é avaliada a segurança da vacina, imunogenicidade (ou a capacidade da proteção), a dosagem e como deve ser administrada.\r\nFase 3: ensaio em larga escala (com milhares de indivíduos) que precisa fornecer uma avaliação definitiva da sua eficácia e segurança em maiores populações. Além disso, feita para prever eventos adversos e garantir a durabilidade da proteção. Apenas depois desta fase é que se pode fazer um registro sanitário.\r\n\r\nSegundo a Agência Nacional de Vigilância Sanitária (Anvisa) para se fazer um ensaio clínico no Brasil, é preciso da aprovação do Comissão Nacional de Ética em Pesquisa (Conep), órgão vinculado ao Ministério da Saúde. Os voluntários são recrutados pelos centros de pesquisa.', 3, 4, 2020, 10, 21),
(9, 'Desnecessário: Vitaly Petrov será o comissário convidado em Portugal', 'O primeiro documento oficial do GP de Portugal, no Autódromo Internacional do Algarve, trouxe a escala dos comissários esportivos, informação que normalmente passa despercebida pelos fãs. E, claro, o nome do piloto convidado para exercer a função ao lado dos representantes da Federação Internacional de Automobilismo (FIA) e do representante do órgão nacional. E pela primeira vez na história da Fórmula 1, o nome do russo Vitaly Petrov, de 36 anos, figurou neste documento. E já causou muita celeuma entre os fãs de automobilismo. A meu ver, uma escolha que gera uma polêmica desnecessária.\r\n\r\nAntes de explicar por que eu acho desnecessária a escolha, eis os outros comissários que farão o trabalho ao lado de Petrov em Portimão:\r\n\r\n- Tim Mayer, comissário da FIA e organizador dos mundiais da FIA nos Estados Unidos. Filho de Teddy Mayer, um dos fundadores da McLaren;\r\n\r\n- Felix Holter, membro do painel de comissários internacionais da FIA e presidente permanente dos comissários do Alemão de Turismo (DTM);\r\n\r\n- Paulo Magalhães, comissário nacional, coordenador da Federação Portuguesa de Automobilismo e Kart (FPAK), comissário do TCR Europa e comandante da etapa de Portugal do Mundial de Rali (WRC).\r\n\r\nVoltando à escolha de Vitaly Petrov, é no mínimo descuidada a escolha do russo para ser o piloto convidado neste GP de Portugal. Afinal, há quase um mês, no dia 22 de setembro, ele deu uma declaração no mínimo polêmica sobre os protestos antirracistas de Lewis Hamilton nas corridas de Fórmula 1 deste ano (relembre aqui). Eis o que ele falou:\r\n\r\n- Para mim essa camiseta foi demais (pedindo justiça para americana Breonna Taylor no pódio do GP da Toscana) assim como quando ele pediu a todos que se ajoelhassem. É um questão pessoal que muda de adulto para adulto. Você tem o direito de falar nas redes sociais ou de dar entrevistas, mas acho que o governo dos EUA já está bem ciente desses problemas. Mas usar a Fórmula 1 para isso... Acho que metade dos espectadores nem sabia do que era a camisa até que foi explicado a eles. Digamos que um piloto admita ser gay, ele usará uma bandeiras de arco-íris para incentivar todos a serem gays também? Acho que a FIA não vai mais permitir esse tipo de comportamento - disse.\r\n\r\nUma entrevista recheada de preconceito - e aqui convém sempre lembrar que nenhum tipo de preconceito é opinião. E se refere a Lewis Hamilton, principal nome da Fórmula 1 atual, que pode bater o recorde de 91 vitórias, que pertence a ele mesmo e Michael Schumacher, neste fim de semana. E pergunto: pra quê isso? Pra quê colocar um piloto que emitiu uma fala tão polêmica - e preconceituosa - sobre as atitudes Hamilton há tão pouco tempo? É colocar um eventual julgamento de uma infração a ser cometida pelo inglês em suspeição, mesmo que saibamos que as decisões dos comissários são tomadas pelo colegiado. Ou vocês acham que ninguém vai ligar os pontos?\r\n\r\nBom senso passou longe. E aqui, a minha opinião: não acredito que teremos algum problema ou alguma decisão enviesada envolvendo Lewis Hamilton nessa corrida. Só que, em caso de julgamentos, devemos ter sempre em mente àquela máxima, que remete aos tempos do imperador Julio Cesar na Roma Antiga: \"Não basta ser honesto, tem de parecer honesto\". É esta a questão aqui. Mesmo que as decisões tomadas sejam corretas tecnicamente, a presença de Petrov no colegiado de comissários as colocará em suspeição. Ainda mais se envolverem Hamilton. Pra quê isso? Absolutamente desnecessário.\r\n\r\nSobre o currículo de Petrov, não vejo problemas. Por Renault, Lotus e Caterham, de 2010 a 2012, disputou 57 GPs e marcou 64 pontos, com apenas um pódio (terceiro no GP da Austrália de 2011). O russo ficou mais conhecido, porém, por segurar - licitamente - Fernando Alonso no GP de Abu Dhabi de 2010, comprometendo as chances de título do espanhol. Sebastian Vettel ganhou seu primeiro título naquela corrida na Yas Marina. Temos ótimos comissários esportivos com carreiras até piores que a de Petrov. Definitivamente não é esse o problema aqui.\r\n\r\nO problema é a falta de bom senso da FIA de colocar Vitaly Petrov como comissário pouco tempo após dar uma declaração preconceituosa e se envolver em uma polêmica enorme com o principal nome da Fórmula 1 atual. Torço para que nada controverso aconteça neste GP de Portugal, mas a chance está presente. Vai ser um longo fim de semana.', 2, 1, 2020, 10, 21),
(10, 'Máquina rubro-negra? Após goleada na estreia, Íbis faz gol olímpico e viraliza; veja o vídeo', 'O ano de 2020 realmente parece propício a coisas improváveis. No futebol, mais um indício disso vem da Série A2 do Campeonato Pernambucano. Pior time do Mundo, o Íbis goleou a Cabense por 4 a 0 na estreia e, como se não bastasse, o lateral-esquerdo Diego fez um belíssimo gol olímpico na segunda partida da competição, contra o América-PE (veja acima).\r\n\r\nFeito que revoltou até mesmo o administrador da página oficial do clube, que prima por manter a fama da equipe de pernas de pau. Entretanto, o Pássaro Preto sofreu a virada e saiu derrotado por 2 a 1.\r\n\r\n', 2, 1, 2020, 10, 21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `sobrenome` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `ddd`, `telefone`, `cidade`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Carlos', 'Rodriguez', 'cr@gmail.com', 11, '976546718', 'Ribeirão Pires', 9, 23, 4, 2003),
(2, 'Antonio', 'Nunes', 'an@gmail.com', 13, '974837545', 'Praia Grande', 6, 14, 8, 2002),
(3, 'Vivian', 'Toledo', 'vt@gmail.com', 15, '974638536', 'Sorocaba', 9, 10, 10, 2003),
(4, 'Juliana', 'Mirco', 'jm@gmail.com', 11, '815635890', 'Mauá', 5, 11, 2, 2004),
(5, 'Jin', 'Kon Un', 'jku@gmail.com', 17, '937264764', 'São José do Rio Preto', 1, 8, 6, 2005);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1A'),
(2, '2A'),
(3, '3A'),
(4, '1B'),
(5, '2B'),
(6, '3B'),
(7, '1C'),
(8, '2C'),
(9, '3C'),
(10, '1F'),
(11, '2F'),
(12, '3F'),
(13, '1I'),
(14, '2I'),
(15, '3I');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Indexes for table `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`codMateria`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `mes` (`mes`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `ano` (`ano`),
  ADD KEY `dia` (`dia`);

--
-- Indexes for table `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Indexes for table `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `mes` (`mes`),
  ADD KEY `dia` (`dia`),
  ADD KEY `ano` (`ano`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `materia`
--
ALTER TABLE `materia`
  MODIFY `codMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_ibfk_2` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_ibfk_3` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_ibfk_5` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
