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
    public class ACA_AlunoFichaMedica : Abstract_ACA_AlunoFichaMedica
	{
        [MSValidRange(5, "Tipo sangu�neo pode conter at� 5 caracteres.")]
        public override string afm_tipoSanguineo { get; set; }
        [MSValidRange(5, "Fator RH pode conter at� 5 caracteres.")]
        public override string afm_fatorRH { get; set; }
        [MSValidRange(1000, "Conv�nio m�dico pode conter at� 1000 caracteres.")]
        public override string afm_convenioMedico { get; set; }
        [MSValidRange(1000, "Hospital para remo��o pode conter at� 1000 caracteres.")]
        public override string afm_hospitalRemocao { get; set; }
	}
}