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
	public class ACA_TipoDocente : Abstract_ACA_TipoDocente
	{
        /// <summary>
        /// ID tipo docente (EnumTipoDocente).
        /// </summary>
        [MSNotNullOrEmpty("Tipo de docente � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override byte tdc_id { get; set; }

        /// <summary>
        /// Descri��o tipo docente.
        /// </summary>
        [MSValidRange(100, "Descri��o do tipo de docente deve possuir no m�ximo 100 caracteres.")]
        [MSNotNullOrEmpty("Descri��o do tipo de docente � obrigat�rio.")]
        public override string tdc_descricao { get; set; }

        /// <summary>
        /// Nome tipo docente
        /// </summary>
        [MSValidRange(50, "Nome do tipo de docente deve possuir no m�ximo 50 caracteres.")]
        [MSNotNullOrEmpty("Nome do tipo de docente � obrigat�rio.")]
        public override string tdc_nome { get; set; }

        /// <summary>
        /// Posicao para tipo de docente.
        /// </summary>
        [MSNotNullOrEmpty("Posi��o do docente � obrigat�rio.")]
        public override byte tdc_posicao { get; set; }

        /// <summary>
        /// Situa��o do registro: 1-Ativo, 3-Excluido.
        /// </summary>
        [MSDefaultValue(1)]
        public override byte tdc_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime tdc_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime tdc_dataAlteracao { get; set; }
	}
}