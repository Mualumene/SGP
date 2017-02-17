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
	public class CLS_AlunoTurmaDisciplinaOrientacaoCurricular : Abstract_CLS_AlunoTurmaDisciplinaOrientacaoCurricular
	{
        /// <summary>
        /// ID da Turma.
        /// </summary>
        [MSNotNullOrEmpty("[MSG_DISCIPLINA] da turma � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long tud_id { get; set; }

        /// <summary>
        /// ID do Aluno.
        /// </summary>
        [MSNotNullOrEmpty("Aluno � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long alu_id { get; set; }

        /// <summary>
        /// ID da MatriculaTurma.
        /// </summary>
        [MSNotNullOrEmpty("Matr�cula turma � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int mtu_id { get; set; }

        /// <summary>
        /// ID da MatriculaTurmaDisciplina.
        /// </summary>
        [MSNotNullOrEmpty("Matr�cula do(a) [MSG_DISCIPLINA] da turma � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int mtd_id { get; set; }

        /// <summary>
        /// Propriedade ocr_id.
        /// </summary>
        [MSNotNullOrEmpty("Orienta��o curricular � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long ocr_id { get; set; }

        /// <summary>
        /// ID da CLS_AlunoHabilidade.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int aha_id { get; set; }

        /// <summary>
        /// ID do tipo de per�odo do calend�rio.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de per�odo do calend�rio � obrigat�rio.")]
        public override int tpc_id { get; set; }

        /// <summary>
        /// Propriedade aha_alcancada.
        /// </summary>
        [MSDefaultValue(0)]
        public override bool aha_alcancada { get; set; }

        /// <summary>
        /// Propriedade aha_efetivada.
        /// </summary>
        [MSDefaultValue(0)]
        public override bool aha_efetivada { get; set; }

        /// <summary>
        /// Propriedade aha_situacao.
        /// </summary>
        [MSDefaultValue(1)]
        public override byte aha_situacao { get; set; }

        /// <summary>
        /// Propriedade aha_dataCriacao.
        /// </summary>
        public override DateTime aha_dataCriacao { get; set; }

        /// <summary>
        /// Propriedade aha_dataAlteracao.
        /// </summary>
        public override DateTime aha_dataAlteracao { get; set; }

        /// <summary>
        /// Vari�vel auxiliar que armazena a ordem do per�odo do calend�rio.
        /// </summary>
        public int tpc_ordem { get; set; }
	}
}