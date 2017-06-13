USE [GestaoPedagogica]
GO

DECLARE @cal_ano INT = 2017
DECLARE @tds_nome VARCHAR(100) = 'L�ngua portuguesa'
DECLARE @nivelEnsino VARCHAR(100) = NULL

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
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Adivinha')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Anedotas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'An�ncio publicit�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Artigo de divulga��o cient�fica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Artigo de divulga��o cient�fica para crian�as')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Artigo de opini�o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Autobiografia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Bilhete')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Biografia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Blog')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Bulas de medicamentos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Can��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Can��es')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Cantiga')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Carta de leitor')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Carta de reclama��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Carta de solicita��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Carta pessoal')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Cartaz')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Cartum')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Charge')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Cl�ssicos adaptados')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Conto de terror')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Conto maravilhoso')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Conto tradicional')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Contos de fadas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Contos de mist�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Contos de repeti��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Cordel')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Cr�nica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Curr�culo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Depoimento')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Descri��o de itiner�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Diagrama')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Di�rio pessoal')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Disserta��o-argumentativa')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'E-mail')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Editorial')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Entrevista')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Entrevista profissional')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Estatuto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Etiquetas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'F�bula')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Fanzine')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Fic��o cient�fica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Filme')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Formul�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Gr�fico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Haicai')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Hist�ria em quadrinhos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Infogr�fico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Legenda')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Lenda')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Lista')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Manchete')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Manual de instru��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Mapa de localiza��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Mem�rias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Minicontos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Mito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'M�sica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Notici�rios radiof�nicos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Notici�rios televisivos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Not�cias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Novela')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Parlenda')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Pergunta')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Piadas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Placas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Poema')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Poemas visuais e concretos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Poesia marginal, perif�rica ou produ��es independentes')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Posts')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Rap')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Receita culin�ria')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Regras de jogos e brincadeiras')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Relato de experi�ncias vividas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Relato hist�rico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Relato pessoal')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Reportagem')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Resenha')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Resposta')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Resumos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Romance')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Roteiro')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'R�tulos de embalagem')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Semin�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Teatro')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Texto publicit�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Tiras')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Trava-l�ngua')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Verbete de curiosidades')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Verbete de dicion�rio de LIBRAS')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'G�neros do discurso', NULL, 'Verbete enciclop�dico')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Comportamento leitor', 'Aprecia��o est�tica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Comportamento leitor', 'Coment�rios sobre o livro lido')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Comportamento leitor', 'Intera��o com outros leitores')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Comportamento leitor', 'Leitura de trechos de textos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Comportamento leitor', 'Pesquisa de materiais de leitura')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Comportamento leitor', 'Recomenda��o de livros')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Comportamento leitor', 'Socializa��o de crit�rios de escolha')

SET @ordemSubEixo = @ordemSubEixo + 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Leitura da esquerda para a direita e de cima para baixo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Releitura de um fragmento para verifica��o do que se compreendeu')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Uso de caneta marca-texto para iluminar informa��es relevantes')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura de revis�o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura em voz alta')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura exaustiva')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura explorat�ria')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura expressiva')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura inspecional')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura integral')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura item a item')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura pausada')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura silenciosa')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Modalidade de leitura - leitura t�pica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Prop�sitos de leitura - ler para aprender')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Prop�sitos de leitura - ler para construir repert�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Prop�sitos de leitura - ler para estudar')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Prop�sitos de leitura - ler para obter uma informa��o espec�fica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Prop�sitos de leitura - ler para obter uma informa��o geral')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Prop�sitos de leitura - ler para revisar um texto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Prop�sitos de leitura - ler para seguir instru��es')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Prop�sitos de leitura - ler por prazer est�tico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Procedimentos de leitura', 'Prop�sitos de leitura - reler para verificar compreens�o')

SET @ordemSubEixo = @ordemSubEixo + 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Antecipa��o de sentidos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Apreens�o dos sentidos globais do texto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Capacidades de compreens�o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Checagem de hip�teses')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Compara��o entre textos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Compara��o vers�es de um mesmo texto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Compreens�o dos g�neros lidos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Constru��o de informa��es a partir da compara��o de trechos do texto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Constru��o textual: t�tulo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Efeitos de humor')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Ideia principal do texto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Identifica��o de repeti��es e substitui��es, relacionando pronomes ou express�es usadas como pronomes')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Identifica��o do tema')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Infer�ncia do sentido de palavras ou express�es')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Interpreta��o da posi��o do autor')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Interpreta��o de pontos de vista')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Localiza��o de informa��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Recupera��o de informa��es expl�citas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Rela��o entre t�tulo ou subt�tulos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Rela��es de causa e consequ�ncia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Rela��es de fato e de opini�o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Rela��es entre elementos verbais e n�o verbais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Rela��es entre imagem (fotos, gr�ficos, tabelas, infogr�ficos) e o corpo do texto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Rela��es tem�ticas entre textos: par�frase')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Estrat�gias de leitura', 'Sumariza��o')

