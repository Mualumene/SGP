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
    public class CLS_TurmaNotaOrientacaoCurricular : Abstract_CLS_TurmaNotaOrientacaoCurricular
    {
        /// <summary>
        /// ID da turma disciplina.
        /// </summary>
        [MSNotNullOrEmpty("Turma disciplina � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long tud_id { get; set; }

        /// <summary>
        /// ID da Turma Nota.
        /// </summary>
        [MSNotNullOrEmpty("Turma nota � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int tnt_id { get; set; }

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
        public override int toc_id { get; set; }

        /// <summary>
        /// Se a orienta��o curricular foi alcan�ada ou n�o
        /// </summary>
        [MSNotNullOrEmpty("Se a orienta��o curricular � alcan�ada ou n�o na avalia��o � obrigat�rio.")]
        public override bool toc_alcancado { get; set; }

        /// <summary>
        /// Situa��o do registro: 1 - Ativo; 3 - Exclu�do.
        /// </summary>
        [MSDefaultValue(1)]
        public override short toc_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime toc_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime toc_dataAlteracao { get; set; }
    }

    public class CLS_TurmaNotaOrientacaoCurricular_SalvarEmLote
    {
        public long tud_id { get; set; }

        public int tnt_id { get; set; }

        public long ocr_id { get; set; }

        public int toc_id { get; set; }

        public bool toc_alcancada { get; set; }

        public short toc_situacao { get; set; }
    }
}