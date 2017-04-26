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
    [Serializable]
    public class ACA_ObjetoAprendizagemEixo : Abstract_ACA_ObjetoAprendizagemEixo
	{
        /// <summary>
		/// Id do eixo.
		/// </summary>
        [DataObjectField(true, true, false)]
        public override int oae_id { get; set; }

        /// <summary>
        /// Propriedade tds_id.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de disciplina � obrigat�rio.")]
        public override int tds_id { get; set; }

        /// <summary>
        /// Propriedade cal_ano.
        /// </summary>
        [MSNotNullOrEmpty("Ano � obrigat�rio.")]
        public override int cal_ano { get; set; }

        /// <summary>
		/// Descri��o do eixo.
		/// </summary>
		[MSValidRange(150, "Descri��o pode conter at� 500 caracteres.")]
        [MSNotNullOrEmpty("Descri��o � obrigat�rio.")]
        public override string oae_descricao { get; set; }

        /// <summary>
		/// Ordem do eixo.
		/// </summary>
		[MSNotNullOrEmpty("Ordem � obrigat�rio.")]
        public override int oae_ordem { get; set; }

        /// <summary>
		/// Situa��o do registro (1-Ativo, 3-Exclu�do).
		/// </summary>
		[MSDefaultValue(1)]
        public override byte oae_situacao { get; set; }

        /// <summary>
		/// Data de cria��o do registro.
		/// </summary>
        public override DateTime oae_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime oae_dataAlteracao { get; set; }

        public string oae_situacaoText { get; set; }
    }
}