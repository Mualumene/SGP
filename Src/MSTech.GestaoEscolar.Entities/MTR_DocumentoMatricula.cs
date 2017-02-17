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
	public class MTR_DocumentoMatricula : Abstract_MTR_DocumentoMatricula
	{        
        public override int cur_id { get; set; }
        [MSNotNullOrEmpty("Documento � obrigat�rio.")]
        public override Guid tdo_id { get; set; }
        [MSNotNullOrEmpty("Obrigatoriedade � obrigat�rio.")]
        public override byte dmt_obrigatoriedade { get; set; }
        [MSNotNullOrEmpty("Apresenta��o � obrigat�rio.")]
        public override byte dmt_apresentacao { get; set; }
        [MSNotNullOrEmpty("Vig�ncia inicial � obrigat�rio.")]
        public override DateTime dmt_vigenciaInicio { get; set; }        
        [MSDefaultValue(1)]
        public override byte dmt_situacao { get; set; }        
        public override DateTime dmt_dataCriacao { get; set; }        
        public override DateTime dmt_dataAlteracao { get; set; }
	}
}