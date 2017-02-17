/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.ComponentModel;
using MSTech.GestaoEscolar.Entities.Abstracts;

namespace MSTech.GestaoEscolar.Entities
{

    /// <summary>
    /// Description: .
    /// </summary>
    [Serializable]
    public class ACA_CurriculoControleSemestralVigencia : AbstractACA_CurriculoControleSemestralVigencia
    {

        /// <summary>
        /// ID CurriculoPeriodoVigencia.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int vig_id { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime vig_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime vig_dataAlteracao { get; set; }
    }
}