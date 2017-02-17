/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System.ComponentModel;
using MSTech.Validation;
using MSTech.GestaoEscolar.Entities.Abstracts;
using System;

namespace MSTech.GestaoEscolar.Entities
{
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
	public class MTR_ParametroFormacaoTurmaTurno : Abstract_MTR_ParametroFormacaoTurmaTurno
	{
        [MSNotNullOrEmpty("Processo fechamento/in�cio ano letivo � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int pfi_id { get; set; }

        [MSNotNullOrEmpty("Par�metro por per�odo � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int pft_id { get; set; }

        [MSNotNullOrEmpty("Turno � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int trn_id { get; set; }
	}
}