
	DECLARE @nomeSistema VARCHAR(100) = '$SystemName$'
	
	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Relat�rios' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Gestor' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Objetos de aprendizagem' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Objetos de aprendizagem'
		,@SiteMap1Url = '~/Relatorios/ObjetoAprendizagem/Busca.aspx'
		,@SiteMap2Nome = 'Objetos de aprendizagem'
		,@SiteMap2Url = '~/Relatorios/Relatorio.aspx?dummy=%27Qz5y1nPPR5g%3d%27'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual
	
	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Relat�rios' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Gestor' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Justificativas de falta' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Justificativas de falta'
		,@SiteMap1Url = '~/Relatorios/RelatoriosCP/DadosAlunosJustificativaFalta/Busca.aspx'
		,@SiteMap2Nome = 'Justificativas de falta'
		,@SiteMap2Url = '~/Relatorios/Relatorio.aspx?dummy=%27LtW9Jo%2bWRTc%3d%27'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Relat�rios' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Gestor' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Diverg�ncias entre aulas criadas e previstas' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Diverg�ncias entre aulas criadas e previstas'
		,@SiteMap1Url = '~/Relatorios/DivergenciasAulasPrevistas/Busca.aspx'
		,@SiteMap2Nome = 'Diverg�ncias entre aulas criadas e previstas'
		,@SiteMap2Url = '~/Relatorios/Relatorio.aspx?dummy=%27ewQYQI4%2fS98%3d%27'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual

	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = NULL -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Registro de classe' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Planejamento semanal' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Consulta de planejamento semanal'
		,@SiteMap1Url = '~/Academico/ControleSemanal/Busca.aspx'
		,@SiteMap2Nome = 'Cadastro de planejamento semanal' 
		,@SiteMap2Url = '~/Academico/ControleSemanal/Cadastro.aspx'
		,@SiteMap3Nome = NULL 
		,@SiteMap3Url = NULL
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 1 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 1 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 1 -- Indicar se possui vis�o de individual
