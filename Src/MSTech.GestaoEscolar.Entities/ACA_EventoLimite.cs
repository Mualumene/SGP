namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
    using System;
    using System.ComponentModel;
		
	[Serializable]
	public class ACA_EventoLimite : Abstract_ACA_EventoLimite
	{
        /// <summary>
        /// Propriedade cal_id.
        /// </summary>
        [MSNotNullOrEmpty("Calend�rio � obrigat�rio")]
        [DataObjectField(true, false, false)]
        public override int cal_id { get; set; }

        /// <summary>
        /// Propriedade tev_id.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de evento � obrigat�rio")]
        [DataObjectField(true, false, false)]
        public override int tev_id { get; set; }

        /// <summary>
        /// Propriedade evl_id.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int evl_id { get; set; }

        /// <summary>
        /// Propriedade evl_dataInicio.
        /// </summary>
        [MSNotNullOrEmpty("Data de in�cio � obrigat�ria")]
        public override DateTime evl_dataInicio { get; set; }

        /// <summary>
        /// Propriedade usu_id.
        /// </summary>
        [MSNotNullOrEmpty("Usu�rio � obrigat�rio")]
        public override Guid usu_id { get; set; }

        /// <summary>
        /// Propriedade evl_situacao.
        /// </summary>
        [MSDefaultValue(1)]
        public override short evl_situacao { get; set; }

        /// <summary>
        /// Propriedade evl_dataCriacao.
        /// </summary>
        public override DateTime evl_dataCriacao { get; set; }

        /// <summary>
        /// Propriedade evl_dataAlteracao.
        /// </summary>
        public override DateTime evl_dataAlteracao { get; set; }
	}
}