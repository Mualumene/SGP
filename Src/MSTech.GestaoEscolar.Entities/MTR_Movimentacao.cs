/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;
using System.ComponentModel;

namespace MSTech.GestaoEscolar.Entities
{
	/// <summary>
	/// 
	/// </summary>
    [Serializable]
    public class MTR_Movimentacao : AbstractMTR_Movimentacao
	{
        /// <summary>
        /// ID da Movimenta��o
        /// </summary>        
        [DataObjectField(true, false, false)]
        public override int mov_id { get; set; }

        /// <summary>
        /// Data em que a movimenta��o foi realizada
        /// </summary>
        [MSNotNullOrEmpty("Data de realiza��o � obrigat�rio.")]
        public override DateTime mov_dataRealizacao { get; set; }

        /// <summary>
        /// 1 - Ativo, 3 - Exclu�do
        /// </summary>
        [MSDefaultValue(1)]
        public override byte mov_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro
        /// </summary>        
        public override DateTime mov_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro
        /// </summary>        
        public override DateTime mov_dataAlteracao { get; set; }
	}
}