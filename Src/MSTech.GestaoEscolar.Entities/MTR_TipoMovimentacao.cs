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
	public class MTR_TipoMovimentacao : Abstract_MTR_TipoMovimentacao
	{        
        [DataObjectField(true, true, false)]
        public override int tmo_id { get; set; }
        [MSValidRange(100,"Nome do par�metro de movimenta��o pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Nome do par�metro de movimenta��o � obrigat�rio.")]
        public override string tmo_nome { get; set; }
        [MSNotNullOrEmpty("Tipo de movimento � obrigat�rio.")]
        public override byte tmo_tipoMovimento { get; set; }
        [MSDefaultValue(1)]
        public override byte tmo_situacao { get; set; }
        public override DateTime tmo_dataCriacao { get; set; }
        public override DateTime tmo_dataAlteracao { get; set; }        
	}
}