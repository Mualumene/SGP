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
    public class SYS_RecursoAPI : Abstract_SYS_RecursoAPI
	{
        /// <summary>
        /// Situa��o do registro.
        /// </summary>
        [MSDefaultValue(1)]
        public override byte rap_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime rap_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime rap_dataAlteracao { get; set; }
    }
}