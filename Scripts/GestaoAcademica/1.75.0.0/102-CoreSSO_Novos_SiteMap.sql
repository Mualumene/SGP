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
			
	-- Altera��o titulo do relat�rio do resumo das atividades desenvolvidas	
	update SYS_ModuloSitemap 
		set msm_nome = 'Resumo das atividades desenvolvidas' 
		where msm_url = '~/Documentos/Relatorio.aspx?dummy=%27AU93aqlCeUI%3d%27'
		
		
		
		

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION