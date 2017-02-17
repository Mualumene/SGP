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
	public class ACA_AvaliacaoRelacionada : Abstract_ACA_AvaliacaoRelacionada
	{
        [MSNotNullOrEmpty("Avalia��o relacionada � obrigat�rio.")]
        public override int ava_idRelacionada { get; set; }
        [MSNotNullOrEmpty("Substitui nota � obrigat�rio.")]
        public override bool avr_substituiNota { get; set; }
        [MSNotNullOrEmpty("Mantem maior nota � obrigat�rio.")]
        public override bool avr_mantemMaiorNota { get; set; }
        [MSNotNullOrEmpty("Obrigat�rio nota m�nima � obrigat�rio.")]
        public override bool avr_obrigatorioNotaMinima { get; set; }
        [MSDefaultValue(1)]
        public override byte avr_situacao { get; set; }
	}
}