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
    public class ACA_Sondagem : Abstract_ACA_Sondagem
	{
        /// <summary>
        /// T�tulo da sondagem.
        /// </summary>
        [MSNotNullOrEmpty("T�tulo da sondagem � obrigat�rio.")]
        [MSValidRange(200, "T�tulo da sondagem pode conter at� 200 caracteres.")]
        public override string snd_titulo { get; set; }

        /// <summary>
        /// Descri��o da sondagem.
        /// </summary>
        [MSValidRange(4000, "Descri��o da sondagem pode conter at� 4000 caracteres.")]
        public override string snd_descricao { get; set; }

        /// <summary>
        /// Situa��o do registro (1-Ativo, 2-Bloqueado, 3-Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte snd_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime snd_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime snd_dataAlteracao { get; set; }
    }
}