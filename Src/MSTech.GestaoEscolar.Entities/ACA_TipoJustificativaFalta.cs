/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.GestaoEscolar.Entities.Abstracts;
using System.ComponentModel;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{
	
	/// <summary>
	/// 
	/// </summary>
    [Serializable()]
	public class ACA_TipoJustificativaFalta : Abstract_ACA_TipoJustificativaFalta
	{
        /// <summary>
        /// ID do tipo de justificativa de falta
        /// </summary>        
        [DataObjectField(true, true, false)]
        public override int tjf_id { get; set; }

        /// <summary>
        /// Nome do tipo de justificativa de falta
        /// </summary>
        [MSValidRange(100, "Tipo de justificativa de falta pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Tipo de justificativa de falta � obrigat�rio.")]
        public override string tjf_nome { get; set; }

        /// <summary>
        /// C�digo do tipo de justificativa de falta
        /// </summary>
        [MSValidRange(20, "C�digo pode conter at� 20 caracteres.")]
        public override string tjf_codigo { get; set; }

        /// <summary>
        /// Situa��o do registro: 1-Ativo, 3-Exclu�do, 4-Inativo
        /// </summary>
        [MSDefaultValue(1)]
        public override byte tjf_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro
        /// </summary>        
        public override DateTime tjf_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro
        /// </summary>        
        public override DateTime tjf_dataAlteracao { get; set; }                
    }
}
