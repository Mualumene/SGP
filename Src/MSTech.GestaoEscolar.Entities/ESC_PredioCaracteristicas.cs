/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.ComponentModel;
using MSTech.Validation;
using MSTech.GestaoEscolar.Entities.Abstracts;

namespace MSTech.GestaoEscolar.Entities
{
    [Serializable]
	public class ESC_PredioCaracteristicas : AbstractESC_PredioCaracteristicas
	{
        /// <summary>
        /// PK da tabela.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int prc_id { get; set; }

        /// <summary>
        /// Situa��o do registro: 1 - Ativo, 3 - Excluido.
        /// </summary>
        [MSDefaultValue(1)]
        public override short prc_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime prc_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime prc_dataAlteracao { get; set; }
	}
}