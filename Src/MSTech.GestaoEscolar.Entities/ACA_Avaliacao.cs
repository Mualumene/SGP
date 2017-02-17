/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{
    /// <summary>
    ///
    /// </summary>
    [Serializable]
    public class ACA_Avaliacao : Abstract_ACA_Avaliacao
    {
        [MSValidRange(100, "Nome pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Nome � obrigat�rio.")]
        public override string ava_nome { get; set; }

        [MSNotNullOrEmpty("Tipo � obrigat�rio.")]
        public override short ava_tipo { get; set; }

        [MSNotNullOrEmpty("Aparece boletim � obrigat�rio.")]
        public override bool ava_apareceBoletim { get; set; }

        /// <summary>
        /// Indica se os alunos n�o avaliados ser�o exibidos.
        /// </summary>
        [MSNotNullOrEmpty("Exibe n�o avaliados � obrigat�rio.")]
        [MSDefaultValue(false)]
        public override bool ava_exibeNaoAvaliados { get; set; }

        /// <summary>
        /// Indica se a op��o sem professor ser� exibida.
        /// </summary>
        [MSNotNullOrEmpty("Exibe sem professor � obrigat�rio.")]
        [MSDefaultValue(true)]
        public override bool ava_exibeSemProfessor { get; set; }

        /// <summary>
        /// Flag que indica se a observa��o do aluno para o bimestre ser� exibida na efetiva��o (por disciplina).
        /// </summary>
        [MSNotNullOrEmpty("Exibe observa��o no(a) [MSG_DISCIPLINA] � obrigat�rio.")]
        [MSDefaultValue(false)]
        public override bool ava_exibeObservacaoDisciplina { get; set; }

        /// <summary>
        /// Flag que indica se a observa��o do aluno para o bimestre ser� exibida na efetiva��o (por turma).
        /// </summary>
        [MSNotNullOrEmpty("Exibe observa��o para conselho pedag�gico � obrigat�rio.")]
        [MSDefaultValue(false)]
        public override bool ava_exibeObservacaoConselhoPedagogico { get; set; }

        /// <summary>
        /// Exibe a porcentagem de frequ�ncia na efetiva��o de notas.
        /// </summary>
        [MSNotNullOrEmpty("Exibe a porcentagem de frequ�ncia � obrigat�rio.")]
        [MSDefaultValue(0)]
        public override bool ava_exibeFrequencia { get; set; }

        /// <summary>
        /// Indica se o usu�rio poder� infromar uma nota que substitua a nota original do aluno..
        /// </summary>
        [MSNotNullOrEmpty("Exibe nota p�s-conselho � obrigat�rio.")]
        [MSDefaultValue(0)]
        public override bool ava_exibeNotaPosConselho { get; set; }

        [MSDefaultValue(0)]
        public override bool ava_baseadaConceitoGlobal { get; set; }

        public override bool ava_baseadaNotaDisciplina { get; set; }

        public override bool ava_baseadaAvaliacaoAdicional { get; set; }

        // <summary>
        /// Flag que indica se a frequ�ncia do conceito global � obrigat�rio..
        /// </summary>
        [MSDefaultValue(true)]
        public override bool ava_conceitoGlobalObrigatorioFrequencia { get; set; }

        [MSDefaultValue(1)]
        public override short ava_situacao { get; set; }

        public override DateTime ava_dataCriacao { get; set; }

        public override DateTime ava_dataAlteracao { get; set; }

        /// <summary>
        /// Campo ordem da tabela ACA_TipoPeriodoCalendario.
        /// </summary>
        public int tpc_ordem { get; set; }

        /// <summary>
		/// Indica se ir� ocultar bot�o de atualiza��o de notas e frequ�ncia.
		/// </summary>
        [MSDefaultValue(0)]
		public override bool ava_ocultarAtualizacao { get; set; }
    }
}