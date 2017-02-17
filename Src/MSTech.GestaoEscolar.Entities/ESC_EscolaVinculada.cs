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
	public class ESC_EscolaVinculada : Abstract_ESC_EscolaVinculada
	{
        [MSNotNullOrEmpty("Vig�ncia inicial � obrigat�rio.")]
        public override DateTime esv_vigenciaInicio { get; set; }        
        [MSNotNullOrEmpty("Situa��o � obrigat�rio.")]
        public override byte esv_situacao { get; set; }
        [MSNotNullOrEmpty("Data de cria��o � obrigat�rio.")]
        public override DateTime esv_dataCriacao { get; set; }
        [MSNotNullOrEmpty("Data de altera��o � obrigat�rio.")]
        public override DateTime esv_dataAlteracao { get; set; }        
	}
}