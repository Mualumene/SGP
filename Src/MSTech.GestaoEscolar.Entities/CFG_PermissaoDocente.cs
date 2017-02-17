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
	public class CFG_PermissaoDocente : Abstract_CFG_PermissaoDocente
	{
        /// <summary>
        /// ID Permiss�o do docente.
        /// </summary>
        [DataObjectField(true, true, false)]
        public override int pdc_id { get; set; }

        /// <summary>
        /// ID tipo do docente.
        /// </summary>
        [MSNotNullOrEmpty("Tipo docente � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override byte tdc_id { get; set; }

        /// <summary>
        /// ID tipo do docente permissao.
        /// </summary>
        [MSNotNullOrEmpty("Tipo docente permiss�o � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override byte tdc_idPermissao { get; set; }

        /// <summary>
        /// id do modulo de permissao (EnumModuloPermissao).
        /// </summary>
        [MSNotNullOrEmpty("M�dulo de permiss�o � obrigat�rio.")]
        public override byte pdc_modulo { get; set; }

        /// <summary>
        /// Indicado permissao de consulta.
        /// </summary>
        [MSNotNullOrEmpty("Permiss�o de consulta � obrigat�rio.")]
        [MSDefaultValue(true)]
        public override bool pdc_permissaoConsulta { get; set; }

        /// <summary>
        /// Indicado permissao de edicao.
        /// </summary>
        [MSNotNullOrEmpty("Permiss�o de edi��o � obrigat�rio.")]
        [MSDefaultValue(true)]
        public override bool pdc_permissaoEdicao { get; set; }

        /// <summary>
        /// Situa��o do registro.
        /// 1-Ativo,
        /// 3-Excluido
        /// </summary>
        [MSDefaultValue(1)]
        public override byte pdc_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro..
        /// </summary>
        public override DateTime pdc_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro..
        /// </summary>
        public override DateTime pdc_dataAlteracao { get; set; }
	}
}