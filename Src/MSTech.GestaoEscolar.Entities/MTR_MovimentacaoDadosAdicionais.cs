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
    public class MTR_MovimentacaoDadosAdicionais : Abstract_MTR_MovimentacaoDadosAdicionais
	{        
        [DataObjectField(true, false, false)]
        public override int mda_id { get; set; }
        [MSDefaultValue(1)]
        public override byte mda_situacao { get; set; }
        public override DateTime mda_dataCriacao { get; set; }
        public override DateTime mda_dataAlteracao { get; set; }

        // Utilizado na altera��o de dados adicionais da movimenta��o
        public virtual Guid cid_idAnterior { get; set; }
        public virtual Guid unf_idAnterior { get; set; }
	}
}