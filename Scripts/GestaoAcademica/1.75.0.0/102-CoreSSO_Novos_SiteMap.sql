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
	

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Relat�rios' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Relat�rios de atendimento' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Relat�rios de atendimento'
		,@SiteMap1Url = NULL
		,@SiteMap2Nome = NULL
		,@SiteMap2Url = NULL
		,@SiteMap3Nome = NULL
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual
		
	-- Altera��o titulo do relat�rio do resumo das atividades desenvolvidas	no banco DO CORESSO
	update SYS_ModuloSitemap 
		set msm_nome = 'Resumo das atividades desenvolvidas' 
		where msm_url = '~/Documentos/Relatorio.aspx?dummy=%27AU93aqlCeUI%3d%27'
	
	-- Altera��o na op��o do menudo do relat�rio de docente
	update cfg_relatoriodocumentodocente 
		set rdd_nomeDocumento = 'Resumo das atividades desenvolvidas' 
		where rlt_id = 248	
		
		
		

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION