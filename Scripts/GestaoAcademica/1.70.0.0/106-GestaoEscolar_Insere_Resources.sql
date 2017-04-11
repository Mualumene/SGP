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
		@rcr_chave = 'Sondagem.Busca.lblLegend.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Listagem de sondagens'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.lblTitulo.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'T�tulo'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.btnPesquisar.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Pesquisar'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.btnLimparPesquisa.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Limpar pesquisa'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.btnNovo.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Nova sondagem'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.lblLegendResultados.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Resultados'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.dgvSondagem.EmptyDataText' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Nenhuma sondagem encontrada para os filtros informados.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.dgvSondagem.HeaderTitulo' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'T�tulo'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.dgvSondagem.HeaderSituacao' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Situa��o'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.dgvSondagem.HeaderAgendamento' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Agendamento'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.dgvSondagem.btnCadastrarAgendamento.ToolTip' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Cadastrar agendamentos da sondagem.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.dgvSondagem.HeaderExcluir' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.dgvSondagem.btExcluir.ToolTip' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir sondagem.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.ErroCarregarSondagens' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar carregar sondagens.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.ErroCarregarDados' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar carregar os dados.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.SondagemExcluidaSucesso' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Sondagem exclu�da com sucesso.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Busca.ErroExcluirSondagem' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar excluir a sondagem.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.lblLegend.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Cadastro de sondagem'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.lblTitulo.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'T�tulo *'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.rfvTitulo.ErrorMessage' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'T�tulo da sondagem � obrigat�rio'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.lblDescricao.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Descri��o'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.bntSalvar.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Salvar'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.btnCancelar.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Cancelar'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.btnVoltar.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Voltar'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.ErroCarregarSondagem' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar carregar a sondagem.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.SondagemIncluidaSucesso' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Sondagem inclu�da com sucesso.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.SondagemAlteradaSucesso' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Sondagem alterada com sucesso.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.ErroSalvarSondagem' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar salvar a sondagem.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.ErroCarregarSistema' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar carregar o sistema.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Agendamento.lblLegend.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Agendamento de sondagem'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Agendamento.ErroCarregarSondagem' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar carregar o agendamento.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Agendamento.SelecioneSondagem' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Selecione uma sondagem para efetuar o agendamento.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Agendamento.ErroCarregarSistema' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar carregar o sistema.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.lblLegendQuestoes.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Quest�es'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.lblLegendSubQuestoes.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Sub-Quest�es'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.lblLegendRespostas.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Respostas/Avalia��es'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.btnAdicionarQuestao.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Adicionar quest�o'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.btnAdicionarSubQuestao.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Adicionar sub-quest�o'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.btnAdicionarResposta.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Adicionar resposta'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvQuestoes.EmptyDataText' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Nenhuma quest�o cadastrada.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvQuestoes.HeaderNome' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Quest�o'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvQuestoes.HeaderOrdem' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Ordem'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvSubQuestoes.EmptyDataText' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Nenhuma sub-quest�o cadastrada.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvSubQuestoes.HeaderNome' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Sub-Quest�o'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvSubQuestoes.HeaderOrdem' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Ordem'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvRespostas.EmptyDataText' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Nenhuma resposta/avalia��o cadastrada.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvRespostas.HeaderNome' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Resposta/Avalia��o'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvRespostas.HeaderOrdem' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Ordem'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvRespostas.HeaderExcluir' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvRespostas.btExcluir.ToolTip' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir quest�o.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvSubQuestoes.HeaderExcluir' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvSubQuestoes.btExcluir.ToolTip' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir sub-quest�o.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvRespostas.HeaderExcluir' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvRespostas.btExcluir.ToolTip' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir resposta/avalia��o.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.ErroAbrirPopUp' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao abrir pop-up de cadastro.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.bntAdicionar.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Adicionar'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.ErroAdicionar' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar adicionar item.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.DescricaoObrigatorio' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = '{0} � obrigat�ria.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.lblCampo.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Descri��o *'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvSubQuestoes.HeaderNumero' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'N�'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvQuestoes.HeaderNumero' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'N�'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvRespostas.HeaderNumero' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'N�'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvQuestoes.HeaderExcluir' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvSubQuestoes.HeaderExcluir' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvRespostas.HeaderExcluir' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.JaExisteItem' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'J� existe uma {0} cadastrada com essa descri��o.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.lblSigla.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Sigla *'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.JaExisteSigla' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'J� existe uma {0} cadastrada com essa sigla.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.SiglaObrigatorio' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Sigla da {0} � obrigat�ria.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Sondagem.Cadastro.grvRespostas.HeaderSigla' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Sigla'

	EXEC MS_InsereResource 
		@rcr_chave = 'ACA_SondagemBO.NaoPermiteReordenar' 
		, @rcr_NomeResource = 'BLL'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'N�o � permitido alterar a ordem dos campos pois a sondagem j� est� em uso.'

	EXEC MS_InsereResource 
		@rcr_chave = 'ACA_SondagemBO.NaoPermiteExcluirItem' 
		, @rcr_NomeResource = 'BLL'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'N�o � permitido remover itens pois a sondagem j� est� em uso.'

	EXEC MS_InsereResource 
		@rcr_chave = 'ACA_SondagemBO.NaoPermiteAdicionarItem' 
		, @rcr_NomeResource = 'BLL'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'N�o � permitido adicionar itens pois a sondagem j� est� em uso.'

-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION



