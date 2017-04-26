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
		,@nomeModulo = 'Objetos de conhecimento' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMapNome = 'Consulta de eixos de objetos de conhecimento' -- Nome do SiteMap (Obrigat�rio)
		,@SiteMapUrl = '~/Academico/ObjetoAprendizagem/BuscaEixo.aspx' -- Url da SiteMap (Obrigat�rio)
		
	EXEC MS_InsereSiteMap
		@nomeSistema = @nomeSistema -- Nome do sistema (Obrigat�rio - V�ria de acordo com o cliente)
		,@nomeModulo = 'Objetos de conhecimento' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMapNome = 'Cadastro de eixos de objetos de conhecimento' -- Nome do SiteMap (Obrigat�rio)
		,@SiteMapUrl = '~/Academico/ObjetoAprendizagem/CadastroEixo.aspx' -- Url da SiteMap (Obrigat�rio)
		
-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION