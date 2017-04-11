/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using Validation;

    [Serializable]
    public class ACA_SondagemResposta : Abstract_ACA_SondagemResposta
	{
        /// <summary>
        /// ID da tabela ACA_SondagemResposta.
        /// </summary>
        public override int sdr_id { get; set; }

        /// <summary>
        /// Sigla da resposta.
        /// </summary>
        [MSValidRange(20, "Sigla da resposta pode conter at� 20 caracteres.")]
        [MSNotNullOrEmpty("Sigla da resposta � obrigat�ria.")]
        public override string sdr_sigla { get; set; }

        /// <summary>
        /// Descri��o da resposta.
        /// </summary>
        [MSValidRange(250, "Descri��o da resposta pode conter at� 250 caracteres.")]
        [MSNotNullOrEmpty("Descri��o da resposta � obrigat�ria.")]
        public override string sdr_descricao { get; set; }

        /// <summary>
        /// Ordem da resposta.
        /// </summary>
        [MSNotNullOrEmpty("Ordem da resposta � obrigat�ria.")]
        public override int sdr_ordem { get; set; }

        /// <summary>
        /// Situa��o do registro (1-Ativo, 3-Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte sdr_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime sdr_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime sdr_dataAlteracao { get; set; }
    }
}