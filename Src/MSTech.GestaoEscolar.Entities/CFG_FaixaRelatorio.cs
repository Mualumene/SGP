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
	public class CFG_FaixaRelatorio : AbstractCFG_FaixaRelatorio
	{
        /// <summary>
        /// Id da faixa por relat�rio.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int far_id { get; set; }

        /// <summary>
        /// Id do relat�rio.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int rlt_id { get; set; }

        /// <summary>
        /// Descri��o da faixa por relat�rio.
        /// </summary>
        [MSValidRange(200, "Descri��o pode conter at� 200 caracteres.")]
        public override string far_descricao { get; set; }

        /// <summary>
        /// In�cio da faixa por relat�rio.
        /// </summary>
        [MSValidRange(20, "In�cio da faixa pode conter at� 20 caracteres.")]
        public override string far_inicio { get; set; }

        /// <summary>
        /// Fim da faixa por relat�rio.
        /// </summary>
        [MSValidRange(20, "Fim da faixa pode conter at� 20 caracteres.")]
        public override string far_fim { get; set; }

        /// <summary>
        /// Id da escala de avalia��o.
        /// </summary>
        public override int esa_id { get; set; }

        /// <summary>
        /// Id da escala de avalia��o parecer.
        /// </summary>
        public override int eap_id { get; set; }

        /// <summary>
        /// Cor da faixa.
        /// </summary>
        [MSValidRange(200, "Cor pode conter at� 200 caracteres.")]
        public override string far_cor { get; set; }

        /// <summary>
        /// Situa��o da faixa por relat�rio: 1-Ativo; 3-Exclu�do;
        /// </summary>
        [MSDefaultValue(1)]
        public override byte far_situacao { get; set; }

        /// <summary>
        /// Data de cria��o da faixa por relat�rio.
        /// </summary>
        public override DateTime far_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o da faixa por relat�rio.
        /// </summary>
        public override DateTime far_dataAlteracao { get; set; }

        /// <summary>
        /// Descri��o do relat�rio de acordo com o campo rlt_id.
        /// </summary>
        public string NomeRelatorio { get; set; }

	}
}