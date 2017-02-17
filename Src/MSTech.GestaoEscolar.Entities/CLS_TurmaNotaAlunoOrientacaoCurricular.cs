/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
	using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
    using System;
    using System.ComponentModel;
		
	/// <summary>
	/// Description: .
	/// </summary>
	public class CLS_TurmaNotaAlunoOrientacaoCurricular : AbstractCLS_TurmaNotaAlunoOrientacaoCurricular
	{
        /// <summary>
        /// Campo Id da tabela TUR_TurmaDisciplina.
        /// </summary>
        [MSNotNullOrEmpty("Turma disciplina � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long tud_id { get; set; }

        /// <summary>
        /// Campo Id da tabela CLS_TurmaNotaAluno.
        /// </summary>
        [MSNotNullOrEmpty("Turma nota � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int tnt_id { get; set; }

        /// <summary>
        /// Campo Id da tabela ACA_Aluno.
        /// </summary>
        [MSNotNullOrEmpty("Aluno � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public virtual long alu_id { get; set; }

        /// <summary>
        /// Campo Id da tabela MTR_MatriculaTurma.
        /// </summary>
        [MSNotNullOrEmpty("Matr�cula do aluno na turma � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public virtual int mtu_id { get; set; }

        /// <summary>
        /// Campo Id da tabela MTR_MatriculaTurmaDisciplina.
        /// </summary>
        [MSNotNullOrEmpty("Matr�cula do aluno na disciplina � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public virtual int mtd_id { get; set; }

        /// <summary>
        /// ID da orienta��o curricular.
        /// </summary>
        [MSNotNullOrEmpty("Orienta��o curricular � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long ocr_id { get; set; }

        /// <summary>
        /// ID da Turma Nota Orientacao Curricular.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int aoc_id { get; set; }

        /// <summary>
        /// Se a orienta��o curricular foi alcan�ada ou n�o
        /// </summary>
        [MSNotNullOrEmpty("Se a orienta��o curricular � alcan�ada ou n�o na avalia��o � obrigat�rio.")]
        public override bool aoc_alcancado { get; set; }

        /// <summary>
        /// Situa��o do registro: 1 - Ativo; 3 - Exclu�do.
        /// </summary>
        [MSDefaultValue(1)]
        public override short aoc_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime aoc_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime aoc_dataAlteracao { get; set; }
	}

    public class CLS_TurmaNotaAlunoOrientacaoCurricular_SalvarEmLote
    {
        public long tud_id { get; set; }

        public int tnt_id { get; set; }

        public long alu_id { get; set; }

        public int mtu_id { get; set; }

        public int mtd_id { get; set; }

        public long ocr_id { get; set; }

        public int aoc_id { get; set; }

        public bool aoc_alcancada { get; set; }

        public short aoc_situacao { get; set; }
    }
}