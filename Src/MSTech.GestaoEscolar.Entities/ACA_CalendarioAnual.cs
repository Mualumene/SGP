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
    public class ACA_CalendarioAnual : Abstract_ACA_CalendarioAnual
	{
        [MSNotNullOrEmpty("Entidade � obrigat�rio.")]
        public override Guid ent_id { get; set; }
        [MSNotNullOrEmpty("Ano letivo � obrigat�rio e deve ser um n�mero inteiro maior que 0 (zero).")]
        public override int cal_ano { get; set; }
        [MSValidRange(200, "Descri��o do calend�rio escolar pode conter at� 200 caracteres.")]
        [MSNotNullOrEmpty("Descri��o do calend�rio escolar � obrigat�rio.")]
        public override string cal_descricao { get; set; }
        [MSNotNullOrEmpty("Data de in�cio � obrigat�rio.")]
        public override DateTime cal_dataInicio { get; set; }
        [MSNotNullOrEmpty("Data de fim � obrigat�rio.")]
        public override DateTime cal_dataFim { get; set; }
        [MSDefaultValue(1)]
        public override byte cal_situacao { get; set; }
        public override DateTime cal_dataCriacao { get; set; }
        public override DateTime cal_dataAlteracao { get; set; }
	}
}