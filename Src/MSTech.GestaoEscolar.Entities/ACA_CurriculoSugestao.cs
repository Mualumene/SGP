/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using Validation;
    /// <summary>
    /// Description: .
    /// </summary>
    public class ACA_CurriculoSugestao : Abstract_ACA_CurriculoSugestao
	{
        /// <summary>
        /// Texto da sugest�o.
        /// </summary>
        [MSValidRange(400, "Sugest�o pode conter at� 400 caracteres.")]
        public override string crs_sugestao { get; set; }

        /// <summary>
        /// Situa��o do registro (1-Ativo, 3-Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte crs_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime crs_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime crs_dataAlteracao { get; set; }
    }
}