/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using System;
    using System.ComponentModel;
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
		
	/// <summary>
	/// Description: .
	/// </summary>
	[Serializable]
	public class CLS_ArquivoEfetivacao : AbstractCLS_ArquivoEfetivacao
    {
        /// <summary>
        /// Id do registro.
        /// </summary>
        [DataObjectField(true, true, false)]
        public override long aef_id { get; set; }

        /// <summary>
        /// Id da escola.
        /// </summary>
        [MSNotNullOrEmpty("Escola � obrigat�rio.")]
        public override int esc_id { get; set; }

        /// <summary>
        /// Id da unidade da escola.
        /// </summary>
        [MSNotNullOrEmpty("Unidade da escola � obrigat�rio.")]
        public override int uni_id { get; set; }

        /// <summary>
        /// Id do calend�rio.
        /// </summary>
        [MSNotNullOrEmpty("Calend�rio � obrigat�rio.")]
        public override int cal_id { get; set; }

        /// <summary>
        /// Id do tipo per�odo curr�culo.
        /// </summary>
        [MSNotNullOrEmpty("Per�odo curr�culo � obrigat�rio.")]
        public override int tpc_id { get; set; }

        /// <summary>
        /// Id da turma
        /// </summary>
        [MSNotNullOrEmpty("Turma � obrigat�rio.")]
        public override long tur_id { get; set; }

        /// <summary>
        /// Tipo: 1-Importa��o, 2-Exporta��o.
        /// </summary>
        [MSNotNullOrEmpty("Tipo da solicita��o � obrigat�rio.")]
        public override short aef_tipo { get; set; }

        /// <summary>
        /// Situa��o do registro.
        /// </summary>
        [MSDefaultValue(1)]
        public override short aef_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime aef_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime aef_dataAlteracao { get; set; }

	}
}