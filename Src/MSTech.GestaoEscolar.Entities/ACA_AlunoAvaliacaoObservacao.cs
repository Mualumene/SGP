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
	public class ACA_AlunoAvaliacaoObservacao : AbstractACA_AlunoAvaliacaoObservacao
    {		/// <summary>
        /// Propriedade alu_id.
        /// </summary>
        [MSNotNullOrEmpty]
        [DataObjectField(true, false, false)]
        public override long alu_id { get; set; }

        /// <summary>
        /// Propriedade aao_id.
        /// </summary>
        [MSNotNullOrEmpty]
        [DataObjectField(true, false, false)]
        public override int aao_id { get; set; }

        /// <summary>
        /// Propriedade aao_tipo.
        /// </summary>
        [MSNotNullOrEmpty("Tipo � obrigat�rio.")]
        public override short aao_tipo { get; set; }

        /// <summary>
        /// Propriedade aao_numeroObs.
        /// </summary>
        [MSNotNullOrEmpty("Numero da observa��o � obrigat�rio.")]
        public override int aao_numeroObs { get; set; }

        /// <summary>
        /// Propriedade aao_observacao.
        /// </summary>
        [MSNotNullOrEmpty("Observa��o � obrigat�rio.")]
        public override string aao_observacao { get; set; }

        /// <summary>
        /// Propriedade aao_dataInicial.
        /// </summary>
        [MSNotNullOrEmpty("Data inicial � obrigat�rio.")]
        public override DateTime aao_dataInicial { get; set; }

        /// <summary>
        /// Propriedade aao_dataFinal.
        /// </summary>
        [MSNotNullOrEmpty("Data final � obrigat�rio.")]
        public override DateTime aao_dataFinal { get; set; }
	}
}