SET @ordemSubEixo = @ordemSubEixo + 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relacionadas aos aspectos discursivos', 'Multiletramento')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relacionadas aos aspectos discursivos', 'Percep��o de outras linguagens')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relacionadas aos aspectos discursivos', 'Percep��o de rela��es de interdiscursividade')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relacionadas aos aspectos discursivos', 'Percep��o de rela��es de intertextualidade')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relacionadas aos aspectos discursivos', 'Polifonia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relacionadas aos aspectos discursivos', 'Reconhecimento da situa��o comunicativa')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relacionadas aos aspectos discursivos', 'Reconhecimento das marcas lingu�sticas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relacionadas aos aspectos discursivos', 'Reconhecimento do conte�do tem�tico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relacionadas aos aspectos discursivos', 'Reconhecimento dos aspectos composicionais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relacionadas aos aspectos discursivos', 'Recupera��o do contexto de produ��o do texto')

SET @ordemSubEixo = @ordemSubEixo + 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Ajuste da pauta sonora ao escrito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Compreens�o das diferen�as entre escrita e outras formas gr�ficas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Conhecimento da natureza alfab�tica do sistema de escrita')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Conhecimento da ordem alfab�tica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Correspond�ncias entre letras ou grupo de letras e seu valor sonoro')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Decodifica��o de palavras e textos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Diferencia��o entre letras, n�meros e s�mbolos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Emprego de letra mai�scula em nomes pr�prios')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Escrita do pr�prio nome')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Identifica��o de semelhan�as sonoras em s�labas e em rimas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Leitura global de palavras escritas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Reconhecimento de diferentes tipos de letras em letras')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Reconhecimento de s�labas que variam quanto �s suas composi��es')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Reconhecimento do alfabeto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Segmenta��o do texto em palavras')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'Capacidades relativas � aquisi��o do sistema de escrita', 'Segmenta��o do texto em par�grafos')

