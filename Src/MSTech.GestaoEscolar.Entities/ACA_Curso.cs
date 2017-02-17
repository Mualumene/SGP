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
	public class ACA_Curso : Abstract_ACA_Curso
	{        
        [MSNotNullOrEmpty("Entidade � obrigat�rio.")]
        public override Guid ent_id { get; set; }        
        [MSNotNullOrEmpty("N�vel de ensino � obrigat�rio.")]
        public override int tne_id { get; set; }
        [MSNotNullOrEmpty("Modalidade de ensino � obrigat�rio.")]
        public override int tme_id { get; set; }
        [MSValidRange(10, "C�digo do curso pode conter at� 10 caracteres.")]
		public override string cur_codigo { get; set; }                
        public override string cur_nome { get; set; }
        [MSValidRange(20, "Nome abreviado pode conter at� 20 caracteres.")]
        public override string cur_nome_abreviado { get; set; }
        [MSDefaultValue(0)]
        public override bool cur_exclusivoDeficiente { get; set; }
        [MSDefaultValue(0)]
        public override bool cur_conflitoTurnoSR { get; set; }
        [MSNotNullOrEmpty("Vig�ncia inicial � obrigat�rio.")]
        public override DateTime cur_vigenciaInicio { get; set; }
        [MSDefaultValue(1)]
        public override byte cur_situacao { get; set; }        
        public override DateTime cur_dataCriacao { get; set; }
        public override DateTime cur_dataAlteracao { get; set; }
	}
}