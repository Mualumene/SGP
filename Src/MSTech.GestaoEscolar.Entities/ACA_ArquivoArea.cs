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
    public class ACA_ArquivoArea : Abstract_ACA_ArquivoArea
	{
        /// <summary>
        /// Id do arquivo da �rea.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int aar_id { get; set; }

        /// <summary>
        /// Descri��o do arquivo da �rea.
        /// </summary>
        [MSValidRange(200, "Descri��o do arquivo/link deve possuir at� 200 caractesres.")]
        [MSNotNullOrEmpty("Descri��o do arquivo/link � obrigat�rio.")]
        public override string aar_descricao { get; set; }

        /// <summary>
        /// Link do arquivo da �rea.
        /// </summary>
        [MSValidRange(200, "Link deve possuir at� 200 caractesres.")]
        public override string aar_link { get; set; }

        /// <summary>
        /// Id do tipo de �rea de documento.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de �rea de documento � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int tad_id { get; set; }

        /// <summary>
        /// Situa��o do registro.
        /// </summary>
        [MSDefaultValue(1)]
        public override byte aar_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime aar_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime aar_dataAlteracao { get; set; }

        /// <summary>
        /// Tipo de documento (1 - Arquivo; 2 - Link).
        /// </summary>
        [MSNotNullOrEmpty("Tipo de documento � obrigat�rio.")]
        public override byte aar_tipoDocumento { get; set; }

        /// <summary>
        /// ID do registro (propriedade auxiliar utilizado na tela de cadastro de documentos)
        /// </summary>
        public Guid id { get; set; }

        /// <summary>
        /// Nome do arquivo (propriedade auxiliar utilizado na tela de cadastro de documentos)
        /// </summary>
        public string arq_nome { get; set; }
	}
}