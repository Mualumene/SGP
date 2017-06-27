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
    public class ACA_CurriculoObjetivo : Abstract_ACA_CurriculoObjetivo
	{
        /// <summary>
        /// Descri��o do objetivo.
        /// </summary>
        [MSValidRange(500, "Descri��o do cap�tulo pode conter at� 500 caracteres.")]
        public override string cro_descricao { get; set; }

        /// <summary>
        /// Ordem do registro.
        /// </summary>
        [MSNotNullOrEmpty("Ordem do registro � obrigat�ria.")]
        public override int cro_ordem { get; set; }

        /// <summary>
        /// Situa��o do registro (1-Ativo, 3-Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte cro_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime cro_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime cro_dataAlteracao { get; set; }
    }
}