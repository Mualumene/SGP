
	EXEC MS_InsereRelatorio
		@rlt_id = 318 -- ID do relat�rio. (Obrigat�rio, igual ao enumerador do sistema)
		,@rlt_nome = 'RelatorioObjetoAprendizagem' -- Nome do relatorio. (Obrigat�rio, igual a descric��o do enumerador do sistema)

	EXEC MS_InsereRelatorio
		@rlt_id = 319 -- ID do relat�rio. (Obrigat�rio, igual ao enumerador do sistema)
		,@rlt_nome = 'AlunosJustificativaFalta' -- Nome do relatorio. (Obrigat�rio, igual a descric��o do enumerador do sistema)

	EXEC MS_InsereRelatorio
		@rlt_id = 320 -- ID do relat�rio. (Obrigat�rio, igual ao enumerador do sistema)
		,@rlt_nome = 'DivergenciasAulasPrevistas' -- Nome do relatorio. (Obrigat�rio, igual a descric��o do enumerador do sistema)
