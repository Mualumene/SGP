/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using System.ComponentModel;
    using Validation;
    /// <summary>
    /// Description: .
    /// </summary>
    public class TUR_TurmaDisciplinaTerritorio : Abstract_TUR_TurmaDisciplinaTerritorio
	{
        /// <summary>
		/// ID da rela��o entre experi�ncia e territ�rio.
		/// </summary>
        [DataObjectField(true, true, false)]
        public override long tte_id { get; set; }

        /// <summary>
        /// ID da turma disciplina de experi�ncia.
        /// </summary>
        [MSNotNullOrEmpty("Experi�ncia � obrigat�rio.")]
        public override long tud_idExperiencia { get; set; }

        /// <summary>
        /// ID da turma disciplina do territ�rio do saber.
        /// </summary>
        [MSNotNullOrEmpty("Territ�rio do saber � obrigat�rio.")]
        public override long tud_idTerritorio { get; set; }

        /// <summary>
        /// Data de vig�ncia inicial da rela��o entre experi�ncia e territ�rio.
        /// </summary>
        [MSNotNullOrEmpty("Vig�ncia inicial � obrigat�rio.")]
        public override DateTime tte_vigenciaInicio { get; set; }

        /// <summary>
        /// Situacao do registro (1 - Ativo, 3 exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte tte_situacao { get; set; }

        /// <summary>
        /// Propriedade tte_dataCriacao.
        /// </summary>
        public override DateTime tte_dataCriacao { get; set; }

        /// <summary>
        /// Propriedade tte_dataAlteracao.
        /// </summary>
        public override DateTime tte_dataAlteracao { get; set; }


        public virtual string tud_nomeTerritorio { get; set; }
    }
}