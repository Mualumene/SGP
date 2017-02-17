/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.ComponentModel;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{
    /// <summary>
    ///
    /// </summary>
    [Serializable]
    public class ACA_TipoNivelEnsino : Abstract_ACA_TipoNivelEnsino
    {
        [MSValidRange(100, "Tipo de n�vel de ensino pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Tipo de n�vel de ensino obrigat�rio.")]
        public override string tne_nome { get; set; }

        [MSDefaultValue(1)]
        public override byte tne_situacao { get; set; }

        public override DateTime tne_dataCriacao { get; set; }

        public override DateTime tne_dataAlteracao { get; set; }

        /// <summary>
        /// Ordem do tipo de nivel de ensino.
        /// </summary>
        [MSNotNullOrEmpty("Ordem do tipo de n�vel de ensino obrigat�rio.")]
        public override int tne_ordem { get; set; }
    }
}