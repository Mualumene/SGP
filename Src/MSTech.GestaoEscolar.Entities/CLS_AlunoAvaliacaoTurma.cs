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
	public class CLS_AlunoAvaliacaoTurma : Abstract_CLS_AlunoAvaliacaoTurma
	{
        [DataObjectField(true, false, false)]
        public override int aat_id { get; set; }
        [MSNotNullOrEmpty("Formato de avalia��o � obrigat�rio.")]
        public override int fav_id { get; set; }
        [MSNotNullOrEmpty("Avalia��o � obrigat�rio.")]
        public override int ava_id { get; set; }
        [MSValidRange(20, "Avalia��o pode conter at� 20 caracteres.")]
        public override string aat_avaliacao { get; set; }
        [MSValidRange(1000, "Coment�rios pode conter at� 1000 caracteres.")]
        public override string aat_comentarios { get; set; }
        [MSDefaultValue(1)]
        public override byte aat_situacao { get; set; }
        public override DateTime aat_dataCriacao { get; set; }
        public override DateTime aat_dataAlteracao { get; set; }
        public override Int32 aat_ausenciasCompensadas { get; set; }

        /// <summary>
        /// Propriedade aat_avaliacaoPosConselho.
        /// </summary>
        [MSValidRange(20, "Nota p�s-conselho pode conter at� 20 caracteres.")]
        public override string aat_avaliacaoPosConselho { get; set; }

        public override decimal aat_frequenciaFinalAjustada { get; set; }
	}
}