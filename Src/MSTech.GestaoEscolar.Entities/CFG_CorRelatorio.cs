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
	[Serializable]
	public class CFG_CorRelatorio : Abstract_CFG_CorRelatorio
	{
        /// <summary>
        /// Id do ralat�rio.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int rlt_id { get; set; }

        /// <summary>
        /// Id da cor do ralat�rio.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int cor_id { get; set; }

        /// <summary>
        /// Cor da paleta do ralat�rio.
        /// </summary>
        [MSValidRange(10, "Descri��o pode conter at� 10 caracteres.")]
        public override string cor_corPaleta { get; set; }

        /// <summary>
        /// ordem da cor do ralat�rio.
        /// </summary>
       [MSDefaultValue(1)]
        public override short cor_ordem { get; set; }

        /// <summary>
        /// Situa��o da cor do ralat�rio.
        /// </summary>
        [MSDefaultValue(1)]
       public override short cor_situacao { get; set; }

        /// <summary>
         ///Data de cria��o da cor do relat�rio.
         ///</summary>
        public override DateTime cor_dataCriacao { get; set; }

         /// <summary>         
         ///Data de altera��o da cor do relat�rio.
        ///<summary>
        public override DateTime cor_dataAlteracao { get; set; }        

	}
}