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
	public class ACA_EscalaAvaliacao : Abstract_ACA_EscalaAvaliacao
	{
        [MSNotNullOrEmpty("Padr�o da escala de avalia��o � obrigat�rio.")]
        public override bool esa_padrao { get; set; }
        [MSValidRange(100, "Nome da escala de avalia��o pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Nome da escala de avalia��o � obrigat�rio.")]
        public override string esa_nome { get; set; }
        [MSDefaultValue(1)]
        public override byte esa_situacao { get; set; }        
        public override DateTime esa_dataCriacao { get; set; }        
        public override DateTime esa_dataAlteracao { get; set; }
        [MSNotNullOrEmpty("Tipo da escala � obrigat�rio.")]
        public override byte esa_tipo { get; set; }
	}
}