/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using System.ComponentModel;
    using Validation;    /// <summary>
                         /// Description: .
                         /// </summary>
    [Serializable]
	public class SYS_UsuarioAPI : Abstract_SYS_UsuarioAPI
	{
        /// <summary>
		/// ID do usu�rio API.
		/// </summary>
        [DataObjectField(true, true, false)]
        public override int uap_id { get; set; }

        /// <summary>
        /// Situa��o do registro (1 - Ativo, 3 - Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte uap_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime uap_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime uap_dataAlteracao { get; set; }

    }
}