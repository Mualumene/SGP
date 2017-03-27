
	DECLARE @nomeSistema VARCHAR(100) = '$SystemName$'
		
	EXEC MS_InserePaginaMenu
		@nomeSistema = @nomeSistema -- Nome do sistema (obrigat�rio)
		,@nomeModuloAvo = 'Administra��o' -- Nome do m�dulo av� (Opcional, apenas quando houver) 
		,@nomeModuloPai = 'Cadastros' -- Nome do m�dulo pai (Opcional, apenas quando houver)
		,@nomeModulo = 'Objetos de aprendizagem' -- Nome do m�dulo (Obrigat�rio)
		,@SiteMap1Nome = 'Consulta de componentes curriculares'
		,@SiteMap1Url = '~/Academico/ObjetoAprendizagem/BuscaDisciplina.aspx'
		,@SiteMap2Nome = 'Consulta de objetos de aprendizagem'
		,@SiteMap2Url = '~/Academico/ObjetoAprendizagem/Busca.aspx'
		,@SiteMap3Nome = 'Cadastro de objetos de aprendizagem' 
		,@SiteMap3Url = '~/Academico/ObjetoAprendizagem/Cadastro.aspx'
		,@possuiVisaoAdm = 1 -- Indicar se possui vis�o de administador
		,@possuiVisaoGestao = 0 -- Indicar se possui vis�o de Gest�o
		,@possuiVisaoUA = 0 -- Indicar se possui vis�o de UA
		,@possuiVisaoIndividual = 0 -- Indicar se possui vis�o de individual
