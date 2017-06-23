/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using Validation;
    /// <summary>
    /// Description: .
    /// </summary>
    [Serializable]
    public class CLS_RelatorioAtendimentoQuestionario : Abstract_CLS_RelatorioAtendimentoQuestionario
    {
        /// <summary>
        /// ID do registro (Relatorio Question�rio).
        /// </summary>
        public override int raq_id { get; set; }

        /// <summary>
        /// ID do relat�rio de atendimento.
        /// </summary>
        [MSNotNullOrEmpty("ID do relat�rio de atendimento � obrigat�rio.")]
        public override int rea_id { get; set; }

        /// <summary>
        /// ID do question�rio.
        /// </summary>
        [MSNotNullOrEmpty("ID do question�rio � obrigat�rio.")]
        public override int qst_id { get; set; }

        /// <summary>
        /// Ordem do question�rio no relat�rio de atendimento.
        /// </summary>
        [MSNotNullOrEmpty("Ordem do question�rio no relat�rio de atendimento � obrigat�rio.")]
        public override int raq_ordem { get; set; }

        /// <summary>
        /// Situa��o do registro (1 - ativo, 3 - exclu�do).
        /// </summary>
        public override byte raq_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime raq_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime raq_dataAlteracao { get; set; }

        /// <summary>
        /// Vari�vel auxiliar do t�rulo do question�rio.
        /// </summary>
        public string qst_titulo { get; set; }
    }
}