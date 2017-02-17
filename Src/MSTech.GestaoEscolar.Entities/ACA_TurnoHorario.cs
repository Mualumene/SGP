/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.GestaoEscolar.Entities.Abstracts;
using System.ComponentModel;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{	
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
	public class ACA_TurnoHorario : Abstract_ACA_TurnoHorario
	{
        [MSNotNullOrEmpty("Dia da semana � obrigat�rio.")]
        public override byte trh_diaSemana { get; set; }
        [MSNotNullOrEmpty("Hora inicial � obrigat�rio.")]
        public override TimeSpan trh_horaInicio { get; set; }
        [MSNotNullOrEmpty("Hora final � obrigat�rio.")]
        public override TimeSpan trh_horaFim { get; set; }
        [MSNotNullOrEmpty("Tipo � obrigat�rio.")]
        public override byte trh_tipo { get; set; }
        [MSDefaultValue(1)]
        public override byte trh_situacao { get; set; }        
        public override DateTime trh_dataCriacao { get; set; }        
        public override DateTime trh_dataAlteracao { get; set; }        
	}
}