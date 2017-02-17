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
    [Serializable()]
	public class ACA_Curriculo : Abstract_ACA_Curriculo
	{        
        [DataObjectField(true, false, false)]
        public override int cur_id { get; set; }        
        [DataObjectField(true, false, false)]
        public override int crr_id { get; set; }
        [MSValidRange(10, "C�digo pode conter at� 10 caracteres.")]
        public override string crr_codigo { get; set; }
        [MSValidRange(200, "Nome pode conter at� 200 caracteres.")]
        public override string crr_nome { get; set; }        
        [MSNotNullOrEmpty("Regime de matr�cula � obrigat�rio.")]
        public override byte crr_regimeMatricula { get; set; }        
        [MSNotNullOrEmpty("Quantidade normal de per�odos � obrigat�rio.")]
        public override byte crr_periodosNormal { get; set; }
        [MSNotNullOrEmpty("Quantidade de dias letivos � obrigat�rio e deve ser um n�mero inteiro maior que 0 (zero).")]
        public override int crr_diasLetivos { get; set; }
        [MSNotNullOrEmpty("Vig�ncia inicial � obrigat�rio.")]
        public override DateTime crr_vigenciaInicio { get; set; }
        [MSDefaultValue(1)]
        public override byte crr_situacao { get; set; }        
        public override DateTime crr_dataCriacao { get; set; }
        public override DateTime crr_dataAlteracao { get; set; }
	}
}