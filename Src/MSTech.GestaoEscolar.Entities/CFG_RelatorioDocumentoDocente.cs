/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
	using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
    using System;
		
	/// <summary>
	/// Description: .
	/// </summary>
	[Serializable]
	public class CFG_RelatorioDocumentoDocente : AbstractCFG_RelatorioDocumentoDocente
	{
        public override int rdd_id { get; set; }

        [MSNotNullOrEmpty("Entidade � obrigat�rio.")]
        public override Guid ent_id { get; set; }

        [MSNotNullOrEmpty("Relat�rio � obrigat�rio.")]
        public override int rlt_id { get; set; }

        [MSValidRange(200)]
        [MSNotNullOrEmpty("Nome do documento � obrigat�rio.")]
        public override string rdd_nomeDocumento { get; set; }

        [MSNotNullOrEmpty("Ordem � obrigat�rio.")]
        public override int rdd_ordem { get; set; }

        [MSDefaultValue(1)]
        public override short rdd_situacao { get; set; }

        public override DateTime rdd_dataCriacao { get; set; }
        public override DateTime rdd_dataAlteracao { get; set; }

        [MSNotNullOrEmpty("Vis�o � obrigat�rio.")]
        public override int vis_id { get; set; }
	}
}