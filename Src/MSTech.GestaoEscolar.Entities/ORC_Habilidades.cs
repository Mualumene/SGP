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
	public class ORC_Habilidades : Abstract_ORC_Habilidades
	{
        [MSNotNullOrEmpty("Objetivo � obrigat�rio.")]
		[DataObjectField(true, false, false)]
		public override int obj_id { get; set; }

        [MSNotNullOrEmpty("Conte�do � obrigat�rio.")]
		[DataObjectField(true, false, false)]
        public override int ctd_id { get; set; }
		
		[DataObjectField(true, false, false)]
        public override int hbl_id { get; set; }

        [MSNotNullOrEmpty("Descri��o da habilidade � obrigat�rio.")]
        public override string hbl_descricao { get; set; }
		
        [MSDefaultValue(1)]
        public override byte hbl_situacao { get; set; }

        public override DateTime hbl_dataCriacao { get; set; }
        public override DateTime hbl_dataAlteracao { get; set; }
	}
}