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

-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION



