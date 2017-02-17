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
	public class CLS_AlunoAvaliacaoTurmaDisciplinaRecomendacao : Abstract_CLS_AlunoAvaliacaoTurmaDisciplinaRecomendacao
	{
        /// <summary>
        /// ID da turma disciplina.
        /// </summary>
        [MSNotNullOrEmpty("[MSG_DISCIPLINA] da turma � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long tud_id { get; set; }

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
        /// ID da matr�cula turma disciplina do aluno.
        /// </summary>
        [MSNotNullOrEmpty("Matr�cula do(a) [MSG_DISCIPLINA] da turma � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int mtd_id { get; set; }

        /// <summary>
        /// ID do formato de avalia��o .
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
        /// ID da recomenda��o.
        /// </summary>
        [MSNotNullOrEmpty("Recomenda��o ao aluno e pais-respons�veis � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int rar_id { get; set; }

        /// <summary>
        /// Propriedade auxiliar - Tipo de recomenda��o.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de recomenda��o � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override short rar_tipo { get; set; }
	}
}