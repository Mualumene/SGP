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
	public class MTR_TipoMovimentacaoCursoMomento : Abstract_MTR_TipoMovimentacaoCursoMomento
	{        
        [DataObjectField(true, false, false)]
        public override int tcm_id { get; set; }
        [MSNotNullOrEmpty("Ano do momento � obrigat�rio.")]
        public override int mom_ano { get; set; }
        [MSNotNullOrEmpty("Momento � obrigat�rio.")]
        public override int mom_id { get; set; }
        [MSNotNullOrEmpty("Tipo de momento inicial � obrigat�rio.")]
        public override byte tmm_idInicio { get; set; }
        [MSNotNullOrEmpty("Tipo de momento final � obrigat�rio.")]
        public override byte tmm_idFechamento { get; set; }
        [MSDefaultValue(1)]
        public override byte tcm_situacao { get; set; }
        public override DateTime tcm_dataCriacao { get; set; }
        public override DateTime tcm_dataAlteracao { get; set; }
	}
}