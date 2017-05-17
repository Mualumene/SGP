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
		,@nomeModulo = 'Configura��o do servi�o de pend�ncia' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMapNome = 'Cadastro de configura��o do servi�o de pend�ncia' -- Nome do SiteMap (Obrigat�rio)
		,@SiteMapUrl = '~/Academico/ConfiguracaoServicoPendencia/Cadastro.aspx' -- Url da SiteMap (Obrigat�rio)

	
-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION