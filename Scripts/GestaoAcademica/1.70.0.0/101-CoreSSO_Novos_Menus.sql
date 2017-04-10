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
		
-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION	
