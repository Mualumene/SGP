/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{	
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
	public class MTR_ConfiguracaoProcesso : Abstract_MTR_ConfiguracaoProcesso
	{
        [MSNotNullOrEmpty("Etapa do processo de matr�cula � obrigat�rio.")]
        public override int cpr_tipoProcesso { get; set; }
        [MSValidRange(200)]
        [MSNotNullOrEmpty("Nome � obrigat�rio.")]
        public override string cpr_nome { get; set; }
        [MSNotNullOrEmpty("Oderm do processo de matr�cula � obrigat�rio.")]
        public override int cpr_ordem { get; set; }        
        public override byte cpr_listaEspera { get; set; }        
        public override int cpr_qtdeOpcoes { get; set; }        
        [MSNotNullOrEmpty("Situa��o � obrigat�rio.")]
        public override byte cpr_situacao { get; set; }
        [MSNotNullOrEmpty("Data de cria��o � obrigat�rio.")]
        public override DateTime cpr_dataCriacao { get; set; }
        [MSNotNullOrEmpty("Data de altera��o � obrigat�rio.")]
        public override DateTime cpr_dataAlteracao { get; set; }          
        [MSNotNullOrEmpty("Tipo de evento � obrigat�rio.")]
        public override Int64 evt_id { get; set; }
	}
}