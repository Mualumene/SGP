/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{
	
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
	public class ORC_ConteudoTipoPeriodoCalendario : Abstract_ORC_ConteudoTipoPeriodoCalendario
	{
        [MSNotNullOrEmpty("Objetivo � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int obj_id { get; set; }

        [MSNotNullOrEmpty("Conte�do � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int ctd_id { get; set; }
        
        [MSNotNullOrEmpty("Per�odo do calend�rio � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int tpc_id { get; set; }

	}
}