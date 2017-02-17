/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
	using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
    using System;
    using System.ComponentModel;
		
	/// <summary>
	/// Description: .
	/// </summary>
	[Serializable]
	public class CFG_ObservacaoBoletim : AbstractCFG_ObservacaoBoletim
	{
        /// <summary>
        /// Propriedade ent_id.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override Guid ent_id { get; set; }

        /// <summary>
        /// Propriedade obb_id.
        /// </summary>
        [DataObjectField(true, true, false)]
        public override int obb_id { get; set; }

        /// <summary>
        /// Propriedade obb_tipoObservacao.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de observa��o � obrigat�rio!")]
        public override int obb_tipoObservacao { get; set; }

        /// <summary>
        /// Propriedade obb_nome.
        /// </summary>
        [MSValidRange(100,"Nome da observa��o n�o deve ser maior que 100 caracteres!")]
        [MSNotNullOrEmpty("Nome da observa��o � obrigat�rio!")]
        public override string obb_nome { get; set; }

        /// <summary>
        /// Propriedade obb_descricao.
        /// </summary>
        [MSNotNullOrEmpty("Descri��o da observa��o � obrigat�rio!")]
        public override string obb_descricao { get; set; }

        /// <summary>
        /// Propriedade obb_situacao.
        /// </summary>
        [MSDefaultValue(1)]
        public override short obb_situacao { get; set; }

        /// <summary>
        /// Propriedade obb_dataCriacao.
        /// </summary>
        public override DateTime obb_dataCriacao { get; set; }

        /// <summary>
        /// Propriedade obb_dataAlteracao.
        /// </summary>
        public override DateTime obb_dataAlteracao { get; set; }
	}
}