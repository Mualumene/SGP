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
            @rcr_chave = 'Curriculo.Cadastro.UCCurriculo1.Titulo' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Cadastro de curr�culo'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.litIntroducao.Text' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Introdu��o'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.litHabilidades.Text' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Conte�dos e habilidades'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.btnNovoGeral.Text' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Novo t�pico'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.btnNovoDisciplina.Text' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Novo t�pico'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.grvGeral.ColunaTopico' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'T�pico'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.rfvTitulo.ErrorMessage' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'T�tulo do t�pico � obrigat�rio.'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.grvGeral.ColunaOrdem' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Ordem'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.btnSubir.ToolTip' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Mover para cima'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.btnDescer.ToolTip' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Mover para baixo'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.grvGeral.ColunaEditar' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Editar'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.btnEditar.ToolTip' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Editar'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.btnSalvar.ToolTip' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Salvar'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.btnCancelarEdicao.ToolTip' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Cancelar'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.grvGeral.ColunaExcluir' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.btnExcluir.ToolTip' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.MensagemSucessoSalvar' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'T�pico salvo com sucesso.'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.MensagemSucessoExcluir' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'T�pico exclu�do com sucesso.'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.grvGeral.EmptyDataText' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'N�o existem t�picos cadastrados.'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.lblTitulo.Text' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'T�tulo *'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.lblDescricao.Text' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'Descri��o'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.grvDisciplina.EmptyDataText' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'N�o existem t�picos cadastrados.'

	EXEC MS_InsereResource 
            @rcr_chave = 'Curriculo.Cadastro.grvDisciplina.ColunaTopico' 
            , @rcr_NomeResource = 'Academico'
            , @rcr_cultura = 'pt-BR'
            , @rcr_codigo = 0 
            , @rcr_valorPadrao = 'T�pico'

-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION



