/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.GestaoEscolar.Entities.Abstracts;
using System.ComponentModel;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{	
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
	public class ACA_Evento : Abstract_ACA_Evento
	{
        [DataObjectField(true, true, false)]
        public override Int64 evt_id { get; set; }
        [MSNotNullOrEmpty("Tipo de evento � obrigat�rio.")]
        public override int tev_id { get; set; }
        [MSNotNullOrEmpty("Entidade � obrigat�rio.")]
        public override Guid ent_id { get; set; }
        [MSValidRange(200, "Nome do evento do calend�rio pode conter at� 200 caracteres.")]
        [MSNotNullOrEmpty("Nome do evento do calend�rio � obrigat�rio.")]
        public override string evt_nome { get; set; }
        [MSNotNullOrEmpty("Data inicial � obrigat�rio.")]
        public override DateTime evt_dataInicio { get; set; }
        [MSNotNullOrEmpty("Data final � obrigat�rio.")]
        public override DateTime evt_dataFim { get; set; }
        [MSDefaultValue(false)]
        public override bool evt_semAtividadeDiscente { get; set; }
        [MSDefaultValue(1)]
        public override byte evt_situacao { get; set; }
        public override DateTime evt_dataCriacao { get; set; }
        public override DateTime evt_dataAlteracao { get; set; }
        public override int esc_id { get; set; }
        public override int uni_id { get; set; }
        public override bool evt_padrao { get; set; }
        public override int tpc_id { get; set; }
        public override string evt_descricao { get; set; }

        public bool vigente { get; set; } 
        public int cal_id { get; set; } 
        public override bool evt_limitarDocente { get; set; }
        public int tpc_ordem { get; set; }
	}
}