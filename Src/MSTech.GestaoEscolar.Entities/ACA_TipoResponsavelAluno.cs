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
	public class ACA_TipoResponsavelAluno : Abstract_ACA_TipoResponsavelAluno
	{
        [MSValidRange(100, "Tipo de filia��o / respons�vel do aluno pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Tipo de filia��o / respons�vel do aluno � obrigat�rio.")]
        public override string tra_nome { get; set; }

        /// <summary>
        /// Tipo de respons�vel padr�o, utlizado pelo sistema Matr�cula (Mae = 1,Pai = 2,Familiar = 3,Tutor = 4,Instituicao = 5,Proprio = 6,Outro = 7).
        /// </summary>
        [MSNotNullOrEmpty("Tipo de respons�vel padr�o � obrigat�rio.")]
        [MSDefaultValue(7)]
        public override byte tra_tipoResponsavelPadrao { get; set; }

        [MSDefaultValue(1)]
        public override byte tra_situacao { get; set; }
        public override DateTime tra_dataCriacao { get; set; }
        public override DateTime tra_dataAlteracao { get; set; }
	}
}