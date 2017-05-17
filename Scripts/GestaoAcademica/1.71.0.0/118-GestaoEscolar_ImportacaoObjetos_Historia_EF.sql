USE [GestaoPedagogica]
GO

DECLARE @cal_ano INT = 2017
DECLARE @tds_nome VARCHAR(100) = 'Hist�ria'
DECLARE @nivelEnsino VARCHAR(100) = 'Ensino Fundamental'

DECLARE @tbObjetos TABLE
(
	ordemEixo INT
	, ordemSubEixo INT
	, ordemObjeto INT
	, descricaoEixo VARCHAR(500)
	, descricaoSubEixo VARCHAR(500)
	, descricaoObjeto VARCHAR(500)
)

DECLARE @ordemEixo INT = 1
DECLARE @ordemSubEixo INT = 1
DECLARE @ordemObjeto INT = 0
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'As pessoas e os grupos que comp�em a cidade e o munic�pio', NULL, 'O �Eu�, o �Outro� e os diferentes grupos sociais e �tnicos que comp�em a cidade: os desafios sociais, culturais e ambientais da cidade em que se vive')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'As pessoas e os grupos que comp�em a cidade e o munic�pio', NULL, 'Os patrim�nios hist�ricos e culturais da cidade em que se vive')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O lugar em que se vive', NULL, 'A produ��o dos marcos da mem�ria: os lugares de mem�ria (ruas, pra�as, escolas, monumentos, museus etc.)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O lugar em que se vive', NULL, 'A produ��o dos marcos da mem�ria: forma��o cultural da popula��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O lugar em que se vive', NULL, 'A produ��o dos marcos da mem�ria: a cidade e o campo, aproxima��es e diferen�as')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A no��o de espa�o p�blico e privado', NULL, 'A cidade e seus espa�os: espa�os p�blicos e espa�os dom�sticos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A no��o de espa�o p�blico e privado', NULL, 'A cidade e suas atividades: trabalho, cultura e lazer')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Transforma��es e perman�ncias nas trajet�rias dos grupos humanos', NULL, 'A a��o das pessoas e grupos sociais no tempo e no espa�o: grandes transforma��es da hist�ria da humanidade')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Transforma��es e perman�ncias nas trajet�rias dos grupos humanos', NULL, 'O passado e o presente: a no��o de perman�ncia e as lentas transforma��es sociais e culturais')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Circula��o de pessoas, produtos e culturas', NULL, 'A circula��o de pessoas e as transforma��es no meio natural')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Circula��o de pessoas, produtos e culturas', NULL, 'A inven��o do com�rcio e a circula��o de produtos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Circula��o de pessoas, produtos e culturas', NULL, 'As rotas terrestres, fluviais e mar�timas e seus impactos para a forma��o de cidades e as transforma��es do meio natural')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Circula��o de pessoas, produtos e culturas', NULL, 'O mundo da tecnologia: a integra��o de pessoas e as exclus�es sociais e culturais')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'As quest�es hist�ricas relativas �s migra��es', NULL, 'O surgimento da esp�cie humana na �frica e sua expans�o pelo mundo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'As quest�es hist�ricas relativas �s migra��es', NULL, 'Os processos migrat�rios para a forma��o do Brasil: os grupos ind�genas, a presen�a portuguesa e a di�spora for�ada dos africanos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'As quest�es hist�ricas relativas �s migra��es', NULL, 'Os processos migrat�rios do final do s�culo XIX e in�cio do s�culo XX no Brasil')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'As quest�es hist�ricas relativas �s migra��es', NULL, 'As din�micas internas de migra��o no Brasil, a partir dos anos 1960')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Povos e culturas: meu lugar no mundo e meu grupo social', NULL, 'O que forma um povo?: da sedentariza��o aos primeiros povos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Povos e culturas: meu lugar no mundo e meu grupo social', NULL, 'As formas de organiza��o social e pol�tica: a no��o de Estado')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Povos e culturas: meu lugar no mundo e meu grupo social', NULL, 'O papel das religi�es e da cultura para a forma��o dos povos antigos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Povos e culturas: meu lugar no mundo e meu grupo social', NULL, 'Cidadania, diversidade cultural e respeito �s diferen�as sociais, culturais e hist�ricas')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Registros da hist�ria: linguagens e culturas', NULL, 'As tradi��es orais e a valoriza��o da mem�ria')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Registros da hist�ria: linguagens e culturas', NULL, 'O surgimento da escrita e a no��o de fonte para a transmiss�o de saberes, culturas e hist�rias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Registros da hist�ria: linguagens e culturas', NULL, 'Os patrim�nios materiais e imateriais da humanidade')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Hist�ria: tempo, espa�o e formas de registros', NULL, 'A quest�o do tempo, sincronias e diacronias: reflex�es sobre o sentido das cronologias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Hist�ria: tempo, espa�o e formas de registros', NULL, 'Formas de registro da hist�ria e da produ��o do conhecimento hist�rico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Hist�ria: tempo, espa�o e formas de registros', NULL, 'As origens da humanidade, seus deslocamentos e os processos de sedentariza��o')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A inven��o do mundo cl�ssico e o contraponto com outras sociedades', NULL, 'Povos da Antiguidade na �frica (eg�pcios), no Oriente M�dio (mesopot�micos) e nas Am�ricas (pr�-colombianos)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A inven��o do mundo cl�ssico e o contraponto com outras sociedades', NULL, 'O Ocidente Cl�ssico: aspectos da cultura na Gr�cia e em Roma')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'L�gicas de organiza��o pol�tica', NULL, 'As no��es de cidadania e pol�tica na Gr�cia e em Roma')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'L�gicas de organiza��o pol�tica', NULL, 'As diferentes formas de organiza��o pol�tica na �frica: reinos, imp�rios, cidades-estados e sociedades linhageiras ou aldeias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'L�gicas de organiza��o pol�tica', NULL, 'A passagem do mundo antigo para o mundo medieval')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'L�gicas de organiza��o pol�tica', NULL, 'A fragmenta��o do poder pol�tico na Idade M�dia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'L�gicas de organiza��o pol�tica', NULL, 'O Mediterr�neo como espa�o de intera��o entre as sociedades da Europa, da �frica e do Oriente M�dio')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Trabalho e formas de organiza��o social e cultural', NULL, 'Senhores e servos no mundo antigo e no medieval')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Trabalho e formas de organiza��o social e cultural', NULL, 'Escravid�o e trabalho livre em diferentes temporalidades e espa�os (Roma Antiga, Europa medieval e �frica)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Trabalho e formas de organiza��o social e cultural', NULL, 'L�gicas comerciais na Antiguidade romana e no mundo medieval')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Trabalho e formas de organiza��o social e cultural', NULL, 'O papel da religi�o crist�, dos mosteiros e da cultura na Idade M�dia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Trabalho e formas de organiza��o social e cultural', NULL, 'O papel da mulher na Gr�cia e em Roma, e no per�odo medieval')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O mundo moderno e a conex�o entre sociedades africanas, americanas e europeias', NULL, 'A constru��o da ideia de modernidade e seus impactos na concep��o de Hist�ria')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O mundo moderno e a conex�o entre sociedades africanas, americanas e europeias', NULL, 'A ideia de �Novo Mundo� frente ao Mundo Antigo: perman�ncias e rupturas de saberes e pr�ticas na emerg�ncia do mundo moderno')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O mundo moderno e a conex�o entre sociedades africanas, americanas e europeias', NULL, 'Saberes dos povos africanos e pr�-colombianos expressos na cultura material e imaterial')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Humanismos, Renascimentos e o Novo Mundo', NULL, 'Humanismos: uma nova vis�o de ser humano e de mundo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Humanismos, Renascimentos e o Novo Mundo', NULL, 'Renascimentos art�sticos e culturais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Humanismos, Renascimentos e o Novo Mundo', NULL, 'Reformas religiosas: a cristandade fragmentada')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Humanismos, Renascimentos e o Novo Mundo', NULL, 'As descobertas cient�ficas e a expans�o mar�tima')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A organiza��o do poder e as din�micas do mundo colonial americano', NULL, 'A forma��o e o funcionamento das monarquias europeias: a l�gica da centraliza��o pol�tica e os conflitos na Europa')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A organiza��o do poder e as din�micas do mundo colonial americano', NULL, 'A conquista da Am�rica: dom�nios e resist�ncias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A organiza��o do poder e as din�micas do mundo colonial americano', NULL, 'Imp�rio: a grande expans�o das fronteiras')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A organiza��o do poder e as din�micas do mundo colonial americano', NULL, 'A estrutura��o dos vice-reinos nas Am�ricas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A organiza��o do poder e as din�micas do mundo colonial americano', NULL, 'Resist�ncias, invas�es e expans�o na Am�rica portuguesa')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'L�gicas comerciais e mercantis da modernidade', NULL, 'As l�gicas mercantis e o dom�nio europeu sobre os mares e o contraponto Oriental')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'L�gicas comerciais e mercantis da modernidade', NULL, 'As l�gicas internas das sociedades africanas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'L�gicas comerciais e mercantis da modernidade', NULL, 'As formas de organiza��o das sociedades amer�ndias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'L�gicas comerciais e mercantis da modernidade', NULL, 'A escravid�o moderna e o tr�fico de escravizados')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'L�gicas comerciais e mercantis da modernidade', NULL, 'A emerg�ncia do capitalismo')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O mundo contempor�neo: o Antigo Regime em crise', NULL, 'A quest�o do iluminismo e da ilustra��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O mundo contempor�neo: o Antigo Regime em crise', NULL, 'As revolu��es inglesas e os princ�pios do liberalismo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O mundo contempor�neo: o Antigo Regime em crise', NULL, 'Revolu��o Industrial e seus impactos na produ��o e circula��o de povos, produtos e culturas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O mundo contempor�neo: o Antigo Regime em crise', NULL, 'Revolu��o Francesa e seus desdobramentos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O mundo contempor�neo: o Antigo Regime em crise', NULL, 'Rebeli�es na Am�rica portuguesa: as conjura��es mineira e baiana')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Os processos de independ�ncia nas Am�ricas', NULL, 'Independ�ncia dos Estados Unidos da Am�rica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Os processos de independ�ncia nas Am�ricas', NULL, 'Independ�ncias na Am�rica espanhola')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Os processos de independ�ncia nas Am�ricas', NULL, 'Os caminhos at� a independ�ncia do Brasil')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Os processos de independ�ncia nas Am�ricas', NULL, 'A tutela da popula��o ind�gena, a escravid�o dos negros e a tutela dos egressos da escravid�o')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O Brasil no s�culo XIX', NULL, 'Brasil: Primeiro Reinado')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O Brasil no s�culo XIX', NULL, 'O Per�odo Regencial e as contesta��es ao poder central')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O Brasil no s�culo XIX', NULL, 'O Brasil do Segundo Reinado: pol�tica e economia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O Brasil no s�culo XIX', NULL, 'O escravismo no Brasil do s�culo XIX: plantations e revoltas de escravizados, abolicionismo e pol�ticas migrat�rias no Brasil Imperial')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O Brasil no s�culo XIX', NULL, 'Pol�ticas de exterm�nio do ind�gena durante o Imp�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O Brasil no s�culo XIX', NULL, 'A produ��o do imagin�rio nacional brasileiro: cultura popular, representa��es visuais, letras e o romantismo no Brasil')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Configura��es do mundo no s�culo XIX', NULL, 'Nacionalismo, revolu��es e as novas na��es europeias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Configura��es do mundo no s�culo XIX', NULL, 'Uma nova ordem econ�mica: as demandas do capitalismo industrial e o lugar das economias africanas e asi�ticas nas din�micas globais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Configura��es do mundo no s�culo XIX', NULL, 'Os Estados Unidos da Am�rica e a Am�rica Latina no s�culo XIX')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Configura��es do mundo no s�culo XIX', NULL, 'O imperialismo europeu e a partilha da �frica e da �sia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Configura��es do mundo no s�culo XIX', NULL, 'Pensamento e cultura no s�culo XIX: darwinismo e racismo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Configura��es do mundo no s�culo XIX', NULL, 'O discurso civilizat�rio nas Am�ricas e a quest�o ind�gena')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'Experi�ncias republicanas e pr�ticas autorit�rias: as tens�es e disputas do mundo contempor�neo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'A proclama��o da Rep�blica e seus primeiros desdobramentos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'A quest�o da inser��o dos negros no per�odo republicano do p�s-aboli��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'Os movimentos sociais e a imprensa negra; a cultura afro-brasileira como elemento de resist�ncia e supera��o das discrimina��es')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'Primeira Rep�blica e suas caracter�sticas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'Contesta��es e din�micas da vida cultural no Brasil entre 1900 e 1930')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'O per�odo varguista e suas contradi��es')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'A emerg�ncia da vida urbana e a segrega��o espacial')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'O trabalhismo e seu protagonismo pol�tico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'A quest�o ind�gena durante a Rep�blica (at� 1964)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'O nascimento da Rep�blica no Brasil e os processos hist�ricos at� a metade do s�culo XX', NULL, 'Quest�es de g�nero, o anarquismo e protagonismos femininos')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Totalitarismos e conflitos mundiais', NULL, 'O mundo em conflito: a Primeira Guerra Mundial')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Totalitarismos e conflitos mundiais', NULL, 'A quest�o da Palestina')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Totalitarismos e conflitos mundiais', NULL, 'A Revolu��o Russa')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Totalitarismos e conflitos mundiais', NULL, 'A crise capitalista de 1929')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Totalitarismos e conflitos mundiais', NULL, 'A emerg�ncia do fascismo e do nazismo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Totalitarismos e conflitos mundiais', NULL, 'A Segunda Guerra Mundial')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Totalitarismos e conflitos mundiais', NULL, 'O colonialismo na �frica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Totalitarismos e conflitos mundiais', NULL, 'As guerras mundiais, a crise do colonialismo e o advento dos nacionalismos africanos e asi�ticos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Totalitarismos e conflitos mundiais', NULL, 'A Organiza��o das Na��es Unidas (ONU) e a quest�o dos Direitos Humanos')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Moderniza��o, ditadura civil-militar e redemocratiza��o: o Brasil ap�s 1946', NULL, 'O Brasil da era JK e o ideal de uma na��o moderna: a urbaniza��o e seus desdobramentos em um pa�s em transforma��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Moderniza��o, ditadura civil-militar e redemocratiza��o: o Brasil ap�s 1946', NULL, 'Os anos 1960: revolu��o cultural?')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Moderniza��o, ditadura civil-militar e redemocratiza��o: o Brasil ap�s 1946', NULL, 'A ditadura civil-militar e os processos de resist�ncia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Moderniza��o, ditadura civil-militar e redemocratiza��o: o Brasil ap�s 1946', NULL, 'A quest�o ind�gena e a ditadura')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Moderniza��o, ditadura civil-militar e redemocratiza��o: o Brasil ap�s 1946', NULL, 'O processo de redemocratiza��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Moderniza��o, ditadura civil-militar e redemocratiza��o: o Brasil ap�s 1946', NULL, 'A Constitui��o de 1988 e a emancipa��o das cidadanias (analfabetos, ind�genas, jovens etc.)')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A hist�ria recente', NULL, 'A Guerra Fria: confrontos de dois modelos pol�ticos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A hist�ria recente', NULL, 'A Revolu��o Chinesa e as tens�es entre China e R�ssia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A hist�ria recente', NULL, 'A Revolu��o Cubana e as tens�es entre Estados Unidos da Am�rica e Cuba')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A hist�ria recente', NULL, 'As experi�ncias ditatoriais na Am�rica do Sul')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A hist�ria recente', NULL, 'Os processos de descoloniza��o na �frica e na �sia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A hist�ria recente', NULL, 'O fim da Guerra Fria e o processo de globaliza��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A hist�ria recente', NULL, 'Os conflitos do s�culo XXI e a quest�o do terrorismo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'A hist�ria recente', NULL, 'Pluralidades e diversidades identit�rias na atualidade')

