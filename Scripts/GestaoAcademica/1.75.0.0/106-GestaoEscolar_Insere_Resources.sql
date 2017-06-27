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

-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION



