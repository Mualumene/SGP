USE [GestaoPedagogica]
GO

DECLARE @cal_ano INT = 2017
DECLARE @tds_nome VARCHAR(100) = 'Matem�tica'
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
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Estrat�gias de c�lculo mental')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Arredondamento e aproxima��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'C�lculo aproximado e estimativa')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Divisores de um n�mero')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Hist�ria da Matem�tica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Juros simples')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'M�ximo divisor comum de dois ou mais n�meros')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'M�nimo m�ltiplo comum de dois ou mais n�meros')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'M�ltiplos de um n�mero')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros inteiros na reta num�rica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros inteiros: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros inteiros: opera��es b�sicas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros irracionais na reta num�rica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros irracionais: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros naturais: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros naturais: opera��es b�sicas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros naturais: reta num�rica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros racionais expressos na forma decimal: opera��es b�sicas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros racionais expressos na forma fracion�ria: opera��es b�sicas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros racionais na reta num�rica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros racionais: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros reais na reta num�rica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros reais: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'N�meros reais: opera��es b�sicas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Porcentagens b�sicas (10%; 25%; 50%; 75%; 100%) utilizando estrat�gias n�o-convencionais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Porcentagens diversas por meio de c�lculo convencional')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Potencia��o envolvendo n�meros inteiros')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Potencia��o envolvendo n�meros racionais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Potencia��o envolvendo n�meros reais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Potencia��o envolvendo n�meros naturais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Potencia��o: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Potencia��o: propriedades')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Proporcionalidade: C�lculo de propor��o fazendo uso da "regra de tr�s"')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Proporcionalidade: C�lculo de propor��o sem fazer uso da "regra de tr�s"')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Proporcionalidade: escala')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Proporcionalidade: grandezas diretamente proporcionais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Proporcionalidade: grandezas inversamente proporcionais ')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Proporcionalidade: Raz�o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Racionaliza��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Radicia��o envolvendo n�meros inteiros')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Radicia��o envolvendo n�meros naturais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Radicia��o envolvendo n�meros racionais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Radicia��o envolvendo n�meros reais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Radicia��o: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Radicia��o: propriedades')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sequ�ncia num�rica crescente e decrescente')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sistema de numera��o decimal: arredondamento e estimativas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sistema de numera��o decimal: classes e ordens')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sistema de numera��o decimal: composi��o e decomposi��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sistema de numera��o decimal: contagem')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sistema de numera��o decimal: escrita por extenso')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sistema de numera��o decimal: nota��o cient�fica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sistema de numera��o decimal: subunidades decimais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sistema de numera��o decimal: valor posicional')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sistema monet�rio brasileiro')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Sistema romano de numera��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Princ�pio multiplicativo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'N�meros e opera��es', NULL, 'Leitura e produ��o de g�neros matem�ticos (enunciado de problema, resolu��o de problema, etc)')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Equa��o biquadrada')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Equa��o do 1� grau')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Equa��o do 2� grau completa')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Equa��o do 2� grau incompleta')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Express�es alg�bricas: fatora��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Express�es alg�bricas: interpreta��o e produ��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Express�es alg�bricas: opera��es com polin�mios')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Express�es alg�bricas: termo alg�brico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Express�es alg�bricas: valor num�rico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Fun��o do primeiro grau: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Fun��o do primeiro grau: gr�fico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Inequa��es do primeiro grau')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Produtos not�veis: produto da soma pela diferen�a de dois termos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Produtos not�veis: quadrado da diferen�a de dois termos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Produtos not�veis: quadrado da soma de dois termos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Sistema de equa��es do do primeiro grau: resolu��o pela adi��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Sistema de equa��es do primeiro grau: representa��o geom�trica e anal�tica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Generaliza��o de Padr�es')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, '�lgebra', NULL, 'Sistema de equa��es do primeiro grau: resolu��o por substitui��o')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, '�ngulo: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, '�ngulos complementares')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, '�ngulos em feixes de retas paralelas cortadas por retas transversais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, '�ngulos opostos pelo v�rtice')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, '�ngulos suplementares')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Figuras n�o planas: propriedades geom�tricas (rela��es diversas)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Figuras planas: amplia��o e redu��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Figuras planas: congru�ncia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Figuras planas: propriedades (paralelismo, eixos de simetria, rela��es entre lados e �ngulos)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Figuras planas: semelhan�a')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Figuras tridimensionais (cilindro, cone, esfera, prisma, pir�mide)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Figuras tridimensionais: planifica��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Figuras tridimensionais (vistas: lateral direita e esquerda, frontal e superior)')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Localiza��o em croquis')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Localiza��o em mapas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Localiza��o utilizando o princ�pio cartesiano')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Localiza��o utilizando pontos de refer�ncia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Lugar geom�trico: mediatriz')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Lugar geom�trico: bissetriz')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Plano cartesiano: pares ordenados')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Plano cartesiano: pares ordenados em todos os quadrantes')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Poliedros: defini��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Poliedros: face, v�rtice e aresta')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Pol�gonos: classifica��o de quadril�teros')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Pol�gonos: classifica��o de tri�ngulos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Pol�gonos: defini��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Pol�gonos: diagonais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Pol�gonos: soma das medidas dos �ngulos internos de um pol�gono')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Teorema de Pit�goras')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Teorema de Tales: aplica��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Teorema de Tales: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Transforma��o geom�trica: reflex�o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Transforma��o geom�trica: rota��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Transforma��o geom�trica: transla��o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Tri�ngulo ret�ngulo: Raz�es trigonom�tricas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Tri�ngulo ret�ngulo: Rela��es m�tricas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Geometria', NULL, 'Geometria n�o euclidiana')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, '�rea de figuras poligonais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, '�rea do c�rculo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, '�rea: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Comprimento de circunfer�ncia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Hist�ria da Matem�tica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Instrumentos de medida: leitura em balan�a eletr�nica ou mec�nica')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Instrumentos de medida: leitura em r�gua')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Instrumentos de medida: leitura em rel�gio anal�gico')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Instrumentos de medida: leitura em rel�gio digital')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Instrumentos de medida: leitura em transferidor')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Medida de comprimento: medidas convencionais e n�o convencionais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Medida de temperatura')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Medidas de capacidade: medidas convencionais e n�o convencionais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Medidas de massa: medidas convencionais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Medidas de tempo: dura��o de eventos')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Medidas de tempo: leitura em calend�rio')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Medidas de tempo: medidas convencionais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Medidas: convers�o')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Per�metro de figuras poligonais')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Per�metro: conceito')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Volume de paralelep�pedo')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Grandezas e medidas', NULL, 'Volume: conceito')

SET @ordemEixo = @ordemEixo + 1;
SET @ordemSubEixo = 1;
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'Frequ�ncia')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'Gr�fico de Barras')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'Gr�fico de Colunas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'Gr�fico de Linhas')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'Gr�fico de Setores')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'M�dia aritm�tica ponderada')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'M�dia aritm�tica simples')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'Mediana')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'Moda')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'Probabilidade')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'Tabela de dupla entrada')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'Tabela simples')
SET @ordemObjeto = @ordemObjeto + 1; INSERT INTO @tbObjetos VALUES (@ordemEixo, @ordemSubEixo, @ordemObjeto, 'Probabilidade e estat�stica', NULL, 'N�o neutralidade da Matem�tica')

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