USE [CoreSSO]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	DECLARE @nomeSistema VARCHAR(100) = ' SGP'
	
	EXEC MS_InsereSiteMap
		@nomeSistema = @nomeSistema,
		@nomeModulo = 'Tipo de classifica��o de escola',
		@nomeModuloPai = 'Dados gerais',
		@nomeModuloAvo = 'Configura��o',
		@SiteMapNome = 'Cargos para atribui��o espor�dica',
		@SiteMapUrl = '~/Configuracao/TipoClassificacaoEscola/Cargos.aspx'	
		
	
	
	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloPai = 'Configura��o' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Seguran�a' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = null
		,@SiteMap1Url = null
		,@SiteMap2Nome = null
		,@SiteMap2Url = null
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Configura��o' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Seguran�a' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Permiss�es espec�ficas' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Permiss�es espec�ficas'
		,@SiteMap1Url = '~/Configuracao/PermissaoEspecifica/Cadastro.aspx'
		,@SiteMap2Nome = null
		,@SiteMap2Url = null
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION	
