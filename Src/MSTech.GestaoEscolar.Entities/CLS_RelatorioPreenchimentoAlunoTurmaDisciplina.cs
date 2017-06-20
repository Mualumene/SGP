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
    public class CLS_RelatorioPreenchimentoAlunoTurmaDisciplina : Abstract_CLS_RelatorioPreenchimentoAlunoTurmaDisciplina
	{
        /// <summary>
        /// Situa��o do registro (1-Ativo, 3-Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte ptd_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime ptd_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime ptd_dataAlteracao { get; set; }
    }
}