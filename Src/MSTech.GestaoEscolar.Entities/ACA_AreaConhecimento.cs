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
	public class ACA_AreaConhecimento : Abstract_ACA_AreaConhecimento
	{
        /// <summary>
        /// Id da �rea de conhecimento.
        /// </summary>
        [DataObjectField(true, true, false)]
        public override int aco_id { get; set; }

        /// <summary>
        /// Nome da �rea de conhecimento.
        /// </summary>
        [MSValidRange(150, "Nome pode conter at� 150 caracteres.")]
        [MSNotNullOrEmpty("Nome � obrigat�rio.")]
        public override string aco_nome { get; set; }

        /// <summary>
        /// Situacao da �rea de conhecimento. (1 - Ativo, 3 - Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override short aco_situacao { get; set; }

        /// <summary>
        /// Data de altera��o da �rea de conhecimento.
        /// </summary>
        public override DateTime aco_dataAlteracao { get; set; }

        /// <summary>
        /// Data de cadastro da �rea de conhecimento.
        /// </summary>
        public override DateTime aco_dataCriacao { get; set; }
	}
}