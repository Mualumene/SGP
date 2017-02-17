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
    public class ACA_TerritorioExperiencia : Abstract_ACA_TerritorioExperiencia
	{
        /// <summary>
		/// Id da experi�ncia do territorio.
		/// </summary>
        [DataObjectField(true, true, false)]
        public override int ter_id { get; set; }

        /// <summary>
        /// Nome da experi�ncia do territorio.
        /// </summary>
        [MSValidRange(200, "Nome da experi�ncia deve possuir at� 200 caracteres.")]
        [MSNotNullOrEmpty("Nome da experi�ncia � obrigat�rio.")]
        public override string ter_nome { get; set; }

        /// <summary>
        /// Situacao do registro (1 - Ativo, 3 - Excluido).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte ter_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime ter_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime ter_dataAlteracao { get; set; }
    }
}