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
        @rcr_chave = 'RelatorioAtendimento.Cadastro.chkAcoesRealizadas.Text' 
        , @rcr_NomeResource = 'Configuracao'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'Permite a��es realizadas'

	EXEC MS_InsereResource 
		@rcr_chave = 'pnlBusca.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.Classe.RelatorioNaapa.Busca'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Consulta de relat�rios do NAAPA'

	EXEC MS_InsereResource 
		@rcr_chave = 'ctrl_61.ToolTip' 
		, @rcr_NomeResource = 'GestaoEscolar.Classe.RelatorioNaapa.Busca'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Lan�ar relat�rio do NAAPA'
	
	EXEC MS_InsereResource 
		@rcr_chave = 'pnlBusca.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.Relatorios.AcoesRealizadas.Busca, pnlBusca.Text'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Consulta de a��es realizadas'

	EXEC MS_InsereResource 
		@rcr_chave = 'Padrao.Calendario.Text' 
		, @rcr_NomeResource = 'Padrao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Calend�rio'

	EXEC MS_InsereResource 
        @rcr_chave = 'RelatorioNaapa.Cadastro.pnlFiltros.GroupingText' 
        , @rcr_NomeResource = 'Classe'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'Lan�amento de relat�rios do NAAPA'

	EXEC MS_InsereResource 
        @rcr_chave = 'RelatorioNaapa.Cadastro.btnNovo.Text' 
        , @rcr_NomeResource = 'Classe'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'Novo lan�amento'

	EXEC MS_InsereResource 
        @rcr_chave = 'RelatorioNaapa.Cadastro.grvLancamentos.EmptyDataText' 
        , @rcr_NomeResource = 'Classe'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'A pesquisa n�o encontrou resultados.'

	EXEC MS_InsereResource 
        @rcr_chave = 'RelatorioNaapa.Cadastro.grvLancamentos.ColunaDescricao' 
        , @rcr_NomeResource = 'Classe'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'Data do lan�amento'

	EXEC MS_InsereResource 
		@rcr_chave = 'Padrao.Alterar.Text' 
		, @rcr_NomeResource = 'Padrao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Alterar'

	EXEC MS_InsereResource 
		@rcr_chave = 'Padrao.Detalhar.Text' 
		, @rcr_NomeResource = 'Padrao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Detalhar'

	EXEC MS_InsereResource 
		@rcr_chave = 'Padrao.Excluir.Text' 
		, @rcr_NomeResource = 'Padrao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
		@rcr_chave = 'GraficoJustificativaFalta.Busca.btnGerarRel.Text' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Gerar relat�rio'

	EXEC MS_InsereResource 
		@rcr_chave = 'GraficoJustificativaFalta.Busca.lblMessage.ErroPermissao' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Voc�n�o�possui�permiss�o�para�acessar�a�p�gina�solicitada.'

	EXEC MS_InsereResource 
		@rcr_chave = 'GraficoJustificativaFalta.Busca.lblMessage.ErroCarregarSistema' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar carregar o sistema.'

	EXEC MS_InsereResource 
		@rcr_chave = 'GraficoJustificativaFalta.Busca.lblMessage.ErroGerarRelatorio' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar carregar o relat�rio.'

	EXEC MS_InsereResource 
		@rcr_chave = 'GraficoJustificativaFalta.Busca.lblMessage.ErroCarregarDados' 
		, @rcr_NomeResource = 'Relatorios'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Erro ao tentar carregar os dados.'

	EXEC MS_InsereResource 
        @rcr_chave = 'RelatorioNaapa.Cadastro.MensagemSucessoSalvar' 
        , @rcr_NomeResource = 'Classe'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'Lan�amento do relat�rio salvo com sucesso.'

	EXEC MS_InsereResource 
        @rcr_chave = 'RelatorioNaapa.Cadastro.MensagemSucessoExcluir' 
        , @rcr_NomeResource = 'Classe'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'Lan�amento do relat�rio exclu�do com sucesso.'

	EXEC MS_InsereResource 
		@rcr_chave = 'litAcoesRealizadas.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.WebControls.LancamentoRelatorioAtendimento.UCLancamentoRelatorioAtendimento'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'A��es realizadas'

	EXEC MS_InsereResource 
		@rcr_chave = 'btnNovaAcao.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.WebControls.LancamentoRelatorioAtendimento.UCLancamentoRelatorioAtendimento'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Nova a��o'

	EXEC MS_InsereResource 
		@rcr_chave = 'grvAcoes.EmptyDataText' 
		, @rcr_NomeResource = 'GestaoEscolar.WebControls.LancamentoRelatorioAtendimento.UCLancamentoRelatorioAtendimento'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'N�o existem a��es realizadas cadastradas nesse lan�amento.'

	EXEC MS_InsereResource 
		@rcr_chave = 'ckbImpressao.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.WebControls.LancamentoRelatorioAtendimento.UCLancamentoRelatorioAtendimento'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Exibir na impress�o'

	EXEC MS_InsereResource 
		@rcr_chave = 'lblData.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.WebControls.LancamentoRelatorioAtendimento.UCLancamentoRelatorioAtendimento'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Data *'

	EXEC MS_InsereResource 
		@rcr_chave = 'rfvData.ErrorMessage' 
		, @rcr_NomeResource = 'GestaoEscolar.WebControls.LancamentoRelatorioAtendimento.UCLancamentoRelatorioAtendimento'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Data da a��o realizada � obrigat�rio.'

	EXEC MS_InsereResource 
		@rcr_chave = 'lblAcao.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.WebControls.LancamentoRelatorioAtendimento.UCLancamentoRelatorioAtendimento'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'A��o realizada *'

	EXEC MS_InsereResource 
		@rcr_chave = 'rfvAcao.ErrorMessage' 
		, @rcr_NomeResource = 'GestaoEscolar.WebControls.LancamentoRelatorioAtendimento.UCLancamentoRelatorioAtendimento'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'A��o realizada � obrigat�rio.'

	EXEC MS_InsereResource 
		@rcr_chave = 'ctvDataFormato.ErrorMessage' 
		, @rcr_NomeResource = 'GestaoEscolar.WebControls.LancamentoRelatorioAtendimento.UCLancamentoRelatorioAtendimento'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Data da a��o realizada n�o est� no formato dd/mm/aaaa ou � inexistente.'

	EXEC MS_InsereResource 
		@rcr_chave = 'litTitulo.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Busca'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Listagem de alertas'

	EXEC MS_InsereResource 
		@rcr_chave = 'grvAlertas.ColunaNome' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Busca'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Nome do alerta'

	EXEC MS_InsereResource 
		@rcr_chave = 'litTitulo.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Cadastro de alerta'

	EXEC MS_InsereResource 
		@rcr_chave = 'lblNome.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Nome *'

	EXEC MS_InsereResource 
		@rcr_chave = 'lblAssunto.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Assunto'

	EXEC MS_InsereResource 
		@rcr_chave = 'lblPeriodoAnalise.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Quantidade de dias para an�lise de dados'

	EXEC MS_InsereResource 
		@rcr_chave = 'lblPeriodoValidade.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Per�odo de validade da notifica��o (em horas)'

	EXEC MS_InsereResource 
		@rcr_chave = 'litGrupos.Text' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Grupos de envio da notifica��o'

	EXEC MS_InsereResource 
		@rcr_chave = 'grvGrupos.EmptyDataText' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Nenhum grupo foi encontrado.'

	EXEC MS_InsereResource 
		@rcr_chave = 'grvGrupos.ColunaNome' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Nome'

	EXEC MS_InsereResource 
		@rcr_chave = 'grvGrupos.ColunaEnvioNotificacao' 
		, @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Enviar notifica��o'

	EXEC MS_InsereResource 
        @rcr_chave = 'mensagemSucessoSalvar' 
        , @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'Alerta salvo com sucesso.'

	EXEC MS_InsereResource 
        @rcr_chave = 'chkDesativar.Text' 
        , @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'Desativar alerta'

	EXEC MS_InsereResource 
        @rcr_chave = 'rfvNome.ErrorMessage' 
        , @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'Nome � obrigat�rio.'

	EXEC MS_InsereResource 
        @rcr_chave = 'litAgendamento.Text' 
        , @rcr_NomeResource = 'GestaoEscolar.Configuracao.Alertas.Cadastro'
        , @rcr_cultura = 'pt-BR'
        , @rcr_codigo = 0 
        , @rcr_valorPadrao = 'Agendamento'

-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION



