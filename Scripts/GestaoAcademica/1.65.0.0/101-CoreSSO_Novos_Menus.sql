USE [CoreSSO]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	DECLARE @nomeSistema VARCHAR(100) = ' SGP'

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Documentos' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Documentos do gestor' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Diverg�ncias das rematr�culas' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Diverg�ncias das rematr�culas'
		,@SiteMap1Url = '~/Relatorios/DivergenciasRematriculas/Busca.aspx'
		,@SiteMap2Nome = 'Diverg�ncias das rematr�culas'
		,@SiteMap2Url = '~/Relatorios/Relatorio.aspx?dummy=%27f58oZhLbi2E%3d%27'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual
		
-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION	
