/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using System.ComponentModel;
    using Validation;

    /// <summary>
    /// Description: .
    /// </summary>
    public class ACA_TipoJustificativaExclusaoAulas : Abstract_ACA_TipoJustificativaExclusaoAulas
	{
        /// <summary>
        /// ID do tipo de justificativa para exclus�o de aulas
        /// </summary>        
        [DataObjectField(true, true, false)]
        public override int tje_id { get; set; }

        /// <summary>
        /// Nome do tipo de justificativa para exclus�o de aulas
        /// </summary>
        [MSValidRange(100, "Tipo de justificativa para exclus�o de aulas pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Tipo de justificativa para exclus�o de aulas � obrigat�rio.")]
        public override string tje_nome { get; set; }

        /// <summary>
        /// C�digo do tipo de justificativa para exclus�o de aulas
        /// </summary>
        [MSValidRange(20, "C�digo pode conter at� 20 caracteres.")]
        public override string tje_codigo { get; set; }

        /// <summary>
        /// Situa��o do registro: 1-Ativo, 3-Exclu�do, 4-Inativo
        /// </summary>
        [MSDefaultValue(1)]
        public override byte tje_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro
        /// </summary>        
        public override DateTime tje_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro
        /// </summary>        
        public override DateTime tje_dataAlteracao { get; set; }
    }
}