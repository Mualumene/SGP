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
    public class ACA_CurriculoCapitulo : Abstract_ACA_CurriculoCapitulo
	{
        /// <summary>
        /// T�tulo do cap�tulo.
        /// </summary>
        [MSNotNullOrEmpty("T�tulo do cap�tulo � obrigat�rio.")]
        [MSValidRange(200, "T�tulo do cap�tulo pode conter at� 200 caracteres.")]
        public override string crc_titulo { get; set; }

        /// <summary>
        /// Descri��o do cap�tulo.
        /// </summary>
        [MSValidRange(4000, "Descri��o do cap�tulo pode conter at� 4000 caracteres.")]
        public override string crc_descricao { get; set; }

        /// <summary>
        /// Ordem do registro.
        /// </summary>
        [MSNotNullOrEmpty("Ordem do registro � obrigat�ria.")]
        public override int crc_ordem { get; set; }

        /// <summary>
        /// Situa��o do registro (1-Ativo, 3-Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte crc_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime crc_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime crc_dataAlteracao { get; set; }
    }
}