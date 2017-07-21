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

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Relat�rios' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Relat�rios de atendimento' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Relat�rio geral' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Relat�rio geral'
		,@SiteMap1Url = '~/Relatorios/RelatorioGeralAtendimento/Busca.aspx'
		,@SiteMap2Nome = 'Relat�rio geral'
		,@SiteMap2Url = '~/Documentos/Relatorio.aspx?dummy=%27iGnoDuhcFtk%3d%27'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual
		
	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Relat�rios' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Relat�rios de atendimento' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'A��es realizadas' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Relat�rios de a��es realizadas'
		,@SiteMap1Url = '~/Relatorios/AcoesRealizadas/Busca.aspx'
		,@SiteMap2Nome = 'Relat�rios de a��es realizadas'
		,@SiteMap2Url = '~/Relatorios/Relatorio.aspx?dummy=%271VBlnYbVq7k%3d%27'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 1 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Relat�rios' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Gr�ficos' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Gr�fico de justificativa de falta' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Gr�fico de justificativa de falta'
		,@SiteMap1Url = '~/Relatorios/GraficoJustificativaFalta/Busca.aspx'
		,@SiteMap2Nome = 'Gr�fico de justificativa de falta'
		,@SiteMap2Url = '~/Documentos/RelatorioDev.aspx?dummy=%277RDgZU5k%2bhU%3d%27'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Registro de Classe' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Relat�rio NAAPA' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Consulta de relat�rios do NAAPA'
		,@SiteMap1Url = '~/Classe/RelatorioNaapa/Busca.aspx'
		,@SiteMap2Nome = 'Lan�amento de relat�rios do NAAPA'
		,@SiteMap2Url = '~/Classe/RelatorioNaapa/Cadastro.aspx'
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Configura��es' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Alertas' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Listagem de alertas'
		,@SiteMap1Url = '~/Configuracao/Alertas/Busca.aspx'
		,@SiteMap2Nome = 'Cadastro de alertas'
		,@SiteMap2Url = '~/Configuracao/Alertas/Cadastro.aspx'
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Relat�rios' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Relat�rios de atendimento' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Gr�ficos de atendimento' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Gr�ficos de atendimento'
		,@SiteMap1Url = '~/Relatorios/GraficoAtendimento/Busca.aspx'
		,@SiteMap2Nome = 'Gr�ficos de atendimento'
		,@SiteMap2Url = '~/Relatorios/GraficoAtendimento/Relatorio.aspx'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Configura��es' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Gr�ficos de atendimento' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Listagem de gr�ficos de atendimento'
		,@SiteMap1Url = '~/Configuracao/GraficoAtendimento/Busca.aspx'
		,@SiteMap2Nome = 'Cadastro de gr�ficos de atendimento'
		,@SiteMap2Url = '~/Configuracao/GraficoAtendimento/Cadastro.aspx'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual
				
	-- ALTERA��O DE MENU E NOME 
	DECLARE @mod_idRegistroClasse int
				set @mod_idRegistroClasse = (select mod_id from SYS_Modulo where mod_nome = 'Registro de classe' and sis_id = 102)
	UPDATE SYS_Modulo
		SET mod_nome = 'Registro de sugest�es de curr�culo' , mod_idPai = @mod_idRegistroClasse , mod_dataAlteracao = GETDATE()
		WHERE mod_nome = 'Registro de sugest�es' and sis_id = 102
		
	-- ALTERA��O DE MENU
	DECLARE @mod_idConfiguracoes int
				set @mod_idConfiguracoes = (select mod_id from SYS_Modulo where mod_nome = 'Configura��es' and sis_id = 102)
	UPDATE SYS_Modulo
		SET mod_idPai = @mod_idConfiguracoes , mod_dataAlteracao = GETDATE()
		WHERE mod_nome = 'Cadastro de curr�culo' and sis_id = 102
	
	-- EXCLUS�O DO MENU "CURR�CULO"
	EXEC MS_RemovePaginaMenu
		@nomeSistema = @nomeSistema 
		,@NomeModulo = 'Curr�culo'
		,@nomeModuloPai = 'Administra��o'
		
	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL  -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Relat�rios' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Gerais' -- Nome do m�dulo (Obrigat�rio)
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
		
	-- ALTERA��ES MENU 
	DECLARE @mod_idGerais int
				set @mod_idGerais = (select mod_id from SYS_Modulo where mod_nome = 'Gerais' and sis_id = 102)
	DECLARE @mod_idPaiAntigogestor int
				set @mod_idPaiAntigogestor = (select mod_id from SYS_Modulo where mod_nome = 'Gestor' and sis_id = 102)

	UPDATE SYS_Modulo
		SET mod_idPai = @mod_idGerais , mod_dataAlteracao = GETDATE()
		WHERE mod_nome = 'Consulta da vers�o do aplicativo SGP tablet' and sis_id = 102 and mod_idPai = @mod_idPaiAntigogestor

	UPDATE SYS_Modulo
		SET mod_idPai = @mod_idGerais , mod_dataAlteracao = GETDATE()
		WHERE mod_nome = 'Diverg�ncias das rematr�culas' and sis_id = 102 and mod_idPai = @mod_idPaiAntigogestor

	UPDATE SYS_Modulo
		SET mod_idPai = @mod_idGerais , mod_dataAlteracao = GETDATE()
		WHERE mod_nome = 'Objetos de conhecimento' and sis_id = 102 and mod_idPai = @mod_idPaiAntigogestor

	UPDATE SYS_Modulo
		SET mod_idPai = @mod_idGerais , mod_dataAlteracao = GETDATE()
		WHERE mod_nome = 'An�lise de sondagem' and sis_id = 102 and mod_idPai = @mod_idPaiAntigogestor

	UPDATE SYS_Modulo
		SET mod_idPai = @mod_idGerais , mod_dataAlteracao = GETDATE()
		WHERE mod_nome = 'Sugest�es de curr�culos' and sis_id = 102 and mod_idPai = @mod_idPaiAntigogestor
	
	UPDATE SYS_Modulo
		SET mod_idPai = @mod_idGerais , mod_dataAlteracao = GETDATE()
		WHERE mod_nome = 'Quantitativo de sugest�es de curr�culos' and sis_id = 102 and mod_idPai = @mod_idPaiAntigogestor

-- Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION	
