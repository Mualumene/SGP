USE [CoreSSO]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	DECLARE @nomeSistema VARCHAR(100) = ' SGP'

	/***************
		Copiar do exemplo abaixo.
	****************
		
	-- Insere o SiteMap da pagina no CoreSSO
	EXEC MS_InsereSiteMap
		@nomeSistema = @nomeSistema -- Nome do sistema (Obrigat�rio - V�ria de acordo com o cliente)
		,@nomeModulo = 'Tipo de evento' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMapNome = 'Listagem de tipos de evento' -- Nome do SiteMap (Obrigat�rio)
		,@SiteMapUrl = '~/Configuracao/TipoEvento/Busca.aspx' -- Url da SiteMap (Obrigat�rio)
	*/

	EXEC MS_InsereSiteMap
		@nomeSistema = @nomeSistema -- Nome do sistema (Obrigat�rio - V�ria de acordo com o cliente)
		,@nomeModulo = 'Cadastro de question�rios' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMapNome = 'Listagem de conte�dos' -- Nome do SiteMap (Obrigat�rio)
		,@SiteMapUrl = '~/Configuracao/Questionario/BuscaConteudo.aspx' -- Url da SiteMap (Obrigat�rio)

	EXEC MS_InsereSiteMap
		@nomeSistema = @nomeSistema -- Nome do sistema (Obrigat�rio - V�ria de acordo com o cliente)
		,@nomeModulo = 'Cadastro de question�rios' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMapNome = 'Cadastro de conte�dos' -- Nome do SiteMap (Obrigat�rio)
		,@SiteMapUrl = '~/Configuracao/Questionario/CadastroConteudo.aspx' -- Url da SiteMap (Obrigat�rio)

	EXEC MS_InsereSiteMap
		@nomeSistema = @nomeSistema -- Nome do sistema (Obrigat�rio - V�ria de acordo com o cliente)
		,@nomeModulo = 'Cadastro de question�rios' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMapNome = 'Listagem de respostas' -- Nome do SiteMap (Obrigat�rio)
		,@SiteMapUrl = '~/Configuracao/Questionario/BuscaResposta.aspx' -- Url da SiteMap (Obrigat�rio)

	EXEC MS_InsereSiteMap
		@nomeSistema = @nomeSistema -- Nome do sistema (Obrigat�rio - V�ria de acordo com o cliente)
		,@nomeModulo = 'Cadastro de question�rios' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMapNome = 'Cadastro de respostas' -- Nome do SiteMap (Obrigat�rio)
		,@SiteMapUrl = '~/Configuracao/Questionario/CadastroResposta.aspx' -- Url da SiteMap (Obrigat�rio)

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION