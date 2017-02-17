/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
	using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
    using System;
    using System.ComponentModel;
		
	/// <summary>
	/// Description: .
	/// </summary>
	public class ACA_TipoAnotacaoAluno : Abstract_ACA_TipoAnotacaoAluno
	{
        [DataObjectField(true, true, false)]
        public override int tia_id { get; set; }

        [MSValidRange(50, "Tipo de anota��o do aluno pode conter at� 50 caracteres.")]
        [MSNotNullOrEmpty("Tipo de anota��o do aluno � obrigat�rio.")]
        public override string tia_nome { get; set; }

        [MSValidRange(50, "C�digo pode conter at� 50 caracteres.")]
        [MSNotNullOrEmpty("C�digo do Tipo de anota��o do aluno � obrigat�rio.")]
        public override string tia_codigo { get; set; }

        [MSDefaultValue(1)]
        public override short tia_situacao { get; set; }

        public override DateTime tia_dataCriacao { get; set; }

        public override DateTime tia_dataAlteracao { get; set; }

        public override Guid ent_id { get; set; }
	}
}