USE [CoreSSO]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	DECLARE @nomeSistema VARCHAR(100) = ' SGP'

	/***************
		Copiar do exemplo abaixo.
	****************

	-- Insere modulo no menu do sistema no CoreSSO
	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = '[Preencher]' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = '[Preencher]' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = '[Preencher]' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Listagem de [Preencher]'
		,@SiteMap1Url = '~/[Preencher]/Busca.aspx'
		,@SiteMap2Nome = 'Cadastro de [Preencher]'
		,@SiteMap2Url = '~/[Preencher]/Cadastro.aspx'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual
	*/

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Administra��o' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Cadastros' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Sondagem' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Listagem de sondagens'
		,@SiteMap1Url = '~/Academico/Sondagem/Busca.aspx'
		,@SiteMap2Nome = 'Cadastro de sondagem'
		,@SiteMap2Url = '~/Academico/Sondagem/Cadastro.aspx'
		,@SiteMap3Nome = 'Agendamento de sondagem' 
		,@SiteMap3Url = '~/Academico/Sondagem/Agendamento.aspx'
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual


	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Relat�rios' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Gestor' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'An�lise de sondagem' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'An�lise de sondagem'
		,@SiteMap1Url = '~/Documentos/AnaliseSondagem/Busca.aspx'
		,@SiteMap2Nome = 'An�lise de sondagem'
		,@SiteMap2Url = '~/Relatorios/Relatorio.aspx?dummy=%27QZ3yyOWkxQU%3d%27'
		,@SiteMap3Nome = NULL
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Registro de Classe' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Sondagem' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Consulta de sondagens'
		,@SiteMap1Url = '~/Classe/LancamentoSondagem/Busca.aspx'
		,@SiteMap2Nome = 'Lan�amento de sondagem'
		,@SiteMap2Url = '~/Classe/LancamentoSondagem/Cadastro.aspx'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 1 -- Indicar se possui vis�o de individual
		
	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Relat�rios' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Gestor' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Frequ�ncia mensal' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Frequ�ncia mensal'
		,@SiteMap1Url = '~/Relatorios/FrequenciaMensal/Busca.aspx'
		,@SiteMap2Nome = 'Frequ�ncia mensal'
		,@SiteMap2Url = '~/Relatorios/Relatorio.aspx?dummy=%27%2fRS0a%2frpFBw%3d%27'
		,@SiteMap3Nome = NULL
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION	
