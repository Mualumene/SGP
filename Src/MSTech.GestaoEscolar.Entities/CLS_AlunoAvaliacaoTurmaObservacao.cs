/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using System;
    using System.ComponentModel;
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
		
	/// <summary>
	/// Description: .
	/// </summary>
    [Serializable]
	public class CLS_AlunoAvaliacaoTurmaObservacao : Abstract_CLS_AlunoAvaliacaoTurmaObservacao
	{
        /// <summary>
        /// ID da turma.
        /// </summary>
        [MSNotNullOrEmpty("Turma � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long tur_id { get; set; }

        /// <summary>
        /// ID do aluno.
        /// </summary>
        [MSNotNullOrEmpty("Aluno � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long alu_id { get; set; }

        /// <summary>
        /// ID da matr�cula turma do aluno.
        /// </summary>
        [MSNotNullOrEmpty("Matr�cula turma � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int mtu_id { get; set; }

        /// <summary>
        /// ID do formato de avalia��o.
        /// </summary>
        [MSNotNullOrEmpty("Formato de avalia��o � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int fav_id { get; set; }

        /// <summary>
        /// ID da avalia��o.
        /// </summary>
        [MSNotNullOrEmpty("Avalia��o � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int ava_id { get; set; }

        /// <summary>
        /// Propriedade ato_desempenhoAprendizado.
        /// </summary>
        [MSValidRange(600, "[MSG_DESEMPENHOAPRENDIZADO] pode conter at� 600 caracteres.")]
        public override string ato_desempenhoAprendizado { get; set; }

        /// <summary>
        /// Propriedade ato_recomendacaoAluno.
        /// </summary>
        [MSValidRange(600, "Recomenda��es ao aluno pode conter at� 600 caracteres.")]
        public override string ato_recomendacaoAluno { get; set; }

        /// <summary>
        /// Propriedade ato_recomendacaoResponsavel.
        /// </summary>
        [MSValidRange(700, "Recomenda��es aos pais/respons�veis pode conter at� 700 caracteres.")]
        public override string ato_recomendacaoResponsavel { get; set; }

        [MSDefaultValue(1)]
        public override byte ato_situacao { get; set; }
        public override DateTime ato_dataCriacao { get; set; }
        public override DateTime ato_dataAlteracao { get; set; }
	}
}