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
	public class ACA_MotivoBaixaFrequencia : Abstract_ACA_MotivoBaixaFrequencia
	{
        /// <summary>
        /// id do motivo.
        /// </summary>
        [DataObjectField(true, true, false)]
        public virtual int mbf_id { get; set; }

        /// <summary>
        /// id do motivo pai.
        /// </summary>
        public virtual int mbf_idPai { get; set; }

        /// <summary>
        /// Sigla do motivo.
        /// </summary>
        [MSValidRange(5)]
        public virtual string mbf_sigla { get; set; }

        /// <summary>
        /// Descri��o do motivo.
        /// </summary>
        [MSNotNullOrEmpty("Descri��o � obrigat�rio.")]
        public virtual string mbf_descricao { get; set; }

        /// <summary>
        /// 1-Area, 2-Item.
        /// </summary>
        [MSNotNullOrEmpty("Tipo � obrigat�rio.")]
        public virtual short mbf_tipo { get; set; }

        /// <summary>
        /// Situa��o do registro: 1-Ativo, 3-Excluido.
        /// </summary>
        [MSDefaultValue(1)]
        public virtual short mbf_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        [MSNotNullOrEmpty]
        public virtual DateTime mbf_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        [MSNotNullOrEmpty]
        public virtual DateTime mbf_dataAlteracao { get; set; }

	}
}