-- Encontra a disciplina
DECLARE @tbDisciplina TABLE
(
	tds_id INT
)
IF (@nivelEnsino IS NULL)
BEGIN
	INSERT INTO @tbDisciplina
	SELECT tds.tds_id
	FROM ACA_TipoDisciplina tds WITH(NOLOCK)
	WHERE tds.tds_nome = @tds_nome AND tds.tds_situacao <> 3
END
ELSE 
BEGIN
	INSERT INTO @tbDisciplina
	SELECT tds.tds_id
	FROM ACA_TipoDisciplina tds WITH(NOLOCK)
	INNER JOIN ACA_TipoNivelEnsino tne WITH(NOLOCK)
		ON tne.tne_id = tds.tne_id
		AND tne.tne_nome = @nivelEnsino
		AND tne.tne_situacao <> 3
	WHERE tds.tds_nome = @tds_nome AND tds.tds_situacao <> 3
END

DECLARE @tds_id INT
WHILE (EXISTS (SELECT TOP 1 1 FROM @tbDisciplina))
BEGIN
	
	SELECT TOP 1 @tds_id = tds_id
	FROM @tbDisciplina

	DECLARE @dataAtual DATETIME = GETDATE();

	/*
	-- Apaga os registros existentes
	UPDATE ACA_ObjetoAprendizagem
	SET oap_situacao = 3, oap_dataAlteracao = @dataAtual
	WHERE tds_id = @tds_id AND cal_ano = @cal_ano AND oap_situacao <> 3

	UPDATE ACA_ObjetoAprendizagemEixo
	SET oae_situacao = 3, oae_dataAlteracao = @dataAtual
	WHERE tds_id = @tds_id AND cal_ano = @cal_ano AND oae_situacao <> 3
	--
	*/

	-- Verifica se os objetos de aprendizagem ainda n�o foram cadastrados
	-- para a disciplina e ano.
	IF (NOT EXISTS (
		SELECT TOP 1 1 
		FROM ACA_ObjetoAprendizagem WITH(NOLOCK) 
		WHERE tds_id = @tds_id AND cal_ano = @cal_ano AND oap_situacao <> 3
		))
	BEGIN
		--Iniciar transa��o
		BEGIN TRANSACTION
		SET XACT_ABORT ON

			-- Cadastra os eixos
			INSERT INTO ACA_ObjetoAprendizagemEixo (tds_id, oae_descricao, oae_ordem, oae_situacao, oae_dataCriacao, oae_dataAlteracao, cal_ano)
			SELECT 
				@tds_id
				, descricaoEixo
				, ordemEixo
				, 1
				, @dataAtual
				, @dataAtual
				, @cal_ano
			FROM @tbObjetos
			WHERE descricaoEixo IS NOT NULL
			GROUP BY ordemEixo, descricaoEixo
			ORDER BY ordemEixo

			-- Cadastra os subeixos
			;WITH Subeixos AS
			(
				SELECT ordemEixo, descricaoEixo, ordemSubEixo, descricaoSubEixo
				FROM @tbObjetos
				WHERE descricaoSubEixo IS NOT NULL
				GROUP BY ordemEixo, descricaoEixo, ordemSubEixo, descricaoSubEixo
			)
			INSERT INTO ACA_ObjetoAprendizagemEixo (tds_id, oae_descricao, oae_ordem, oae_idPai, oae_situacao, oae_dataCriacao, oae_dataAlteracao, cal_ano)
			SELECT 
				@tds_id
				, descricaoSubEixo
				, ordemSubEixo
				, CASE WHEN descricaoEixo IS NOT NULL THEN
					(
						SELECT TOP 1 oae_id
						FROM ACA_ObjetoAprendizagemEixo
						WHERE 
						tds_id = @tds_id 
						AND cal_ano = @cal_ano
						AND oae_descricao = descricaoEixo
						AND oae_ordem = ordemEixo
						AND oae_situacao = 1
					)
					ELSE NULL END
				, 1
				, @dataAtual
				, @dataAtual
				, @cal_ano
			FROM Subeixos
			ORDER BY ordemEixo, ordemSubEixo

			-- Cadastra os objetos
			INSERT INTO ACA_ObjetoAprendizagem (tds_id, oap_descricao, oap_situacao, oap_dataCriacao, oap_dataAlteracao, cal_ano, oae_id)
			SELECT 
				@tds_id
				, descricaoObjeto
				, 1
				, @dataAtual
				, @dataAtual
				, @cal_ano
				, CASE WHEN descricaoSubEixo IS NOT NULL THEN
					(
						SELECT TOP 1 oae_id
						FROM ACA_ObjetoAprendizagemEixo
						WHERE 
						tds_id = @tds_id 
						AND cal_ano = @cal_ano
						AND oae_descricao = descricaoSubEixo
						AND oae_ordem = ordemSubEixo
						AND oae_situacao = 1
					)
					ELSE
						CASE WHEN descricaoEixo IS NOT NULL THEN
						(
							SELECT TOP 1 oae_id
							FROM ACA_ObjetoAprendizagemEixo
							WHERE 
							tds_id = @tds_id 
							AND cal_ano = @cal_ano
							AND oae_descricao = descricaoEixo
							AND oae_ordem = ordemEixo
							AND oae_situacao = 1
						)
						ELSE NULL END 			
					END
			FROM @tbObjetos
			WHERE descricaoObjeto IS NOT NULL
			ORDER BY ordemObjeto

			-- Cadastra os tipos de ciclo dos objetos
			INSERT INTO ACA_ObjetoAprendizagemTipoCiclo (oap_id, tci_id)
			SELECT oap.oap_id, tci.tci_id
			FROM @tbObjetos obj
			INNER JOIN ACA_ObjetoAprendizagem oap
				ON oap.tds_id = @tds_id 
				AND oap.cal_ano = @cal_ano
				AND oap.oap_descricao = obj.descricaoObjeto
				AND oap.oap_situacao = 1
				AND 
				(
					(oap.oae_id IS NULL AND obj.descricaoSubEixo IS NULL AND obj.descricaoEixo IS NULL)
					OR 
					(
						obj.descricaoSubEixo IS NOT NULL
						AND oap.oae_id = 
						(
							SELECT TOP 1 oae_id
							FROM ACA_ObjetoAprendizagemEixo
							WHERE 
							tds_id = @tds_id 
							AND cal_ano = @cal_ano
							AND oae_descricao = obj.descricaoSubEixo
							AND oae_ordem = obj.ordemSubEixo
							AND oae_situacao = 1 
						)
					)
					OR 
					(
						obj.descricaoEixo IS NOT NULL
						AND oap.oae_id = 
						(
							SELECT TOP 1 oae_id
							FROM ACA_ObjetoAprendizagemEixo
							WHERE 
							tds_id = @tds_id 
							AND cal_ano = @cal_ano
							AND oae_descricao = obj.descricaoEixo
							AND oae_ordem = obj.ordemEixo
							AND oae_situacao = 1 
						)
					)
				)
			LEFT JOIN ACA_TipoCiclo tci WITH(NOLOCK) 
				ON tci.tci_situacao = 1

		-- Fechar transa��o	
		SET XACT_ABORT OFF
		COMMIT TRANSACTION
	END	
	ELSE
	BEGIN
		PRINT 'J� existem objetos de conhecimento cadastrados para a disciplina.'
	END 
	
	DELETE TOP(1)
	FROM @tbDisciplina
END