/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System.ComponentModel;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;
using System;

namespace MSTech.GestaoEscolar.Entities
{
	
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
	public class MTR_TipoMovimentacaoCursoMomentoCalendarioPeriodo : Abstract_MTR_TipoMovimentacaoCursoMomentoCalendarioPeriodo
	{
        [MSNotNullOrEmpty("Calend�rio escolar � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int cal_id { get; set; }
        [MSNotNullOrEmpty("Per�odo do calend�rio � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int cap_id { get; set; }
	}
}