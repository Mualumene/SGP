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
	public class CLS_AlunoAvaliacaoTurmaDisciplinaDesempenho : Abstract_CLS_AlunoAvaliacaoTurmaDisciplinaDesempenho
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
        /// ID do tipo de desempenho.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de desempenho e aprendizado � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int tda_id { get; set; }
	}
}