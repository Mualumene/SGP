USE [GestaoPedagogica]
GO

BEGIN TRANSACTION 
SET XACT_ABORT ON   

	/***************
		Copiar do exemplo abaixo.
	****************

        -- Insere resources. 
        EXEC MS_InsereResource 
            @rcr_chave = 'Relatorios.UCRelatorios.lblMessageLayout.MsgAviso' 
            , @rcr_NomeResource = 'WebControls'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'A visualiza��o do texto na tela abaixo n�o corresponde, necessariamente, ao formato no qual ele ser� impresso. Este formato segue as normas estabelecidas pela Secretaria Municipal de Educa��o.'

	*/

	EXEC MS_InsereResource 
		@rcr_chave = 'LogNotificacoes.Busca.DataInicioInvalida' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Data inicial deve estar no formato DD/MM/AAAA.'

	EXEC MS_InsereResource 
		@rcr_chave = 'LogNotificacoes.Busca.DataInicioMaiorHoje' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Data inicial do per�odo n�o pode ser posterior � data atual.'

	EXEC MS_InsereResource 
		@rcr_chave = 'LogNotificacoes.Busca.DataFimInvalida' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Data final deve estar no formato DD/MM/AAAA.'

	EXEC MS_InsereResource 
		@rcr_chave = 'LogNotificacoes.Busca.DataFimMaiorHoje' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Data final do per�odo n�o pode ser posterior � data atual.'

	EXEC MS_InsereResource 
		@rcr_chave = 'LogNotificacoes.Busca.DataFimMenorInicio' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Data final do per�odo deve ser maior ou igual � data inicial.'

	EXEC MS_InsereResource 
		@rcr_chave = 'LogNotificacoes.Busca.btnGerarRel.Text' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Gerar relat�rio'

	EXEC MS_InsereResource 
		@rcr_chave = 'LogNotificacoes.Busca.btnLimparPesquisa.Text' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Limpar pesquisa'

	EXEC MS_InsereResource 
		@rcr_chave = 'ControleTurma.DiarioClasse.MensagemAulaSemPlanoAula' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Se esse �cone estiver ao lado de um plano de aula, significa que esse plano de aula n�o foi preenchido ou est� sem objeto de conhecimento. Para regularizar, � necess�rio que o plano dessa aula seja preenchido e que tenha algum objeto de conhecimento.'

	EXEC MS_InsereResource 
		@rcr_chave = 'ControleTurma.Listao.MensagemAulaSemPlanoAula' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Se esse �cone estiver ao lado de um plano de aula, significa que esse plano de aula n�o foi preenchido. Para regularizar, � necess�rio que o plano dessa aula seja preenchido.'

	EXEC MS_InsereResource 
		@rcr_chave = 'ControleTurma.DiarioClasse.imgSemPlanoAula' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Plano de aula n�o preenchido ou sem objeto de conhecimento'

	EXEC MS_InsereResource 
		@rcr_chave = 'ControleTurma.Listao.imgSemPlanoAula' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Plano de aula n�o preenchido'

-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION



