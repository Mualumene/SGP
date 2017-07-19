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
    public class ACA_CargaHorariaExtraclasse : Abstract_ACA_CargaHorariaExtraclasse
	{
        /// <summary>
		/// ID da disciplina.
		/// </summary>
		[MSNotNullOrEmpty("Disciplina � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int dis_id { get; set; }

        /// <summary>
        /// ID do calend�rio anual.
        /// </summary>
        [MSNotNullOrEmpty("Calend�rio anual � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int cal_id { get; set; }

        /// <summary>
        /// ID do tipo de per�odo do calend�rio.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de per�odo do calend�rio � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int tpc_id { get; set; }

        /// <summary>
        /// ID da carga horaria extraclasse.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int che_id { get; set; }

        /// <summary>
        /// Carga hor�ria de atividades extraclasse.
        /// </summary>
        [MSNotNullOrEmpty("Carga hor�ria � obrigat�rio.")]
        public override decimal che_cargaHoraria { get; set; }

        /// <summary>
        /// Situa��o do registro ( 1 - Ativo, 3 - Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte che_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do regsitro.
        /// </summary>
        public override DateTime che_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime che_dataAlteracao { get; set; }
    }
}