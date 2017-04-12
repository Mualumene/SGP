/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using Validation;

    [Serializable]
    public class ACA_SondagemAgendamentoPeriodo : Abstract_ACA_SondagemAgendamentoPeriodo
    {
        /// <summary>
        /// ID da tabela ACA_Sondagem.
        /// </summary>
        [MSNotNullOrEmpty("ID da tabela ACA_Sondagem � obrigat�rio.")]
        public override int snd_id { get; set; }

        /// <summary>
        /// ID da tabela ACA_SondagemAgendamento.
        /// </summary>
        [MSNotNullOrEmpty("ID da tabela ACA_SondagemAgendamento � obrigat�rio.")]
        public override int sda_id { get; set; }

        /// <summary>
        /// ID da tabela ACA_TipoCurriculoPeriodo.
        /// </summary>
        [MSNotNullOrEmpty("ID da tabela ACA_TipoCurriculoPeriodo � obrigat�rio.")]
        public override int tcp_id { get; set; }

        /// <summary>
        /// Vari�vel auxiliar do nome do per�odo do curso
        /// </summary>
        public string tcp_descricao { get; set; }

        /// <summary>
        /// Vari�vel auxiliar da ordem do per�odo do curso
        /// </summary>
        public int tcp_ordem { get; set; }

        /// <summary>
        /// Vari�vel auxiliar da ordem do n�vel de ensino
        /// </summary>
        public int tne_ordem { get; set; }
    }
}