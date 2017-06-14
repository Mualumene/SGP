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
    public class CLS_QuestionarioConteudo : Abstract_CLS_QuestionarioConteudo
	{
        /// <summary>
		/// Id do question�rio do conte�do..
		/// </summary>
		[MSNotNullOrEmpty()]
        public override int qst_id { get; set; }

        /// <summary>
        /// Id do conte�do do question�rio..
        /// </summary>
        public override int qtc_id { get; set; }

        /// <summary>
        /// Texto do conte�do..
        /// </summary>
        [MSValidRange(50)]
        [MSNotNullOrEmpty("Texto do conte�do � obrigat�rio.")]
        public override string qtc_texto { get; set; }

        /// <summary>
        /// Tipo do conte�do..
        /// </summary>
        [MSNotNullOrEmpty("Tipo de conte�do � obrigat�rio.")]
        public override byte qtc_tipo { get; set; }

        /// <summary>
        /// Tipo de resposta para o tipo de conte�do Pergunta..
        /// </summary>
        public override byte qtc_tipoResposta { get; set; }

        /// <summary>
        /// Data de cria��o do registro..
        /// </summary>
        public override DateTime qtc_dataCriacao { get; set; }

        /// <summary>
        /// Data da �ltima altera��o do registro..
        /// </summary>
        public override DateTime qtc_dataAlteracao { get; set; }

        /// <summary>
        /// Situa��o do registro..
        /// </summary>
        [MSDefaultValue(1)]
        [MSNotNullOrEmpty()]
        public override int qtc_situacao { get; set; }
    }
}