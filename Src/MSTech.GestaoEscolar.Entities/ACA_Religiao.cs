/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using MSTech.GestaoEscolar.Entities.Abstracts;
using System.ComponentModel;
using MSTech.Validation;
using System;

namespace MSTech.GestaoEscolar.Entities
{	
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
	public class ACA_Religiao : Abstract_ACA_Religiao
	{
        [MSValidRange(100, "Tipo de religi�o pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Tipo de religi�o � obrigat�rio.")]
        public override string rlg_nome { get; set; }
        [MSDefaultValue(1)]
        public override byte rlg_situacao { get; set; }
	}
}