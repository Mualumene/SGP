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
            @rcr_chave = 'ObjetoAprendizagem.Busca.lblTipoRel.Text' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Tipo de relat�rio'

	EXEC MS_InsereResource 
            @rcr_chave = 'ObjetoAprendizagem.Busca.btnGerarRel.Text' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Gerar relat�rio'

	EXEC MS_InsereResource 
            @rcr_chave = 'ObjetoAprendizagem.Busca.btnLimparPesquisa.Text' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Limpar pesquisa'

	EXEC MS_InsereResource 
            @rcr_chave = 'ObjetoAprendizagem.Busca.cvCiclos.ErrorMessage' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = '� necess�rio selecionar pelo menos um ciclo.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ObjetoAprendizagem.Busca.lblMessage.ErroPermissao' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Voc�n�o�possui�permiss�o�para�acessar�a�p�gina�solicitada.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ObjetoAprendizagem.Busca.lblMessage.ErroCarregarSistema' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Erro ao tentar carregar o sistema.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ObjetoAprendizagem.Busca.lblMessage.ErroGerarRelatorio' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Erro ao tentar carregar o relat�rio.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ObjetoAprendizagem.Busca.lblMessage.ErroCarregarDados' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Erro ao tentar carregar dados.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ObjetoAprendizagem.Busca.lblLegend.Text' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Objetos de aprendizagem'

	EXEC MS_InsereResource 
            @rcr_chave = 'ObjetoAprendizagem.Busca.lblMessageCiclo.Text' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'N�o h� ciclos ligados a objetos de aprendizagem para os filtros selecionados.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleTurma.Busca.grvPeriodosAulas.ColunaSugestao' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Sugest�o'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleTurma.Busca.grvPeriodosAulas.ColunaAulasCriadas' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Aulas criadas'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleTurma.Busca.imgDivergenciaAulaPrevista.ToolTip' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Existe diverg�ncia entre aulas criadas e aulas previstas'

	EXEC MS_InsereResource 
            @rcr_chave = 'RelatoriosCP.DadosAlunosJustificativaFalta.Busca.btnGerarRel.Text' 
            , @rcr_NomeResource = 'Relatorios'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Gerar documento'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.PlanejamentoSalvoSucesso' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Planejamento semanal salvo com sucesso.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.ErroSalvar' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Erro ao salvar planejamento semanal.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.lblCabecalho.Text' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Escola: <b>{0}</b><br/>Calend�rio: <b>{1}</b><br/>Turma: <b>{2}</b> Componente curricular: <b>{3}</b><br/>Tipo de doc�ncia: <b>{4}</b>'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.btnCancelar.Text' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Cancelar'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.btnVoltar.Text' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Voltar'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.ErroCarregar' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Erro ao tentar carregar os dados.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.NenhumaAulaPeriodo' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Nenhuma aula encontrada para o per�odo.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.ErroCarregarAulas' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Erro ao tentar carregar as aulas.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.ErroCarregarDatas' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Erro ao tentar carregar as datas.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.MensagemSelecione' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Selecione uma turma para realizar o planejamento semanal.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.btnSalvar.Text' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Salvar'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Cadastro.NenhumPlanejamentoAlterado' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Nenhum planejamento de aula foi alterado.'

	EXEC MS_InsereResource 
            @rcr_chave = 'ControleSemanal.Busca.DocenteSemTurmaRegencia' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'O docente n�o possui nenhuma turma atribu�da para lan�amento do planejamento semanal.'

-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION



