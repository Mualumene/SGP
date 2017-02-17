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
	public class ORC_ConteudoItem : Abstract_ORC_ConteudoItem
	{
        [MSNotNullOrEmpty("Objetivo � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int obj_id { get; set; }

        [MSNotNullOrEmpty("Conte�do � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int ctd_id { get; set; }

        [DataObjectField(true, false, false)]
        public override int cti_id { get; set; }

        [MSNotNullOrEmpty("Descri��o do conte�do � obrigat�rio.")]
        public override string cti_descricao { get; set; }

        [MSDefaultValue(1)]
        public override byte cti_situacao { get; set; }

        public override DateTime cti_dataCriacao { get; set; }
        public override DateTime cti_dataAlteracao { get; set; }
	}
}