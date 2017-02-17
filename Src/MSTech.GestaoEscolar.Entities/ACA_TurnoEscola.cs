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
	public class ACA_TurnoEscola : Abstract_ACA_TurnoEscola
	{
        [MSNotNullOrEmpty("Turno � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int tes_id { get; set; }
        [MSNotNullOrEmpty("Escola � obrigat�rio.")]
        public override int esc_id { get; set; }
        [MSNotNullOrEmpty("Escola � obrigat�rio.")]
        public override int uni_id { get; set; }
        [MSNotNullOrEmpty("Vig�ncia inicial � obrigat�rio.")]
        public override DateTime tes_vigenciaInicio { get; set; }
        [MSNotNullOrEmpty("Situa��o � obrigat�rio.")]
        public override byte tes_situacao { get; set; }
        [MSNotNullOrEmpty("Data de cria��o � obrigat�rio.")]
        public override DateTime tes_dataCriacao { get; set; }
        [MSNotNullOrEmpty("Data de altera��o � obrigat�rio.")]
        public override DateTime tes_dataAlteracao { get; set; }
	}
}