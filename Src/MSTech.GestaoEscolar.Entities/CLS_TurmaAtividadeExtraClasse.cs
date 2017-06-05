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
    public class CLS_TurmaAtividadeExtraClasse : Abstract_CLS_TurmaAtividadeExtraClasse
	{
        /// <summary>
        /// Id da atividade extraclasse.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int tae_id { get; set; }

        [MSDefaultValue(1)]
        public override byte tdt_posicao { get; set; }

        /// <summary>
        /// Situa��o do registro.
        /// </summary>
        [MSDefaultValue(1)]
        public override byte tae_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime tae_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime tae_dataAlteracao { get; set; }
    }
}