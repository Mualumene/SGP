/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.ComponentModel;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{	
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
	public class CLS_TurmaDisciplinaPlanejamento : Abstract_CLS_TurmaDisciplinaPlanejamento
	{
        [DataObjectField(true, false, false)]
        public override int tdp_id { get; set; }
        [MSDefaultValue(1)]
        public override byte tdp_situacao { get; set; }
        public override DateTime tdp_dataCriacao { get; set; }
        public override DateTime tdp_dataAlteracao { get; set; }

        [MSNotNullOrEmpty("Turma disciplina � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override Int64 tud_id { get; set; }

        [MSNotNullOrEmpty("Curso � obrigat�rio.")]
        public override int cur_id { get; set; }

        [MSNotNullOrEmpty("Curso curr�culo � obrigat�rio.")]
        public override int crr_id { get; set; }

        [MSNotNullOrEmpty("Curr�culo per�odo � obrigat�rio.")]
        public override int crp_id { get; set; }

        [MSNotNullOrEmpty("Posi��o do docente respons�vel � obrigat�rio.")]
        public override byte tdt_posicao { get; set; }
	}
}