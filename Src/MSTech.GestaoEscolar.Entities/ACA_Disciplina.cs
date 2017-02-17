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
	public class ACA_Disciplina : Abstract_ACA_Disciplina
	{
        [DataObjectField(true, true, false)]
        public override int dis_id { get; set; }
        [MSNotNullOrEmpty("Tipo de [MSG_DISCIPLINA] � obrigat�rio.")]
        public override int tds_id { get; set; }
        [MSValidRange(10, "C�digo pode conter at� 10 caracteres.")]
        public override string dis_codigo { get; set; }
        [MSValidRange(200, "Nome do(a) [MSG_DISCIPLINA] pode conter at� 200 caracteres.")]
        [MSNotNullOrEmpty("Nome do(a) [MSG_DISCIPLINA] � obrigat�rio.")]
        public override string dis_nome { get; set; }
        [MSValidRange(20, "Nome abreviado pode conter at� 20 caracteres.")]        
        public override string dis_nomeAbreviado { get; set; }        
        [MSDefaultValue(1)]
        public override byte dis_situacao { get; set; }        
        public override DateTime dis_dataCriacao { get; set; }
        public override DateTime dis_dataAlteracao { get; set; }

        // Vari�vel utilizada no cadastro de disciplinas eletivas do aluno
        public virtual string dis_situacaoDescricao { get; set; }
	}
}