SET @ordemSubEixo = @ordemSubEixo + 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'LITERATURA', 'Compreens�o das especificidades da linguagem liter�ria')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'LITERATURA', 'Frui��o est�tica de obras liter�rias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'LITERATURA', 'Leitura de produ��es liter�rias de autores da comunidade local')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'LITERATURA', 'Leitura de produ��es liter�rias de autores da literatura brasileira contempor�nea')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'LITERATURA', 'Multiculturalismo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'LITERATURA', 'Reconhecimento de produ��es liter�rias de autores da literatura africana e afro-brasileira')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'LITERATURA', 'Reconhecimento de produ��es liter�rias de autores da literatura ind�gena')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'LITERATURA', 'Reconhecimento do patrim�nio liter�rio nacional')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'LITERATURA', 'Rela��es entre concep��es art�sticas e procedimentos de constru��o do texto liter�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'LEITURA', 'LITERATURA', 'Rela��es entre o texto liter�rio e o momento de sua produ��o (contexto hist�rico, social e pol�tico)')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Aspectos composicionais dos g�neros a serem produzidos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Aspectos estil�sticos dos g�neros a serem produzidos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Aspectos sociodiscursivos dos g�neros a serem produzidos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Aspectos tem�ticos dos g�neros a serem produzidos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Avalia��o de textos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Edi��o de texto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Ind�cios de autoria')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Planejamento de texto (g�nero)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Produ��o de texto (g�nero)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Reescrita')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Reflex�o sobre os recursos lingu�sticos empregados nos textos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Reflex�o sobre os recursos multimodais empregados nos textos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Respeito �s diferentes variedades lingu�sticas escritas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Revis�o de texto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'PRODU��O ESCRITA', NULL, 'Situa��es sociais em que se produzem textos')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Amplia��o do uso de vocabul�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Assistir a programas televisivos, v�deos, espet�culos musicais, teatro, cinema')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Compreens�o de g�neros orais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Conta��o de hist�rias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Declama��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Dramatiza��o, encena��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Escuta de grava��es de can��es')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Exposi��o de trabalhos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Express�o de opini�es pessoais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Formula��o de perguntas a respeito do que ouvem, l�em ou v�em')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Oraliza��o do texto escrito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Participa��o de discuss�o em grupo e de debates')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Planejamento de textos orais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Produ��o de g�neros orais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Reconto de hist�rias ouvidas, lidas, inventadas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Rela��es entre fala e escrita')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Relato e coment�rios de experi�ncias e acontecimentos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Respeito �s diferentes variedades lingu�sticas faladas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'ORALIDADE', NULL, 'Tradi��es orais')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Acentua��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Adjetivo (flex�o g�nero, n�mero)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Adjunto adnominal')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Adjunto adverbial')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Adv�rbio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Agente da passiva')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Anton�mia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Aposto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Artigo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Coes�o lexical: sin�nimos, hip�nimos e hiper�nimos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Coes�o referencial: uso de pronomes pessoais e demonstrativos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Coes�o referencial: uso de pronomes relativos e fun��es sint�ticas dos pronomes relativos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Coes�o sequencial: uso de adv�rbios')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Coloca��o pronominal')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Complemento nominal')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Concord�ncia nominal')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Concord�ncia verbal')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Conjun��es coordenativas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Conjun��es subordinativas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Conota��o e denota��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Desin�ncia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Discurso (direto, indireto)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Efeitos de humor')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Elementos da narrativa')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Elementos m�rficos: radical, prefixos, sufixos e desin�ncias')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Emprego da crase')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Emprego da v�rgula')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Encontros voc�licos, encontros consonantais e d�grafos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Estrat�gias de persuas�o: convencimento em fun��o do p�blico-alvo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Estrutura e forma��o de palavras: composi��o e de deriva��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Estrutura e forma��o de palavras: elementos m�rficos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Figuras de linguagem')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Fun��es da linguagem')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Homon�mia e paron�mia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Interjei��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Irregularidades ortogr�ficas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Locu��o adjetiva')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Locu��o adverbial')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Locu��o conjuntiva')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Locu��o prepositiva')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Marcas textuais espec�ficas da argumenta��o: conclus�o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Marcas textuais espec�ficas da argumenta��o: contra-argumenta��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Marcas textuais espec�ficas da argumenta��o: tema')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Marcas textuais espec�ficas da argumenta��o: tese')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Marcas textuais espec�ficas da argumenta��o: tipos de argumento')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Mecanismos de coer�ncia textual: rela��es de sentido e l�gica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Mecanismos de coes�o lexical e referencial: as ora��es coordenadas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Mecanismos de coes�o referencial e sequencial: as ora��es reduzidas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Mecanismos de coes�o referencial e sequencial: as ora��es subordinadas substantivas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Mecanismos de coes�o referencial: as ora��es subordinadas adjetivas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Mecanismos de coes�o sequencial: as ora��es subordinadas adverbiais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'N�veis de formalidade e informalidade na composi��o dos diversos g�neros textuais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Numeral')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Objeto direto e indireto')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Per�odo simples, per�odo composto, conceito de ora��o e frases nominais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Pontua��o: (ponto final, ponto de interroga��o, ponto de exclama��o, travess�o, aspas, retic�ncias, par�nteses, dois-pontos, ponto-e-v�rgula)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Predicado')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Predicativo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Preposi��o: reconhecimento e uso aplicado � coes�o textual')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Pronomes')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Recursos gr�ficos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Reg�ncia nominal')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Reg�ncia verbal')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Regularidades morfol�gicas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Regularidades ortogr�ficas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Rima')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Ritmo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Sin�nimos, hip�nimos e hiper�nimos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Substantivo (flex�o g�nero, n�mero)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Sujeito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Uso de adjetiva��o (adjetivo, locu��o adjetiva, ora��es adjetivas)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Varia��o lingu�stica (fatores geogr�ficos, hist�ricos, sociol�gicos, t�cnicos)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Varia��o lingu�stica: fon�tica (diferentes pron�ncias)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Varia��o lingu�stica: l�xico (diferentes empregos de palavras)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Varia��o lingu�stica: morfologia (variantes e redu��es no sistema flexional e derivacional)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Varia��o lingu�stica: sintaxe (estrutura��o das senten�as e concord�ncia)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Variedades da fala e da escrita')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Verbos "de dizer"')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Verbos (tempo, modo, pessoa e n�mero)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'V�rgulas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'AN�LISE E REFLEX�O LINGU�STICA', NULL, 'Vocativo')

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