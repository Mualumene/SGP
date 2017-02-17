/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;
using System.ComponentModel;

namespace MSTech.GestaoEscolar.Entities
{
	
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
	public class ACA_TipoMacroCampoEletivaAluno : Abstract_ACA_TipoMacroCampoEletivaAluno
	{
        [MSValidRange(100, "Nome Tipo Macro-campo [MSG_DISCIPLINA] eletivo(a) pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Nome Tipo Macro-campo [MSG_DISCIPLINA] eletivo(a) � obrigat�rio.")]
        public override string tea_nome { get; set; }

        [MSValidRange(10, "Sigla pode conter at� 10 caracteres.")]
        [MSNotNullOrEmpty("Sigla � obrigat�rio.")]
        public override string tea_sigla { get; set; }

        [MSDefaultValue(1)]
        public override byte tea_situacao { get; set; }
        public override DateTime tea_dataCriacao { get; set; }
        public override DateTime tea_dataAlteracao { get; set; }
	}
}