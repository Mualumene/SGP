/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using Validation;
    
    [Serializable]
    public class ACA_SondagemQuestao : Abstract_ACA_SondagemQuestao
	{
        /// <summary>
        /// ID da tabela ACA_SondagemQuestao.
        /// </summary>
        public override int sdq_id { get; set; }

        /// <summary>
        /// Descri��o da quest�o.
        /// </summary>
        [MSValidRange(250, "Descri��o da quest�o pode conter at� 250 caracteres.")]
        [MSNotNullOrEmpty("Descri��o da quest�o � obrigat�ria.")]
        public override string sdq_descricao { get; set; }

        /// <summary>
        /// Ordem do registro.
        /// </summary>
        [MSNotNullOrEmpty("Ordem do registro � obrigat�ria.")]
        public override int sdq_ordem { get; set; }

        /// <summary>
        /// Informa se � uma sub-quest�o.
        /// </summary>
        public override bool sdq_subQuestao { get; set; }

        /// <summary>
        /// Situa��o do registro (1-Ativo, 3-Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte sdq_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime sdq_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime sdq_dataAlteracao { get; set; }
    }
}