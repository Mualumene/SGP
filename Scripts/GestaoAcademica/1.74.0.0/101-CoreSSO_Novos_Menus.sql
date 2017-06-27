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
		,@nomeModulo = 'Question�rios' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Listagem de question�rios'
		,@SiteMap1Url = '~/Configuracao/Questionario/BuscaQuestionario.aspx'
		,@SiteMap2Nome = 'Cadastro de question�rios'
		,@SiteMap2Url = '~/Configuracao/Questionario/CadastroQuestionario.aspx'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Configura��es' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Relat�rios de atendimento' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Listagem de relat�rios de atendimento'
		,@SiteMap1Url = '~/Configuracao/RelatorioAtendimento/Busca.aspx'
		,@SiteMap2Nome = 'Cadastro de relat�rios de atendimento'
		,@SiteMap2Url = '~/Configuracao/RelatorioAtendimento/Cadastro.aspx'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Configura��es' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Carga hor�ria de atividades extraclasse' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Carga hor�ria de atividades extraclasse'
		,@SiteMap1Url = '~/Academico/CargaHorariaExtraclasse/Cadastro.aspx'
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	
	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Registro de Classe' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Relat�rio de Atendimento Educacional Especializado' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Consulta de relat�rios de AEE'
		,@SiteMap1Url = '~/Classe/RelatorioAtendimento/Busca.aspx'
		,@SiteMap2Nome = 'Lan�amento de relat�rios de AEE'
		,@SiteMap2Url = '~/Classe/RelatorioAtendimento/Cadastro.aspx'
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 1 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Configura��es' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Detalhamento das defici�ncias' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Listagem do detalhamento das defici�ncias'
		,@SiteMap1Url = '~/Configuracao/DeficienciaDetalhe/Busca.aspx'
		,@SiteMap2Nome = 'Cadastro do detalhamento das defici�ncias'
		,@SiteMap2Url = '~/Configuracao/DeficienciaDetalhe/Cadastro.aspx'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual
-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION	
