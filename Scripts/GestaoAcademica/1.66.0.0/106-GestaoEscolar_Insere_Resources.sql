USE [GestaoPedagogica]
GO

BEGIN TRANSACTION 
SET XACT_ABORT ON   

	EXEC MS_InsereResource 
		@rcr_chave = 'Escola.Cadastro.ckbTerceirizada.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Escola terceirizada'

	EXEC MS_InsereResource 
		@rcr_chave = 'CalendarioAnual.Cadastro.ckbPermiteRecesso.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Permitir lan�amento no recesso'

	EXEC MS_InsereResource 
		@rcr_chave = 'RecursosHumanos.Cargo.Cadastro.ckbControladoPelaIntegracao.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Controlado pela integra��o'
		
	EXEC MS_InsereResource 
		@rcr_chave = 'MSG_RODAPEBOLETIMCOMPLETOInfantil' 
		, @rcr_NomeResource = 'Mensagens'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'O boletim do aluno pode ser acessado pela internet atrav�s do endere�o: <a target="_blank" href="http://infanciaonline.sme.prefeitura.sp.gov.br">http://infanciaonline.sme.prefeitura.sp.gov.br</a>. Pais/respons�veis, para entrar utilizem usu�rio: c�digo EOL descrito acima e senha: data de nascimento do estudante.'

	EXEC MS_InsereResource 
		@rcr_chave = 'RecursosHumanos.Docente.Cadastro.lblMensagemFormacao.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Estou ciente de que o docente deve ser formado em pedagogia.'

	EXEC MS_InsereResource 
		@rcr_chave = 'Areas.Documentos.lblNivelEnsino.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'N�vel de ensino'
		
	EXEC MS_InsereResource 
		@rcr_chave = 'RecursosHumanos.AtribuicaoDocentes.Busca._dgvTurma.HeaderText.Titular' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Titular'

	EXEC MS_InsereResource 
		@rcr_chave = 'RecursosHumanos.AtribuicaoDocentes.Busca._dgvTurma.HeaderText.SegundoTitular' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Segundo titular'

	EXEC MS_InsereResource 
		@rcr_chave = 'ControleTurma.DiarioClasse.MensagemEfetivadoRecesso' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'O per�odo de fechamento do recesso est� encerrado. Os registros ficam bloqueados, com exce��o do plano de aula e das anota��es dos alunos.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblTipoClassificacaoEscola.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Tipo de classifica��o de escola:'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblVigenciaInicial.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Vig�ncia inicial'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.rfvVigenciaInicial.ErrorMessage' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Vig�ncia inicial � obrigat�rio.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblVigenciaFinal.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Vig�ncia final'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.cvDatas.ErrorMessage' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Vig�ncia final deve ser maior ou igual a vig�ncia inicial.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.btnAdicionar.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Adicionar'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.btnCancelarAdicao.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Cancelar'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.gdvCargos.tvi_nome.HeaderText' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Tipo de v�nculo'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.gdvCargos.lblCargo.HeaderText' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Cargo'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.gdvCargos.tcc_vigenciaInicial.HeaderText' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Vig�ncia inicial'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.gdvCargos.lblVigenciaFinal.HeaderText' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Vig�ncia final'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.gdvCargos.btnEditar.HeaderText' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Editar'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.gdvCargos.btnExcluir.HeaderText' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Excluir'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.btnSalvar.HeaderText' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Salvar'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.btnCancelar.HeaderText' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Cancelar'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.ErroCarregarSistema' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Erro ao tentar carregar o sistema.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.ErroSalvarCargosAtribuicaoEsporadica' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Erro ao tentar salvar cargos para atribui��o espor�dica.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.CargoAtribuicaoEsporadicaAdicionadoSucesso' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Cargo para atribui��o espor�dica adicionado com sucesso.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.CargoAtribuicaoEsporadicaAlteradoSucesso' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Cargo para atribui��o espor�dica alterado com sucesso.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.ErroAdicionarCargoAtribuicaoEsporadica' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Erro ao tentar adicionar cargo para atribui��o espor�dica.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.ErroCarregarCargoAtribuicaoEsporadica' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Erro ao tentar carregar cargos para atribui��o espor�dica.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.CargoAtribuicaoEsporadicaExcluidoSucesso' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Cargo para atribui��o espor�dica exclu�do com sucesso.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.CargoAtribuicaoEsporadicaErroExcluir' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Erro ao tentar excluir o cargo para atribui��o espor�dica.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.CargoAtribuicaoEsporadicaErroEditar' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Erro ao tentar editar o cargo para atribui��o espor�dica.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.cvDataInicio.ErrorMessage' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Vig�ncia inicial inv�lida.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.cvDataFim.ErrorMessage' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Vig�ncia final inv�lida.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.ValidacaoVigenciaInicialDeveSerMaiorVigenciaFinal' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'A vig�ncia inicial deve ser maior que a vig�ncia final do registro que possui o mesmo cargo.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.JaExisteCargoVigenciaConflitante' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'J� existe o mesmo cargo cadastrado com a vig�ncia conflitante.'

	EXEC MS_InsereResource 
		@rcr_chave = 'TipoClassificacaoEscola.Cargos.lblMensagem.ValidacaoVigenciaInicialMaiorIgualInformada' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'J� existe um cargo cadastrado com a vig�ncia inicial maior ou igual a informada.'

	EXEC MS_InsereResource 
		@rcr_chave = 'MSG_PLANO_POLITICO_PEDAGOGICO' 
		, @rcr_NomeResource = 'Mensagens'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Plano Pol�tico e Pedag�gico'
		
	EXEC MS_InsereResource 
		@rcr_chave = 'AtribuicaoEsporadica.Cadastro.lblMensagemDocenteNaoEncontradoCargoNaoPermitido.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'O cargo do docente n�o permite atribui��o na escola selecionada.'

	EXEC MS_InsereResource
		@rcr_chave = 'RecursosHumanos.AtribuicaoDocentes.Busca.divConfirmacao.MensagemResponsavel.text', -- varchar(400)
		@rcr_NomeResource = 'Academico', -- varchar(100)
		@rcr_cultura = 'pt-br', -- varchar(10)
		@rcr_valorPadrao = 'Estou ciente de que o docente deve ser formado em pedagogia.'
		
	EXEC MS_InsereResource 
		@rcr_chave = 'UCDadosBoletim.lblEI.Text' 
		, @rcr_NomeResource = 'UserControl'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Ensino Infantil'
		
	EXEC MS_InsereResource 
		@rcr_chave = 'UCAlunoEfetivacaoObservacaoGeral.lblPorcentagemFreqEI.Text' 
		, @rcr_NomeResource = 'UserControl'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = '% Freq.'
		
	EXEC MS_InsereResource 
		@rcr_chave = 'RHU_Colaborador.ValidacaoCargoTipoClassificacao' 
		, @rcr_NomeResource = 'BLL'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'O cargo do docente n�o permite atribui��o na escola selecionada.'
		
	EXEC MS_InsereResource 
		@rcr_chave = 'Areas.Documentos.lblDescricao.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Descri��o *'
		
	EXEC MS_InsereResource 
		@rcr_chave = 'Areas.Documentos.lblLinkArquivo.Text' 
		, @rcr_NomeResource = 'Academico'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Link / Arquivo *'






	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.litCadastroPermissao.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Cadastro de permiss�es espec�ficas'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.litOperacao.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Opera��o'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.litConsulta.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Consulta'
	
	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.litInserir.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Inclus�o'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.litEditar.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Altera��o'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.litExcluir.Text' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Exclus�o'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao1' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Hist�rico escolar - dados aluno'
	
	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao2' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Hist�rico escolar - ensino fundamental'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao3' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Hist�rico escolar - EJA'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao4' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Hist�rico escolar - transfer�ncia'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao5' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Hist�rico escolar - informa��es complementares'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao6' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Di�rio de classe - exclus�o de aulas'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao7' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Di�rio de classe - anota��es do aluno'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao8' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Fechamento - visualiza��o de observa��es'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao9' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Fechamento - exibi��o da aba parecer conclusivo'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao10' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Fechamento - exibi��o da aba justificativa p�s conselho'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao11' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Fechamento - exibi��o da aba desempenho aprendizagem'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao12' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Fechamento - exibi��o da aba recomenda��o aluno'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao13' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Fechamento - exibi��o da aba recomenda��o respons�vel'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao14' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Fechamento - exibi��o da aba anota��es aluno'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao15' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Di�rio de classe - lan�amento de frequ�ncia'

	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.Operacao16' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'Di�rio de classe - lan�amento de frequ�ncia - infantil'


	EXEC MS_InsereResource 
		@rcr_chave = 'PermissoesEspecificas.Cadastro.grvOperacoes.EmptyDataText' 
		, @rcr_NomeResource = 'Configuracao'
		, @rcr_cultura = 'pt-BR'
		, @rcr_valorPadrao = 'N�o existem opera��es cadastradas.'

	EXEC MS_InsereResource 
		@rcr_chave = 'litNomeAluno.Text.Responsavel' 
		, @rcr_NomeResource = 'AreaAluno.MasterPageAluno'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Respons�vel por'

	EXEC MS_InsereResource 
		@rcr_chave = 'litNomeAluno.Text.Aluno' 
		, @rcr_NomeResource = 'AreaAluno.MasterPageAluno'
		, @rcr_cultura = 'pt-BR'
		, @rcr_codigo = 0 
		, @rcr_valorPadrao = 'Aluno'

	
		
-- Fechar transa��o     
SET XACT_ABORT OFF 
COMMIT TRANSACTION



