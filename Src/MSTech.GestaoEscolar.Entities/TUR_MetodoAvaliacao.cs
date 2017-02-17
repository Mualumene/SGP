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
	public class TUR_MetodoAvaliacao : Abstract_TUR_MetodoAvaliacao
	{
        [DataObjectField(true, true, false)]
        public override int mav_id { get; set; }
        [MSNotNullOrEmpty("Padr�o � obrigat�rio.")]
        public override bool mav_padrao { get; set; }
        [MSValidRange(100)]
        [MSNotNullOrEmpty("Nome � obrigat�rio.")]
        public override string mav_nome { get; set; }
        [MSNotNullOrEmpty("Situa��o � obrigat�rio.")]
        public override byte mav_situacao { get; set; }
        [MSNotNullOrEmpty("Data de cria��o � obrigat�rio.")]
        public override DateTime mav_dataCriacao { get; set; }
        [MSNotNullOrEmpty("Data de altera��o � obrigat�rio.")]
        public override DateTime mav_dataAlteracao { get; set; }
	}
}