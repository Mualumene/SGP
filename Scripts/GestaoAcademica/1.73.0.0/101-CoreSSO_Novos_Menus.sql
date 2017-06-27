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
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Configura��es' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Agendamento de sondagem' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Listagem de sondagens'
		,@SiteMap1Url = '~/Academico/AgendamentoSondagem/Busca.aspx'
		,@SiteMap2Nome = 'Agendamento de sondagem'
		,@SiteMap2Url = '~/Academico/AgendamentoSondagem/Agendamento.aspx'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual
	
	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Administra��o' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Curr�culo' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = NULL
		,@SiteMap1Url = NULL
		,@SiteMap2Nome = NULL 
		,@SiteMap2Url = NULL 
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 1 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Administra��o' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Curr�culo' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Cadastro de curr�culo' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Cadastro de curr�culo'
		,@SiteMap1Url = '~/Academico/Curriculo/Cadastro.aspx'
		,@SiteMap2Nome = NULL 
		,@SiteMap2Url = NULL 
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Administra��o' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Curr�culo' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Registro de sugest�es' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Registro de sugest�es'
		,@SiteMap1Url = '~/Academico/Curriculo/RegistroSugestoes.aspx'
		,@SiteMap2Nome = NULL 
		,@SiteMap2Url = NULL 
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
		,@nomeModulo = 'Sugest�es de curr�culos' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Sugest�es de curr�culos'
		,@SiteMap1Url = '~/Relatorios/RelatorioSugestoesCurriculo/Busca.aspx'
		,@SiteMap2Nome = 'Sugest�es de curr�culos' 
		,@SiteMap2Url = '~/Relatorios/Relatorio.aspx?dummy=%27kLjxLb8B2OE%3d%27' 
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Relat�rios' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Gestor' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Quantitativo de sugest�es de curr�culos' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Quantitativo de sugest�es de curr�culos'
		,@SiteMap1Url = '~/Relatorios/QuantitativoSugestoes/Busca.aspx'
		,@SiteMap2Nome = 'Quantitativo de sugest�es de curr�culos' 
		,@SiteMap2Url = '~/Relatorios/Relatorio.aspx?dummy=%27ZFOrUN%2f6yDI%3d%27' 
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION	
