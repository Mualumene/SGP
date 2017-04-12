/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using Validation;
   
    [Serializable]
    public class ACA_SondagemAgendamento : Abstract_ACA_SondagemAgendamento
    {
        /// <summary>
        /// ID da tabela ACA_SondagemAgendamento.
        /// </summary>
        public override int sda_id { get; set; }

        /// <summary>
        /// Data in�cio do agendamento.
        /// </summary>
        [MSNotNullOrEmpty("Data in�cio do agendamento � obrigat�ria.")]
        public override DateTime sda_dataInicio { get; set; }

        /// <summary>
        /// Data fim do agendamento.
        /// </summary>
        [MSNotNullOrEmpty("Data fim do agendamento � obrigat�ria.")]
        public override DateTime sda_dataFim { get; set; }
        
        /// <summary>
        /// Situa��o do registro (1-Ativo, 3-Excluido).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte sda_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime sda_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime sda_dataAlteracao { get; set; }

        /// <summary>
        /// Vari�vel auxiliar de data in�cio formatada.
        /// </summary>
        public string sda_inicio { get; set; }

        /// <summary>
        /// Vari�vel auxiliar de data fim formatada.
        /// </summary>
        public string sda_fim { get; set; }

        /// <summary>
        /// Vari�vel auxiliar dos per�odos selecionados no agendamento
        /// </summary>
        public string periodos { get; set; }

        /// <summary>
        /// Vari�vel auxiliar do nome da escola
        /// </summary>
        public string esc_nome { get; set; }
    }
}